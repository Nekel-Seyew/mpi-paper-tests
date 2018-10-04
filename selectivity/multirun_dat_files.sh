#!/bin/sh

for x in $(seq 1 1 20);
do
	cp dat_files.sh run$x
	cp jobThroughput run$x
	cd run$x
	sh dat_files.sh
	cd ..

done
