#!/bin/csh

#$ -M ksweene3@nd.edu	 # Email address for job notification
#$ -m abe		 # Send mail when job begins, ends and aborts
#$ -pe mpi-* 120 	 # Specify parallel environment and legal core size
#$ -q long		 # Specify queue
#$ -N mpi_starter	 # Specify job name

#module load ompi	         # Required modules

#printenv > envvars.txt
#mpirun -np $NSLOTS mpi_starter -m "Makeflow100" --debug mpi_starter.debug# Application to execute
#mpirun -np $NSLOTS mpi_starter -m "Makeflow" --debug mpi_starter.debug
#mpirun -npernode 1 mpi_starter -m "blast_test.mf"
#mpirun -np $NSLOTS makeflow -T mpi -dall -o Makeflow.debug Makeflow --working-dir=/tmp
#mpirun -np $NSLOTS makeflow -T mpi -dall -o Makeflow.debug Makeflow
mpirun -np $NSLOTS makeflow -T mpi -dall -o Makeflow100.debug Makeflow100
#mpirun -ppn 1 makeflow -T mpi -dall -o Makeflow.debug --mpi-cores=24 Makeflow
#mpirun -np $NSLOTS ./mpi_reading
