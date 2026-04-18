# 1. request compute node
srun --pty bash

# 2. activate env
source ./env/bin/activate

# 3. run your code
python3 -m inference.py