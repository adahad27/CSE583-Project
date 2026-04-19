import os
import csv
import json
from typing import Dict, List

import torch
from datasets import load_dataset
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
path_to_output_model = "models/sft-llm-compiler-13b"
model_name = "facebook/llm-compiler-13b"
max_length = 4096


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

    processed = dataset.map(
        preprocess,
        remove_columns=dataset.column_names,
        desc="Building prompt-target SFT samples",
    )

    split = processed.train_test_split(test_size=0.1, seed=42)
    train_dataset = split["train"]
    eval_dataset = split["test"]

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
    model.print_trainable_parameters()

    training_args = TrainingArguments(
        output_dir=path_to_output_model,
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

    trainer.save_model(path_to_output_model)
    tokenizer.save_pretrained(path_to_output_model)

    print(f"SFT complete. Model saved to: {path_to_output_model}")


    logs_path_json = os.path.join(path_to_output_model, "trainer_log_history.json")
    logs_path_csv = os.path.join(path_to_output_model, "trainer_log_history.csv")

    with open(logs_path_json, "w") as jf:
        json.dump(trainer.state.log_history, jf, indent=2)

    if trainer.state.log_history:
        all_keys = sorted({k for row in trainer.state.log_history for k in row.keys()})
        with open(logs_path_csv, "w", newline="") as cf:
            writer = csv.DictWriter(cf, fieldnames=all_keys)
            writer.writeheader()
            for row in trainer.state.log_history:
                writer.writerow(row)

    print(f"Trainer logs saved to: {logs_path_json} and {logs_path_csv}")


if __name__ == "__main__":
    main()


