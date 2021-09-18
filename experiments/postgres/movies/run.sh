#!/bin/bash

#the runtime of q1 q2 and q3
./time_movies.sh ./q1/q1.sql 100 5 > ./result/q1.txt
./time_movies.sh ./q2/q2.sql 100 5 > ./result/q2.txt
./time_movies.sh ./q3/q3.sql 100 5 > ./result/q3.txt


#the runtime of applying ps (use) and the capture cost (cap) for different ps size (32 ... 10k)
for i in 1 2 3
do
        for j in 32 64 400 10k
        do
            for k in use cap
            do
            ./time_movies.sh ./q"$i"/q"$i"_"$j"_"$k".sql 100 5 > ./result/q"$i"_"$j"_"$k".txt
            done;
        done;
done;
