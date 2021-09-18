#!/bin/bash

#compare different bit or methods
for i in 32 64 96 128 256 400 1000 4000 10000
do
        for j in binary_fast binary_int_fast binary_bit_or
        do
        ./timeQuery_realdb_rm.sh ./bitor_opt/q1_"$i"_"$j"_new.sql 30 3 > ./result/q1_"$i"_"$j"_new.txt
        done;
done;

#compare using binary search with using case clause for capturing ps
for i in 32 64 96 128 256 400 1000 4000 10000
do
        for j in binary cases
        do
        ./timeQuery_realdb_rm.sh ./bs_opt/q1_"$i"_"$j"_new.sql 30 3 > ./result/q1_"$i"_"$j"_new.txt
        done;
done;
