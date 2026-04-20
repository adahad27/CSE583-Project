import os
import csv
import json
from typing import Dict, List
from collections import Counter

import torch
from datasets import load_dataset, Dataset
from sklearn.model_selection import StratifiedKFold, ShuffleSplit
from imblearn.over_sampling import RandomOverSampler
from peft import LoraConfig, get_peft_model, prepare_model_for_kbit_training
from transformers import (
    AutoModelForCausalLM,
    AutoTokenizer,
    BitsAndBytesConfig,
    DataCollatorForSeq2Seq,
    Trainer,
    TrainingArguments,
)

device = "cuda" if torch.cuda.is_available() else "cpu"
print(device)

path_to_dataset = "data.csv"
path_to_output_model = "models/sft-llm-compiler-7b-final"
model_name = "facebook/llm-compiler-7b"
max_length = 4096
num_folds = 5  # K-fold cross-validation with 5 folds


def resolve_ir_path(path_value: str, repo_root: str) -> str:
    candidate = os.path.join(repo_root, path_value.strip())
    if os.path.exists(candidate):
        return candidate
    return path_value.strip()


def extract_loop_body(ir_text: str, loop_header: str, loop_end: str, context_lines: int = 5) -> str:
    lines = ir_text.split("\n")
    header_idx = None
    end_idx = None

    # Find the lines containing the loop labels
    for i, line in enumerate(lines):
        if loop_header in line:
            header_idx = i
        if loop_end in line:
            end_idx = i

    if header_idx is None or end_idx is None:
        # Fallback: return first 1000 chars if labels not found
        return ir_text[:1000]

    # Extract loop body with context
    start = max(0, header_idx - context_lines)
    end = min(len(lines), end_idx + context_lines + 1)
    body = "\n".join(lines[start:end])

    return body


def build_prompt(
    ir_text: str,
    loop_header: str,
    loop_end: str,
    function_name: str,
    n_float_ops: str,
    n_branches: str,
    n_ops: str,
    n_mem_ops: str,
    n_preds: str,
    trip_count: str,
    n_uses: str,
    n_lp_blocks: str,
    loop_depth: str,
) -> str:
    return (
        "You are a compiler optimization assistant.\n"
        "Task: predict the loop unroll factor for one specific loop.\n"
        "Use only the LLVM IR and loop metadata provided below.\n"
        "Do not explain your reasoning.\n\n"
        "[LLVM_IR_BEGIN]\n"
        f"{ir_text}\n"
        "[LLVM_IR_END]\n\n"
        "Loop metadata:\n"
        f"- function_name: {function_name}\n"
        f"- loop_header_label: {loop_header}\n"
        f"- loop_end_label: {loop_end}\n\n"
        "Additional loop info that may be helpful:\n"
        f"- num_float_ops: {n_float_ops}\n"
        f"- num_branches: {n_branches}\n"
        f"- num_operands: {n_ops}\n"
        f"- num_memory_ops: {n_mem_ops}\n"
        f"- num_unique_predicates: {n_preds}\n"
        f"- trip_count: {trip_count}\n"
        f"- num_uses: {n_uses}\n"
        f"- num_blocks_in_loop: {n_lp_blocks}\n"
        f"- loop_depth: {loop_depth}\n\n"
        "Output requirement:\n"
        "Respond with exactly one sentence in this format: "
        "The unroll factor is <integer>"
    )


def build_target(unroll_factor: str) -> str:
    return f"The unroll factor is {str(unroll_factor).strip()}"


