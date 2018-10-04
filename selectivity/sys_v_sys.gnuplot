set title "System Throughput for Data Selectivity Workflow"
set term postscript eps enhanced monochrome dashed size 4.350in,2.75in font 'Helvetica,20' linewidth 4

set output 'multirun_system_throughput_selectivity.eps'

set key left

set auto x
set xlabel "Percentage of 100 GiB"
set ylabel "GB/s"

#set logscale x

#set xrange[0:]

#plot 'multirun-mpi.dat' using ($1):($3) with lines title "mpi",\
#     'multirun-wq-mpi.dat' using ($1):($3) with lines title "wq-mpi"
     #'multirun-mpi.dat' using ($1):($3):($2):($4) with yerrorbars title "mpi-errorbars",\
     #'multirun-wq-mpi.dat' using ($1):($3):($2):($4) with yerrorbars title "wq-mpi-errorbars"

#set key off
set output 'mpi_multirun_system_throughput_selectivity_sys.eps'
set title "MPI System Throughput for Data Selectivity Workflow"
plot 'min-max-mpi.dat' using ($1):($3) with lines title "crc",\
     'stampede/mpi.dat' using ($1):($2) with lines title "stampede",\
     'comet/mpi.dat' using ($1):($2) with lines title "comet"

set output 'wq-mpi_multirun_system_throughput_selectivity_sys.eps'
set title "WQ-MPI System Throughput for Data Selectivity Workflow"
plot 'min-max-wq-mpi.dat' using ($1):($3) with lines title "crc",\
     'stampede/wq-mpi.dat' using ($1):($2) with lines title "stampede",\
     'comet/wq-mpi.dat' using ($1):($2) with lines title "comet"



#plot 'run1/mpi.dat' using ($1):($2) with lines,\
#      'run2/mpi.dat' using ($1):($2) with lines,\
#      'run3/mpi.dat' using ($1):($2) with lines,\
#      'run4/mpi.dat' using ($1):($2) with lines,\
#      'run5/mpi.dat' using ($1):($2) with lines,\
#      'run6/mpi.dat' using ($1):($2) with lines,\
#      'run7/mpi.dat' using ($1):($2) with lines,\
#      'run8/mpi.dat' using ($1):($2) with lines,\
#      'run9/mpi.dat' using ($1):($2) with lines,\
#      'run10/mpi.dat' using ($1):($2) with lines,\
#      'run11/mpi.dat' using ($1):($2) with lines,\
#      'run12/mpi.dat' using ($1):($2) with lines,\
#      'run13/mpi.dat' using ($1):($2) with lines,\
#      'run14/mpi.dat' using ($1):($2) with lines,\
#      'run15/mpi.dat' using ($1):($2) with lines,\
#      'run16/mpi.dat' using ($1):($2) with lines,\
#      'run17/mpi.dat' using ($1):($2) with lines,\
#      'run18/mpi.dat' using ($1):($2) with lines,\
#      'run19/mpi.dat' using ($1):($2) with lines,\
#      'run20/mpi.dat' using ($1):($2) with lines,\

#set output 'wq-mpi_multirun_system_throughput_selectivity.eps'
#plot 'run1/wq-mpi.dat' using ($1):($2) with lines,\
#      'run2/wq-mpi.dat' using ($1):($2) with lines,\
#      'run3/wq-mpi.dat' using ($1):($2) with lines,\
#      'run4/wq-mpi.dat' using ($1):($2) with lines,\
#     'run5/wq-mpi.dat' using ($1):($2) with lines,\
#      'run6/wq-mpi.dat' using ($1):($2) with lines,\
#      'run7/wq-mpi.dat' using ($1):($2) with lines,\
#      'run8/wq-mpi.dat' using ($1):($2) with lines,\
#      'run9/wq-mpi.dat' using ($1):($2) with lines,\
#      'run10/wq-mpi.dat' using ($1):($2) with lines,\
#      'run11/wq-mpi.dat' using ($1):($2) with lines,\
#      'run12/wq-mpi.dat' using ($1):($2) with lines,\
#      'run13/wq-mpi.dat' using ($1):($2) with lines,\
#      'run14/wq-mpi.dat' using ($1):($2) with lines,\
#      'run15/wq-mpi.dat' using ($1):($2) with lines,\
#      'run16/wq-mpi.dat' using ($1):($2) with lines,\
#      'run17/wq-mpi.dat' using ($1):($2) with lines,\
#      'run18/wq-mpi.dat' using ($1):($2) with lines,\
#      'run19/wq-mpi.dat' using ($1):($2) with lines,\
#      'run20/wq-mpi.dat' using ($1):($2) with lines,\

