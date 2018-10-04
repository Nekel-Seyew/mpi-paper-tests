#!/bin/bash
#SBATCH --job-name="speed_of_light"
#SBATCH --output="hellompi.%j.%N.out"
#SBATCH -p normal
#SBATCH --nodes=5
#SBATCH --ntasks-per-node=24
#SBATCH --export=ALL
#SBATCH -t 00:30:00

#This job runs with 2 nodes, 24 cores per node for a total of 48 cores.
#ibrun in verbose mode will give binding detail

#ibrun -v makeflow -T mpi -dall -o Makeflow.debug Makeflow

#export SLURM_NODEFILE=`generate_pbs_nodefile`
#mpirun -hostfile $SLURM_NODEFILE -np 120 makeflow -T mpi -dall -o Makeflow.debug Makeflow

#mpirun -hostfile $SLURM_NODEFILE -np 120 mpi_starter -m "Makeflow"

#ibrun makeflow -T mpi -dall -o Makeflow.debug Makeflow
#ibrun makeflow -T mpi -dall -o Makeflow100.debug Makeflow100
#ibrun mpi_starter -m "Makeflow"  --debug mpi_starter.debug
ibrun mpi_starter -m "Makeflow100"  --debug mpi_starter.debug

