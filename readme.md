Make sure to run setup.sh before you do anything so you can download the required repos

## To run on Great Lakes
1. SSH into greatlakes: `ssh uniqname@greatlakes.arc-ts.umich.edu`
2. Navigate to your folder in the class directory: `cd /scratch/cse583w26_class_root/cse583w26_class/{uniqname}`.
3. Clone the repo.
4. Create conda environment `conda create -n myenv python=3.10`, activate environment, and then `pip install` relevant libraries
5. Run the bash script for the python file you want to run. eg: `sbatch inference.sh`
6. Terminal output will appear in the .log file specified in the bash script.