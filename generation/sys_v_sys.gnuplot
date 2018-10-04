set title "System Throughput for Data Generating Workflow"
set term postscript eps enhanced monochrome dashed size 4.350in,2.75in font 'Helvetica,20' linewidth 4

set output 'system_throughput_generation.eps'

set key left

set auto x
set xlabel "Per-Job File Size MB"
set ylabel "GB/s"

set logscale x

set xrange[0:]

set title "MPI System Throughput Data Generation"
set output 'mpi_system_throughput_generation_sys.eps'
plot 'mpi.dat' using ($1):($2) with lines title "crc",\
     'stampede/mpi.dat' using ($1):($2) with lines title "stampede",\
     'comet/mpi.dat' using ($1):($2) with lines title "comet"

set title "WQ-MPI System Throughput Data Generation"
set output 'wq_mpi_system_throughput_generation_sys.eps'
plot 'wq-mpi.dat' using ($1):($2) with lines title "crc",\
     'stampede/wq-mpi.dat' using ($1):($2) with lines title "stampede",\
     'comet/wq-mpi.dat' using ($1):($2) with lines title "comet"
