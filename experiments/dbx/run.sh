#!/bin/bash

# tpch 10g dbx
# queries runtime
for i in 2 3 10 18 19 20 21
do
        ./time_query.sh 20 ./q"$i"/q"$i".sql > ./result/q"$i".txt
done;



###the query runtime by applying ps (use) and utilizing partition (p) and zone map (zm)

###10k 1g 
for i in 2 3 10 18 19 20 21
do
        for j in p zm
        do
        ./time_query.sh 20 ./q"$i"/q"$i"_use_"$j".sql > ./result/q"$i"_use_"$j".txt
        done;
done;



