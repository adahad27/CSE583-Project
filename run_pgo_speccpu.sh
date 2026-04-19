#!/bin/bash

# PGO Unroll Factor Extraction for SPEC CPU 2017 (Pure C Benchmarks)
# Modeled after run_pgo_polybench.sh
#
# This script:
#   1. Instruments each benchmark with -fprofile-instr-generate
#   2. Runs the instrumented binary with test inputs to collect profiles
#   3. Merges the profile data
#   4. Recompiles with PGO + loop-unroll remarks to capture unrolling factors
#   5. Saves loop unroll remarks to speccpu_unroll_remarks/

CLANG="clang"
LLVM_PROFDATA="llvm-profdata"

SPEC_ROOT="./speccpu2017/benchspec/CPU"
RESULTS_DIR="./speccpu_pgo_results"
REMARKS_DIR="./speccpu_unroll_remarks"

rm -rf "$RESULTS_DIR"
rm -rf "$REMARKS_DIR"

mkdir -p "$RESULTS_DIR" "$REMARKS_DIR"

# Helper: filter raw clang stderr to keep only loop-unroll remark blocks
# Each remark block is: remark line, source line (with |), caret line (with ^)
filter_remarks() {
    local raw_file="$1"
    local out_file="$2"
    grep -A2 'remark:.*\-Rpass=loop-unroll' "$raw_file" | grep -v '^--$' > "$out_file"
    rm -f "$raw_file"
}

echo "===================================================="
echo "   SPEC CPU 2017 PGO Unroll Factor Extraction"
echo "===================================================="

###############################################################################
# 519.lbm_r
###############################################################################
BENCH="519.lbm_r"
NAME="lbm"
SRC_DIR="$SPEC_ROOT/$BENCH/src"
DATA_DIR="$SPEC_ROOT/$BENCH/data/test/input"

echo ""
echo "Processing $BENCH ($NAME)..."

# Sources: lbm.c main.c
# Flags: -DSPEC_AUTO_SUPPRESS_OPENMP
# Needs: -lm
# Run: ./lbm_r <timesteps> <output_file> <0|1> <0|1> <obstacle_file>

$CLANG -O3 -fprofile-instr-generate \
    -DSPEC -DSPEC_CPU -DNDEBUG -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_LP64 \
    -std=c99 \
    "$SRC_DIR/lbm.c" "$SRC_DIR/main.c" \
    -lm \
    -o "$RESULTS_DIR/${NAME}_instrumented" 2>/dev/null

if [ $? -ne 0 ]; then
    echo "  SKIPPED: $NAME failed to compile instrumented binary"
else
    # Run with test input: "20 reference.dat 0 1 100_100_130_cf_a.of"
    (
        cd "$RESULTS_DIR" || exit
        cp "../$DATA_DIR/100_100_130_cf_a.of" . 2>/dev/null
        LLVM_PROFILE_FILE="default.profraw" ./"${NAME}_instrumented" 20 reference.dat 0 1 100_100_130_cf_a.of > /dev/null 2>&1

        if [ -f "default.profraw" ]; then
            $LLVM_PROFDATA merge default.profraw -o "${NAME}.profdata" 2>/dev/null
            rm -f default.profraw
        else
            echo "  ERROR: default.profraw not found for $NAME"
            exit 1
        fi
    )

    if [ $? -ne 0 ]; then
        echo "  SKIPPED: $NAME profile collection failed"
    else
        # Recompile with PGO + unroll remarks
        $CLANG -O3 -w \
            -fprofile-instr-use="$RESULTS_DIR/${NAME}.profdata" \
            -DSPEC -DSPEC_CPU -DNDEBUG -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_LP64 \
            -std=c99 \
            -fno-vectorize \
            -mllvm -unroll-allow-partial \
            -mllvm -unroll-threshold=1000 \
            "$SRC_DIR/lbm.c" "$SRC_DIR/main.c" \
            -lm \
            -Rpass=loop-unroll \
            -o "$RESULTS_DIR/${NAME}_pgo" \
            2> "$REMARKS_DIR/${NAME}_unroll_remarks.txt.raw"
        filter_remarks "$REMARKS_DIR/${NAME}_unroll_remarks.txt.raw" "$REMARKS_DIR/${NAME}_unroll_remarks.txt"

        echo "  Unroll decisions for $NAME:"
        if [ -s "$REMARKS_DIR/${NAME}_unroll_remarks.txt" ]; then
            grep "unrolled loop by a factor of" "$REMARKS_DIR/${NAME}_unroll_remarks.txt" \
                | sed 's/^/    /' || echo "    (No partial unrolling factors found)"
        else
            echo "    (No loop unroll remarks found)"
        fi

        echo "Done: $NAME"
    fi
fi

echo "---"

###############################################################################
# 505.mcf_r
###############################################################################
BENCH="505.mcf_r"
NAME="mcf"
SRC_DIR="$SPEC_ROOT/$BENCH/src"
DATA_DIR="$SPEC_ROOT/$BENCH/data/test/input"

echo ""
echo "Processing $BENCH ($NAME)..."

# Sources from object.pm
SOURCES=(
    "$SRC_DIR/mcf.c"
    "$SRC_DIR/mcfutil.c"
    "$SRC_DIR/readmin.c"
    "$SRC_DIR/implicit.c"
    "$SRC_DIR/pstart.c"
    "$SRC_DIR/output.c"
    "$SRC_DIR/treeup.c"
    "$SRC_DIR/pbla.c"
    "$SRC_DIR/pflowup.c"
    "$SRC_DIR/psimplex.c"
    "$SRC_DIR/pbeampp.c"
    "$SRC_DIR/spec_qsort/spec_qsort.c"
)

