#!/bin/bash

# Configuration
CLANG="xcrun clang"
LLVM_PROFDATA="xcrun llvm-profdata"
TSVC_ROOT="llvm-test-suite/MultiSource/Benchmarks/TSVC"
RESULTS_DIR="tsvc_pgo_results"
REMARKS_DIR="tsvc_unroll_remarks"

# Setup directories
mkdir -p "$RESULTS_DIR" "$REMARKS_DIR"
# Clean up previous runs
rm -rf "$RESULTS_DIR"/* "$REMARKS_DIR"/*

echo "===================================================="
echo "    TSVC PGO Automation Script for macOS"
echo "===================================================="

# Discover benchmarks (directories containing CMakeLists.txt and tsc.c)
# We look for tsc.c files and get their directory paths
BENCHMARK_DIRS=$(find "$TSVC_ROOT" -name "tsc.c" -exec dirname {} \;)

for bench_path in $BENCHMARK_DIRS; do
    name=$(basename "$bench_path")
    
    # Basic sanity check
    if [ ! -f "$bench_path/CMakeLists.txt" ]; then
        continue
    fi

    echo "------------------------------------------------"
    echo "Processing Benchmark: $name"

    # 1. Extract RUN_OPTIONS from CMakeLists.txt
    # Format usually: set(RUN_OPTIONS 2325 14)
    OPTIONS=$(grep "RUN_OPTIONS" "$bench_path/CMakeLists.txt" | sed 's/.*RUN_OPTIONS \(.*\))/\1/')
    
    if [ -z "$OPTIONS" ]; then
        echo "  WARNING: No RUN_OPTIONS found for $name. Using defaults."
    else
        echo "  Applying Options: $OPTIONS"
    fi

    # Step 1: Instrument
    # Compiling tsc.c and dummy.c (both required for TSVC benchmarks)
    # Using -I $TSVC_ROOT so that #include "../tests.h" etc. resolve correctly
    $CLANG -O3 -fprofile-instr-generate \
          -I "$TSVC_ROOT" \
          "$bench_path/tsc.c" "$bench_path/dummy.c" \
          -lm -o "$RESULTS_DIR/${name}_instrumented" 2>/dev/null

    if [ $? -ne 0 ]; then
        echo "  [SKIP] Compilation failed for instrumented binary."
        continue
    fi

    # Step 2: Run to collect profile
    (
        cd "$RESULTS_DIR" || exit
        ./"${name}_instrumented" $OPTIONS > /dev/null 2>&1
        
        # Step 3: Merge profile
        if [ -f "default.profraw" ]; then
            $LLVM_PROFDATA merge default.profraw -o "${name}.profdata" 2>/dev/null
            rm -f default.profraw
        fi
    )

    if [ ! -f "$RESULTS_DIR/${name}.profdata" ]; then
        echo "  [SKIP] Profile generation failed (no .profdata produced)."
        continue
    fi

    # Step 4: Recompile with PGO and loop-unrolling capture flags
    # Using your preferred unroll analysis flags
    $CLANG -O3 -fprofile-instr-use="$RESULTS_DIR/${name}.profdata" \
          -DPOLYBENCH_USE_SCALAR_LB \
          -fno-vectorize \
          -mllvm -unroll-allow-partial \
          -mllvm -unroll-threshold=1000 \
          -I "$TSVC_ROOT" \
          "$bench_path/tsc.c" "$bench_path/dummy.c" \
          -lm -Rpass=loop-unroll \
          -o "$RESULTS_DIR/${name}_pgo" \
          2> "$REMARKS_DIR/${name}_unroll_remarks.txt"

    if [ $? -eq 0 ]; then
        echo "  [SUCCESS] PGO compilation complete."
        
        # Extract and display key unroll factors if any
        if [ -s "$REMARKS_DIR/${name}_unroll_remarks.txt" ]; then
            echo "  Key Unroll Decisions:"
            grep "unrolled loop by a factor of" "$REMARKS_DIR/${name}_unroll_remarks.txt" \
                | head -n 5 | sed 's/^/    /' || echo "    (No partial unroll factors found)"
        else
            echo "    (No unroll remarks recorded)"
        fi
    else
        echo "  [SKIP] PGO Compilation failed."
    fi
    
    echo "Done with $name"
done

echo "===================================================="
echo "Automation task complete."
echo "Aggregated binaries:  $RESULTS_DIR/"
echo "Aggregated remarks:   $REMARKS_DIR/"
echo "===================================================="
