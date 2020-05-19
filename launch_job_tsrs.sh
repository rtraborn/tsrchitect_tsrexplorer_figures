#!/bin/bash
 
#SBATCH -n 1                        # number of cores
#SBATCH -t 0-12:00                  # wall time (D-HH:MM)
##SBATCH -A ssnyde11             # Account hours will be pulled from (commented out with double # in front)
#SBATCH -o slurm.%j.out             # STDOUT (%j = JobId)
#SBATCH -e slurm.%j.err             # STDERR (%j = JobId)
#SBATCH --mem=48GB

##SBATCH --mail-type=ALL             # Send a notification when the job starts, stops, or fails
##SBATCH --mail-user=myemail@asu.edu # send-to address

myDir=/home/ssnyde11/scratch/may_tsrchitect/tsrchitect

echo "Launching job"

cd $myDir

./xrunSwf > err

echo "Job complete"
