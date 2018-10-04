#!/bin/sh

#echo "Compiling Generator"
#gcc ./generator.c -o generate

echo "Creating Makeflow Files"
python ./generateMakeflows

echo "Run Makeflow1kib"
echo "Run Makeflow -T mpi"
	mkdir 1kib.mpi
	#cd 1kib.mpi
	#cp reader ./ && cp job.sh ./
	qsub sge-submit-mpi.csh Makeflow1kib Makeflow1kib.debug
	while [ ! -f Makeflow1kib.makeflowlog ]
	do
		sleep 60
		echo "blah" > /dev/null
	done
	while ! $(grep -Fq 'COMPLETED' Makeflow1kib.makeflowlog) 
	do
		sleep 60
		echo "blah" > /dev/null
	done
	qdel -u `whoami`
	echo "sleeping" &&sleep 180 #sleep 3 min to give time for job to return
	rm out*.txt
	mv Makeflow1kib.* ./1kib.mpi
	mv scaleread.* ./1kib.mpi
	#cd 

echo "Run Wq+MPI"
	mkdir 1kib.wq-mpi
	#cd 1kib.wq-mpi
	#cp reader ./ && cp job.sh ./
        qsub sge-submit-mpi-wq.csh Makeflow1kib Makeflow1kib.debug
        while [ ! -f Makeflow1kib.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow1kib.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	qdel -u `whoami`
	echo "sleeping" &&sleep 180 #sleep for 17min, to give workers time to stop running
        rm out*.txt
	python ./onlyFive *.wqlog
        mv Makeflow1kib.* ./1kib.wq-mpi
	mv scaleread.* ./1kib.wq-mpi
        #cd 


echo "Run Makeflow10kib"
echo "Run Makeflow -T mpi"
        mkdir 10kib.mpi
        #cd 10kib.mpi
        #cp reader ./ && cp job.sh ./
        qsub sge-submit-mpi.csh Makeflow10kib Makeflow10kib.debug
        while [ ! -f Makeflow10kib.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow10kib.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	qdel -u `whoami`
	echo "sleeping" &&sleep 180 #sleep 3 min to give time for job to return
        rm out*.txt
        mv Makeflow10kib.* ./10kib.mpi
	mv scaleread.* ./10kib.mpi
        #cd 

echo "Run Wq+MPI"
        mkdir 10kib.wq-mpi
        #cd 10kib.wq-mpi
        #cp reader ./ && cp job.sh ./
        qsub sge-submit-mpi-wq.csh Makeflow10kib Makeflow10kib.debug
        while [ ! -f Makeflow10kib.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow10kib.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	qdel -u `whoami`
	echo "sleeping" &&sleep 180 #sleep for 17min, to give workers time to stop running
        rm out*.txt
	python ./onlyFive *.wqlog
        mv Makeflow10kib.* ./10kib.wq-mpi
	mv scaleread.* ./10kib.wq-mpi
        #cd 

echo "Run Makeflow100kib"
echo "Run Makeflow -T mpi"
        mkdir 100kib.mpi
        #cd 100kib.mpi
        #cp reader ./ && cp job.sh ./
        qsub sge-submit-mpi.csh Makeflow100kib Makeflow100kib.debug
        while [ ! -f Makeflow100kib.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow100kib.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	qdel -u `whoami`
	echo "sleeping" &&sleep 180 #sleep 3 min to give time for job to return
        rm out*.txt
        mv Makeflow100kib.* ./100kib.mpi
	mv scaleread.* ./100kib.mpi
        #cd 

echo "Run Wq+MPI"
        mkdir 100kib.wq-mpi
        #cd 100kib.wq-mpi
        #cp reader ./ && cp job.sh ./
        qsub sge-submit-mpi-wq.csh Makeflow100kib Makeflow100kib.debug
        while [ ! -f Makeflow100kib.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow100kib.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	qdel -u `whoami`
	echo "sleeping" &&sleep 180 #sleep for 17min, to give workers time to stop running
        rm out*.txt
	python ./onlyFive *.wqlog
        mv Makeflow100kib.* ./100kib.wq-mpi
	mv scaleread.* ./100kib.wq-mpi
        #cd 

echo "Run Makeflow1mib"
echo "Run Makeflow -T mpi"
        mkdir 1mib.mpi
        #cd 1mib.mpi
        #cp reader ./ && cp job.sh ./
        qsub sge-submit-mpi.csh Makeflow1mib Makeflow1mib.debug
        while [ ! -f Makeflow1mib.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow1mib.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	qdel -u `whoami`
	echo "sleeping" &&sleep 180 #sleep 3 min to give time for job to return
        rm out*.txt
        mv Makeflow1mib.* ./1mib.mpi
	mv scaleread.* ./1mib.mpi
        #cd 

echo "Run Wq+MPI"
        mkdir 1mib.wq-mpi
        #cd 1mib.wq-mpi
        #cp reader ./ && cp job.sh ./
        qsub sge-submit-mpi-wq.csh Makeflow1mib Makeflow1mib.debug
        while [ ! -f Makeflow1mib.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow1mib.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	qdel -u `whoami`
	echo "sleeping" &&sleep 180 #sleep for 17min, to give workers time to stop running
        rm out*.txt
	python ./onlyFive *.wqlog
        mv Makeflow1mib.* ./1mib.wq-mpi
	mv scaleread.* ./1mib.wq-mpi
        #cd 

echo "Run Makeflow10mib"
echo "Run Makeflow -T mpi"
        mkdir 10mib.mpi
        #cd 10mib.mpi
        #cp reader ./ && cp job.sh ./
        qsub sge-submit-mpi.csh Makeflow10mib Makeflow10mib.debug
        while [ ! -f Makeflow10mib.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow10mib.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	qdel -u `whoami`
	echo "sleeping" &&sleep 180 #sleep 3 min to give time for job to return
        rm out*.txt
        mv Makeflow10mib.* ./10mib.mpi
	mv scaleread.* ./10mib.mpi
        #cd 

echo "Run Wq+MPI"
        mkdir 10mib.wq-mpi
        #cd 10mib.wq-mpi
        #cp reader ./ && cp job.sh ./
        qsub sge-submit-mpi-wq.csh Makeflow10mib Makeflow10mib.debug
        while [ ! -f Makeflow10mib.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow10mib.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	qdel -u `whoami`
	echo "sleeping" &&sleep 180 #sleep for 17min, to give workers time to stop running
        rm out*.txt
	python ./onlyFive *.wqlog
        mv Makeflow10mib.* ./10mib.wq-mpi
	mv scaleread.* ./10mib.wq-mpi
        #cd 


echo "Run Makeflow100mib"
echo "Run Makeflow -T mpi"
        mkdir 100mib.mpi
        #cd 100mib.mpi
        #cp reader ./ && cp job.sh ./
        qsub sge-submit-mpi.csh Makeflow100mib Makeflow100mib.debug
        while [ ! -f Makeflow100mib.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow100mib.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	qdel -u `whoami`
	echo "sleeping" &&sleep 180 #sleep 3 min to give time for job to return
        rm out*.txt
        mv Makeflow100mib.* ./100mib.mpi
	mv scaleread.* ./100mib.mpi
        #cd 

echo "Run Wq+MPI"
        mkdir 100mib.wq-mpi
        #cd 100mib.wq-mpi
        #cp reader ./ && cp job.sh ./
        qsub sge-submit-mpi-wq.csh Makeflow100mib Makeflow100mib.debug
        while [ ! -f Makeflow100mib.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow100mib.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	qdel -u `whoami`
	echo "sleeping" &&sleep 180 #sleep for 17min, to give workers time to stop running
        rm out*.txt
	python ./onlyFive *.wqlog
        mv Makeflow100mib.* ./100mib.wq-mpi
	mv scaleread.* ./100mib.wq-mpi
        #cd 

echo "Run Makeflow1gib"
echo "Run Makeflow -T mpi"
        mkdir 1gib.mpi
        #cd 1gib.mpi
        #cp reader ./ && cp job.sh ./
        qsub sge-submit-mpi.csh Makeflow1gib Makeflow1gib.debug
        while [ ! -f Makeflow1gib.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow1gib.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	qdel -u `whoami`
	echo "sleeping" &&sleep 180 #sleep 3 min to give time for job to return
        rm out*.txt
        mv Makeflow1gib.* ./1gib.mpi
	mv scaleread.* ./1gib.mpi
        #cd 

echo "Run Wq+MPI"
        mkdir 1gib.wq-mpi
        #cd 1gib.wq-mpi
        #cp reader ./ && cp job.sh ./
        qsub sge-submit-mpi-wq.csh Makeflow1gib Makeflow1gib.debug
        while [ ! -f Makeflow1gib.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow1gib.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	qdel -u `whoami`
	echo "sleeping" &&sleep 180 #sleep for 17min, to give workers time to stop running
        rm out*.txt
	python ./onlyFive *.wqlog
        mv Makeflow1gib.* ./1gib.wq-mpi
	mv scaleread.* ./1gib.wq-mpi
        #cd 

echo "Run Makeflow10gib"
echo "Run Makeflow -T mpi"
        mkdir 10gib.mpi
        #cd 10gib.mpi
        #cp reader ./ && cp job.sh ./
        qsub sge-submit-mpi.csh Makeflow10gib Makeflow10gib.debug
        while [ ! -f Makeflow10gib.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow10gib.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	qdel -u `whoami`
	echo "sleeping" &&sleep 180 #sleep 3 min to give time for job to return
        rm out*.txt
        mv Makeflow10gib.* ./10gib.mpi
	mv scaleread.* ./10gib.mpi
        #cd 

echo "Run Wq+MPI"
        mkdir 10gib.wq-mpi
        #cd 10gib.wq-mpi
        #cp reader ./ && cp job.sh ./
        qsub sge-submit-mpi-wq.csh Makeflow10gib Makeflow10gib.debug
        while [ ! -f Makeflow10gib.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow10gib.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	qdel -u `whoami`
	echo "sleeping" &&sleep 180 #sleep for 17min, to give workers time to stop running
        rm out*.txt
	python ./onlyFive *.wqlog
        mv Makeflow10gib.* ./10gib.wq-mpi
	mv scaleread.* ./10gib.wq-mpi
        #cd 

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
printf "0.001 %f\n" $(python jobThroughput.py 1kib.mpi/Makeflow1kib.makeflowlog $d1kb) >> mpi.dat
printf "0.01 %f\n" $(python jobThroughput.py 10kib.mpi/Makeflow10kib.makeflowlog $d10kb) >> mpi.dat
printf "0.1 %f\n" $(python jobThroughput.py 100kib.mpi/Makeflow100kib.makeflowlog $d100kb) >> mpi.dat
printf "1.0 %f\n" $(python jobThroughput.py 1mib.mpi/Makeflow1mib.makeflowlog $d1mb) >> mpi.dat
printf "10.0 %f\n" $(python jobThroughput.py 10mib.mpi/Makeflow10mib.makeflowlog $d10mb) >> mpi.dat
printf "100.0 %f\n" $(python jobThroughput.py 100mib.mpi/Makeflow100mib.makeflowlog $d100mb) >> mpi.dat
printf "1000.0 %f\n" $(python jobThroughput.py 1gib.mpi/Makeflow1gib.makeflowlog $d1gb) >> mpi.dat
printf "10000.0 %f\n" $(python jobThroughput.py 10gib.mpi/Makeflow10gib.makeflowlog $d10gb) >> mpi.dat


printf "0.001 %f\n" $(python jobThroughput.py 1kib.wq-mpi/Makeflow1kib.makeflowlog $d1kb) >> wq-mpi.dat
printf "0.01 %f\n" $(python jobThroughput.py 10kib.wq-mpi/Makeflow10kib.makeflowlog $d10kb) >> wq-mpi.dat
printf "0.1 %f\n" $(python jobThroughput.py 100kib.wq-mpi/Makeflow100kib.makeflowlog $d100kb) >> wq-mpi.dat
printf "1.0 %f\n" $(python jobThroughput.py 1mib.wq-mpi/Makeflow1mib.makeflowlog $d1mb) >> wq-mpi.dat
printf "10.0 %f\n" $(python jobThroughput.py 10mib.wq-mpi/Makeflow10mib.makeflowlog $d10mb) >> wq-mpi.dat
printf "100.0 %f\n" $(python jobThroughput.py 100mib.wq-mpi/Makeflow100mib.makeflowlog $d100mb) >> wq-mpi.dat
printf "1000.0 %f\n" $(python jobThroughput.py 1gib.wq-mpi/Makeflow1gib.makeflowlog $d1gb) >> wq-mpi.dat
printf "10000.0 %f\n" $(python jobThroughput.py 10gib.wq-mpi/Makeflow10gib.makeflowlog $d10gb) >> wq-mpi.dat

