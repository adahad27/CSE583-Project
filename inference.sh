#!/bin/bash
#SBATCH --job-name=run
#SBATCH --account=cse583w26_class
#SBATCH --mail-user=ksodum@umich.edu
#SBATCH --mail-type=BEGIN,END
#SBATCH --partition=spgpu
#SBATCH --gpus=1
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=32G
#SBATCH --time=00:20:00
#SBATCH --output=inference.log

# This script runs inference LLMCompiler for testing loop unroll factor prediction

echo "Starting inference..."
echo "=============================================="

python inference.py

echo "Inference completed!"