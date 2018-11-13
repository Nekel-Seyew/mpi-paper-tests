# mpi-paper-tests
This repo is for replicability of testing the difference between Makeflow asn an MPI program and using MPI to start Makeflow+WorkQueue.
Contained in the repo are both the files used for the speed-of-light tests and three artificial workflows.

To run theses tests, the user will need to have cctools properly installed. To aquire these and a guide on how to install them, please
visit https://github.com/cooperative-computing-lab/cctools 

## Speed of Light
These tests are designed to test three primary components of a workflow management system: how quickly jobs are dispatched+retrieved
from the master to the workers, how quickly jobs read data, and how quickly data is sent from the master to the jobs.

## Artificial Workflows
These workflows are split into three folders: Generation, Reading, and Selectivity.

### Generation
This workflow measures how quickly the underlying system can generate data and deliver it back to the workflow manager master.
There are 100 jobs which generate random data from /dev/urandom. This workflow can be ran with variable amounts of data, ranging from 1KiB
to 10GiB. 

### Reading
This workflow measures how quickly data is read by the underlying systems by varying the amount of data read. Random data is first 
generated in increasing sizes, and then each size is read in 10 times for each job, with 100 jobs.

### Selectivity
This workflow measures how quickly a lot of different data is read by the underlying systems by having a single database folder of 100 1GiB
files with 100 jobs reading in a growing percentage of data in the different workflows.

# General Procedure
For each test, the general procedure is to make the workflows, compile the c code, and modify the submission files, depending on if you
are using SGE or SLURM as your submission system, and customizing the submission files to the specifics of your submission system. Then
you can simply run the shell script which will run all of the makeflows and generate the end data. The gnuplot files will then graph the
output throughput data.
