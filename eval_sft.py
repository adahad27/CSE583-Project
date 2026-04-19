import csv
import os
import re
from typing import Dict
import json

import torch
from datasets import load_dataset
from peft import PeftModel
from transformers import AutoModelForCausalLM, AutoTokenizer, BitsAndBytesConfig


path_to_dataset = "data.csv"
path_to_model = "models/sft-llm-compiler-13b"
MAX_SAMPLES = 50
MAX_NEW_TOKENS = 20


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
        f"- trip_count: {trip_count}\n"
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

    dataset_dict = load_dataset("csv", data_files=path_to_dataset)
    dataset = dataset_dict["train"]
    dataset = dataset.rename_columns({column: column.strip() for column in dataset.column_names})
    split = dataset.train_test_split(test_size=0.1, seed=42)
    eval_dataset = split["test"]

    bnb_config = BitsAndBytesConfig(
        load_in_4bit=True,
        bnb_4bit_quant_type="nf4",
        bnb_4bit_use_double_quant=True,
        bnb_4bit_compute_dtype=torch.bfloat16,
    )

    with open(os.path.join(path_to_model, "adapter_config.json"), "r") as f:
        # adapter_config always exists for peft checkpoints

        adapter_cfg = json.load(f)
    base_model_name = adapter_cfg["base_model_name_or_path"]

    tokenizer = AutoTokenizer.from_pretrained(path_to_model)
    if tokenizer.pad_token is None:
        tokenizer.pad_token = tokenizer.eos_token

    base_model = AutoModelForCausalLM.from_pretrained(
        base_model_name,
        quantization_config=bnb_config,
        dtype=torch.bfloat16,
        device_map="auto",
    )
    model = PeftModel.from_pretrained(base_model, path_to_model)
    model.eval()

    total = 0
    parsed = 0
    exact = 0
    rows = []

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

        print(
            f"[{idx}] gold={record['gold']} pred={pred_factor} "
            f"text={answer_text[:120]}"
        )

    out_csv = os.path.join(path_to_model, "eval_predictions.csv")
    with open(out_csv, "w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=list(rows[0].keys()) if rows else [])
        if rows:
            writer.writeheader()
            writer.writerows(rows)

    print("==============================================")
    print(f"Evaluated samples: {total}")
    print(f"Parsed numeric predictions: {parsed}/{total}")
    print(f"Exact-match accuracy: {exact}/{total} = {exact / total:.4f}" if total else "No samples evaluated")
    print(f"Saved predictions to: {out_csv}")


if __name__ == "__main__":
    main()
