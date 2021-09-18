#!/bin/bash

if [ -f "result_agg_new.csv" ];
then
	cat /dev/null > "result_agg_new.csv"
fi;

echo "type,bitor,fast,setbits" >> result_agg_new.csv
for j in 32 64 96 128 256 400 1000 4000 10000
do
	l1="$j"
	for i in binary_bit_or binary_fast binary_int_fast
	do
		#echo "$i"
		avg1=$(grep 'Avg runtime is' q1_"$j"_"$i"_new.txt | sed -e 's/Avg runtime is [[:space:]]*//g')
		avg2=$(printf "%.4f\n" $avg1)
		#echo "avg: $avg2,"
		l1="$l1,$avg2"
	done
	#l2=${l1#*,}
	echo "$l1" >> result_agg_new.csv
done