$CLANG -O3 -fprofile-instr-generate \
    -DSPEC -DSPEC_CPU -DNDEBUG -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_LP64 \
    -std=c99 \
    -I"$SRC_DIR/spec_qsort" \
    "${SOURCES[@]}" \
    -lm \
    -o "$RESULTS_DIR/${NAME}_instrumented" 2>/dev/null

if [ $? -ne 0 ]; then
    echo "  SKIPPED: $NAME failed to compile instrumented binary"
else
    # Run: ./mcf_r inp.in
    (
        cd "$RESULTS_DIR" || exit
        cp "../$DATA_DIR/inp.in" . 2>/dev/null
        LLVM_PROFILE_FILE="default.profraw" ./"${NAME}_instrumented" inp.in > /dev/null 2>&1

        if [ -f "default.profraw" ]; then
            $LLVM_PROFDATA merge default.profraw -o "${NAME}.profdata" 2>/dev/null
            rm -f default.profraw
        else
            echo "  ERROR: default.profraw not found for $NAME"
            exit 1
        fi
    )

    if [ $? -ne 0 ]; then
        echo "  SKIPPED: $NAME profile collection failed"
    else
        $CLANG -O3 -w \
            -fprofile-instr-use="$RESULTS_DIR/${NAME}.profdata" \
            -DSPEC -DSPEC_CPU -DNDEBUG -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_LP64 \
            -std=c99 \
            -I"$SRC_DIR/spec_qsort" \
            -fno-vectorize \
            -mllvm -unroll-allow-partial \
            -mllvm -unroll-threshold=1000 \
            "${SOURCES[@]}" \
            -lm \
            -Rpass=loop-unroll \
            -o "$RESULTS_DIR/${NAME}_pgo" \
            2> "$REMARKS_DIR/${NAME}_unroll_remarks.txt.raw"
        filter_remarks "$REMARKS_DIR/${NAME}_unroll_remarks.txt.raw" "$REMARKS_DIR/${NAME}_unroll_remarks.txt"

        echo "  Unroll decisions for $NAME:"
        if [ -s "$REMARKS_DIR/${NAME}_unroll_remarks.txt" ]; then
            grep "unrolled loop by a factor of" "$REMARKS_DIR/${NAME}_unroll_remarks.txt" \
                | sed 's/^/    /' || echo "    (No partial unrolling factors found)"
        else
            echo "    (No loop unroll remarks found)"
        fi

        echo "Done: $NAME"
    fi
fi

echo "---"

###############################################################################
# 544.nab_r
###############################################################################
BENCH="544.nab_r"
NAME="nab"
SRC_DIR="$SPEC_ROOT/$BENCH/src"
DATA_DIR="$SPEC_ROOT/$BENCH/data/test/input"

echo ""
echo "Processing $BENCH ($NAME)..."

SOURCES=(
    "$SRC_DIR/nabmd.c"
    "$SRC_DIR/sff.c"
    "$SRC_DIR/nblist.c"
    "$SRC_DIR/prm.c"
    "$SRC_DIR/memutil.c"
    "$SRC_DIR/molio.c"
    "$SRC_DIR/molutil.c"
    "$SRC_DIR/errormsg.c"
    "$SRC_DIR/binpos.c"
    "$SRC_DIR/rand2.c"
    "$SRC_DIR/select_atoms.c"
    "$SRC_DIR/reslib.c"
    "$SRC_DIR/database.c"
    "$SRC_DIR/traceback.c"
    "$SRC_DIR/chirvol.c"
    "$SRC_DIR/specrand/specrand.c"
    "$SRC_DIR/regex-alpha/regcomp.c"
    "$SRC_DIR/regex-alpha/regerror.c"
    "$SRC_DIR/regex-alpha/regexec.c"
    "$SRC_DIR/regex-alpha/regfree.c"
)

$CLANG -O3 -fprofile-instr-generate \
    -DSPEC -DSPEC_CPU -DNDEBUG -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_LP64 \
    -DNOPERFLIB -DNOREDUCE \
    -std=c99 \
    -I"$SRC_DIR/specrand" -I"$SRC_DIR/regex-alpha" \
    "${SOURCES[@]}" \
    -lm \
    -o "$RESULTS_DIR/${NAME}_instrumented" 2>/dev/null

if [ $? -ne 0 ]; then
    echo "  SKIPPED: $NAME failed to compile instrumented binary"
