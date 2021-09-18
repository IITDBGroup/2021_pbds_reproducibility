#!/bin/bash

###### 10G

#queries runtime
for i in 3 10 15 18 
do
        ./timeQuery.sh ./nor/q"$i".sql 20 3 > ./result/q"$i"_10g.txt
done;

for i in  21u
do
        ./timeQuery.sh ./nor/q"$i".sql 5 1 > ./result/q"$i"_10g.txt
done;

#queries runtime by applying ps
for i in 3 10 15 18 21
do
        for j in 32 64 400 4k 10k
        do
                ./timeQuery.sh ./use/q"$i"_"$j"_10g.sql 10 5 > ./result/q"$i"_"$j"_use_10g.txt
        done;
done;


#ps capture cost
for i in 3 10 15 18 21
do
        for j in 32 64 400 4k 10k
        do
                ./timeQuery.sh ./cap/fixed_q"$i"_cap_"$j"_10g.sql 3 1 > ./result/q"$i"_cap_"$j"_10g.txt
        done;
done;


