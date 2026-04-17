"""
TODO: Adapt this to run the Meta LLM
from transformers import AutoTokenizer, LlamaForCausalLM

model = LlamaForCausalLM.from_pretrained("meta-llama/Llama-2-7b-hf")
tokenizer = AutoTokenizer.from_pretrained("meta-llama/Llama-2-7b-hf")

prompt = "Hey, are you conscious? Can you talk to me?"
inputs = tokenizer(prompt, return_tensors="pt")

# Generate
generate_ids = model.generate(inputs.input_ids, max_length=30)
tokenizer.batch_decode(generate_ids, skip_special_tokens=True, clean_up_tokenization_spaces=False)[0]
"""


# This is a set of super simple inference functions to try out LLM Compiler.
# This is just an example, not the 'recommended' way to do it. 
# It emphasizes simplicity over efficiency.
#
# This has been tested on a V100 32Gb GPU. If your GPU is smaller than that, it will likely fail. 
# Run it in CPU mode and it should work, albeit very, very slowly.
#
# You may need to set the HuggingFace access token
# see https://huggingface.co/docs/hub/security-tokens
# Once you have a token, export it before running this script
#  export HF_TOKEN=...
#
# The API is:
#   # Create a compiler object
#   llmc = LLMCompiler()
#
#   # Do ordinary inference
#   output = llmc.infer("A prompt")
#
#   # Emulate the compiler
#   # Pass in an LLVM IR, a passes argument for opt, the number of instructions in that IR and the number of bytes in the object file.
#   # This produces an IR as output
#   output = llmc.emulate_ir(ir, ir_count, bin_size)
#   # This produces assembly as output
#   output = llmc.emulate_ir(ir, ir_count, bin_size)
#
#   # Get optimisations for code size
#   # Pass in an IR
#   output = llmc.optimize_for_code_size(ir)
#
#   # Disassemble to IR
#   # Pass in assembly
#   output = llmc.disassemble(asm)
#
# Note that only models named llm-compiler-\db-ftd have been fine-tuned for the last two tasks

from transformers import AutoTokenizer, AutoModelForCausalLM
from textwrap import indent
import torch

MODEL_NAMES = [
    "facebook/llm-compiler-7b",
    "facebook/llm-compiler-13b",
    "facebook/llm-compiler-7b-ftd",
    "facebook/llm-compiler-13b-ftd",
]

class LLM_Compiler:
    def __init__(self, model_name: str = "facebook/llm-compiler-13b", device: str = "cuda" if torch.cuda.is_available() else "cpu"):
        if model_name not in MODEL_NAMES:
            raise ValueError(f"model_name must be one of {MODEL_NAMES}")
        self.model_name = model_name
        self.device = device
        self.tokenizer = AutoTokenizer.from_pretrained(self.model_name)
        self.model = AutoModelForCausalLM.from_pretrained(self.model_name).to(self.device)
        self.model.eval()
    
    def infer(self, prompt: str, max_new_tokens: int = 50) -> str:
        inputs = self.tokenizer(prompt, return_tensors="pt").to(self.device)
        outputs = self.model.generate(**inputs, max_new_tokens=max_new_tokens)
        text: str = self.tokenizer.decode(outputs[0], skip_special_tokens=True)
        return text[len(prompt): ]
    
    def emulate_ir(self, ir: str, passes: str, ir_count: int, bin_size: int, max_new_tokens: int = 50) -> str:
        prompt = f"""\
[INST] Give the LLVM-IR for the following code when optimized using opt -p '{passes}':

<code>{ir}</code>

The input code has instruction count {ir_count} and binary size {bin_size} bytes. [/INST]"""
    
        return self.infer(prompt, max_new_tokens=max_new_tokens)
    
    def emulate_asm(self, ir: str, passes: str, ir_count: int, bin_size: int, max_new_tokens: int = 50) -> str:
        prompt = f"""\
[INST] Give the assembly for the following code when optimized using opt -p '{passes}':

<code>{ir}</code>

The input code has instruction count {ir_count} and binary size {bin_size} bytes. [/INST]"""

        return self.infer(prompt, max_new_tokens=max_new_tokens)
    
    def optimize_for_code_size(self, ir: str, max_new_tokens: int = 50) -> str:
        prompt = f"""\
[INST] Tell me how to optimize this LLVM-IR for object file size:

<code>{ir}</code> [/INST]"""

        return self.infer(prompt, max_new_tokens=max_new_tokens)

    def disassemble(self, asm: str, max_new_tokens: int = 50) -> str:
        prompt = f"""\
[INST] Disassemble this code to LLVM-IR:

<code>{asm}</code> [/INST]"""

        return self.infer(prompt, max_new_tokens=max_new_tokens)

if __name__ == "__main__":
    # Demo the capabilities
    ir_count = 8
    bin_size = 65
    ir = """\
; ModuleID = '<stdin>'
source_filename = "-"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: minsize nounwind optsize uwtable
define dso_local i32 @add_two(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !5
  store i32 %1, ptr %4, align 4, !tbaa !5
  %5 = load i32, ptr %3, align 4, !tbaa !5
  %6 = load i32, ptr %4, align 4, !tbaa !5
  %7 = add nsw i32 %5, %6
  ret i32 %7
}

attributes #0 = { minsize nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.6 (git@github.com:fairinternal/CodeGen.git b05db9bbf7a92019267416c1bb9996fe6134e3f1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
"""

    asm = """\
.text
    .file	"-"
    .globl	add_two                         # -- Begin function add_two
    .type	add_two,@function
add_two:                                # @add_two
    .cfi_startproc
# %bb.0:
    movl	%edi, -4(%rsp)
    movl	%esi, -8(%rsp)
    movl	-4(%rsp), %eax
    addl	-8(%rsp), %eax
    retq
.Lfunc_end0:
    .size	add_two, .Lfunc_end0-add_two
    .cfi_endproc
                                        # -- End function
    .ident	"clang version 17.0.6 (git@github.com:fairinternal/CodeGen.git b05db9bbf7a92019267416c1bb9996fe6134e3f1)"
    .section	".note.GNU-stack","",@progbits
    .addrsig
"""

    passes = "module(default<Oz>)"
    max_new_tokens = 800

    # Get the model
    llm_compiler = LLM_Compiler()

    print(f"Emulating the 'opt -p {passes}' on an ir, producing ir")
    print(indent(llm_compiler.emulate_ir(ir, passes, ir_count, bin_size, max_new_tokens), "    "))

    print(f"Emulating the 'opt -p {passes}' on an ir, producing asm")
    print(indent(llm_compiler.emulate_asm(ir, passes, ir_count, bin_size, max_new_tokens), "    "))

    print(f"Getting the optimal passes for code size")
    print(indent(llm_compiler.optimize_for_code_size(ir, max_new_tokens), "    "))

    print(f"Disassembling to ir")
    print(indent(llm_compiler.disassemble(asm, max_new_tokens), "    "))