else
    # Run: ./nab_r hkrdenq 1930344093 1000
    (
        cd "$RESULTS_DIR" || exit
        cp -r "../$DATA_DIR/hkrdenq" . 2>/dev/null
        LLVM_PROFILE_FILE="default.profraw" ./"${NAME}_instrumented" hkrdenq 1930344093 1000 > /dev/null 2>&1

        if [ -f "default.profraw" ]; then
            $LLVM_PROFDATA merge default.profraw -o "${NAME}.profdata" 2>/dev/null
            rm -f default.profraw
        else
            echo "  ERROR: default.profraw not found for $NAME"
            exit 1
        fi
    )

    if [ $? -ne 0 ]; then
        echo "  SKIPPED: $NAME profile collection failed"
    else
        $CLANG -O3 -w \
            -fprofile-instr-use="$RESULTS_DIR/${NAME}.profdata" \
            -DSPEC -DSPEC_CPU -DNDEBUG -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_LP64 \
            -DNOPERFLIB -DNOREDUCE \
            -std=c99 \
            -I"$SRC_DIR/specrand" -I"$SRC_DIR/regex-alpha" \
            -fno-vectorize \
            -mllvm -unroll-allow-partial \
            -mllvm -unroll-threshold=1000 \
            "${SOURCES[@]}" \
            -lm \
            -Rpass=loop-unroll \
            -o "$RESULTS_DIR/${NAME}_pgo" \
            2> "$REMARKS_DIR/${NAME}_unroll_remarks.txt.raw"
        filter_remarks "$REMARKS_DIR/${NAME}_unroll_remarks.txt.raw" "$REMARKS_DIR/${NAME}_unroll_remarks.txt"

        echo "  Unroll decisions for $NAME:"
        if [ -s "$REMARKS_DIR/${NAME}_unroll_remarks.txt" ]; then
            grep "unrolled loop by a factor of" "$REMARKS_DIR/${NAME}_unroll_remarks.txt" \
                | sed 's/^/    /' || echo "    (No partial unrolling factors found)"
        else
            echo "    (No loop unroll remarks found)"
        fi

        echo "Done: $NAME"
    fi
fi

echo "---"

###############################################################################
# 500.perlbench_r
###############################################################################
BENCH="500.perlbench_r"
NAME="perlbench"
SRC_DIR="$SPEC_ROOT/$BENCH/src"
DATA_DIR="$SPEC_ROOT/$BENCH/data/test/input"

echo ""
echo "Processing $BENCH ($NAME)..."

# Many source files - compile them all
SOURCES=(
    "$SRC_DIR/av.c" "$SRC_DIR/caretx.c" "$SRC_DIR/deb.c" "$SRC_DIR/doio.c"
    "$SRC_DIR/doop.c" "$SRC_DIR/dump.c" "$SRC_DIR/globals.c" "$SRC_DIR/gv.c"
    "$SRC_DIR/hv.c" "$SRC_DIR/keywords.c" "$SRC_DIR/locale.c"
    "$SRC_DIR/mg.c" "$SRC_DIR/numeric.c" "$SRC_DIR/op.c" "$SRC_DIR/pad.c"
    "$SRC_DIR/perl.c" "$SRC_DIR/perlapi.c" "$SRC_DIR/perlio.c" "$SRC_DIR/perlmain.c"
    "$SRC_DIR/perly.c" "$SRC_DIR/pp.c" "$SRC_DIR/pp_ctl.c" "$SRC_DIR/pp_hot.c"
    "$SRC_DIR/pp_pack.c" "$SRC_DIR/pp_sort.c" "$SRC_DIR/pp_sys.c"
    "$SRC_DIR/regcomp.c" "$SRC_DIR/regexec.c" "$SRC_DIR/run.c" "$SRC_DIR/scope.c"
    "$SRC_DIR/sv.c" "$SRC_DIR/taint.c" "$SRC_DIR/toke.c"
    "$SRC_DIR/universal.c" "$SRC_DIR/utf8.c" "$SRC_DIR/util.c" "$SRC_DIR/reentr.c"
    "$SRC_DIR/mro_core.c" "$SRC_DIR/mathoms.c"
    "$SRC_DIR/specrand/specrand.c"
    "$SRC_DIR/dist/PathTools/Cwd.c"
    "$SRC_DIR/dist/Data-Dumper/Dumper.c"
    "$SRC_DIR/ext/Devel-Peek/Peek.c"
    "$SRC_DIR/cpan/Digest-MD5/MD5.c"
    "$SRC_DIR/cpan/Digest-SHA/SHA.c"
    "$SRC_DIR/DynaLoader.c"
    "$SRC_DIR/dist/IO/IO.c"
    "$SRC_DIR/dist/IO/poll.c"
    "$SRC_DIR/cpan/MIME-Base64/Base64.c"
    "$SRC_DIR/Opcode.c"
    "$SRC_DIR/dist/Storable/Storable.c"
    "$SRC_DIR/ext/Sys-Hostname/Hostname.c"
    "$SRC_DIR/cpan/Time-HiRes/HiRes.c"
    "$SRC_DIR/ext/XS-Typemap/stdio.c"
    "$SRC_DIR/ext/attributes/attributes.c"
    "$SRC_DIR/cpan/HTML-Parser/Parser.c"
    "$SRC_DIR/ext/mro/mro.c"
    "$SRC_DIR/ext/re/re.c"
    "$SRC_DIR/ext/re/re_comp.c"
    "$SRC_DIR/ext/re/re_exec.c"
    "$SRC_DIR/ext/arybase/arybase.c"
    "$SRC_DIR/ext/PerlIO-scalar/scalar.c"
    "$SRC_DIR/ext/PerlIO-via/via.c"
    "$SRC_DIR/ext/File-Glob/bsd_glob.c"
    "$SRC_DIR/ext/File-Glob/Glob.c"
    "$SRC_DIR/ext/Hash-Util/Util.c"
    "$SRC_DIR/ext/Hash-Util-FieldHash/FieldHash.c"
    "$SRC_DIR/ext/Tie-Hash-NamedCapture/NamedCapture.c"
    "$SRC_DIR/cpan/Scalar-List-Utils/ListUtil.c"
)

