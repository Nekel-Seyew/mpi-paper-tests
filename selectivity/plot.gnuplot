set title "System Throughput for Data Selectivity Workflow"
set term postscript eps enhanced monochrome dashed size 4.350in,2.75in font 'Helvetica,20' linewidth 4

set output 'system_throughput_selectivity.eps'

set key left

set auto x
set xlabel "Percentage of 100 GiB"
set ylabel "GB/s"

#set logscale x

#set xrange[0:]

plot 'mpi.dat' using ($1):($2) with lines title "mpi",\
     'wq-mpi.dat' using ($1):($2) with lines title "wq-mpi"
