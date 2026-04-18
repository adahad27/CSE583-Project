import csv

training_file = "data.csv"
ir_dir = "training_data/llvm-ir/"
prof_dir = "training_data/prof_info/"

def print_formatted_rows(csv_file):
    with open(csv_file, 'r') as file:
        reader = csv.reader(file)
        headers = next(reader)
        print("Formatted Rows:")
        for row in reader:
            filename = row[0]
            with open(ir_dir + filename, 'r') as f:
                prof_data = filename.replace('.ll', '.profout')
                with open(prof_dir + prof_data, 'r') as pf:
                    prof_content = pf.read()
                    ir_code = f.read()
                    prompt = f"""[INST] You are given the following code: <code> {ir_code} </code> and the corresponding profiling data: {prof_content}.
                    Your task is to analyze the code and profiling data to determine the optimal unrolling factor for the loop starting at line {row[2]} and ending at line {row[3]} in the function {row[5]}. The unrolling factor should be a positive integer that maximizes performance while minimizing code size. Please provide your analysis and the recommended unrolling factor.
                    [/INST]"""
                    answer = f"[ANSWER] The optimal unrolling factor for this loop is {row[4]} [/ANSWER]"
                    with open(training_file, 'a') as tf:
                        tf.write(prompt + ", " + answer + "\n")

if __name__ == "__main__":
    print_formatted_rows("training_data.csv")