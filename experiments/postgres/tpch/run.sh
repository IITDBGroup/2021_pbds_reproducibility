#!/bin/bash


# queries runtime
for i in 2 3 5 7 8 10 15 17 18 19 20 21 21u
do
        ./timeQuery_1g.sh ./nor/q"$i".sql 20 3 > ./result/q"$i"_1g.txt
done;


for i in 2 3 5 7 8 10 15 17 18 19 20 21 21u
do
        ./timeQuery_10g.sh ./nor/q"$i".sql 20 3 > ./result/q"$i"_10g.txt
done;


###the query runtime by applying ps (use) and the capture cost (cap)

###10k 1g 
for i in 2 3 5 7 8 10 15 17 18 19 20 21
do
        for j in use cap
        do
        ./timeQuery_1g_brin100.sh ./10k/q"$i"_"$j"_1g.sql 20 3 > ./result/q"$i"_"$j"_10k_1g.txt
        done;
done;


####10k 10g
for i in 2 3 10 15 18 19 20 21
do
        for j in use cap
        do
        ./timeQuery_10g_brin100.sh ./10k/q"$i"_"$j"_10g.sql 20 3 > ./result/q"$i"_"$j"_10k_10g.txt
        done;
done;


#400 1g
for i in 2 3 5 7 8 10 15 17 18 19 20 21
do
        for j in use cap
        do
        ./timeQuery_1g_brin100.sh ./400/q"$i"_"$j"_1g.sql 20 3 > ./result/q"$i"_"$j"_400_1g.txt
        done;
done;


#400 10g
for i in 2 3 10 15 18 19 20 21
do
        for j in use cap
        do
        ./timeQuery_10g_brin100.sh ./400/q"$i"_"$j"_10g.sql 20 3 > ./result/q"$i"_"$j"_400_10g.txt
        done;
done;


#64 1g
for i in 2 3 5 7 8 10 15 17 18 19 20 21
do
        for j in use cap
        do
        ./timeQuery_1g_brin100.sh ./64/q"$i"_"$j"_1g.sql 20 3 > ./result/q"$i"_"$j"_64_1g.txt
        done;
done;


#64 10g
for i in 2 3 10 15 18 19 20 21
do
        for j in use cap
        do
        ./timeQuery_10g_brin100.sh ./64/q"$i"_"$j"_10g.sql 20 3 > ./result/q"$i"_"$j"_64_10g.txt
        done;
done;


#32 1g
for i in 2 3 5 7 8 10 15 17 18 19 20 21
do
        for j in use cap
        do
        ./timeQuery_1g_brin100.sh ./32/q"$i"_"$j"_1g.sql 10 2 > ./result/q"$i"_"$j"_32_1g.txt
        done;
done;


#32 10g
for i in 2 3 10 15 18 19 20 21
do
        for j in use cap
        do
        ./timeQuery_10g_brin100.sh ./32/q"$i"_"$j"_10g.sql 5 2 > ./result/q"$i"_"$j"_32_10g.txt
        done;
done;




