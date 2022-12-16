#!/bin/bash
#SBATCH --job-name=DADA_test_s2c
#SBATCH --time=02:00:00
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=500M
#SBATCH --output=./output_logs/test_s2c.out
#SBATCH --gres=gpu:1

module purge
module load anaconda
python test.py --cfg ./configs_s2c/dada.yml
