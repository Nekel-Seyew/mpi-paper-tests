#!/usr/bin/python3

import os
import sys
from statistics import mean

if __name__ == "__main__":
	difference = []
	mftime = 0
	for k in sys.argv[2:]:
		with open(k,'r') as f:
			if '.makeflowlog' in k:
				start = 0
				end = 0
				for line in f:
					if 'STARTED' in line:
						start = float(line.split()[-1])
					if 'COMPLETED' in line:
						end = float(line.split()[-1])
				mftime = (end-start)/1e6 #convert to seconds
				continue
			p = []
			for line in f:
				num = line.split()[0]
				#numsec = float(num.split('.')[0]) + float(num.split('.')[1])/1e9 #have to take nanoseconds and convert into seconds
				numsec = float(num)
				p.append(numsec)
			difference.append(p[1]-p[0])
	difference = sorted(difference)
	dmin = min(difference)
	dmax = max(difference)
	#it's measured in seconds
	hist = {}
	for x in range(0,300,30):
		hist[x] = 0
	for t in difference:
		for x in range(0,300,30):
			if x <= t < x+30:
				hist[x] +=1
				break
	print(difference)
	print(mean(difference)/1000000)
	f = open(sys.argv[1],'w+')
	f.write("Seconds\n")
	for y in hist:
		f.write("%i %i\n"%(y,hist[y]))
	print("Total Jobs: %f GB/s"%(1000.0/(sum(difference)/1000000)))
	if mftime != 0:
		print("Total System: %f GB/s"%(1000.0/mftime))
	
	
