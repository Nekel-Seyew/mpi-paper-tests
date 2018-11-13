#!/bin/bash
#SBATCH --job-name="generation"
#SBATCH --output="hellompi.%j.%N.out"
#SBATCH -p normal
#SBATCH --nodes=5
#SBATCH --ntasks-per-node=24
#SBATCH --export=ALL
#SBATCH -t 24:30:00



ibrun makeflow_mpi_starter -m "$1" --debug makeflow_mpi_starter.debug
#mpirun -np $NSLOTS makeflow -T mpi -dall -o $2 $1
