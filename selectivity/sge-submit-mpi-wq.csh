#!/bin/csh

#$ -M ksweene3@nd.edu	 # Email address for job notification
#$ -m abe		 # Send mail when job begins, ends and aborts
#$ -pe mpi-* 120 	 # Specify parallel environment and legal core size
#$ -q long		 # Specify queue
#$ -N selectivity_mpi_starter	 # Specify job name


mpirun -np $NSLOTS makeflow_mpi_starter -m "$1" --debug $2
#mpirun -np $NSLOTS makeflow -T mpi -dall -o $2 $1
