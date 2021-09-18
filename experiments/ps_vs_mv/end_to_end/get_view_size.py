#!/usr/bin/python
# -*- coding: UTF-8 -*-

import subprocess
from subprocess import PIPE,Popen
#import random
#import numpy as np
import time
import random
import operator



def q2(inS,inE,outS):
    q = "SELECT * FROM (SELECT count(*) as cnt,u_id,u_displayname from (SELECT * FROM (select * from comments_b1 where c_creationdate >= TO_DATE('" + str(inS) + "', 'YYYY-MM-DD') and c_creationdate < TO_DATE('" + str(inE) + "', 'YYYY-MM-DD')) x, users_b1 WHERE c_userid=u_id) a GROUP BY u_id,u_displayname) b where cnt >= " + str(outS)
    #q = "SELECT * FROM (SELECT count(*) as cnt,u_id,u_displayname from (SELECT * FROM (select * from comments_b1 where c_creationdate >= date " + str(inS) + " and c_creationdate < date " + str(inE) + ") x, users_b1 WHERE c_userid=u_id) a GROUP BY u_id,u_displayname) b where cnt >= " + str(outS)
    print  (q)
    return q


def q2_create_view(inS,inE,view):
    q = "CREATE MATERIALIZED VIEW " + view + " AS SELECT count(*) as cnt,u_id,u_displayname from (SELECT * FROM (select * from comments_b1 where c_creationdate >= TO_DATE('" + str(inS) + "', 'YYYY-MM-DD') and c_creationdate < TO_DATE('" + str(inE) + "', 'YYYY-MM-DD')) x, users_b1 WHERE c_userid=u_id) a GROUP BY u_id,u_displayname"
    print  (q)
    return q


def q2_use_view(outS,view):
    q = "SELECT * FROM " + view + " where cnt >= " + str(outS)
    print (q)
    return q


#time query
def time_query(query):
    result = subprocess.Popen(['/home/oracle/datasets/scripts/time_commands.sh stackOverflow "%s" 1 0' % (query)], shell=True, stdout=PIPE).communicate()[0]
    print  ("query: " + query)
    print  ("cost: " + str(result))
    return float(result)


def run_query(query):
    result = subprocess.Popen(['/home/oracle/datasets/scripts/run_commands.sh stackOverflow "%s"' % (query)], shell=True, stdout=PIPE).communicate()[0]
    print ("query: " + query)
    print ("result: " + str(result))
    return result
    #return float(result)

def query_view_size(view):
    q = "SELECT pg_size_pretty( pg_total_relation_size('" + view + "') );"
    print (q)
    return q

def get_view_size(view):
    q = query_view_size(view)
    result = run_query(q)
    r = getResult(result)
    print ("" + view + " size: " + r)
    return int(r);


#analyze GProM result
def getResult(r):
    r1 = r.split('\n')

    #r1[2] get the third line
    #' 11101111000001111011011111111111101001111111010010101001010110001111111010101 |'
    #print   ("r1's length: ", len(r1))

    #split the third line
    r2 = r1[2].split(' ')


    #split the third line and choose the second one
    #['', '11101111000001111011011111111111101001111111010010101001010110001111111010101', '|']
    r3 = r2[1]

    if r3 == 'NULL':
        return zerops
        #return '00000000000000000000000000000000000000000000000000000000000000000000000000000'

    #print    >> "capture result is " + r3 + "\n"

    return r3

def getTimeResult(r):
    if(moreinfo):
        print  ('--------------Begin getTimeResult()-------------')
        print  ("r ", r)

    r1 = r.split('\n')

    if(moreinfo):
        print  ("r1: ", r1)

    r2 = r1[0].split()
    if(moreinfo):
        print  ("r2: ", r2)

    r3 = r2[2]
    if(moreinfo):
        print  "run time is " + r3 + "\n"

    if(moreinfo):
        print  ('--------------End getTimeResult()-------------')
        print   ('\n')
        print   ('\n')
    return float(r3)/1000



def getPS(q,f):

    '''
    show outside interval startpoint (outS) and inside interval startpoint (inS) and endpoint (inE)
    '''
    if(moreinfo):
        print ("getPS - Current query: " + q)

    result = subprocess.Popen(['/home/oracle/datasets/gprom/gprom_old/src/command_line/gprom -host 127.0.0.1 -db stackOverflow -port 5440 -user oracle -passwd test -log -loglevel 0 -sql "CAPTURE PROVENANCE WITH COARSE GRAINED RANGESB (users_b1 (u_id %s)) OF (%s);" -backend postgres -Pexecutor run -ps_binary_search TRUE -ps_use_brin_op TRUE -ps_analyze FALSE -heuristic_opt -Oremove_unnecessary_columns FALSE' % (f,q)], shell=True, stdout=PIPE).communicate()[0]
    if(moreinfo):
        print  ("PS: " + result)

    r = getResult(result)
    return r

def capCost(q,f):
    if(moreinfo):
        print  ("capCost - Current query: " + q)
    #capture time
    capQueryTimes = subprocess.Popen(['/home/oracle/datasets/gprom/gprom_old/src/command_line/gprom -host 127.0.0.1 -db stackOverflow -port 5440 -user oracle -passwd test -log -loglevel 0 -sql "CAPTURE PROVENANCE WITH COARSE GRAINED RANGESB (users_b1 (u_id %s)) OF (%s);" -backend postgres -Pexecutor run -show_result FALSE -time_queries -repeat_query_count 1 -ps_binary_search TRUE -ps_use_brin_op TRUE -ps_analyze FALSE -heuristic_opt -Oremove_unnecessary_columns FALSE' % (f,q)], shell=True, stdout=PIPE).communicate()[0]
    if(moreinfo):
        print  ("capQueryTimes: " + capQueryTimes)

    capQueryTime = getTimeResult(capQueryTimes)
    return capQueryTime


    farg = open("q2_arg.sql", "w")
    print >> farg, ("USE PROVENANCE WITH COARSE GRAINED RANGESB (users_b1 (u_id %s \'%s\'), comments_b1 (c_userid %s \'%s\')) OF (%s);" % (f,r,f,r,q))
    farg.close()
    result_q = subprocess.Popen(['/home/oracle/datasets/gprom/gprom_old/src/command_line/gprom -host 127.0.0.1 -db stackOverflow -port 5440 -user oracle -passwd test -log -loglevel 0 -queryFile q2_arg.sql -backend postgres -Pexecutor sql -ps_binary_search TRUE -ps_use_brin_op TRUE'], shell=True, stdout=PIPE).communicate()[0]
   # result_q = subprocess.Popen(['/home/oracle/datasets/gprom/gprom/src/command_line/gprom -host 127.0.0.1 -db stackOverflow -port 5440 -user oracle -passwd test -log -loglevel 0 -sql "USE PROVENANCE WITH COARSE GRAINED RANGESB (users_b1 (u_id %s \'%s\'), comments_b1 (c_userid %s \'%s\') ) OF (%s);" -backend postgres -Pexecutor sql -ps_binary_search TRUE -ps_use_brin_op TRUE' % (f,r,f,r,q)], shell=True, stdout=PIPE).communicate()[0]

    cost = time_query(result_q)
    return cost

totalViewSize = 10
view = "view6"
result = get_view_size(view)
print (str(result))
totalViewSize = totalViewSize + result
print (str(totalViewSize))
#print (result)

totalPSSize = 0
psSize = 0.00954
totalPSSize = totalPSSize + psSize
totalPSSize = totalPSSize + psSize
print (str(totalPSSize))

