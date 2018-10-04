#!/bin/sh


for x in $(seq 13 1 20);
do
	echo "===================== Run $x ==================="
	mkdir run$x
	sh run.sh
	mv *p-*mpi run$x
done


