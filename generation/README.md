# Generator
The purpose of this test is to see how well the underlying systems handle a workflow which generates data, ranging from workflows with 1KiB up to 10GiB for each task.

To run the test, first modify either the sge-submit- or slurm-submit- scripts to match the details of your batch system.

Then simply call either `sh sge_run_tests.sh` to run with SGE or `sh slurm_run_tests.sh` to run with SLURM.

To plot the output data, simply call `gnuplot plot.p`
