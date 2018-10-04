#!/bin/csh

#$ -M ksweene3@nd.edu	 # Email address for job notification
#$ -m abe		 # Send mail when job begins, ends and aborts
#$ -pe mpi-* 120 	 # Specify parallel environment and legal core size
#$ -q long		 # Specify queue
#$ -N selectivity		 # Specify job name


#mpirun -np $NSLOTS mpi_starter -m "$1" --debug mpi_starter.debug
mpirun -np $NSLOTS makeflow -T mpi -dall -o $2 $1
