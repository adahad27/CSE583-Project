#!/bin/bash
# setup.sh - Clones necessary benchmark suites

# PolyBench (if missing)
if [ ! -d "PolyBenchC-4.2.1" ]; then
    echo "Cloning PolyBench..."
    git clone https://github.com/PolyBench/PolyBenchC.git PolyBenchC-4.2.1
fi

# Embench-IoT (if missing)
if [ ! -d "embench-iot" ]; then
    echo "Cloning Embench-IoT..."
    git clone https://github.com/embench/embench-iot.git
fi

# llvm-test-suite (Shallow clone to save space)
if [ ! -d "llvm-test-suite" ]; then
    echo "Cloning LLVM test suite (shallow)..."
    git clone --depth 1 https://github.com/llvm/llvm-test-suite.git
fi

# NPB 3.0 OMP C (if missing)
if [ ! -d "NPB3.0-omp-C" ]; then
    echo "Cloning NPB3.0-omp-C..."
    git clone https://github.com/benchmark-subsetting/NPB3.0-omp-C.git
fi


