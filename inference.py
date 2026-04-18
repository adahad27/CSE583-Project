from transformers import AutoTokenizer, AutoModelForCausalLM
import torch
import re
import csv
import os
import subprocess
from dotenv import load_dotenv

load_dotenv()

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

def generate_context(csv_path="training_data.csv", n_programs=5):
    # initialize string variable called context
    context = ""
    
    # read in training_data.csv
    with open(csv_path, "r") as csv_file:
        reader = csv.reader(csv_file)
        next(reader) # skip the header row
        
        # for loop across parameterizable number of programs (N)
        for i, row in enumerate(reader):
            if i >= n_programs:
                break
                
            # extract the fields from csv: filename, start label, start line, end line, unrolling factor, function_name
            filename = row[0].strip()
            start_label = row[1].strip()
            start_line = int(row[2].strip())
            end_line = int(row[3].strip())
            unrolling_factor = row[4].strip()
            function_name = row[5].strip()
            
            # Default to filename if found, else check the known IR path
            file_path = filename
            if not os.path.exists(file_path):
                alt_path = os.path.join("training_data", "llvm-ir", filename)
                if os.path.exists(alt_path):
                    file_path = alt_path
            
            # file read from filename 
            try:
                ir_file_path = compile_c_to_ir(filename)
                with open(ir_file_path, "r") as program_file:
                    lines = program_file.readlines()
                    full_program = "".join(lines)
                    
                    # extracting code from start line to end line (assuming 1-indexed)
                    start_idx = max(0, start_line - 1)
                    end_idx = min(len(lines), end_line)
                    extracted_code = "".join(lines[start_idx:end_idx]).strip()
            except FileNotFoundError:
                full_program = f"// Error: File {ir_file_path} not found."
                extracted_code = "// Code not extracted"
                
            # paste the full program into the context string
            context += full_program + "\n"
            
            # but also append the following string formatted as such
            context += f"Running profile-guided optimization on the aforementioned program {filename} has produced an unrolling factor of {unrolling_factor} for the following function {function_name} with code as follows:\n{extracted_code}\n\n"
            
    return context


def compile_c_to_ir(c_file_path, overwrite=False):
    """
    Compiles a C source file into LLVM IR using clang.
    Returns the path to the newly created .ll file.
    """
    ll_file_path = os.path.splitext(c_file_path)[0] + ".ll"
    
    if os.path.exists(ll_file_path) and not overwrite:
        print(f"IR file already exists at {ll_file_path}. Skipping compilation.")
        return ll_file_path
        
    print(f"Compiling {c_file_path} to LLVM IR...")
    run_cmd = ["clang", "-O0", "-S", "-emit-llvm", c_file_path, "-o", ll_file_path]
    try:
        subprocess.run(run_cmd, check=True)
        print(f"Successfully compiled IR: {ll_file_path}")
        return ll_file_path
    except subprocess.CalledProcessError as e:
        print(f"Error compiling C to LLVM IR: {e}")
        return None


# context = generate_context("training_data.csv", 5)
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

