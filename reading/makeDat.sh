#!/bin/sh

gcc generator.c -o generator

declare -i d1kb
declare -i d10kb
declare -i d100kb
declare -i d1mb
declare -i d10mb
declare -i d100mb
declare -i d1gb
declare -i d10gb
d1kb=1024
d10kb=10*1024
d100kb=100*1024
d1mb=1024*1024
d10mb=10*1024*1024
d100mb=100*1024*1024
d1gb=1024*1024*1024
d10gb=10*1024*1024*1024

./generator 1kiB.dat $d1kb
./generator 10kiB.dat $d10kb
./generator 100kiB.dat $d100kb
./generator 1miB.dat $d1mb
./generator 10miB.dat $d10mb
./generator 100miB.dat $d100mb
./generator 1giB.dat $d1gb
./generator 10giB.dat $d10gb


