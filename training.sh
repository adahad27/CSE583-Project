#!/bin/bash
#SBATCH --job-name=finetune
#SBATCH --account=cse583w26_class
#SBATCH --mail-user=ksodum@umich.edu
#SBATCH --mail-type=BEGIN,END
#SBATCH --partition=spgpu
#SBATCH --gpus=1
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=32G
#SBATCH --time=00:40:00
#SBATCH --output=training.log

# This script finetunes LLMCompiler for testing loop unroll factor prediction

echo "Starting finetuning..."
echo "=============================================="

python training.py

echo "Finetuning completed!"