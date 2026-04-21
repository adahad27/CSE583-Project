import csv
import os
import re
from typing import Dict, List
import json

import torch
from datasets import load_dataset
from peft import PeftModel
from transformers import AutoModelForCausalLM, AutoTokenizer, BitsAndBytesConfig


path_to_dataset = "data.csv"
path_to_model = "models/sft-deepseekR1-1.0"
MAX_SAMPLES = 50
MAX_NEW_TOKENS = 20


def resolve_model_root(model_path: str) -> str:
    model_path = model_path.rstrip(os.sep)
    model_dir = os.path.basename(model_path)
    if re.fullmatch(r"fold\d+", model_dir):
        return os.path.dirname(model_path)
    return model_path


def load_fold_eval_dataset(dataset, model_root: str, fold_number: int):
    split_path = os.path.join(model_root, "kfold_splits.json")

    if not os.path.exists(split_path):
        raise FileNotFoundError(
            f"Missing {split_path}. Re-run training.py to generate fold split indices."
        )

    with open(split_path, "r") as f:
        split_data = json.load(f)

    fold_splits: List[Dict] = split_data.get("fold_splits", [])
    selected = None
    for fold_info in fold_splits:
        if int(fold_info.get("fold", -1)) == fold_number:
            selected = fold_info
            break

    if selected is None:
        raise ValueError(f"Fold {fold_number} not found in {split_path}")

    val_indices = selected.get("val_indices", [])
    if not val_indices:
        raise ValueError(f"Fold {fold_number} has no validation indices in {split_path}")

    return dataset.select(val_indices), len(val_indices)


def get_fold_model_path(model_root: str, fold_number: int) -> str:
    fold_path = os.path.join(model_root, f"fold{fold_number}")
    if not os.path.isdir(fold_path):
        raise FileNotFoundError(f"Missing fold directory: {fold_path}")
    return fold_path


def resolve_ir_path(path_value: str, repo_root: str) -> str:
    candidate = os.path.join(repo_root, path_value.strip())
    if os.path.exists(candidate):
        return candidate
    return path_value.strip()


def extract_loop_body(ir_text: str, loop_header: str, loop_end: str, context_lines: int = 3) -> str:
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
        f"- num_uses: {n_uses}\n"
        f"- num_blocks_in_loop: {n_lp_blocks}\n"
        f"- loop_depth: {loop_depth}\n\n"
        "Output requirement:\n"
        "Respond with exactly one sentence in this format: "
        "The unroll factor is <integer>"
    )


def extract_factor(text: str):
    match = re.search(r"(-?\d+)", text)
    if match:
        return int(match.group(1))
    return None


def build_eval_record(example: Dict[str, str], repo_root: str):
    ir_path = resolve_ir_path(example["filename"], repo_root)
    with open(ir_path, "r") as f:
        ir_text = f.read()

    loop_header = str(example["start label"]).strip()
    loop_end = str(example["end label"]).strip()
    
    # Extract just the loop body instead of full IR
    ir_text = extract_loop_body(ir_text, loop_header, loop_end, context_lines=3)
    function_name = str(example["function name"]).strip()

    prompt = build_prompt(
        ir_text,
        loop_header,
        loop_end,
        function_name,
        str(example["num float ops"]).strip(),
        str(example["num branches"]).strip(),
        str(example["num operands"]).strip(),
        str(example["num memory ops"]).strip(),
        str(example["num unique predicates"]).strip(),
        str(example["trip count"]).strip(),
        str(example["num uses"]).strip(),
        str(example["num blocks in lp"]).strip(),
        str(example["loop depth"]).strip(),
    )

    return {
        "prompt": prompt,
        "gold": int(str(example["unroll factor"]).strip()),
        "function_name": function_name,
        "start_label": loop_header,
        "end_label": loop_end,
        "filename": str(example["filename"]).strip(),
    }


