#include "llvm/ADT/PriorityWorklist.h"
#include "llvm/Analysis/ProfileSummaryInfo.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/MDBuilder.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Transforms/Scalar/LoopUnrollPass.h"
#include <fstream>
#include <iostream>
#include <vector>
#include <map>
#include "llvm/ADT/DenseMap.h"
#include "llvm/ADT/DenseMapInfo.h"
#include "llvm/ADT/DenseSet.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/ADT/SetVector.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/Analysis/AssumptionCache.h"
#include "llvm/Analysis/BlockFrequencyInfo.h"
#include "llvm/Analysis/CodeMetrics.h"
#include "llvm/Analysis/LoopAnalysisManager.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopUnrollAnalyzer.h"
#include "llvm/Analysis/OptimizationRemarkEmitter.h"
#include "llvm/Analysis/ProfileSummaryInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/TargetTransformInfo.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Constant.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DiagnosticInfo.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/Metadata.h"
#include "llvm/IR/PassManager.h"
#include "llvm/InitializePasses.h"
#include "llvm/Pass.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Transforms/Scalar/LoopPassManager.h"
#include "llvm/Transforms/Utils.h"
#include "llvm/Transforms/Utils/LoopPeel.h"
#include "llvm/Transforms/Utils/LoopSimplify.h"
#include "llvm/Transforms/Utils/LoopUtils.h"
#include "llvm/Transforms/Utils/SizeOpts.h"
#include "llvm/Transforms/Utils/UnrollLoop.h"
#include <unordered_map>
using namespace llvm;

std::unordered_map<size_t, size_t> factor_map;

// Define command-line options
static cl::opt<std::string>
    OutputFilename("output-file",
                   cl::desc("Specify output filename for the pass"),
                   cl::value_desc("filename"));
static cl::opt<std::string>
    RemarksFilepath("remarks-file",
                   cl::desc("Specify remarks file path for the pass"),
                   cl::value_desc("filename"));

struct LoopFeatures {
  enum Features {
    num_float_ops,
    num_branches,
    num_operands,
    num_memory_ops,
    num_unique_predicates,
    trip_count,
    num_uses,
    num_blocks_in_lp,
    loop_depth,
    last
  };

  float ff[last];
};

void parse_unroll_remarks(std::string filename) {

    std::ifstream file(RemarksFilepath);

    

    // Always check if the file opened successfully
    if (!file.is_open()) {
        std::cerr << "Error opening file: " << std::strerror(errno) << std::endl;
        std::cerr << "Filepath was " << RemarksFilepath << std::endl;
        return;
    }

    std::string line;
    while(std::getline(file, line)) {
        bool full_unroll = true;

        

        size_t first_colon = line.find(':');



        size_t second_colon = line.find(':', first_colon + 1);
        if(first_colon == std::string::npos || second_colon == std::string::npos) {
            continue;
        }

        std::string found_filename = line.substr(line.rfind('/', first_colon) + 1, line.find(".c") - line.rfind('/', first_colon) + 1);

        if(found_filename != filename) {
            continue;
        }

        size_t line_number = std::stoi(line.substr(first_colon+1, second_colon - first_colon-1));

        size_t loop_unroll_begin_idx = line.find("completely unrolled loop with ");
        size_t loop_unroll_end_idx = line.find(" iterations");
        
        if(loop_unroll_begin_idx == std::string::npos) {
            loop_unroll_begin_idx = line.find("unrolled loop by a factor of ");
            loop_unroll_end_idx = line.find(" [-Rpass=loop-unroll]");
            full_unroll = false;
        }

        if(loop_unroll_begin_idx == std::string::npos || loop_unroll_end_idx == std::string::npos) {
            continue;
        }

        loop_unroll_begin_idx += full_unroll ? sizeof("completely unrolled loop with ") : sizeof("unrolled loop by a factor of ");

        size_t factor = std::stoi(line.substr(loop_unroll_begin_idx - 1, loop_unroll_end_idx - loop_unroll_begin_idx + 1));
        
        factor_map[line_number] = factor;
    }

}


