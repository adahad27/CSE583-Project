# Project Context: PGO-Based Loop Unrolling Analysis

## Objective
The goal of this project is to verify if various code repositories (benchmarking suites) contain programs that can be successfully compiled and optimized using Profile-Guided Optimization (PGO). Specifically, we are interested in extracting and analyzing the **loop unrolling factors** decided by the compiler (Clang/LLVM) when using profile data.

## Key Requirements
- **One Script per Repository**: Each benchmark suite (repository) has a dedicated automation script.
- **Location**: All automation scripts must reside in the root `Final_Project` directory, rather than inside the repository subdirectories.
- **Optimization Target**: The primary focus is capturing `loop-unroll` remarks (e.g., "unrolled loop by a factor of X") in a repeatable and automated fashion.

## Automation Workflow
For each repository, a script performs the following standard PGO cycle:
1. **Instrument**: Compile the source with instrumentation enabled (`-fprofile-instr-generate`).
2. **Profile Generation**: Execute the instrumented binary to produce real-world execution profiles.
3. **Merge**: Combine raw profile data into a usable `.profdata` format.
4. **PGO Optimization**: Recompile with profile data (`-fprofile-instr-use`) and capture optimization remarks (`-Rpass=loop-unroll`).

## Current Repositories & Scripts
- **PolyBench**: [run_pgo_polybench.sh](file:///Users/kaijun/Documents/Winter26/CSE583/Final_Project/run_pgo_polybench.sh)
- **LLVM Test Suite (TSVC)**: [run_pgo_tsvc.sh](file:///Users/kaijun/Documents/Winter26/CSE583/Final_Project/run_pgo_tsvc.sh)
- **Embench-IoT**: (Planned/In Progress) `run_pgo_embench.sh`

## Success Criteria
Success is achieved when a benchmark suite can be fully automated to produce:
- Optimized PGO binaries.
- A collection of optimization remark files containing explicit loop unroll factors.
