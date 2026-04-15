#!/bin/bash

# Configuration
CLANG="xcrun clang"
LLVM_PROFDATA="xcrun llvm-profdata"
EMBENCH_ROOT="embench-iot"
SUPPORT_DIR="$EMBENCH_ROOT/support"
CONFIG_DIR="$EMBENCH_ROOT/examples/mac/speed-M1" # Target Mac M1 speed config
RESULTS_DIR="embench_pgo_results"
REMARKS_DIR="embench_unroll_remarks"

# Setup directories
mkdir -p "$RESULTS_DIR" "$REMARKS_DIR"
rm -rf "$RESULTS_DIR"/* "$REMARKS_DIR"/*

echo "===================================================="
echo "    Embench-IoT PGO Automation Script"
echo "===================================================="

# Discover benchmarks (directories in embench-iot/src)
BENCHMARKS=$(find "$EMBENCH_ROOT/src" -maxdepth 1 -mindepth 1 -type d)

for bench_dir in $BENCHMARKS; do
    name=$(basename "$bench_dir")
    echo "------------------------------------------------"
    echo "Processing Benchmark: $name"

    # Find the main .c file (usually named after the benchmark or similar)
    # Most embench benchmarks have only 1 or 2 files in the folder
    SOURCES=$(find "$bench_dir" -name "*.c")
    
    # Common support files needed for every benchmark
    SUPPORT_SOURCES="$SUPPORT_DIR/main.c $SUPPORT_DIR/beebsc.c $CONFIG_DIR/boardsupport.c"

    # Step 1: Instrument
    # We define WARMUP_HEAT and GLOBAL_SCALE_FACTOR as seen in sconstruct.py
    # We use -I support and -I config_dir
    $CLANG -O3 -fprofile-instr-generate \
          -DWARMUP_HEAT=1 -DGLOBAL_SCALE_FACTOR=1 \
          -I "$SUPPORT_DIR" -I "$CONFIG_DIR" \
          $SOURCES $SUPPORT_SOURCES \
          -lm -o "$RESULTS_DIR/${name}_instrumented" 2>/dev/null

    if [ $? -ne 0 ]; then
        echo "  [SKIP] Compilation failed for instrumented binary."
        continue
    fi

    # Step 2: Run to collect profile
    (
        cd "$RESULTS_DIR" || exit
        ./"${name}_instrumented" > /dev/null 2>&1
        
        # Step 3: Merge profile
        if [ -f "default.profraw" ]; then
            $LLVM_PROFDATA merge default.profraw -o "${name}.profdata" 2>/dev/null
            rm -f default.profraw
        fi
    )

    if [ ! -f "$RESULTS_DIR/${name}.profdata" ]; then
        echo "  [SKIP] Profile generation failed."
        continue
    fi

    # Step 4: Recompile with PGO and loop-unroll analysis
    $CLANG -O3 -fprofile-instr-use="$RESULTS_DIR/${name}.profdata" \
          -DPOLYBENCH_USE_SCALAR_LB \
          -fno-vectorize \
          -mllvm -unroll-allow-partial \
          -mllvm -unroll-threshold=1000 \
          -DWARMUP_HEAT=1 -DGLOBAL_SCALE_FACTOR=1 \
          -I "$SUPPORT_DIR" -I "$CONFIG_DIR" \
          $SOURCES $SUPPORT_SOURCES \
          -lm -Rpass=loop-unroll \
          -o "$RESULTS_DIR/${name}_pgo" \
          2> "$REMARKS_DIR/${name}_unroll_remarks.txt"

    if [ $? -eq 0 ]; then
        echo "  [SUCCESS] PGO compilation complete."
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
done

echo "===================================================="
echo "Automation complete."
echo "===================================================="