unsigned getFloatOpNum(Loop *L) {
  unsigned num = 0;
  auto blocklist = L->getBlocks();
  for (auto &BB : blocklist) {
    for (auto &I : *BB) {
      std::string opcode(I.getOpcodeName());
      if ((opcode == "fadd") || (opcode == "fneg") || (opcode == "fsub") ||
          (opcode == "fmul") || (opcode == "fdiv") || (opcode == "frem") ||
          (opcode == "fcmp") || (opcode == "fptrunc") || (opcode == "fpext") ||
          (opcode == "fptoui") || (opcode == "fptosi")) {
        num++;
      }
    }
  }
  return num;
}

unsigned getUniquePredicatesNum(Loop *L) {
  unsigned unique_predicates_num = 0;
  std::map<unsigned, unsigned> mp;
  auto blocklist = L->getBlocks();
  for (auto &BB : blocklist) {
    for (auto &Inst : *BB) {
      if (isa<CmpInst>(Inst)) {
        unsigned predicate = (dyn_cast<CmpInst>(&Inst))->getPredicate();
        mp[predicate]++;
      }
    }
  }
  for (auto it : mp) {
    if (it.second == 1)
      unique_predicates_num++;
  }
  return unique_predicates_num;
}

void fillLoopFeatures(Loop *L, LoopFeatures *LF, LoopInfo *LI) {
#define FEATURE(FN) LF->ff[LoopFeatures::FN]

  FEATURE(num_blocks_in_lp) = L->getNumBlocks();
  FEATURE(loop_depth) = L->getLoopDepth();

  FEATURE(num_float_ops) = getFloatOpNum(L);
  auto blocklist = L->getBlocks();

  unsigned branch_inst_num = 0;
  for (auto &BB : blocklist) {
    for (auto &Inst : *BB) {
      if (isa<BranchInst>(Inst)) {
        branch_inst_num++;
      }
    }
  }
  FEATURE(num_branches) = branch_inst_num;

  unsigned operand_num = 0;
  for (auto &BB : blocklist) {
    for (auto &Inst : *BB) {
      operand_num = operand_num + Inst.getNumOperands();
    }
  }
  FEATURE(num_operands) = operand_num;

  unsigned mem_instr = 0;
  for (auto &BB : blocklist) {
    for (auto &Inst : *BB) {
      std::string opcode(Inst.getOpcodeName());
      if ((opcode == "alloca") || (opcode == "load") || (opcode == "store") ||
          (opcode == "cmpxchg") || (opcode == "atomicrmw") ||
          (opcode == "fence") || (opcode == "atomicrmw")) {
        mem_instr++;
      }
    }
  }
  FEATURE(num_memory_ops) = mem_instr;

  FEATURE(num_unique_predicates) = getUniquePredicatesNum(L);

  auto estimated_trip_count = getLoopEstimatedTripCount(L);
  if (estimated_trip_count.has_value()) {
    FEATURE(trip_count) = estimated_trip_count.value();
  } else {
    FEATURE(trip_count) = -1;
  }

  unsigned uses = 0;
  for (auto &BB : blocklist) {
    for (auto &Inst : *BB) {
      for (User *U : Inst.users()) {
        uses++;
      }
    }
  }
  FEATURE(num_uses) = uses;
#undef FEATURE
}

void printLoopFeaturesCSVHeader() {
  llvm::outs() << "num_float_ops,num_branches,num_operands,num_memory_ops,"
               << "num_unique_predicates,trip_count,num_uses,num_blocks_in_"
                  "loop,loop_depth\n";
}

void printLoopFeaturesCSV(LoopFeatures *LF, std::ofstream &output_file) {
  output_file << (int)LF->ff[LoopFeatures::num_float_ops] << ","
              << (int)LF->ff[LoopFeatures::num_branches] << ","
              << (int)LF->ff[LoopFeatures::num_operands] << ","
              << (int)LF->ff[LoopFeatures::num_memory_ops] << ","
              << (int)LF->ff[LoopFeatures::num_unique_predicates] << ","
              << (int)LF->ff[LoopFeatures::trip_count] << ","
              << (int)LF->ff[LoopFeatures::num_uses] << ","
              << (int)LF->ff[LoopFeatures::num_blocks_in_lp] << ","
              << (int)LF->ff[LoopFeatures::loop_depth];
            }
