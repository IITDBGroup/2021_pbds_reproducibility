#!/bin/bash

if [ -f "result_use_10g.csv" ];
then
    cat /dev/null > "result_use_10g.csv"
fi;

echo "type,32p,64p,400p,10000p" >> result_use_10g.csv
for j in 2o 3 5 7 8 10 15 17 18 19 20 21
do
	l1=q"$j"
	for i in 32 64 400 10k
	do
		#echo "$i"
		avg1=$(grep 'Avg runtime is' q"$j"_"$i"_10g.txt | sed -e 's/Avg runtime is [[:space:]]*//g')
		avg2=$(printf "%.4f\n" $avg1)
		#echo "avg: $avg2,"
		l1="$l1,$avg2"
	done
	#l2=${l1#*,}
	echo "$l1" >> result_use_10g.csv
done
#echo "l1: $l1"
#l2=${l1#*,}
#echo "l2: $l2"
