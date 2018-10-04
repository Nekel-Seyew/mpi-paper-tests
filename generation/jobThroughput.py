#!/usr/bin/python

import os
import sys

if __name__ == '__main__':
	with open(sys.argv[1],'r') as f:
		start = 0
		end = 0
		for line in f:
			if 'STARTED' in line:
				start = float(line.split()[-1])
			if 'COMPLETED' in line:
				end = float(line.split()[-1])
		print((100*float(sys.argv[2])/2**30) / ((end-start)/1e6)) #since there are 100 jobs in each, generally, and convert from microseconds into straight seconds, and measure in GiBytes
