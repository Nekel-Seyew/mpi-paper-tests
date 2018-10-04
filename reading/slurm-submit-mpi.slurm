#!/bin/bash
#SBATCH --job-name="scaleread"
#SBATCH --output="scaleread.%j.%N"
#SBATCH -p normal
#SBATCH --nodes=5
#SBATCH --ntasks-per-node=24
#SBATCH --export=ALL
#SBATCH -t 24:30:00



#mpirun -np $NSLOTS mpi_starter -m "$1" --debug mpi_starter.debug
#module load remora
ibrun makeflow -T mpi -gall -dall -o $2 $1
