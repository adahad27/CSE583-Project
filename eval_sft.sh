#!/bin/bash
#SBATCH --job-name=eval-sft
#SBATCH --account=cse583w26_class
#SBATCH --mail-user=ksodum@umich.edu
#SBATCH --mail-type=BEGIN,END
#SBATCH --partition=spgpu
#SBATCH --gpus=1
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=32G
#SBATCH --time=00:30:00
#SBATCH --output=eval_sft.log

echo "Starting SFT eval..."
echo "=============================================="

python eval_sft.py

echo "SFT eval completed!"
