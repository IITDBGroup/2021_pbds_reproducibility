#!/bin/bash

#the runtime of q1 q2 q3 q4 q5
for i in 1 2 3 4 5
do
    ./time_query.sh stackOverflow q"$i".sql 20 3 > ./result/q"$i".txt
done



#the runtime of applying ps (use) and the capture cost (cap) for different ps size (1k 10k)
for i in 1 2 3 4 5
do
        for j in 1 10
        do
            for k in use cap
            do
            ./time_query.sh stackOverflow ./sq"$i"/q"$i"_"$k"_"$j"k.sql 20 3 > ./result//q"$i"_"$k"_"$j"k.txt
            done;
        done;
done;
