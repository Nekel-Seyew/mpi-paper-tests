#!/bin/sh

echo "Compiling Generator"
gcc ./generator.c -o generate

echo "Creating Makeflow Files"
python ./generateMakeflows.py

echo "Run Makeflow1KiB"
echo "Run Makeflow -T mpi"
	mkdir 1KiB.mpi
	cd 1KiB.mpi
	cp ../generate ./
	sbatch ../slurm-submit-mpi.slurm ../Makeflow1KiB Makeflow1KiB.debug
	while [ ! -f ../Makeflow1KiB.makeflowlog ]
	do
		sleep 60
		echo "blah" > /dev/null
	done
	while ! $(grep -Fq 'COMPLETED' ../Makeflow1KiB.makeflowlog) 
	do
		sleep 60
		echo "blah" > /dev/null
	done
	scancel -u `whoami`
	sleep 180 #sleep 3 min to give time for job to return
	rm out*.txt
	mv ../Makeflow1KiB.* ./
	cd ../

echo "Run Wq+MPI"
	mkdir 1KiB.wq-mpi
	cd 1KiB.wq-mpi
	cp ../generate ./
        sbatch ../slurm-submit-mpi-wq.slurm ../Makeflow1KiB Makeflow1KiB.debug
        while [ ! -f ../Makeflow1KiB.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' ../Makeflow1KiB.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
	sleep 180 #sleep for 17min, to give workers time to stop running
        rm out*.txt
	python ../onlyFive ../*.wqlog
        mv ../Makeflow1KiB.* ./
        cd ../


echo "Run Makeflow10KiB"
echo "Run Makeflow -T mpi"
        mkdir 10KiB.mpi
        cd 10KiB.mpi
        cp ../generate ./
        sbatch ../slurm-submit-mpi.slurm ../Makeflow10KiB Makeflow10KiB.debug
        while [ ! -f ../Makeflow10KiB.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' ../Makeflow10KiB.makeflowlog)
        do
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
	sleep 180 #sleep 3 min to give time for job to return
        rm out*.txt
        mv ../Makeflow10KiB.* ./
        cd ../

echo "Run Wq+MPI"
        mkdir 10KiB.wq-mpi
        cd 10KiB.wq-mpi
        cp ../generate ./
        sbatch ../slurm-submit-mpi-wq.slurm ../Makeflow10KiB Makeflow10KiB.debug
        while [ ! -f ../Makeflow10KiB.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' ../Makeflow10KiB.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
	sleep 180 #sleep for 17min, to give workers time to stop running
        rm out*.txt
	python ../onlyFive ../*.wqlog
        mv ../Makeflow10KiB.* ./
        cd ../

echo "Run Makeflow100KiB"
echo "Run Makeflow -T mpi"
        mkdir 100KiB.mpi
        cd 100KiB.mpi
        cp ../generate ./
        sbatch ../slurm-submit-mpi.slurm ../Makeflow100KiB Makeflow100KiB.debug
        while [ ! -f ../Makeflow100KiB.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' ../Makeflow100KiB.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
	sleep 180 #sleep 3 min to give time for job to return
        rm out*.txt
        mv ../Makeflow100KiB.* ./
        cd ../

echo "Run Wq+MPI"
        mkdir 100KiB.wq-mpi
        cd 100KiB.wq-mpi
        cp ../generate ./
        sbatch ../slurm-submit-mpi-wq.slurm ../Makeflow100KiB Makeflow100KiB.debug
        while [ ! -f ../Makeflow100KiB.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' ../Makeflow100KiB.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	sleep 180 #sleep for 17min, to give workers time to stop running
        rm out*.txt
	python ../onlyFive ../*.wqlog
        mv ../Makeflow100KiB.* ./
        cd ../

echo "Run Makeflow1MiB"
echo "Run Makeflow -T mpi"
        mkdir 1MiB.mpi
        cd 1MiB.mpi
        cp ../generate ./
        sbatch ../slurm-submit-mpi.slurm ../Makeflow1MiB Makeflow1MiB.debug
        while [ ! -f ../Makeflow1MiB.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' ../Makeflow1MiB.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
	sleep 180 #sleep 3 min to give time for job to return
        rm out*.txt
        mv ../Makeflow1MiB.* ./
        cd ../

echo "Run Wq+MPI"
        mkdir 1MiB.wq-mpi
        cd 1MiB.wq-mpi
        cp ../generate ./
        sbatch ../slurm-submit-mpi-wq.slurm ../Makeflow1MiB Makeflow1MiB.debug
        while [ ! -f ../Makeflow1MiB.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' ../Makeflow1MiB.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
	sleep 180 #sleep for 17min, to give workers time to stop running
        rm out*.txt
	python ../onlyFive ../*.wqlog
        mv ../Makeflow1MiB.* ./
        cd ../

echo "Run Makeflow10MiB"
echo "Run Makeflow -T mpi"
        mkdir 10MiB.mpi
        cd 10MiB.mpi
        cp ../generate ./
        sbatch ../slurm-submit-mpi.slurm ../Makeflow10MiB Makeflow10MiB.debug
        while [ ! -f ../Makeflow10MiB.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' ../Makeflow10MiB.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
	sleep 180 #sleep 3 min to give time for job to return
        rm out*.txt
        mv ../Makeflow10MiB.* ./
        cd ../

echo "Run Wq+MPI"
        mkdir 10MiB.wq-mpi
        cd 10MiB.wq-mpi
        cp ../generate ./
        sbatch ../slurm-submit-mpi-wq.slurm ../Makeflow10MiB Makeflow10MiB.debug
        while [ ! -f ../Makeflow10MiB.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' ../Makeflow10MiB.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
	sleep 180 #sleep for 17min, to give workers time to stop running
        rm out*.txt
	python ../onlyFive ../*.wqlog
        mv ../Makeflow10MiB.* ./
        cd ../


echo "Run Makeflow100MiB"
echo "Run Makeflow -T mpi"
        mkdir 100MiB.mpi
        cd 100MiB.mpi
        cp ../generate ./
        sbatch ../slurm-submit-mpi.slurm ../Makeflow100MiB Makeflow100MiB.debug
        while [ ! -f ../Makeflow100MiB.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' ../Makeflow100MiB.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
	sleep 180 #sleep 3 min to give time for job to return
        rm out*.txt
        mv ../Makeflow100MiB.* ./
        cd ../

echo "Run Wq+MPI"
        mkdir 100MiB.wq-mpi
        cd 100MiB.wq-mpi
        cp ../generate ./
        sbatch ../slurm-submit-mpi-wq.slurm ../Makeflow100MiB Makeflow100MiB.debug
        while [ ! -f ../Makeflow100MiB.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' ../Makeflow100MiB.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	sleep 180 #sleep for 17min, to give workers time to stop running
        rm out*.txt
	python ../onlyFive ../*.wqlog
        mv ../Makeflow100MiB.* ./
        cd ../

echo "Run Makeflow1GiB"
echo "Run Makeflow -T mpi"
        mkdir 1GiB.mpi
        cd 1GiB.mpi
        cp ../generate ./
        sbatch ../slurm-submit-mpi.slurm ../Makeflow1GiB Makeflow1GiB.debug
        while [ ! -f ../Makeflow1GiB.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' ../Makeflow1GiB.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
	sleep 180 #sleep 3 min to give time for job to return
        rm out*.txt
        mv ../Makeflow1GiB.* ./
        cd ../

echo "Run Wq+MPI"
        mkdir 1GiB.wq-mpi
        cd 1GiB.wq-mpi
        cp ../generate ./
        sbatch ../slurm-submit-mpi-wq.slurm ../Makeflow1GiB Makeflow1GiB.debug
        while [ ! -f ../Makeflow1GiB.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' ../Makeflow1GiB.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	sleep 180 #sleep for 17min, to give workers time to stop running
        rm out*.txt
	python ../onlyFive ../*.wqlog
        mv ../Makeflow1GiB.* ./
        cd ../

echo "Run Makeflow10GiB"
echo "Run Makeflow -T mpi"
        mkdir 10GiB.mpi
        cd 10GiB.mpi
        cp ../generate ./
        sbatch ../slurm-submit-mpi.slurm ../Makeflow10GiB Makeflow10GiB.debug
        while [ ! -f ../Makeflow10GiB.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' ../Makeflow10GiB.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
	sleep 180 #sleep 3 min to give time for job to return
        rm out*.txt
        mv ../Makeflow10GiB.* ./
        cd ../

echo "Run Wq+MPI"
        mkdir 10GiB.wq-mpi
        cd 10GiB.wq-mpi
        cp ../generate ./
        sbatch ../slurm-submit-mpi-wq.slurm ../Makeflow10GiB Makeflow10GiB.debug
        while [ ! -f ../Makeflow10GiB.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' ../Makeflow10GiB.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
	sleep 180 #sleep for 17min, to give workers time to stop running
        rm out*.txt
	python ../onlyFive ../*.wqlog
        mv ../Makeflow10GiB.* ./
        cd ../

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