std::string SourceName; // end anonymous namespace

namespace {

struct FilePrinterPass : public PassInfoMixin<FilePrinterPass> {
  // The main entry point for the pass
  PreservedAnalyses run(Module &M, ModuleAnalysisManager &AM) {
    // Standard Option 1: Get the source file name
    SourceName = M.getSourceFileName();

    // llvm::outs() << "Pass is running on source file: " << SourceName << "\n";

    // We didn't modify the IR, so we preserve all previous analyses
    return PreservedAnalyses::all();
  }
};

struct FunctionNamePass : public PassInfoMixin<FunctionNamePass> {

  PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {

    llvm::LoopAnalysis::Result &LI = FAM.getResult<LoopAnalysis>(F);
    llvm::BlockFrequencyInfo &BFI = FAM.getResult<BlockFrequencyAnalysis>(F);


    std::ofstream output_file(OutputFilename, std::ios_base::app);
    std::string base;
    base = SourceName.substr(SourceName.rfind('/') + 1,
                             SourceName.find(".c") - SourceName.rfind('/') - 1);

    std::string ir_name = base + ".ll";

    std::string unroll_path = "/n/eecs583b/home/adahad/hw0/cbench_unroll_remarks/" + base + "_unroll_remarks.txt";

    parse_unroll_remarks(base + ".c"); // Add loop unrolling lines + factors to global map

    for(const auto &[line, factor] : factor_map) {
        for (Loop *L : LI.getLoopsInPreorder()) {
        // Get the loop's starting line number
        DebugLoc startLoc = L->getStartLoc();
        
        if (startLoc && startLoc.getLine() == line) {
            if (BasicBlock *Exit = L->getExitBlock()) {
                LoopFeatures LF;

                std::string header;
                llvm::raw_string_ostream head(header);

                std::string tail;
                llvm::raw_string_ostream end(tail);

                fillLoopFeatures(L, &LF, &LI);

                output_file << "LLVM-IR-DATA/";
                output_file << ir_name << ", ";

                //
                BasicBlock *Header = L->getHeader();
                BasicBlock *Preheader = L->getLoopPreheader();

                uint64_t HeaderFreq = BFI.getBlockFreq(Header).getFrequency();
                uint64_t PreheaderFreq = BFI.getBlockFreq(Preheader).getFrequency();
                double estimated_trip_count = -1;
                if (PreheaderFreq > 0) {
                    estimated_trip_count = (double)HeaderFreq / PreheaderFreq;
                }

                LF.ff[LoopFeatures::trip_count] = estimated_trip_count;

                Header->printAsOperand(head, false);
                output_file << head.str();
                output_file << ", ";

                Exit->printAsOperand(end, false);
                output_file << end.str() << ", ";
                printLoopFeaturesCSV(&LF, output_file);
                output_file << ", " << F.getName().str() << ", " << factor << "\n";
            }
        }
        
        
    }
    }
    
    // Iterate over all loops in the function
    

    return PreservedAnalyses::all();
  }
};
} // namespace

extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK
llvmGetPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "FunctionNamePass", "v0.1",
          [](PassBuilder &PB) {
            // 1. Existing Function Pass Registration
            PB.registerPipelineParsingCallback(
                [](StringRef Name, FunctionPassManager &FPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                  if (Name == "func-name") {
                    FPM.addPass(FunctionNamePass());
                    return true;
                  }
                  return false;
                });

            // 2. NEW Module Pass Registration
            PB.registerPipelineParsingCallback(
                [](StringRef Name, ModulePassManager &MPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                  if (Name == "file-printer-pass") {
                    MPM.addPass(FilePrinterPass());
                    return true;
                  }
                  return false;
                });
          }};
}
