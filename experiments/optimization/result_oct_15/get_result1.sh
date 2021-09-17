#!/bin/bash

if [ -f "case_vs_bs.csv" ];
then
	cat /dev/null > "case_vs_bs.csv"
fi;

echo "type,CASE,BS" >> case_vs_bs.csv
for j in 32 64 96 128 256 400 1000 4000 10000
do
	l1="$j"
	for i in cases binary
	do
		#echo "$i"
		avg1=$(grep 'Avg runtime is' q1_"$j"_"$i"_new.txt | sed -e 's/Avg runtime is [[:space:]]*//g')
		avg2=$(printf "%.4f\n" $avg1)
		#echo "avg: $avg2,"
		l1="$l1,$avg2"
	done
	#l2=${l1#*,}
	echo "$l1" >> case_vs_bs.csv
done
