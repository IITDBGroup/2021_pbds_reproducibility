#!/bin/bash

if [ -f "result_use_1g.csv" ];
then
    cat /dev/null > "result_use_1g.csv"
fi;

echo "type,32p,64p,400p,4kp,10kp" >> result_use_1g.csv
for j in 2 3  10 15  18 
do
	l1=q"$j"
	for i in 32 64 400 4k 10k
	do
		#echo q"$i"
		avg1=$(grep 'Avg runtime is' q"$j"_"$i"_use_1g.txt | sed -e 's/Avg runtime is [[:space:]]*//g')
		avg2=$(printf "%.4f\n" $avg1)
		#echo "avg: $avg2,"
		l1="$l1,$avg2"
	done
	#l2=${l1#*,}
	echo "$l1" >> result_use_1g.csv
done
#echo "l1: $l1"
#l2=${l1#*,}
#echo "l2: $l2"