def main() -> None:
    repo_root = os.getcwd()
    model_root = resolve_model_root(path_to_model)

    dataset_dict = load_dataset("csv", data_files=path_to_dataset)
    dataset = dataset_dict["train"]
    dataset = dataset.rename_columns({column: column.strip() for column in dataset.column_names})
    with open(os.path.join(model_root, "kfold_splits.json"), "r") as f:
        split_data = json.load(f)

    fold_entries = sorted(split_data.get("fold_splits", []), key=lambda item: int(item.get("fold", 0)))
    if not fold_entries:
        raise ValueError(f"No fold metadata found in {os.path.join(model_root, 'kfold_splits.json')}")

    print(f"Evaluating {len(fold_entries)} folds from model root: {model_root}")

    bnb_config = BitsAndBytesConfig(
        load_in_4bit=True,
        bnb_4bit_quant_type="nf4",
        bnb_4bit_use_double_quant=True,
        bnb_4bit_compute_dtype=torch.bfloat16,
    )

    tokenizer = AutoTokenizer.from_pretrained(get_fold_model_path(model_root, 1))
    if tokenizer.pad_token is None:
        tokenizer.pad_token = tokenizer.eos_token

    fold_results = []
    all_rows = []

    with open(os.path.join(model_root, "fold_eval_summary.csv"), "w", newline="") as summary_file:
        summary_writer = csv.DictWriter(
            summary_file,
            fieldnames=[
                "fold",
                "model_path",
                "eval_size",
                "evaluated_samples",
                "parsed_predictions",
                "exact_matches",
                "accuracy",
            ],
        )
        summary_writer.writeheader()

        for fold_info in fold_entries:
            fold_number = int(fold_info.get("fold", 0))
            fold_model_path = get_fold_model_path(model_root, fold_number)
            eval_dataset, fold_size = load_fold_eval_dataset(dataset, model_root, fold_number)

            with open(os.path.join(fold_model_path, "adapter_config.json"), "r") as f:
                adapter_cfg = json.load(f)
            base_model_name = adapter_cfg["base_model_name_or_path"]

            base_model = AutoModelForCausalLM.from_pretrained(
                base_model_name,
                quantization_config=bnb_config,
                dtype=torch.bfloat16,
                device_map="auto",
            )
            model = PeftModel.from_pretrained(base_model, fold_model_path)
            model.eval()

            total = 0
            parsed = 0
            exact = 0
            rows = []

            print(f"\n{'='*60}")
            print(f"Fold {fold_number}: model={fold_model_path} eval_size={fold_size}")
            print(f"{'='*60}")

            for idx, example in enumerate(eval_dataset):
                if idx >= MAX_SAMPLES:
                    break

                record = build_eval_record(example, repo_root)
                inputs = tokenizer(record["prompt"], return_tensors="pt").to(model.device)
                prompt_len = inputs["input_ids"].shape[1]

                with torch.no_grad():
                    outputs = model.generate(
                        **inputs,
                        max_new_tokens=MAX_NEW_TOKENS,
                        do_sample=False,
                        eos_token_id=tokenizer.eos_token_id,
                        pad_token_id=tokenizer.eos_token_id,
                    )

                answer_ids = outputs[0][prompt_len:]
                answer_text = tokenizer.decode(answer_ids, skip_special_tokens=True).strip()
                pred_factor = extract_factor(answer_text)

                total += 1
                if pred_factor is not None:
                    parsed += 1
                    if pred_factor == record["gold"]:
                        exact += 1

                row = {
                    "fold": fold_number,
                    "idx": idx,
                    "filename": record["filename"],
                    "function_name": record["function_name"],
                    "start_label": record["start_label"],
                    "end_label": record["end_label"],
                    "gold": record["gold"],
                    "prediction_text": answer_text,
                    "prediction_factor": pred_factor if pred_factor is not None else "",
                    "exact_match": int(pred_factor == record["gold"]) if pred_factor is not None else 0,
                }
                rows.append(row)
                all_rows.append(row)

                print(
                    f"[{idx}] gold={record['gold']} pred={pred_factor} "
                    f"text={answer_text[:120]}"
                )

            accuracy = (exact / total) if total else 0.0
            fold_results.append({
                "fold": fold_number,
                "model_path": fold_model_path,
                "eval_size": fold_size,
                "evaluated_samples": total,
                "parsed_predictions": parsed,
                "exact_matches": exact,
                "accuracy": accuracy,
                "out_csv": os.path.join(fold_model_path, "eval_predictions.csv"),
            })

            with open(os.path.join(fold_model_path, "eval_predictions.csv"), "w", newline="") as f:
                writer = csv.DictWriter(f, fieldnames=list(rows[0].keys()) if rows else [])
                if rows:
                    writer.writeheader()
                    writer.writerows(rows)

            summary_writer.writerow({
                "fold": fold_number,
                "model_path": fold_model_path,
                "eval_size": fold_size,
                "evaluated_samples": total,
                "parsed_predictions": parsed,
                "exact_matches": exact,
                "accuracy": f"{accuracy:.4f}",
            })

            print(f"Fold {fold_number} accuracy: {exact}/{total} = {accuracy:.4f}" if total else f"Fold {fold_number}: no samples evaluated")
            print(f"Saved predictions to: {os.path.join(fold_model_path, 'eval_predictions.csv')}")

            del model
            del base_model
            torch.cuda.empty_cache()

    overall_total = sum(result["evaluated_samples"] for result in fold_results)
    overall_exact = sum(result["exact_matches"] for result in fold_results)
    overall_parsed = sum(result["parsed_predictions"] for result in fold_results)
    mean_fold_accuracy = sum(result["accuracy"] for result in fold_results) / len(fold_results)

    out_csv = os.path.join(model_root, "eval_predictions_all_folds.csv")
    with open(out_csv, "w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=list(all_rows[0].keys()) if all_rows else [])
        if all_rows:
            writer.writeheader()
            writer.writerows(all_rows)

    print("==============================================")
    print(f"Evaluated folds: {len(fold_results)}")
    print(f"Evaluated samples: {overall_total}")
    print(f"Parsed numeric predictions: {overall_parsed}/{overall_total}")
    print(
        f"Micro exact-match accuracy: {overall_exact}/{overall_total} = {overall_exact / overall_total:.4f}"
        if overall_total else "No samples evaluated"
    )
    print(f"Mean fold accuracy: {mean_fold_accuracy:.4f}")
    print(f"Saved combined predictions to: {out_csv}")
    print(f"Saved fold summary to: {os.path.join(model_root, 'fold_eval_summary.csv')}")


if __name__ == "__main__":
    main()
