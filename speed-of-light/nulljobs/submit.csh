#!/bin/csh

#$ -M joeGeneric@gmail.com	 # Email address for job notification
#$ -m abe		 # Send mail when job begins, ends and aborts
#$ -pe mpi-24 240 	 # Specify parallel environment and legal core size
#$ -q long		 # Specify queue
#$ -N mpi_starter	 # Specify job name

#module load ompi	         # Required modules

mpirun -np $NSLOTS mpi_starter -m "Makeflow" # Application to execute
#mpirun -np $NSLOTS makeflow -T mpi -dall -o Makeflow.debug Makeflow
