# Clone
cd llvm-test-suite/MultiSource/Benchmarks/TSVC

# Step 1: Instrument
clang -O3 -fprofile-instr-generate \
      tsvc.c -o tsvc_instrumented

# Step 2: Run
./tsvc_instrumented
# generates default.profraw

# Step 3: Merge
llvm-profdata merge default.profraw -o tsvc.profdata

# Step 4: Recompile with PGO
clang -O3 -fprofile-instr-use=tsvc.profdata \
      tsvc.c -o tsvc_pgo