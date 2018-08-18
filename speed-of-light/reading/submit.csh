#!/bin/csh

#$ -M ksweene3@nd.edu	 # Email address for job notification
#$ -m abe		 # Send mail when job begins, ends and aborts
#$ -pe mpi-* 120 	 # Specify parallel environment and legal core size
#$ -q long		 # Specify queue
#$ -N mpi_starter	 # Specify job name
#$ -l h_rss=50G          # Specify per process Memory
#$ -l m_mem_free=1G

module load ompi	         # Required modules

#printenv > envvars.txt
#mpirun -np $NSLOTS mpi_starter -m "blast_test.mf"# Application to execute
#mpirun -npernode 1 mpi_starter -m "blast_test.mf"
#mpirun -np $NSLOTS makeflow -T mpi -dall -o Makeflow.debug Makeflow --working-dir=/tmp
mpirun -np $NSLOTS makeflow -T mpi -dall -o Makeflow.debug Makeflow