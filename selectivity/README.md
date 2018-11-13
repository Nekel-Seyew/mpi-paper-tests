# Selectivity
This test is designed to see how well the underlying system handles reading only a portion of a database's data,
represented as a directory of 100 1GiB files. The code here is for two different systems: SGE and SLURM. To 
customize your SGE or SLURM submission, simply edit the files starting with SGE and SLURM respectively.

To run this test first data and the makeflow files need to be generted. Then the reader code compiled.

First, run `sh ./make_dat.sh` to generate the data directory.

Second, run `python ./generateMakeflows` to generate the Makeflow Dag files.

Third, run `sh compile_read.sh` to compile the reader program called by the jobs.

Now you can run the individual tests. 

To run with SGE, modify the files `sge-submit-mpi.csh` and `sge-submit-mpi-wq.csh` to match your system.
Then run `sh ./run-sge.sh`

To run with SLURM, modify the files `slurm-submit-mpi.csh` and `slurm-submit-mpi-wq.csh` to match your system.
Then run `sh ./run-slurm.sh

Finally, to obtain the data points and graph, run the command `sh ./dat\_files.sh && gnuplot plot.gnuplot` 
