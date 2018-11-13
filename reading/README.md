# Reading
The purpose of this test is to see how well the underlying system handles having a workflow where the jobs
have to read in increasingly larger and larger files.

Before the test can begin, the data files have to be generated, the Makeflow Dag files created and the reader program compiled.

First, call `sh makeDat.sh` to compile the generator program and create the different input files.

Second, call `python ./generateMakeflows` to generate the Makeflow Dags.

Third, call `sh compile_read.sh` to make the reader program for the jobs.

The provided submission files ending in .csh and .slurm will submit the appropriate programs to test between Makeflow+MPI and Makeflow+WQ on MPI
using SGE or SLURM batch submission systems, respectively. They need to be updated for your system to run properly.

To run with SGE, simply run `sh sge_run_tests.sh`

To run with SLURM, simply run `sh slurm_run_tests.sh`

To plot the resulting data, run `gnuplot plot.gnuplot`
