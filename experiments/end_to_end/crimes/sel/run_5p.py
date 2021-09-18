#!/usr/bin/python
# -*- coding: UTF-8 -*-

import subprocess
from subprocess import PIPE,Popen
#import random
import numpy as np
import time


# fileName = "result_crimes_pt" + smax
f = open("end_crime_5p1.txt", "w") 
# f = open(fileName, "w")

class SizeSampler:
       def sampleSize(self):
               return 0

class SizeSamplerUniformMinMax(SizeSampler):

       def __init__(self, smin=0, smax=10, numValues=10):
            self.smin, self.smax, self.numValues = smin, smax, numValues

       def sampleSize(self):
            return np.random.randint(self.smin, self.smax, size = self.numValues)


class IntervalSampler:

      def sampleInterval(self, arrayOfSizes, smin, smax, numValues):
              #get an array of start points (with the same length of arrayOfSizes (which store an array of sizes))
            #startPointsSample = SizeSamplerUniformMinMax(smin,smax,numValues)
            #startPoints = startPointsSample.sampleSize()
            #print >> f, startPoints

            arrayOfIntervals = []
            for i in range (numValues):
                startPoint = np.random.uniform(0, smax - arrayOfSizes[i])
                sp = int(np.trunc(startPoint + np.copysign(0.5, startPoint)))
                print >> f, sp
                arrayOfIntervals.append([sp, sp + arrayOfSizes[i]])
            return arrayOfIntervals


#class IntervalSampler:
#
#      def sampleInterval(self, arrayOfSizes, smin, smax, numValues):
#              #get an array of start points (with the same length of arrayOfSizes (which store an array of sizes))
#            startPointsSample = SizeSamplerUniformMinMax(smin,smax - ,numValues)
#            startPoints = startPointsSample.sampleSize()
#            #print >> f, startPoints
#
#            arrayOfIntervals = []
#            for i in range (numValues):
#                if(startPoints[i] + arrayOfSizes[i] > smax):
#                    arrayOfIntervals.append([startPoints[i], smax])
#                else:
#                    arrayOfIntervals.append([startPoints[i], startPoints[i] + arrayOfSizes[i]])
#            return arrayOfIntervals


#Setting
###################
smin = 1
smax = 69290

#number of times to run
numValues = 1000

#if apply the strategy, the number used to control when to create a new ps, e.g., if one interval appears more than 20 times, then create
numSt = 1000

#rate used to help control when to create a new ps, e.g., if new interval size <= (smax - smin) * rate, then create, to avoid the large interval
rate = 1
###################

#get array of intervals
sizeSample = SizeSamplerUniformMinMax(smin,smax,numValues)
sizes = sizeSample.sampleSize()
intervalSampler = IntervalSampler()
intervals = intervalSampler.sampleInterval(sizes, smin, smax,numValues)


#analyze GProM result
def getResult(r):
    print('--------------int getResult()-------------')
    # if r == None:
    #     print("r is null, directly return 34's 0 ")
    #     return '0000000000000000000000000000000000'
    print("r: ", r)

    r1 = r.split('\n')
    print("r1: ", r1)

    print("r1[2]", r1[2])

    print("r1's length: ", len(r1))


    # if len(r1) == 2:

    #     print("r is null, directly return 34's 0 ")
    #     return '1000000000000000000000000000000000'
    



    r2 = r1[2].split(' ')
    print("r2: ", r2)

    r3 = r2[1]

    if r3 == 'NULL':
        print("r3 is NULL")
        return '1000000000000000000000000000000000'

    print >> f, "capture result is " + r3 + "\n"
    print('-----------------------------------------')
    print('\n')
    print('\n')
    print('\n')

    return r3

#analyze GProM time result (run 3 times and return the third one)
def getTimeResult(r):
    print('--------------int getTimeResult()-------------')
    print("r ", r)

    r1 = r.split('\n')

    print("r1: ", r1)

    r2 = r1[2].split()
    print("r2: ", r2)

    r3 = r2[2]
    print >> f, "run time is " + r3 + "\n"

    print('-----------------------------------------')
    print('\n')
    print('\n')
    print('\n')
    return float(r3)


def getPS(startPoint,endPoint):

    '''
    show startPoint and endPoint
    '''

    print("startPoint: ", startPoint)
    print("endPoint: ", endPoint)

    result = subprocess.Popen(['./src/command_line/gprom -host 127.0.0.1 -db realdb -port 5432 -user perm -log -loglevel 0 -sql "CAPTURE PROVENANCE WITH COARSE GRAINED RANGESB (crimes_pt ((pt_no 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35)) ) OF (SELECT * FROM (SELECT primary_type, count(*) AS C FROM crimes_pt group by primary_type) where C >= %i AND C < %i);" -backend postgres -Pexecutor run -ps_bit_vector_size 34 -ps_binary_search TRUE' % (startPoint,endPoint)], shell=True, stdout=PIPE).communicate()[0]    
    
    '''
    '''
    print("result in getPS(): ", result);

    r = getResult(result)
    return r

