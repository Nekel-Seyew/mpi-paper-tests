#!/bin/sh

gcc -o generate generator.c
mkdir data
for x in $(seq 1 1 100);
do
	declare -i n
	n=1024*1024*1024
	./generate data/randat$x.dat $n
done 
