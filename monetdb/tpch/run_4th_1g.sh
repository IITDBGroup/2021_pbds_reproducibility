#!/bin/bash
#for i in 2o 3 10 15 18
#do
#        for j in 32 64 400 4k 10k
#        do
 #               ./timeQuery.sh ./sql/q"$i"_"$j"_1g.sql 30 5 > ./result/result_5th/q"$i"_"$j"_1g.txt
 #       done;
#done;


#for i in 2u 3 10 15 18
#do
#        ./timeQuery.sh ./nor_sql/q"$i".sql 20 5 > ./result/result_5th/q"$i"_1g.txt
#done;

for i in 2 3 10 15 18
do
        for j in 10k
        do
                ./timeQuery.sh ./cap/fixed_q"$i"_cap_"$j"_1g.sql 20 5 > ./result/result_5th/q"$i"_cap_"$j"_1g.txt
        done;
done;


#for i in 2 3 10 15 18
#do
#        for j in 4k
#        do
#                ./timeQuery.sh ./cap/fixed_q"$i"_cap_"$j"_1g.sql 10 3 > ./result/result_5th/q"$i"_cap_"$j"_1g.txt
#        done;
#done;


