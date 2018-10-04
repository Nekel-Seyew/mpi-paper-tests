#!/bin/bash
#SBATCH --job-name="scaleread"
#SBATCH --output="scaleread.%j.%N"
#SBATCH -p normal
#SBATCH --nodes=5
#SBATCH --ntasks-per-node=24
#SBATCH --export=ALL
#SBATCH -t 24:30:00



ibrun mpi_starter -m "$1 -gall" --debug $2
#mpirun -np $NSLOTS makeflow -T mpi -dall -o $2 $1
