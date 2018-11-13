
#!/bin/bash
#SBATCH --job-name="nulljobs"
#SBATCH --output="nulljobs.%j.%N"
#SBATCH -p normal
#SBATCH --nodes=5
#SBATCH --ntasks-per-node=24
#SBATCH --export=ALL
#SBATCH -t 24:30:00

ibrun makeflow -T mpi Makeflow
#ibrun mpi_starter -m "Makeflow"
