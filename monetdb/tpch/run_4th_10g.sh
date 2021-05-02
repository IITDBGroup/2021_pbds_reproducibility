#!/bin/bash
for i in 3 10 15 18 21
do
        for j in 32 64 400 4k 10k
        do
                ./timeQuery.sh ./sql/q"$i"_"$j"_10g.sql 10 5 > ./result/result_5th/q"$i"_"$j"_use_10g.txt
        done;
done;


#for i in 3 10 15 18 
#do
#        ./timeQuery.sh ./nor_sql/q"$i".sql 20 5 > ./result/result_5th/q"$i"_10g.txt
#done;
#
#for i in  21u
##do
#        ./timeQuery.sh ./nor_sql/q"$i".sql 5 1 > ./result/result_5th/q"$i"_10g.txt
#done;


#for i in 3 10 15 18 21
#do
#        for j in 32 64 400 
#        do
#                ./timeQuery.sh ./cap/fixed_q"$i"_cap_"$j"_10g.sql 3 1 > ./result/result_5th/q"$i"_cap_"$j"_10g.txt
#        done;
#done;


#for i in 3 10 15 18 21
#do
#        for j in 10k
#        do
#                ./timeQuery.sh ./cap/fixed_q"$i"_cap_"$j"_10g.sql 3 1 > ./result/result_5th/q"$i"_cap_"$j"_10g.txt
#        done;
#done;
