#!/bin/sh

echo "Starting 10% run"
echo "MPI"
	mkdir 10p-mpi
	sbatch slurm-submit-mpi.slurm Makeflow10 Makeflow10.debug
        while [ ! -f Makeflow10.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow10.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
        sleep 180
        mv out*.txt ./10p-mpi
        mv Makeflow10.* ./10p-mpi
	mv *.o* ./10p-mpi
	mv *.out ./10p-mpi
echo "WQ-MPI"
	mkdir 10p-wq-mpi
	sbatch slurm-submit-mpi-wq.slurm Makeflow10 Makeflow10.debug
        while [ ! -f Makeflow10.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow10.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
        sleep 180 #sleep for 17min, to give workers time to stop running
        mv out*.txt ./10p-wq-mpi
	python ./onlyFive *.wqlog
        mv Makeflow10.* ./10p-wq-mpi
	mv *.o* ./10p-wq-mpi
	mv *.out ./10p-wq-mpi


echo "Starting 20% run"
echo "MPI"
        mkdir 20p-mpi
        sbatch slurm-submit-mpi.slurm Makeflow20 Makeflow20.debug
        while [ ! -f Makeflow20.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow20.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
        sleep 180
        mv out*.txt ./20p-mpi
        mv Makeflow20.* ./20p-mpi
	mv *.o* ./20p-mpi
	mv *.out ./20p-mpi

echo "WQ-MPI"
        mkdir 20p-wq-mpi
        sbatch slurm-submit-mpi-wq.slurm Makeflow20 Makeflow20.debug
        while [ ! -f Makeflow20.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow20.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
        sleep 180 #sleep for 17min, to give workers time to stop running
        mv out*.txt ./20p-wq-mpi
	python ./onlyFive *.wqlog
        mv Makeflow20.* ./20p-wq-mpi
	mv *.o* ./20p-wq-mpi
	mv *.out ./20p-wq-mpi


echo "Starting 40% run"
echo "MPI"
        mkdir 40p-mpi
        sbatch slurm-submit-mpi.slurm Makeflow40 Makeflow40.debug
        while [ ! -f Makeflow40.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow40.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
        sleep 180
        mv out*.txt ./40p-mpi
        mv Makeflow40.* ./40p-mpi
	mv *.o* ./40p-mpi
	mv *.out ./40p-mpi

echo "WQ-MPI"
        mkdir 40p-wq-mpi
        sbatch slurm-submit-mpi-wq.slurm Makeflow40 Makeflow40.debug
        while [ ! -f Makeflow40.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow40.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
        sleep 180 #sleep for 17min, to give workers time to stop running
        mv out*.txt ./40p-wq-mpi
	python ./onlyFive *.wqlog
        mv Makeflow40.* ./40p-wq-mpi
	mv *.o* ./40p-wq-mpi
	mv *.out ./40p-wq-mpi


echo "Starting 60% run"
echo "MPI"
        mkdir 60p-mpi
        sbatch slurm-submit-mpi.slurm Makeflow60 Makeflow60.debug
        while [ ! -f Makeflow60.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow60.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
        sleep 180
        mv out*.txt ./60p-mpi
        mv Makeflow60.* ./60p-mpi
	mv *.o* ./60p-mpi
	mv *.out ./60p-mpi

echo "WQ-MPI"
        mkdir 60p-wq-mpi
        sbatch slurm-submit-mpi-wq.slurm Makeflow60 Makeflow60.debug
        while [ ! -f Makeflow60.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow60.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
        sleep 180 #sleep for 17min, to give workers time to stop running
        mv out*.txt ./60p-wq-mpi
	python ./onlyFive *.wqlog
        mv Makeflow60.* ./60p-wq-mpi
	mv *.o* ./60p-wq-mpi
	mv *.out ./60p-wq-mpi


echo "Starting 80% run"
echo "MPI"
        mkdir 80p-mpi
        sbatch slurm-submit-mpi.slurm Makeflow80 Makeflow80.debug
        while [ ! -f Makeflow80.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow80.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
        sleep 180
        mv out*.txt ./80p-mpi
        mv Makeflow80.* ./80p-mpi
	mv *.o* ./80p-mpi
	mv *.out ./80p-mpi

echo "WQ-MPI"
        mkdir 80p-wq-mpi
        sbatch slurm-submit-mpi-wq.slurm Makeflow80 Makeflow80.debug
        while [ ! -f Makeflow80.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow80.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
        sleep 180 #sleep for 17min, to give workers time to stop running
        mv out*.txt ./80p-wq-mpi
	python ./onlyFive *.wqlog
        mv Makeflow80.* ./80p-wq-mpi
	mv *.o* ./80p-wq-mpi
	mv *.out ./80p-wq-mpi


echo "Starting 100% run"
echo "MPI"
        mkdir 100p-mpi
        sbatch slurm-submit-mpi.slurm Makeflow100 Makeflow100.debug
        while [ ! -f Makeflow100.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow100.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
        sleep 180
        mv out*.txt ./100p-mpi
        mv Makeflow100.* ./100p-mpi
	mv *.o* ./100p-mpi
	mv *.out ./100p-mpi

echo "WQ-MPI"
        mkdir 100p-wq-mpi
        sbatch slurm-submit-mpi-wq.slurm Makeflow100 Makeflow100.debug
        while [ ! -f Makeflow100.makeflowlog ]
        do
		sleep 60
                echo "blah" > /dev/null
        done
        while ! $(grep -Fq 'COMPLETED' Makeflow100.makeflowlog)
        do
		sleep 60
                echo "blah" > /dev/null
        done
	scancel -u `whoami`
        sleep 180 #sleep for 17min, to give workers time to stop running
        mv out*.txt ./100p-wq-mpi
	python ./onlyFive *.wqlog
        mv Makeflow100.* ./100p-wq-mpi
	mv *.o* ./100p-wq-mpi
	mv *.out ./100p-wq-mpi

