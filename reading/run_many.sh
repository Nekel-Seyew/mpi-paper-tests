#!/bin/sh


for x in $(seq 1 1 12);
do
	echo "===================== Run $x ==================="
	mkdir run$x
	sh sge_run_tests.sh
	mv *.*mpi run$x
	mv mpi.dat run$x
	mv wq-mpi.dat run$x
done


