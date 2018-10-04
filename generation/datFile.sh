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
printf "0.001 %f\n" $(python jobThroughput.py 1KiB.mpi/Makeflow1KiB.makeflowlog $d1kb) >> mpi.dat
printf "0.01 %f\n" $(python jobThroughput.py 10KiB.mpi/Makeflow10KiB.makeflowlog $d10kb) >> mpi.dat
printf "0.1 %f\n" $(python jobThroughput.py 100KiB.mpi/Makeflow100KiB.makeflowlog $d100kb) >> mpi.dat
printf "1.0 %f\n" $(python jobThroughput.py 1MiB.mpi/Makeflow1MiB.makeflowlog $d1mb) >> mpi.dat
printf "10.0 %f\n" $(python jobThroughput.py 10MiB.mpi/Makeflow10MiB.makeflowlog $d10mb) >> mpi.dat
printf "100.0 %f\n" $(python jobThroughput.py 100MiB.mpi/Makeflow100MiB.makeflowlog $d100mb) >> mpi.dat
printf "1000.0 %f\n" $(python jobThroughput.py 1GiB.mpi/Makeflow1GiB.makeflowlog $d1gb) >> mpi.dat
printf "10000.0 %f\n" $(python jobThroughput.py 10GiB.mpi/Makeflow10GiB.makeflowlog $d10gb) >> mpi.dat


printf "0.001 %f\n" $(python jobThroughput.py 1KiB.wq-mpi/Makeflow1KiB.makeflowlog $d1kb) >> wq-mpi.dat
printf "0.01 %f\n" $(python jobThroughput.py 10KiB.wq-mpi/Makeflow10KiB.makeflowlog $d10kb) >> wq-mpi.dat
printf "0.1 %f\n" $(python jobThroughput.py 100KiB.wq-mpi/Makeflow100KiB.makeflowlog $d100kb) >> wq-mpi.dat
printf "1.0 %f\n" $(python jobThroughput.py 1MiB.wq-mpi/Makeflow1MiB.makeflowlog $d1mb) >> wq-mpi.dat
printf "10.0 %f\n" $(python jobThroughput.py 10MiB.wq-mpi/Makeflow10MiB.makeflowlog $d10mb) >> wq-mpi.dat
printf "100.0 %f\n" $(python jobThroughput.py 100MiB.wq-mpi/Makeflow100MiB.makeflowlog $d100mb) >> wq-mpi.dat
printf "1000.0 %f\n" $(python jobThroughput.py 1GiB.wq-mpi/Makeflow1GiB.makeflowlog $d1gb) >> wq-mpi.dat
printf "10000.0 %f\n" $(python jobThroughput.py 10GiB.wq-mpi/Makeflow10GiB.makeflowlog $d10gb) >> wq-mpi.dat