def capCost(startPoint,endPoint):
    #capture time
    capQueryTimes = subprocess.Popen(['./src/command_line/gprom -host 127.0.0.1 -db realdb -port 5432 -user perm -log -loglevel 0 -sql "CAPTURE PROVENANCE WITH COARSE GRAINED RANGESB (crimes_pt ((pt_no 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35)) ) OF (SELECT * FROM (SELECT primary_type, count(*) AS C FROM crimes_pt group by primary_type) where C >= %i AND C < %i);" -backend postgres -Pexecutor run -ps_bit_vector_size 34 -ps_binary_search TRUE -show_result FALSE -time_queries -repeat_query_count 3' % (startPoint,endPoint)], shell=True, stdout=PIPE).communicate()[0]    
    print >> f, "capQueryTimes"
    print >> f, capQueryTimes 
    capQueryTime = getTimeResult(capQueryTimes) 
    return capQueryTime

def useCost(startPoint,endPoint, r):
    '''
    if r == None:

        r = '0000000000000000000000000000000000'
    '''
    useQueryTimes = subprocess.Popen(['./src/command_line/gprom -host 127.0.0.1 -db realdb -port 5432 -user perm -log -loglevel 0 -sql "USE PROVENANCE WITH USE COARSE GRAINED RANGESB (crimes_pt ((pt_no 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35)) \'%s\') OF (SELECT * FROM (SELECT primary_type, count(*) AS C FROM crimes_pt group by primary_type) where C >= %i AND C < %i);" -backend postgres -Pexecutor run -show_result FALSE -time_queries -repeat_query_count 3' % (r, startPoint,endPoint)], shell=True, stdout=PIPE).communicate()[0]
    print >> f, "useQueryTimes"
    print >> f, useQueryTimes
    useQueryTime = getTimeResult(useQueryTimes)
    return useQueryTime

def normalCost(startPoint,endPoint):
    orgResults = subprocess.Popen(['./src/command_line/gprom -host 127.0.0.1 -db realdb -port 5432 -user perm -log -loglevel 0 -sql "SELECT * FROM (SELECT primary_type, count(*) AS C FROM crimes_pt group by primary_type) where C >= %i AND C < %i;" -backend postgres -Pexecutor run -show_result FALSE -time_queries -repeat_query_count 3' % (startPoint,endPoint)], shell=True, stdout=PIPE).communicate()[0]
    orgResult = getTimeResult(orgResults)
    return orgResult

#return number of tuples in the ps
def numTupInPS(r):
    resultCnt = subprocess.Popen(['./src/command_line/gprom -host 127.0.0.1 -db realdb -port 5432 -user perm -log -loglevel 0 -sql "SELECT COUNT(*) FROM (USE PROVENANCE WITH USE COARSE GRAINED RANGESB (crimes_pt ((pt_no 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35)) \'%s\') OF (SELECT * FROM crimes_pt));" -backend postgres -Pexecutor run' % (r)], shell=True, stdout=PIPE).communicate()[0]
    

    rCnt = getResult(resultCnt)
    return rCnt

#number of tuples in the table
def numTupInTable():
    resultNum = subprocess.Popen(['./src/command_line/gprom -host 127.0.0.1 -db realdb -port 5432 -user perm -log -loglevel 0 -sql "SELECT COUNT(*) FROM crimes_pt;" -backend postgres -Pexecutor run'], shell=True, stdout=PIPE).communicate()[0]
    rNumTuples = getResult(resultNum)
    return rNumTuples

#map
dict = {}
#map for print >> f, together with ps size
dictCnt ={} 
result = ""
#dict candidate: map interval with count (the number of the interval can be used), if satisfy a condition then move to dict for use
dictCandidate = {}

print >> f, "Query: SELECT * FROM (SELECT primarytype, count(*) AS C FROM PFRAGMENT group by primarytype) where C >= arg1 AND C < arg2"


#store current interval, used interval, ps running time, original running time (used for print >> f, result)
pArray = []

#define dictionary: the main dict to store ps
dict={}

#cumulate time
cumT = 0

#the total cost for capturing ps
cumDictT = 0 

#the total cost for moving the ps from dict candidate to the main dict
cumDictCandT = 0

#number of re-use ps
numUse = 0

