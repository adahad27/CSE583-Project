from transformers import AutoTokenizer, AutoModelForCausalLM
import torch
import re

device = "cuda" if torch.cuda.is_available() else "cpu"

print(device)

model_name = "facebook/llm-compiler-7b"
tokenizer = AutoTokenizer.from_pretrained(model_name)
model = AutoModelForCausalLM.from_pretrained(
    model_name,
    dtype=torch.bfloat16,
    device_map="auto"           
)
model.eval()

file_path = "embench-iot/src/aha-mont64/mont64.c"

with open(file_path, "r") as f:
    c_code = f.read()

prompt = f"""\
[INST] You are given the following code: {c_code}. 

Predict the optimal loop unroll factor for each loop in the code. 

Provide your outputs in JSON format. 
Example: {{"loop_defs": ["for (int j...), while (x < ...), ..."], "unroll_factors": [16, 32, ...] }}

[/INST]
"""

#print(prompt)

inputs = tokenizer(prompt, return_tensors="pt").to(device)
input_token_count = inputs["input_ids"].shape[1]
outputs = model.generate(**inputs, max_new_tokens=800)

# For decoder-only LMs, generated sequences include the prompt tokens first.
new_token_ids = outputs[0][input_token_count:]
result = tokenizer.decode(new_token_ids, skip_special_tokens=True).strip()

if result:
    print(result)
else:
    print("[No new tokens generated. Try increasing max_new_tokens or shortening the prompt.]")