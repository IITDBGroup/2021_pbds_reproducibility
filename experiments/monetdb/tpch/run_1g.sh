#!/bin/bash

###### 1G

#queries runtime
###################### 
for i in 2u 3 10 15 18
do
        ./timeQuery.sh ./nor/q"$i".sql 20 3 > ./result/q"$i"_1g.txt
done;

#queries runtime by applying ps
for i in 2o 3 10 15 18
do
        for j in 32 64 400 4k 10k
        do
               ./timeQuery.sh ./use/q"$i"_"$j"_1g.sql 20 3 > ./result/q"$i"_"$j"_1g.txt
        done;
done;

#ps capture cost
for i in 2 3 10 15 18
do
        for j in 32 64 400 4k 10k
        do
                ./timeQuery.sh ./cap/fixed_q"$i"_cap_"$j"_1g.sql 20 3 > ./result/q"$i"_cap_"$j"_1g.txt
        done;
done;