#!/bin/sh

declare -i n
n=1024*1024
for x in $(seq 1 1 10);
do
	
	./reader $1 $n >> $2
done
