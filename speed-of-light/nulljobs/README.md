# Nulljobs
The purpose of this test is to see how quickly jobs can be sent and retrieved using either Makeflow as an MPI job or Makeflow+Wq
on an mpi cluster. There are 1000 jobs which perform `echo hello > /dev/null`. The submit scripts have both Makeflow on MPI and Makeflow+Wq
in them. To specify Makeflow, comment out the line containing "makeflow_mpi_starter"

For testing using SGE, use submit.csh. For SLURM, use submit.slurm. Both files will need to be modified for the specifics of your Batch
system.

To measure the Job rate, call `makeflow_monitor Makeflow.makeflowlog`
