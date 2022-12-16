#!/bin/bash -l
#SBATCH --array=0-4000:1000
#SBATCH --job-name=DADA_train_s2c_rand 
#SBATCH --time=30:00:00 
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=6G
#SBATCH --gres=gpu:1
#SBATCH --output=./output_logs/train_s2c_rand_%a.out
#SBATCH --constraint='volta'

module purge
module load anaconda
python train.py --cfg ./configs_s2c/dada_rand_$SLURM_ARRAY_TASK_ID.yml

