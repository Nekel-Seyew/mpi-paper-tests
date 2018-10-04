#!/usr/bin/python3

import os
import sys
import datetime

def conv_to_time(a,b):
        sa = a.split('/')
        sb = b.split(':')
        ms = int(sb[-1].split('.')[1])*1e4 #it's 0.XX of a second, which is 100th of a second, so to get to 1,000,000th, multiply by 10,00,00
        return datetime.datetime(int(sa[0]),int(sa[1]),int(sa[2]),int(sb[0]),int(sb[1]),int(sb[2].split('.')[0]),int(ms))

if __name__ == '__main__':
        for k in sys.argv[1:]:
                with open(k,'r') as f:
                        wstart = 0
                        wend = 0
                        first = False
                        last = False
                        tasks = {}
                        job_times = 0
                        count = 0
                        for line in f:
                                if 'Being told to die, so doing that' in line or 'batch: Msgs have all been sent' in line:
                                        break
                                if 'sending resources to rank 0!' in line:
                                        if first:
                                                print("Error, already found connected to master...")
                                        first = True
                                        wstart = conv_to_time(line.split()[0],line.split()[1])
                                if 'Being told to terminate, calling finalize and returning' in line:
                                        if last:
                                                print("Error, already released from master...")
                                        last = True
                                        wend = conv_to_time(line.split()[0],line.split()[1])        
                                if 'The command to execute is:' in line:
                                        #used.append(int(line.split()[-1]))
                                        count += 1
                                        testfile_name = line.split()[-7]
                                        with open(testfile_name,'r') as testfile:
                                                p = []
                                                for line_t in testfile:
                                                        p.append(float(line_t.split()[0]))
                                                job_times += ((p[1] - p[0])/1000000.0)
                                                #tasks[100-int(line.split()[-1])] = (p[1] - p[0])
                                                #print(p[1]-p[0])
                        #for tt in used:
                                #job_times += tasks[tt]
                        #print("Job times sum: %f, len job_times %i",(job_times,len(used)))
                        if wend == 0 or wstart == 0:
                                continue
                        print(wend, wstart,k)
                        worker_time = (wend - wstart).total_seconds()
                        print("Bandwidth of worker: %f GB/s num jobs: %i job throughput: %f GB/s"%((10*count)/worker_time,count,(10*count)/job_times))        
