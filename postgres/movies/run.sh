#!/bin/bash

../time_movies.sh ./q1/q1.sql 20 5 > ./result/q1_nor.txt
../time_movies.sh ./q2/q2.sql 20 5 > ./result/q2_nor.txt
../time_movies.sh ./q4/q4.sql 20 5 > ./result/q4_nor.txt

for i in 1 2 4
do
        for j in 32 64 400
        do
            for k in use capture
            do
            ../time_movies.sh ./q"$i"/q"$i"_"$j"_"$k".sql 20 5 > ./result/q"$i"_"$j"_"$k".txt
            done;
        done;
done;
