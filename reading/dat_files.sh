declare -i d1kb
declare -i d10kb
declare -i d100kb
declare -i d1mb
declare -i d10mb
declare -i d100mb
declare -i d1gb
declare -i d10gb
d1kb=1024
d10kb=1024*10
d100kb=1024*100
d1mb=1024*1024
d10mb=1024*1024*10
d100mb=1024*1024*100
d1gb=1024*1024*1024
d10gb=1024*1024*1024*10

echo "Creating Throughput Dat files"
echo $d1kb
printf "0.00098 %f\n" $(python jobThroughput.py 1kib.mpi/Makeflow1kib.makeflowlog $d1kb) >> mpi.dat
printf "0.0098 %f\n" $(python jobThroughput.py 10kib.mpi/Makeflow10kib.makeflowlog $d10kb) >> mpi.dat
printf "0.098 %f\n" $(python jobThroughput.py 100kib.mpi/Makeflow100kib.makeflowlog $d100kb) >> mpi.dat
printf "1.0 %f\n" $(python jobThroughput.py 1mib.mpi/Makeflow1mib.makeflowlog $d1mb) >> mpi.dat
printf "10.0 %f\n" $(python jobThroughput.py 10mib.mpi/Makeflow10mib.makeflowlog $d10mb) >> mpi.dat
printf "100.0 %f\n" $(python jobThroughput.py 100mib.mpi/Makeflow100mib.makeflowlog $d100mb) >> mpi.dat
printf "1024.0 %f\n" $(python jobThroughput.py 1gib.mpi/Makeflow1gib.makeflowlog $d1gb) >> mpi.dat
printf "10240.0 %f\n" $(python jobThroughput.py 10gib.mpi/Makeflow10gib.makeflowlog $d10gb) >> mpi.dat


printf "0.00098 %f\n" $(python jobThroughput.py 1kib.wq-mpi/Makeflow1kib.makeflowlog $d1kb) >> wq-mpi.dat
printf "0.0098 %f\n" $(python jobThroughput.py 10kib.wq-mpi/Makeflow10kib.makeflowlog $d10kb) >> wq-mpi.dat
printf "0.098 %f\n" $(python jobThroughput.py 100kib.wq-mpi/Makeflow100kib.makeflowlog $d100kb) >> wq-mpi.dat
printf "1.0 %f\n" $(python jobThroughput.py 1mib.wq-mpi/Makeflow1mib.makeflowlog $d1mb) >> wq-mpi.dat
printf "10.0 %f\n" $(python jobThroughput.py 10mib.wq-mpi/Makeflow10mib.makeflowlog $d10mb) >> wq-mpi.dat
printf "100.0 %f\n" $(python jobThroughput.py 100mib.wq-mpi/Makeflow100mib.makeflowlog $d100mb) >> wq-mpi.dat
printf "1024.0 %f\n" $(python jobThroughput.py 1gib.wq-mpi/Makeflow1gib.makeflowlog $d1gb) >> wq-mpi.dat
printf "10240.0 %f\n" $(python jobThroughput.py 10gib.wq-mpi/Makeflow10gib.makeflowlog $d10gb) >> wq-mpi.dat