PERLBENCH_FLAGS="-DPERL_CORE -DSPEC -DSPEC_CPU -DNDEBUG -DSPEC_LP64 -DDOUBLE_SLASHES_SPECIAL=0 -DSPEC_AUTO_SUPPRESS_OPENMP -D_LARGE_FILES -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64"
PERLBENCH_INCLUDES="-I$SRC_DIR -I$SRC_DIR/dist/IO -I$SRC_DIR/cpan/Time-HiRes -I$SRC_DIR/cpan/HTML-Parser -I$SRC_DIR/ext/re -I$SRC_DIR/specrand"

$CLANG -O3 -fprofile-instr-generate \
    $PERLBENCH_FLAGS $PERLBENCH_INCLUDES \
    -std=c99 \
    "${SOURCES[@]}" \
    -lm \
    -o "$RESULTS_DIR/${NAME}_instrumented" 2>/dev/null

if [ $? -ne 0 ]; then
    echo "  SKIPPED: $NAME failed to compile instrumented binary"
else
    # Run with a simple test
    (
        cd "$RESULTS_DIR" || exit
        if [ -d "../$DATA_DIR" ]; then
            cp -r "../$DATA_DIR/"* . 2>/dev/null
        fi
        # perlbench test inputs are perl scripts; run a simple one
        if ls *.t *.pl 2>/dev/null | head -1 > /dev/null 2>&1; then
            FIRST_TEST=$(ls *.t *.pl 2>/dev/null | head -1)
            LLVM_PROFILE_FILE="default.profraw" ./"${NAME}_instrumented" -I. -I./lib "$FIRST_TEST" > /dev/null 2>&1
        fi

        if [ -f "default.profraw" ]; then
            $LLVM_PROFDATA merge default.profraw -o "${NAME}.profdata" 2>/dev/null
            rm -f default.profraw
        else
            echo "  ERROR: default.profraw not found for $NAME"
            exit 1
        fi
    )

    if [ $? -ne 0 ]; then
        echo "  SKIPPED: $NAME profile collection failed"
    else
        $CLANG -O3 -w \
            -fprofile-instr-use="$RESULTS_DIR/${NAME}.profdata" \
            $PERLBENCH_FLAGS $PERLBENCH_INCLUDES \
            -std=c99 \
            -fno-vectorize \
            -mllvm -unroll-allow-partial \
            -mllvm -unroll-threshold=1000 \
            "${SOURCES[@]}" \
            -lm \
            -Rpass=loop-unroll \
            -o "$RESULTS_DIR/${NAME}_pgo" \
            2> "$REMARKS_DIR/${NAME}_unroll_remarks.txt.raw"
        filter_remarks "$REMARKS_DIR/${NAME}_unroll_remarks.txt.raw" "$REMARKS_DIR/${NAME}_unroll_remarks.txt"

        echo "  Unroll decisions for $NAME:"
        if [ -s "$REMARKS_DIR/${NAME}_unroll_remarks.txt" ]; then
            grep "unrolled loop by a factor of" "$REMARKS_DIR/${NAME}_unroll_remarks.txt" \
                | sed 's/^/    /' || echo "    (No partial unrolling factors found)"
        else
            echo "    (No loop unroll remarks found)"
        fi

        echo "Done: $NAME"
    fi
fi

echo "---"

###############################################################################
# 502.gcc_r
###############################################################################
BENCH="502.gcc_r"
NAME="gcc"
SRC_DIR="$SPEC_ROOT/$BENCH/src"
DATA_DIR="$SPEC_ROOT/$BENCH/data/test/input"

echo ""
echo "Processing $BENCH ($NAME)..."

# gcc_r has 400+ source files -- gather them all
GCC_SOURCES=$(find "$SRC_DIR" -maxdepth 1 -name "*.c" | sort)
# Add spec_qsort
GCC_SOURCES="$GCC_SOURCES $SRC_DIR/spec_qsort/spec_qsort.c"

GCC_FLAGS="-DSPEC -DSPEC_CPU -DNDEBUG -DSPEC_LP64 -DSPEC_502 -DSPEC_AUTO_SUPPRESS_OPENMP -DIN_GCC -DHAVE_CONFIG_H"
GCC_INCLUDES="-I$SRC_DIR -I$SRC_DIR/include -I$SRC_DIR/spec_qsort"

$CLANG -O3 -fprofile-instr-generate \
    $GCC_FLAGS $GCC_INCLUDES \
    -std=c99 \
    $GCC_SOURCES \
    -lm \
    -o "$RESULTS_DIR/${NAME}_instrumented" 2>/dev/null

if [ $? -ne 0 ]; then
    echo "  SKIPPED: $NAME failed to compile instrumented binary"
