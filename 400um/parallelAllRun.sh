#!/bin/bash
#SBATCH --job-name=validationRun2
#SBATCH --time=40:00:00
#SBATCH --ntasks=36
#SBATCH --nodes=1
#SBATCH --mem-per-cpu=2G

module load OpenFOAM/v2106-foss-2021a
. ${FOAM_BASH}

mpirun --mca btl ^openib -np 36 interFlow -parallel


