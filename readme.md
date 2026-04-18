Make sure to run setup.sh before you do anything so you can download the required repos

## To run on Great Lakes
1. SSH into greatlakes: `ssh uniqname@greatlakes.arc-ts.umich.edu`
2. Navigate to your folder in the class directory: `cd /scratch/cse583w26_class_root/cse583w26_class/{uniqname}`.
3. Clone the repo.
4. Load conda `module load python3.10-anaconda/2023.03`
5. Create conda environment `conda create -n myenv python=3.10`
6. Activate environment `conda init bash` then `source ~/.bashrc` then `conda activate myenv`
7. Install dependencies `pip install -r requirements.txt`
8. Run the bash script for the python file you want to run. eg: `sbatch inference.sh`
9. Terminal output will appear in the .log file specified in the bash script.