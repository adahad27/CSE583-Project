from transformers import AutoTokenizer, AutoModelForCausalLM
import torch
import re

device = "cuda" if torch.cuda.is_available() else "cpu"

print(device)

model_name = "Qwen/Qwen2.5-Coder-7B-Instruct"
tokenizer = AutoTokenizer.from_pretrained(model_name)
model = AutoModelForCausalLM.from_pretrained(
    model_name,
    dtype=torch.bfloat16,
    device_map="auto"           
)
model.eval()

file_path = "training_data/llvm-ir/mont64.ll"

with open(file_path, "r") as f:
    c_code = f.read()

raw_prompt = f"""\
[INST] You are a compiler agent that is specialized at predicting the optimal unroll factors of loops in LLVM IR format.

Now, predict the optimal unroll factor for this loop:
Input:
15:                                               ; preds = %42, %4
  %16 = load i64, ptr %5, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = load i64, ptr %5, align 8
  %20 = lshr i64 %19, 1
  store i64 %20, ptr %5, align 8
  %21 = load i64, ptr %11, align 8
  %22 = and i64 %21, 1
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i64, ptr %11, align 8
  %26 = lshr i64 %25, 1
  store i64 %26, ptr %11, align 8
  %27 = load i64, ptr %12, align 8
  %28 = lshr i64 %27, 1
  store i64 %28, ptr %12, align 8
  br label %42

29:                                               ; preds = %18
  %30 = load i64, ptr %11, align 8
  %31 = load i64, ptr %10, align 8
  %32 = xor i64 %30, %31
  %33 = lshr i64 %32, 1
  %34 = load i64, ptr %11, align 8
  %35 = load i64, ptr %10, align 8
  %36 = and i64 %34, %35
  %37 = add i64 %33, %36
  store i64 %37, ptr %11, align 8
  %38 = load i64, ptr %12, align 8
  %39 = lshr i64 %38, 1
  %40 = load i64, ptr %9, align 8
  %41 = add i64 %39, %40
  store i64 %41, ptr %12, align 8
  br label %42

42:                                               ; preds = %29, %24
  br label %15, !llvm.loop !8

    Answer with one token only: 1,2,4,8,16,32,64,128

[/INST]
"""

