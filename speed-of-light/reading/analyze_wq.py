#!/usr/bin/python3

import sys
import os
import datetime
#18:46:26.13

def conv_to_time(a,b):
	sa = a.split('/')
	sb = b.split(':')
	ms = int(sb[-1].split('.')[1])*1e4 #it's 0.XX of a second, which is 100th of a second, so to get to 1,000,000th, multiply by 10,00,00
	return datetime.datetime(int(sa[0]),int(sa[1]),int(sa[2]),int(sb[0]),int(sb[1]),int(sb[2].split('.')[0]),int(ms))
if __name__ == '__main__':
	for k in sys.argv[1:]:
		with open(k,'r') as f:
			worker_time = 0
			first = False
			last = False
			wstart = 0
			wend = 0
			count = 0
			job_times = 0
			tasks = {}
			used = []
			last_line = ""
			for line in f:
				if 'has been forsaken' in line:
					print("Found a task forsaken")
				if 'working for master' in line:
					if first:
						print("Error, already found connected to master...")
					first = True
					wstart = conv_to_time(line.split()[0],line.split()[1])
				if 'released by master' in line:
					if last:
						print("Error, already released from master...")
					last = True
					wend = conv_to_time(line.split()[0],line.split()[1])
				if 'rx from master: kill' in line:
					used.append(int(line.split()[-1]))
					count += 1
				if './read ./random1G.dat' in line:
					testfile_name = line.split()[-1]
					with open(testfile_name,'r') as testfile:
						p = []
						for line_t in testfile:
							p.append(float(line_t.split()[0]))
						#job_times += (p[1] - p[0])
						task_num = line.split()[-1].split('.')[0].split('test')[1]
						tasks[100-int(task_num)] = ((p[1] - p[0])/1000000.0)
						#print(p[1]-p[0])
				last_line = line
			for tt in used:
				job_times += tasks[tt]
			print("Job times sum: %f, len job_times %i",(job_times,len(used)))
			if(wend == 0):
				wend = conv_to_time(last_line.split()[0],last_line.split()[1])
			worker_time = (wend - wstart).total_seconds()
			if job_times != 0:
				print("Bandwidth of worker: %f GB/s num jobs: %i job throughput: %f GB/s"%((10*count)/worker_time,count,(10*count)/job_times))
