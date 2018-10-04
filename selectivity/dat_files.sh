#!/bin/sh

declare -i total
total=100*1024*1024*1024

declare -i d10
declare -i d20
declare -i d40
declare -i d60
declare -i d80
declare -i d100

d10=10*1024*1024*1024
d20=20*1024*1024*1024
d40=40*1024*1024*1024
d60=60*1024*1024*1024
d80=80*1024*1024*1024
d100=100*1024*1024*1024

echo "Creating Throughput Dat files"
echo $d1kb
#printf "0.10 %f\n" $(python jobThroughput 10p-mpi/Makeflow10.makeflowlog 0.10 $total) >> mpi.dat
#printf "0.20 %f\n" $(python jobThroughput 20p-mpi/Makeflow20.makeflowlog 0.20 $total) >> mpi.dat
#printf "0.40 %f\n" $(python jobThroughput 40p-mpi/Makeflow40.makeflowlog 0.40 $total) >> mpi.dat
#printf "0.60 %f\n" $(python jobThroughput 60p-mpi/Makeflow60.makeflowlog 0.60 $total) >> mpi.dat
#printf "0.80 %f\n" $(python jobThroughput 80p-mpi/Makeflow80.makeflowlog 0.80 $total) >> mpi.dat
#printf "1.00 %f\n" $(python jobThroughput 100p-mpi/Makeflow100.makeflowlog 1.00 $total) >> mpi.dat


#printf "0.10 %f\n" $(python jobThroughput 10p-wq-mpi/Makeflow10.makeflowlog 0.10 $total) >> wq-mpi.dat
#printf "0.20 %f\n" $(python jobThroughput 20p-wq-mpi/Makeflow20.makeflowlog 0.20 $total) >> wq-mpi.dat
#printf "0.40 %f\n" $(python jobThroughput 40p-wq-mpi/Makeflow40.makeflowlog 0.40 $total) >> wq-mpi.dat
#printf "0.60 %f\n" $(python jobThroughput 60p-wq-mpi/Makeflow60.makeflowlog 0.60 $total) >> wq-mpi.dat
#printf "0.80 %f\n" $(python jobThroughput 80p-wq-mpi/Makeflow80.makeflowlog 0.80 $total) >> wq-mpi.dat
#printf "1.00 %f\n" $(python jobThroughput 100p-wq-mpi/Makeflow100.makeflowlog 1.00 $total) >> wq-mpi.dat

printf "0.10 %f\n" $(python jobThroughput 10p-mpi/Makeflow10.makeflowlog $d10 $total) >> mpi.dat
printf "0.20 %f\n" $(python jobThroughput 20p-mpi/Makeflow20.makeflowlog $d20 $total) >> mpi.dat
printf "0.40 %f\n" $(python jobThroughput 40p-mpi/Makeflow40.makeflowlog $d40 $total) >> mpi.dat
printf "0.60 %f\n" $(python jobThroughput 60p-mpi/Makeflow60.makeflowlog $d60 $total) >> mpi.dat
printf "0.80 %f\n" $(python jobThroughput 80p-mpi/Makeflow80.makeflowlog $d80 $total) >> mpi.dat
printf "1.00 %f\n" $(python jobThroughput 100p-mpi/Makeflow100.makeflowlog $d100 $total) >> mpi.dat


printf "0.10 %f\n" $(python jobThroughput 10p-wq-mpi/Makeflow10.makeflowlog $d10 $total) >> wq-mpi.dat
printf "0.20 %f\n" $(python jobThroughput 20p-wq-mpi/Makeflow20.makeflowlog $d20 $total) >> wq-mpi.dat
printf "0.40 %f\n" $(python jobThroughput 40p-wq-mpi/Makeflow40.makeflowlog $d40 $total) >> wq-mpi.dat
printf "0.60 %f\n" $(python jobThroughput 60p-wq-mpi/Makeflow60.makeflowlog $d60 $total) >> wq-mpi.dat
printf "0.80 %f\n" $(python jobThroughput 80p-wq-mpi/Makeflow80.makeflowlog $d80 $total) >> wq-mpi.dat
printf "1.00 %f\n" $(python jobThroughput 100p-wq-mpi/Makeflow100.makeflowlog $d100 $total) >> wq-mpi.dat
