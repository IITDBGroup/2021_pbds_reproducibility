#!/bin/bash
../time_crimes.sh ./q1_2/q1_2.sql 20 5 > ./result/q1_nor.txt
../time_crimes.sh ./q2/q2.sql 20 5 > ./result/q2_nor.txt


for i in 1_2 2
do
        for k in use capture
        do
        ../time_crimes.sh ./q"$i"/q"$i"_"$k".sql 20 5 > ./result/q"$i"_"$k".txt            
        done;
done;
