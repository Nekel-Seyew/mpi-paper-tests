# Reading
This folder contains two potential tests: testing how quickly each job in the test can read in data,
and how well the master can send data to the workers. Before either test can be ran, please run `./makedat`
to generate all of the data used by both tests, and `sh compile_read.sh` to compile the read program.

## Job Throughput
To test job throughput, you will need to modify either sge-submit- or slurm-submit- files for the parameters
of your SGE or SLURM batch systems.

To run Makeflow+MPI on SGE, for example, you can call it as `qsub sge-submit-mpi.csh Makeflow`. Makeflow+WQ
is sge-submit-mpi-wq.csh in the same manner. Using SLURM is the same, but using slurm-submit-mpi.slurm instead.

To analyze the data, obtaining a Jobs/Min rate can be done by calling `makeflow_monitor Makeflow.makeflowlog`.
Obtaining a throughput for the whole system, call `python histogram-timings.py times.hist Makeflow.makeflowlog out*`

## Data Delivery
To test the impact of having to deliver unique data to each job, you can test in a similar fasion as the previous
secion, except using Makeflow100 instead of Makeflow, for example: `qsub sge-submit-mpi.csh Makeflow100`. Testing
with Makeflow+WQ and using SLURM instead of SGE is just like in the previous section. Obtaining Jobs/Min is done
the same, replacing "Makeflow" with "Makeflow100".
