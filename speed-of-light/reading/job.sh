#!/bin/sh

printf "%s\n" $(date +"%s.%N") >> $1
for y in $(seq 1 1 10)
do
	cat $2 > hello$3.txt
	rm hello$3.txt
done
printf "%s\n" $(date +"%s.%N") >> $1
