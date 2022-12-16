#!/bin/bash -l
#SBATCH --array=0-4000:1000
#SBATCH --job-name=DADA_test_s2c_rand
#SBATCH --time=02:00:00
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=16G
#SBATCH --output=./output_logs/test_s2c_rand_%a.out
#SBATCH --gres=gpu:1

module purge
module load anaconda
python test.py --cfg ./configs_s2c/dada_rand_$SLURM_ARRAY_TASK_ID.yml
