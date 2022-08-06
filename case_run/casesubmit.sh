#!/bin/bash

#SBATCH --job-name=Case_submit
#SBATCH --ntasks=1
#SBATCH --nodes=1             
#SBATCH --mem=4gb                    
#SBATCH --time=00:05:00   
#SBATCH --partition=standard
#SBATCH --output=Case_submit_%A.out
#SBATCH --error=Case_submit_%A.err
#SBATCH --account=chopinsong
# SLURM Inherits your environment. cd $SLURM_SUBMIT_DIR not needed
pwd; hostname; date
source ~/.bashrc
module load python/3.6
module load gnu8/8.3.0
#module list >> ./module.log
./case.submit -a "--nodes=1 --ntasks=1 --mem-per-cpu=4GB" > Run.log

