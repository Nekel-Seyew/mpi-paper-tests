#!/bin/bash
#SBATCH --job-name="generation"
#SBATCH --output="hellompi.%j.%N.out"
#SBATCH -p normal
#SBATCH --nodes=5
#SBATCH --ntasks-per-node=24
#SBATCH --export=ALL
#SBATCH -t 24:30:00



#mpirun -np $NSLOTS mpi_starter -m "$1" --debug mpi_starter.debug
ibrun makeflow -T mpi -gall -dall -o $2 $1