def main() -> None:
    repo_root = os.getcwd()

    dataset_dict = load_dataset("csv", data_files=path_to_dataset)
    dataset = dataset_dict["train"]
    dataset = dataset.rename_columns({column: column.strip() for column in dataset.column_names})

    # Extract labels for stratification
    labels = []
    for example in dataset:
        label = int(str(example["unroll factor"]).strip())
        labels.append(label)
    labels_array = torch.tensor(labels).numpy()

    tokenizer = AutoTokenizer.from_pretrained(model_name)
    if tokenizer.pad_token is None:
        tokenizer.pad_token = tokenizer.eos_token

    def preprocess(example: Dict[str, str]) -> Dict[str, List[int]]:
        ir_path = resolve_ir_path(example["filename"], repo_root)
        with open(ir_path, "r") as f:
            ir_text = f.read()

        loop_header = str(example["start label"]).strip()
        loop_end = str(example["end label"]).strip()
        
        # Extract just the loop body instead of full IR
        ir_text = extract_loop_body(ir_text, loop_header, loop_end, context_lines=3)

        n_float_ops = str(example["num float ops"]).strip()
        n_branches = str(example["num branches"]).strip()
        n_ops = str(example["num operands"]).strip()
        n_mem_ops = str(example["num memory ops"]).strip()
        n_preds = str(example["num unique predicates"]).strip()
        trip_count = str(example["trip count"]).strip()
        n_uses = str(example["num uses"]).strip()
        n_lp_blocks = str(example["num blocks in lp"]).strip()
        loop_depth = str(example["loop depth"]).strip()

        function_name = str(example["function name"]).strip()
        unroll_factor = str(example["unroll factor"]).strip()

        prompt = build_prompt(
            ir_text,
            loop_header,
            loop_end,
            function_name,
            n_float_ops,
            n_branches,
            n_ops,
            n_mem_ops,
            n_preds,
            trip_count,
            n_uses,
            n_lp_blocks,
            loop_depth,
        )
        target = build_target(unroll_factor)

        prompt_ids = tokenizer(prompt, add_special_tokens=False)["input_ids"]
        target_ids = tokenizer(target, add_special_tokens=False)["input_ids"]

        input_ids = prompt_ids + target_ids + [tokenizer.eos_token_id]
        labels = ([-100] * len(prompt_ids)) + target_ids + [tokenizer.eos_token_id]

        input_ids = input_ids[:max_length]
        labels = labels[:max_length]
        attention_mask = [1] * len(input_ids)

        return {
            "input_ids": input_ids,
            "attention_mask": attention_mask,
            "labels": labels,
        }

    # Process entire dataset once
    processed = dataset.map(
        preprocess,
        remove_columns=dataset.column_names,
        desc="Building prompt-target SFT samples",
    )

    # K-Fold Cross-Validation
    skf = ShuffleSplit(n_splits=num_folds, train_size=0.9, random_state=42)
    fold_results = []
    fold_splits = []

    for fold_idx, (train_indices, val_indices) in enumerate(skf.split(range(len(processed)), labels_array)):
        print(f"\n{'='*60}")
        print(f"Fold {fold_idx + 1}/{num_folds}")
        print(f"{'='*60}")

        # Apply RandomOverSampler to training indices for this fold
        train_labels = labels_array[train_indices]
        ros = RandomOverSampler(random_state=42)
        train_indices_resampled, _ = ros.fit_resample(train_indices.reshape(-1, 1), train_labels)
        train_indices_resampled = train_indices_resampled.flatten()

        # Persist original fold splits for leakage-free evaluation later.
        fold_splits.append({
            "fold": fold_idx + 1,
            "train_indices": train_indices.astype(int).tolist(),
            "val_indices": val_indices.astype(int).tolist(),
        })

        # Create train and eval datasets for this fold
        train_dataset = processed.select(train_indices_resampled)
        eval_dataset = processed.select(val_indices)

        print(f"Train size: {len(train_dataset)}, Eval size: {len(eval_dataset)}")

        # Reload model for this fold
        bnb_config = BitsAndBytesConfig(
            load_in_4bit=True,
            bnb_4bit_quant_type="nf4",
            bnb_4bit_use_double_quant=True,
            bnb_4bit_compute_dtype=torch.bfloat16,
        )

        model = AutoModelForCausalLM.from_pretrained(
            model_name,
            quantization_config=bnb_config,
            dtype=torch.bfloat16,
            device_map="auto",
        )
        model = prepare_model_for_kbit_training(model)
        model.config.use_cache = False

        lora_config = LoraConfig(
            r=16,
            lora_alpha=32,
            lora_dropout=0.05,
            bias="none",
            task_type="CAUSAL_LM",
            target_modules=[
                "q_proj",
                "k_proj",
                "v_proj",
                "o_proj",
                "gate_proj",
                "up_proj",
                "down_proj",
            ],
        )
        model = get_peft_model(model, lora_config)
        
        if fold_idx == 0:  # Only print once
            model.print_trainable_parameters()

        # Output directory for this fold
        fold_output_dir = f"{path_to_output_model}_fold{fold_idx + 1}"

        training_args = TrainingArguments(
            output_dir=fold_output_dir,
            num_train_epochs=3,
            per_device_train_batch_size=1,
            per_device_eval_batch_size=1,
            gradient_accumulation_steps=8,
            learning_rate=2e-5,
            bf16=torch.cuda.is_available(),
            gradient_checkpointing=True,
            optim="paged_adamw_8bit",
            logging_steps=10,
            eval_strategy="epoch",
            save_strategy="epoch",
            save_total_limit=2,
            load_best_model_at_end=True,
            report_to="none",
        )

        data_collator = DataCollatorForSeq2Seq(
            tokenizer=tokenizer,
            model=model,
            padding="longest",
            label_pad_token_id=-100,
            return_tensors="pt",
        )

        trainer = Trainer(
            model=model,
            args=training_args,
            train_dataset=train_dataset,
            eval_dataset=eval_dataset,
            processing_class=tokenizer,
            data_collator=data_collator,
        )

        trainer.train()

        # Save fold checkpoint
        trainer.save_model(fold_output_dir)
        tokenizer.save_pretrained(fold_output_dir)

        # Save fold logs
        logs_path_json = os.path.join(fold_output_dir, "trainer_log_history.json")

        with open(logs_path_json, "w") as jf:
            json.dump(trainer.state.log_history, jf, indent=2)

        # Record fold results
        final_eval_loss = trainer.state.log_history[-2].get("eval_loss", None) if trainer.state.log_history else None
        fold_results.append({
            "fold": fold_idx + 1,
            "train_size": len(train_dataset),
            "eval_size": len(eval_dataset),
            "final_eval_loss": final_eval_loss,
            "checkpoint_dir": fold_output_dir,
        })

        print(f"Fold {fold_idx + 1} complete. Final eval loss: {final_eval_loss}")
        print(f"Model saved to: {fold_output_dir}")

    # Summary
    print(f"\n{'='*60}")
    print(f"K-Fold Cross-Validation Complete ({num_folds} folds)")
    print(f"{'='*60}")
    for result in fold_results:
        print(f"Fold {result['fold']}: eval_loss={result['final_eval_loss']:} "
              f"(train={result['train_size']}, val={result['eval_size']})")

    avg_eval_loss = sum(r["final_eval_loss"] for r in fold_results if r["final_eval_loss"]) / len(
        [r for r in fold_results if r["final_eval_loss"]]
    )
    print(f"Average eval loss across folds: {avg_eval_loss:.4f}")

    # Save summary
    summary_path = os.path.join(path_to_output_model, "kfold_summary.json")
    split_path = os.path.join(path_to_output_model, "kfold_splits.json")
    os.makedirs(path_to_output_model, exist_ok=True)
    with open(summary_path, "w") as f:
        json.dump({
            "num_folds": num_folds,
            "fold_results": fold_results,
            "average_eval_loss": avg_eval_loss,
        }, f, indent=2)
    with open(split_path, "w") as f:
        json.dump({
            "num_folds": num_folds,
            "fold_splits": fold_splits,
        }, f, indent=2)
    print(f"\nK-Fold summary saved to: {summary_path}")
    print(f"K-Fold split indices saved to: {split_path}")


if __name__ == "__main__":
    main()


