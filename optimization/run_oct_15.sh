#!/bin/bash
for i in 32 64 96 128 256 400 1000 4000 10000
do
        for j in binary_fast binary_int_fast binary_bit_or
        do
        ./timeQuery_realdb_rm.sh ./capture_opt/q1_"$i"_"$j"_new.sql 30 3 > ./result_oct_15/q1_"$i"_"$j"_new.txt
        done;
done;

for i in 32 64 96 128 256 400 1000 4000 10000
do
        for j in binary cases
        do
        ./timeQuery_realdb_rm.sh ./new_query1/q1_"$i"_"$j"_new.sql 30 3 > ./result_oct_15/q1_"$i"_"$j"_new.txt
        done;
done;
