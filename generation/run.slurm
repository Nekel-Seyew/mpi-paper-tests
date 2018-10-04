#!/bin/bash
#SBATCH --job-name="generation runner"
#SBATCH --output="genrunner.%j.%N.out"
#SBATCH -p normal
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --export=ALL
#SBATCH -t 24:30:00



#mpirun -np $NSLOTS mpi_starter -m "$1" --debug mpi_starter.debug
#ibrun makeflow -T mpi -dall -o $2 $1
sh slurm_run_tests.sh 
