#!/bin/bash

# Use xcrun for macOS tool stability
CLANG="xcrun clang"
LLVM_PROFDATA="xcrun llvm-profdata"

POLYBENCH_ROOT="./PolyBenchC-4.2.1"
UTILITIES="$POLYBENCH_ROOT/utilities"
RESULTS_DIR="./pgo_results"
REMARKS_DIR="./unroll_remarks"

rm -rf $RESULTS_DIR
rm -rf $REMARKS_DIR

mkdir -p "$RESULTS_DIR" "$REMARKS_DIR"

# Find kernels
KERNELS=$(find "$POLYBENCH_ROOT" -name "*.c" ! -path "*/utilities/*" ! -name "polybench.c" ! -name "*.orig.c")

for kernel in $KERNELS; do
    name=$(basename $(dirname "$kernel"))
    echo "Processing $name..."

    # Step 1: Instrument
    $CLANG -O3 -fprofile-instr-generate \
          -DLARGE_DATASET \
          -I "$UTILITIES" "$UTILITIES/polybench.c" \
          "$kernel" \
          -o "$RESULTS_DIR/${name}_instrumented"

    if [ $? -ne 0 ]; then
        echo "  SKIPPED: $name failed to compile instrumented binary"
        continue
    fi

    # Step 2: Run to collect profile
    (
        cd "$RESULTS_DIR" || exit
        ./"${name}_instrumented" > /dev/null 2>&1
        
        # Step 3: Merge profile (using xcrun tool)
        if [ -f "default.profraw" ]; then
            $LLVM_PROFDATA merge default.profraw -o "${name}.profdata"
            rm -f default.profraw
        else
            echo "  ERROR: default.profraw not found for $name"
            exit 1
        fi
    )

    if [ $? -ne 0 ]; then
        echo "  SKIPPED: $name profile collection failed"
        continue
    fi

        # Step 4: Recompile with PGO + specific unroll flags
    $CLANG -O3 \
          -fprofile-instr-use="$RESULTS_DIR/${name}.profdata" \
          -DLARGE_DATASET \
          -DPOLYBENCH_USE_SCALAR_LB \
          -fno-vectorize \
          -mllvm -unroll-allow-partial \
          -mllvm -unroll-threshold=1000 \
          -I "$UTILITIES" "$UTILITIES/polybench.c" \
          "$kernel" \
          -Rpass=loop-unroll \
          -o "$RESULTS_DIR/${name}_pgo" \
          2> "$REMARKS_DIR/${name}_unroll_remarks.txt"

    # Print the specific unroll factor results
    echo "  Unroll decisions for $name:"
    if [ -s "$REMARKS_DIR/${name}_unroll_remarks.txt" ]; then
        grep "unrolled loop by a factor of" "$REMARKS_DIR/${name}_unroll_remarks.txt" \
             | sed 's/^/    /' || echo "    (No partial unrolling factors found)"
    else
        echo "    (No loop unroll remarks found)"
    fi



    # Print summaries
    echo "  Unroll decisions for $name:"
    grep "unrolled loop" "$REMARKS_DIR/${name}_unroll_remarks.txt" | sed 's/^/    /' || echo "    (No loops unrolled)"

    echo "Done: $name"
    echo "---"
done

# Aggregation logic...