else
    # Run with test input  
    (
        cd "$RESULTS_DIR" || exit
        if [ -d "../$DATA_DIR" ]; then
            cp -r "../$DATA_DIR/"* . 2>/dev/null
        fi
        # Parse control file for run arguments
        if [ -f "control" ]; then
            while IFS= read -r line; do
                [[ "$line" =~ ^#.*$ ]] && continue
                [[ -z "$line" ]] && continue
                read -r src opts <<< "$line"
                LLVM_PROFILE_FILE="default.profraw" ./"${NAME}_instrumented" "$src" $opts -o /dev/null > /dev/null 2>&1
                break  # Just run the first test case
            done < control
        fi

        if [ -f "default.profraw" ]; then
            $LLVM_PROFDATA merge default.profraw -o "${NAME}.profdata" 2>/dev/null
            rm -f default.profraw
        else
            echo "  ERROR: default.profraw not found for $NAME"
            exit 1
        fi
    )

    if [ $? -ne 0 ]; then
        echo "  SKIPPED: $NAME profile collection failed"
    else
        $CLANG -O3 -w \
            -fprofile-instr-use="$RESULTS_DIR/${NAME}.profdata" \
            $GCC_FLAGS $GCC_INCLUDES \
            -std=c99 \
            -fno-vectorize \
            -mllvm -unroll-allow-partial \
            -mllvm -unroll-threshold=1000 \
            $GCC_SOURCES \
            -lm \
            -Rpass=loop-unroll \
            -o "$RESULTS_DIR/${NAME}_pgo" \
            2> "$REMARKS_DIR/${NAME}_unroll_remarks.txt.raw"
        filter_remarks "$REMARKS_DIR/${NAME}_unroll_remarks.txt.raw" "$REMARKS_DIR/${NAME}_unroll_remarks.txt"

        echo "  Unroll decisions for $NAME:"
        if [ -s "$REMARKS_DIR/${NAME}_unroll_remarks.txt" ]; then
            grep "unrolled loop by a factor of" "$REMARKS_DIR/${NAME}_unroll_remarks.txt" \
                | sed 's/^/    /' || echo "    (No partial unrolling factors found)"
        else
            echo "    (No loop unroll remarks found)"
        fi

        echo "Done: $NAME"
    fi
fi

echo "---"

###############################################################################
# 557.xz_r
###############################################################################
BENCH="557.xz_r"
NAME="xz"
SRC_DIR="$SPEC_ROOT/$BENCH/src"
DATA_DIR="$SPEC_ROOT/$BENCH/data/test/input"

echo ""
echo "Processing $BENCH ($NAME)..."

# xz needs an architecture byteorder; detect it
BYTEORDER=$(python3 -c "import sys; print(''.join([str(i+1) for i in range(sys.byteorder == 'little' and 8 or 8)]))" 2>/dev/null || echo "12345678")
# Use a simpler approach
BYTEORDER="12345678"

XZ_FLAGS="-DSPEC -DSPEC_CPU -DNDEBUG -DSPEC_LP64 -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x${BYTEORDER} -DHAVE_CONFIG_H -DSPEC_MEM_IO -DSPEC_XZ"
XZ_INCLUDES="-I$SRC_DIR -I$SRC_DIR/spec_mem_io -I$SRC_DIR/sha-2 -I$SRC_DIR/common -I$SRC_DIR/liblzma/api -I$SRC_DIR/liblzma/lzma -I$SRC_DIR/liblzma/common -I$SRC_DIR/liblzma/check -I$SRC_DIR/liblzma/simple -I$SRC_DIR/liblzma/delta -I$SRC_DIR/liblzma/lz -I$SRC_DIR/liblzma/rangecoder"

XZ_SOURCES=(
    "$SRC_DIR/spec.c"
    "$SRC_DIR/spec_xz.c"
    "$SRC_DIR/pxz.c"
    "$SRC_DIR/common/tuklib_physmem.c"
    "$SRC_DIR/liblzma/common/common.c"
    "$SRC_DIR/liblzma/common/block_util.c"
    "$SRC_DIR/liblzma/common/easy_preset.c"
    "$SRC_DIR/liblzma/common/filter_common.c"
    "$SRC_DIR/liblzma/common/hardware_physmem.c"
    "$SRC_DIR/liblzma/common/index.c"
    "$SRC_DIR/liblzma/common/stream_flags_common.c"
    "$SRC_DIR/liblzma/common/vli_size.c"
    "$SRC_DIR/liblzma/common/alone_encoder.c"
    "$SRC_DIR/liblzma/common/block_buffer_encoder.c"
    "$SRC_DIR/liblzma/common/block_encoder.c"
    "$SRC_DIR/liblzma/common/block_header_encoder.c"
    "$SRC_DIR/liblzma/common/easy_buffer_encoder.c"
    "$SRC_DIR/liblzma/common/easy_encoder.c"
    "$SRC_DIR/liblzma/common/easy_encoder_memusage.c"
    "$SRC_DIR/liblzma/common/filter_buffer_encoder.c"
    "$SRC_DIR/liblzma/common/filter_encoder.c"
    "$SRC_DIR/liblzma/common/filter_flags_encoder.c"
    "$SRC_DIR/liblzma/common/index_encoder.c"
    "$SRC_DIR/liblzma/common/stream_buffer_encoder.c"
    "$SRC_DIR/liblzma/common/stream_encoder.c"
    "$SRC_DIR/liblzma/common/stream_flags_encoder.c"
    "$SRC_DIR/liblzma/common/vli_encoder.c"
    "$SRC_DIR/liblzma/common/alone_decoder.c"
    "$SRC_DIR/liblzma/common/auto_decoder.c"
    "$SRC_DIR/liblzma/common/block_buffer_decoder.c"
    "$SRC_DIR/liblzma/common/block_decoder.c"
    "$SRC_DIR/liblzma/common/block_header_decoder.c"
    "$SRC_DIR/liblzma/common/easy_decoder_memusage.c"
    "$SRC_DIR/liblzma/common/filter_buffer_decoder.c"
    "$SRC_DIR/liblzma/common/filter_decoder.c"
    "$SRC_DIR/liblzma/common/filter_flags_decoder.c"
    "$SRC_DIR/liblzma/common/index_decoder.c"
    "$SRC_DIR/liblzma/common/index_hash.c"
    "$SRC_DIR/liblzma/common/stream_buffer_decoder.c"
    "$SRC_DIR/liblzma/common/stream_decoder.c"
    "$SRC_DIR/liblzma/common/stream_flags_decoder.c"
    "$SRC_DIR/liblzma/common/vli_decoder.c"
    "$SRC_DIR/liblzma/check/check.c"
    "$SRC_DIR/liblzma/check/crc32_table.c"
    "$SRC_DIR/liblzma/check/crc32_fast.c"
    "$SRC_DIR/liblzma/check/crc64_table.c"
    "$SRC_DIR/liblzma/check/crc64_fast.c"
    "$SRC_DIR/liblzma/check/sha256.c"
    "$SRC_DIR/liblzma/lz/lz_encoder.c"
    "$SRC_DIR/liblzma/lz/lz_encoder_mf.c"
    "$SRC_DIR/liblzma/lz/lz_decoder.c"
    "$SRC_DIR/liblzma/lzma/lzma_encoder.c"
    "$SRC_DIR/liblzma/lzma/lzma_encoder_presets.c"
    "$SRC_DIR/liblzma/lzma/lzma_encoder_optimum_fast.c"
    "$SRC_DIR/liblzma/lzma/lzma_encoder_optimum_normal.c"
    "$SRC_DIR/liblzma/lzma/fastpos_table.c"
    "$SRC_DIR/liblzma/lzma/lzma_decoder.c"
    "$SRC_DIR/liblzma/lzma/lzma2_encoder.c"
    "$SRC_DIR/liblzma/lzma/lzma2_decoder.c"
    "$SRC_DIR/liblzma/rangecoder/price_table.c"
    "$SRC_DIR/liblzma/delta/delta_common.c"
    "$SRC_DIR/liblzma/delta/delta_encoder.c"
    "$SRC_DIR/liblzma/delta/delta_decoder.c"
    "$SRC_DIR/liblzma/simple/simple_coder.c"
    "$SRC_DIR/liblzma/simple/simple_encoder.c"
    "$SRC_DIR/liblzma/simple/simple_decoder.c"
    "$SRC_DIR/liblzma/simple/x86.c"
    "$SRC_DIR/liblzma/simple/powerpc.c"
    "$SRC_DIR/liblzma/simple/ia64.c"
    "$SRC_DIR/liblzma/simple/arm.c"
    "$SRC_DIR/liblzma/simple/armthumb.c"
    "$SRC_DIR/liblzma/simple/sparc.c"
    "$SRC_DIR/xz/args.c"
    "$SRC_DIR/xz/coder.c"
    "$SRC_DIR/xz/file_io.c"
    "$SRC_DIR/xz/hardware.c"
    "$SRC_DIR/xz/list.c"
    "$SRC_DIR/xz/main.c"
    "$SRC_DIR/xz/message.c"
    "$SRC_DIR/xz/options.c"
    "$SRC_DIR/xz/signals.c"
    "$SRC_DIR/xz/util.c"
    "$SRC_DIR/common/tuklib_open_stdxxx.c"
    "$SRC_DIR/common/tuklib_progname.c"
    "$SRC_DIR/common/tuklib_exit.c"
    "$SRC_DIR/common/tuklib_cpucores.c"
    "$SRC_DIR/common/tuklib_mbstr_width.c"
    "$SRC_DIR/common/tuklib_mbstr_fw.c"
    "$SRC_DIR/spec_mem_io/spec_mem_io.c"
    "$SRC_DIR/sha-2/sha512.c"
)

$CLANG -O3 -fprofile-instr-generate \
    $XZ_FLAGS $XZ_INCLUDES \
    -std=c99 \
    "${XZ_SOURCES[@]}" \
    -lm \
    -o "$RESULTS_DIR/${NAME}_instrumented" 2>/dev/null

if [ $? -ne 0 ]; then
    echo "  SKIPPED: $NAME failed to compile instrumented binary"
else
    # Run with first test case from control file
    # Format: cpu2006docs.tar <size> <SHA> <origsize> <compsize> <levels...>
    (
        cd "$RESULTS_DIR" || exit
        # Copy test data
        if [ -d "../$DATA_DIR" ]; then
            cp "../$DATA_DIR/"* . 2>/dev/null
        fi
        # Find the xz compressed test file
        XZ_FILE=$(ls *.xz 2>/dev/null | head -1)
        if [ -n "$XZ_FILE" ]; then
            # Run first non-comment line from control
            ARGS=$(grep -v "^#" control 2>/dev/null | grep -v "^$" | head -1)
            if [ -n "$ARGS" ]; then
                read -r fname size sum min max levels <<< "$ARGS"
                LLVM_PROFILE_FILE="default.profraw" ./"${NAME}_instrumented" "${fname}.xz" $size $sum $min $max $levels > /dev/null 2>&1
            fi
        fi

        if [ -f "default.profraw" ]; then
            $LLVM_PROFDATA merge default.profraw -o "${NAME}.profdata" 2>/dev/null
            rm -f default.profraw
        else
            echo "  ERROR: default.profraw not found for $NAME"
            exit 1
        fi
    )

    if [ $? -ne 0 ]; then
        echo "  SKIPPED: $NAME profile collection failed"
    else
        $CLANG -O3 -w \
            -fprofile-instr-use="$RESULTS_DIR/${NAME}.profdata" \
            $XZ_FLAGS $XZ_INCLUDES \
            -std=c99 \
            -fno-vectorize \
            -mllvm -unroll-allow-partial \
            -mllvm -unroll-threshold=1000 \
            "${XZ_SOURCES[@]}" \
            -lm \
            -Rpass=loop-unroll \
            -o "$RESULTS_DIR/${NAME}_pgo" \
            2> "$REMARKS_DIR/${NAME}_unroll_remarks.txt.raw"
        filter_remarks "$REMARKS_DIR/${NAME}_unroll_remarks.txt.raw" "$REMARKS_DIR/${NAME}_unroll_remarks.txt"

        echo "  Unroll decisions for $NAME:"
        if [ -s "$REMARKS_DIR/${NAME}_unroll_remarks.txt" ]; then
            grep "unrolled loop by a factor of" "$REMARKS_DIR/${NAME}_unroll_remarks.txt" \
                | sed 's/^/    /' || echo "    (No partial unrolling factors found)"
        else
            echo "    (No loop unroll remarks found)"
        fi

        echo "Done: $NAME"
    fi
fi

echo "---"

###############################################################################
# 525.x264_r (x264 encoder only)
###############################################################################
BENCH="525.x264_r"
NAME="x264"
SRC_DIR="$SPEC_ROOT/$BENCH/src"
DATA_DIR="$SPEC_ROOT/$BENCH/data/test/input"

echo ""
echo "Processing $BENCH ($NAME) - x264 encoder..."

X264_SOURCES=(
    "$SRC_DIR/x264_src/common/mc.c"
    "$SRC_DIR/x264_src/common/predict.c"
    "$SRC_DIR/x264_src/common/pixel.c"
    "$SRC_DIR/x264_src/common/macroblock.c"
    "$SRC_DIR/x264_src/common/frame.c"
    "$SRC_DIR/x264_src/common/dct.c"
    "$SRC_DIR/x264_src/common/cpu.c"
    "$SRC_DIR/x264_src/common/cabac.c"
    "$SRC_DIR/x264_src/common/common.c"
    "$SRC_DIR/x264_src/common/mdate.c"
    "$SRC_DIR/x264_src/common/rectangle.c"
    "$SRC_DIR/x264_src/common/set.c"
    "$SRC_DIR/x264_src/common/quant.c"
    "$SRC_DIR/x264_src/common/deblock.c"
    "$SRC_DIR/x264_src/common/vlc.c"
    "$SRC_DIR/x264_src/common/mvpred.c"
    "$SRC_DIR/x264_src/encoder/analyse.c"
    "$SRC_DIR/x264_src/encoder/me.c"
    "$SRC_DIR/x264_src/encoder/ratecontrol.c"
    "$SRC_DIR/x264_src/encoder/set.c"
    "$SRC_DIR/x264_src/encoder/macroblock.c"
    "$SRC_DIR/x264_src/encoder/cabac.c"
    "$SRC_DIR/x264_src/encoder/cavlc.c"
    "$SRC_DIR/x264_src/encoder/encoder.c"
    "$SRC_DIR/x264_src/encoder/lookahead.c"
    "$SRC_DIR/x264_src/input/timecode.c"
    "$SRC_DIR/x264_src/input/yuv.c"
    "$SRC_DIR/x264_src/input/y4m.c"
    "$SRC_DIR/x264_src/output/raw.c"
    "$SRC_DIR/x264_src/output/matroska.c"
    "$SRC_DIR/x264_src/output/matroska_ebml.c"
    "$SRC_DIR/x264_src/output/flv.c"
    "$SRC_DIR/x264_src/output/flv_bytestream.c"
    "$SRC_DIR/x264_src/input/thread.c"
    "$SRC_DIR/x264_src/x264.c"
    "$SRC_DIR/x264_src/extras/getopt.c"
)

X264_FLAGS="-DSPEC -DSPEC_CPU -DNDEBUG -DSPEC_LP64 -DSPEC_AUTO_SUPPRESS_OPENMP"
X264_INCLUDES="-I$SRC_DIR/ldecod_src/inc -I$SRC_DIR/x264_src -I$SRC_DIR/x264_src/extras -I$SRC_DIR/x264_src/common"

# Detect byte order
BYTE_ORDER=$(python3 -c "import struct; print(hex(struct.unpack('<Q', bytes(range(1,9)))[0]))" 2>/dev/null || echo "0x0807060504030201")
X264_FLAGS="$X264_FLAGS -DSPEC_AUTO_BYTEORDER=$BYTE_ORDER"

$CLANG -O3 -fprofile-instr-generate \
    $X264_FLAGS $X264_INCLUDES \
    -std=c99 \
    "${X264_SOURCES[@]}" \
    -lm \
    -o "$RESULTS_DIR/${NAME}_instrumented" 2>/dev/null

if [ $? -ne 0 ]; then
    echo "  SKIPPED: $NAME failed to compile instrumented binary"
else
    echo "  NOTE: x264 requires YUV input generated by ldecod; skipping profile run."
    echo "  Compiling PGO pass without profile data (unroll remarks from -O3)..."

    # Even without profile data, we can still capture -O3 unroll remarks
    $CLANG -O3 -w \
        $X264_FLAGS $X264_INCLUDES \
        -std=c99 \
        -fno-vectorize \
        -mllvm -unroll-allow-partial \
        -mllvm -unroll-threshold=1000 \
        "${X264_SOURCES[@]}" \
        -lm \
        -Rpass=loop-unroll \
        -o "$RESULTS_DIR/${NAME}_opt" \
        2> "$REMARKS_DIR/${NAME}_unroll_remarks.txt.raw"
    filter_remarks "$REMARKS_DIR/${NAME}_unroll_remarks.txt.raw" "$REMARKS_DIR/${NAME}_unroll_remarks.txt"

    echo "  Unroll decisions for $NAME:"
    if [ -s "$REMARKS_DIR/${NAME}_unroll_remarks.txt" ]; then
        grep "unrolled loop by a factor of" "$REMARKS_DIR/${NAME}_unroll_remarks.txt" \
            | sed 's/^/    /' || echo "    (No partial unrolling factors found)"
    else
        echo "    (No loop unroll remarks found)"
    fi

    echo "Done: $NAME"
fi

echo "---"

###############################################################################
# 538.imagick_r
###############################################################################
BENCH="538.imagick_r"
NAME="imagick"
SRC_DIR="$SPEC_ROOT/$BENCH/src"
DATA_DIR="$SPEC_ROOT/$BENCH/data/test/input"

echo ""
echo "Processing $BENCH ($NAME)..."

# Gather all .c files from the imagick source (coders, filters, magick, wand, utilities)
IMAGICK_SOURCES=$(find "$SRC_DIR" -name "*.c" ! -path "*/image_validator/*" | sort)

IMAGICK_FLAGS="-DSPEC -DSPEC_CPU -DNDEBUG -DSPEC_LP64 -DSPEC_AUTO_SUPPRESS_OPENMP"
IMAGICK_INCLUDES="-I$SRC_DIR"

$CLANG -O3 -fprofile-instr-generate \
    $IMAGICK_FLAGS $IMAGICK_INCLUDES \
    -std=c99 \
    $IMAGICK_SOURCES \
    -lm \
    -o "$RESULTS_DIR/${NAME}_instrumented" 2>/dev/null

if [ $? -ne 0 ]; then
    echo "  SKIPPED: $NAME failed to compile instrumented binary"
    echo "  Trying to capture unroll remarks from -O3 compilation..."

    $CLANG -O3 -w \
        $IMAGICK_FLAGS $IMAGICK_INCLUDES \
        -std=c99 \
        -fno-vectorize \
        -mllvm -unroll-allow-partial \
        -mllvm -unroll-threshold=1000 \
        $IMAGICK_SOURCES \
        -lm \
        -Rpass=loop-unroll \
        -o "$RESULTS_DIR/${NAME}_opt" \
        2> "$REMARKS_DIR/${NAME}_unroll_remarks.txt.raw" || true
    filter_remarks "$REMARKS_DIR/${NAME}_unroll_remarks.txt.raw" "$REMARKS_DIR/${NAME}_unroll_remarks.txt"

    if [ -s "$REMARKS_DIR/${NAME}_unroll_remarks.txt" ]; then
        echo "  Unroll decisions for $NAME:"
        grep "unrolled loop by a factor of" "$REMARKS_DIR/${NAME}_unroll_remarks.txt" \
            | sed 's/^/    /' || echo "    (No partial unrolling factors found)"
    fi
else
    # Run with test input
    (
        cd "$RESULTS_DIR" || exit
        if [ -d "../$DATA_DIR" ]; then
            cp -r "../$DATA_DIR/"* . 2>/dev/null
        fi
        # Parse control file
        if [ -f "control" ]; then
            ARGS=$(grep "^convert" control 2>/dev/null | head -1)
            if [ -n "$ARGS" ]; then
                read -r exe output error rest <<< "$ARGS"
                LLVM_PROFILE_FILE="default.profraw" ./"${NAME}_instrumented" $rest > /dev/null 2>&1
            fi
        fi

        if [ -f "default.profraw" ]; then
            $LLVM_PROFDATA merge default.profraw -o "${NAME}.profdata" 2>/dev/null
            rm -f default.profraw
        else
            echo "  ERROR: default.profraw not found for $NAME"
            exit 1
        fi
    )

    if [ $? -ne 0 ]; then
        echo "  SKIPPED: $NAME profile collection failed"
    else
        $CLANG -O3 -w \
            -fprofile-instr-use="$RESULTS_DIR/${NAME}.profdata" \
            $IMAGICK_FLAGS $IMAGICK_INCLUDES \
            -std=c99 \
            -fno-vectorize \
            -mllvm -unroll-allow-partial \
            -mllvm -unroll-threshold=1000 \
            $IMAGICK_SOURCES \
            -lm \
            -Rpass=loop-unroll \
            -o "$RESULTS_DIR/${NAME}_pgo" \
            2> "$REMARKS_DIR/${NAME}_unroll_remarks.txt.raw"
        filter_remarks "$REMARKS_DIR/${NAME}_unroll_remarks.txt.raw" "$REMARKS_DIR/${NAME}_unroll_remarks.txt"

        echo "  Unroll decisions for $NAME:"
        if [ -s "$REMARKS_DIR/${NAME}_unroll_remarks.txt" ]; then
            grep "unrolled loop by a factor of" "$REMARKS_DIR/${NAME}_unroll_remarks.txt" \
                | sed 's/^/    /' || echo "    (No partial unrolling factors found)"
        else
            echo "    (No loop unroll remarks found)"
        fi

        echo "Done: $NAME"
    fi
fi

echo "---"

echo ""
echo "===================================================="
echo "Automation complete."
echo "Binaries: $RESULTS_DIR/"
echo "Unroll remarks: $REMARKS_DIR/"
echo "===================================================="
