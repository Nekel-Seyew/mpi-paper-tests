#!/bin/sh

printf "%s\n" $(date +"%s.%N") >> $1
for y in $(seq 1 1 10)
do
	./read-old $2 
	#dd bs=4096 if=$2 of=/dev/null
done
printf "%s\n" $(date +"%s.%N") >> $1