ICL_prompt = """
[INST] You are a compiler agent that is specialized at predicting the optimal unroll factors of loops in LLVM IR format.

I will give you 2 examples for how to perform this task.
You will be given: the LLVM IR of a loop
You must predict: the unroll factor.

Example 1:

Input:

9:                                                ; preds = %34, %3
  %10 = load i64, ptr %7, align 8
  %11 = icmp sle i64 %10, 64
  br i1 %11, label %12, label %37

12:                                               ; preds = %9
  %13 = load i64, ptr %4, align 8
  %14 = ashr i64 %13, 63
  store i64 %14, ptr %8, align 8
  %15 = load i64, ptr %4, align 8
  %16 = shl i64 %15, 1
  %17 = load i64, ptr %5, align 8
  %18 = lshr i64 %17, 63
  %19 = or i64 %16, %18
  store i64 %19, ptr %4, align 8
  %20 = load i64, ptr %5, align 8
  %21 = shl i64 %20, 1
  store i64 %21, ptr %5, align 8
  %22 = load i64, ptr %4, align 8
  %23 = load i64, ptr %8, align 8
  %24 = or i64 %22, %23
  %25 = load i64, ptr %6, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %12
  %28 = load i64, ptr %4, align 8
  %29 = load i64, ptr %6, align 8
  %30 = sub i64 %28, %29
  store i64 %30, ptr %4, align 8
  %31 = load i64, ptr %5, align 8
  %32 = add i64 %31, 1
  store i64 %32, ptr %5, align 8
  br label %33

33:                                               ; preds = %27, %12
  br label %34

34:                                               ; preds = %33
  %35 = load i64, ptr %7, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, ptr %7, align 8
  br label %9, !llvm.loop !6 

Expected Output:
The optimal unroll factor for the following loop is: 64.  

Example 2:

Input:
3:                                                ; preds = %18, %0
  %4 = load i32, ptr %1, align 4
  %5 = icmp slt i32 %4, 1024
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  %7 = load i64, ptr %2, align 8
  %8 = call i32 @rand_beebs()
  %9 = trunc i32 %8 to i8
  %10 = zext i8 %9 to i64
  %11 = xor i64 %7, %10
  %12 = and i64 %11, 255
  %13 = getelementptr inbounds nuw [256 x i64], ptr @crc_32_tab, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8
  %15 = load i64, ptr %2, align 8
  %16 = lshr i64 %15, 8
  %17 = xor i64 %14, %16
  store i64 %17, ptr %2, align 8
  br label %18

18:                                               ; preds = %6
  %19 = load i32, ptr %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %1, align 4
  br label %3, !llvm.loop !6

Expected Output:
The optimal unroll factor for the following loop is: 32.  

Now, predict the optimal unroll factor for this loop:
Input:
15:                                               ; preds = %42, %4
  %16 = load i64, ptr %5, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = load i64, ptr %5, align 8
  %20 = lshr i64 %19, 1
  store i64 %20, ptr %5, align 8
  %21 = load i64, ptr %11, align 8
  %22 = and i64 %21, 1
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i64, ptr %11, align 8
  %26 = lshr i64 %25, 1
  store i64 %26, ptr %11, align 8
  %27 = load i64, ptr %12, align 8
  %28 = lshr i64 %27, 1
  store i64 %28, ptr %12, align 8
  br label %42

29:                                               ; preds = %18
  %30 = load i64, ptr %11, align 8
  %31 = load i64, ptr %10, align 8
  %32 = xor i64 %30, %31
  %33 = lshr i64 %32, 1
  %34 = load i64, ptr %11, align 8
  %35 = load i64, ptr %10, align 8
  %36 = and i64 %34, %35
  %37 = add i64 %33, %36
  store i64 %37, ptr %11, align 8
  %38 = load i64, ptr %12, align 8
  %39 = lshr i64 %38, 1
  %40 = load i64, ptr %9, align 8
  %41 = add i64 %39, %40
  store i64 %41, ptr %12, align 8
  br label %42

42:                                               ; preds = %29, %24
  br label %15, !llvm.loop !8

[/INST]"""

print(raw_prompt)

inputs = tokenizer(raw_prompt, return_tensors="pt").to(device)
input_token_count = inputs["input_ids"].shape[1]
outputs = model.generate(**inputs, max_new_tokens=32)

# For decoder-only LMs, generated sequences include the prompt tokens first.
new_token_ids = outputs[0][input_token_count:]
result = tokenizer.decode(new_token_ids, skip_special_tokens=True).strip()

if result:
    print(result)
else:
    print("[No new tokens generated. Try increasing max_new_tokens or shortening the prompt.]")


# Code to constrain possible outputs to candidate labels

# candidate_labels = ["1", "2", "4", "8", "16", "32", "64"]

# base_inputs = tokenizer(prompt, return_tensors="pt").to(device)
# base_len = base_inputs["input_ids"].shape[1]
# print(f"Input tokens: {base_len}")


# def score_label(label: str) -> float:
#     # Score log P(label | prompt) by summing token log-probabilities.
#     full_text = prompt + " " + label
#     full_inputs = tokenizer(full_text, return_tensors="pt").to(device)
#     label_len = full_inputs["input_ids"].shape[1] - base_len

#     with torch.no_grad():
#         out = model(**full_inputs)
#         logits = out.logits[:, :-1, :]
#         targets = full_inputs["input_ids"][:, 1:]

#         label_start = targets.shape[1] - label_len
#         label_logits = logits[:, label_start:, :]
#         label_targets = targets[:, label_start:]

#         token_logprobs = torch.log_softmax(label_logits, dim=-1).gather(
#             -1, label_targets.unsqueeze(-1)
#         ).squeeze(-1)

#     return token_logprobs.sum().item()


# scores = {label: score_label(label) for label in candidate_labels}
# best_label = max(scores, key=scores.get)

# print("Label log-prob scores:")
# for label in candidate_labels:
#     print(f"  {label}: {scores[label]:.4f}")

# print(f"Predicted unroll factor: {best_label}")