count = 0
for i in range (numValues):
    print >> f, ("\n\n|Iteration %d|" % i)
    startPoint = intervals[i][0]
    endPoint = intervals[i][1]
 
    print >> f, "Current dict:"
    print >> f, dict

    #if not provenance in dict then capture provenance and run it
    #else if has provenance
    #   check if there is a ps in dict can be used then use it
    #   else capture a new one for it and run
    if dict:
        flag = 0
        bestStart = -1
        bestEnd = -1
        for key in dict.keys():
            if(startPoint >= key[0] and endPoint <= key[1]):
                if(bestStart == -1 and bestEnd == -1):
                    bestStart = key[0]
                    bestEnd = key[1]
                else:
                    if((key[0] >= bestStart and key[1] <= bestEnd) or ((key[1] - key[0]) < (bestEnd - bestStart))):
                        bestStart = key[0]
                        bestEnd = key[1]
 
        if(bestStart == -1 and bestEnd == -1):
            pp = "current interval [" + bytes(startPoint) + "," + bytes(endPoint) + "], create interval [" + bytes(startPoint) + "," + bytes(endPoint) + "]"           
            print >> f, "Not find: " + pp
            #capture result
            r = getPS(startPoint,endPoint)
            dict[startPoint,endPoint] = r

            #capture time
            capQueryTime = capCost(startPoint,endPoint)
            cumT = capQueryTime + cumT
            cumDictT = capQueryTime + cumDictT

            #use time
            useQueryTime = useCost(startPoint,endPoint, r)
            cumT = useQueryTime + cumT            

            rCnt = numTupInPS(r)
            dictCnt[startPoint,endPoint] = bytes(r) + " : " + bytes(rCnt)

            pp = pp + ", run time: " + bytes(capQueryTime + useQueryTime)
            pArray.append(pp)
        else:
            pp = "current interval [" + bytes(startPoint) + "," + bytes(endPoint) + "], use interval [" + bytes(bestStart) + "," + bytes(bestEnd) + "]"
            print >> f, "Find ps: " + pp

            useQueryTime = useCost(startPoint,endPoint, dict[bestStart, bestEnd])
            cumT = useQueryTime + cumT
            numUse = numUse + 1

            pp = pp + ", run time: " + bytes(useQueryTime)
            pArray.append(pp)

            #calculate dict candidate
            if(not dict.has_key((startPoint,endPoint))):
                if(dictCandidate.has_key((startPoint,endPoint))):
                    dictCandidate[startPoint,endPoint] = dictCandidate[startPoint,endPoint] + 1
                else:
                    dictCandidate[startPoint,endPoint] = 1

                if((dictCandidate[startPoint,endPoint] > numSt) and (endPoint-startPoint) <= rate*(smax-smin)):
                    print >> f, "Create new interval: [" + bytes(startPoint) + "," + bytes(endPoint) + "] from dict candidate and add into dict"
                    #capture result
                    r = getPS(startPoint,endPoint)
                    dict[startPoint,endPoint] = r
                    dictCandidate.pop((startPoint,endPoint))

                    #capture time
                    capQueryTime = capCost(startPoint,endPoint)
                    cumT = capQueryTime + cumT
                    cumDictCandT = capQueryTime + cumDictCandT

                    rCnt = numTupInPS(r)
                    dictCnt[startPoint,endPoint] = bytes(r) + " : " + bytes(rCnt)

    else:
        pp = "current interval [" + bytes(startPoint) + "," + bytes(endPoint) + "], create interval [" + bytes(startPoint) + "," + bytes(endPoint) + "]"
        print >> f, "Empty dict: " + pp
        #capture result
        r = getPS(startPoint,endPoint)
        dict[startPoint,endPoint] = r

        #cap time
        capQueryTime = capCost(startPoint,endPoint)
        cumT = capQueryTime + cumT
        cumDictT = capQueryTime + cumDictT

        #use time
        useQueryTime = useCost(startPoint,endPoint, r) 
        cumT = useQueryTime + cumT

        rCnt = numTupInPS(r)
        dictCnt[startPoint,endPoint] = bytes(r) + " : " + bytes(rCnt)

        pp = pp + ", run time: " + bytes(capQueryTime + useQueryTime) 
        pArray.append(pp)

rNumTuples = numTupInTable()

print >> f, "\n=========="
print >> f, "Number of tuples in the table: " + bytes(rNumTuples)
print >> f, "Dict: "
print >> f, dictCnt
print >> f, "==========\n"

print >> f, "interval array"
print >> f, "==============="
#compute normal queries running time

cumOrgiTime = 0
for i in range (numValues):
    interval = intervals[i]
    print >> f, "number: " + bytes(i) + "\n"
    print >> f, interval
    orgResult = normalCost(interval[0],interval[1])
    cumOrgiTime = orgResult + cumOrgiTime
    pArray[i] = pArray[i] + ", normal query run time: " + bytes(orgResult)

print >> f, "==============="
print >> f, '\n'
for b in pArray:
    find = 'use' in b
    if(find):
        print >> f,('\033[1;35m' + b + '\033[0m')
    else:
        print >> f,(b)
#print >> f, pArray
print >> f, '\n'
print >> f, ('Normal query cumulate running time: %s milliseconds' % cumOrgiTime)
print >> f, ('Ours cumulate Running time: %s milliseconds' % cumT)
print >> f, '\n'

print >> f, '\n'
print >> f, ("Run %d times" % numValues)
print >> f, ("Reuse %d times" % numUse)


print >> f, '\n'
print >> f, ("main dict capture cost %s milliseconds" % cumDictT)
print >> f, ("dict candidate capture cost %s milliseconds" % cumDictCandT)

f.close()



