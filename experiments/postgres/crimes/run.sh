#!/bin/bash

#the runtime of cq1 and cq2
./time_crimes.sh ./cq1/cq1.sql 100 5 > ./result/cq1.txt
./time_crimes.sh ./cq2/cq2.sql 100 5 > ./result/cq2.txt


#the runtime of applying ps (use) and the capture cost (cap)
for i in 1 2 
do
        for j in use cap
        do
        ./time_crimes.sh ./cq"$i"/cq"$i"_"$j".sql 100 5 > ./result/cq"$i"_"$j".txt            
        done;
done;
