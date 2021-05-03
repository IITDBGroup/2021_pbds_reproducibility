#!/bin/bash

if [ -f "result_1g.csv" ];
then
    cat /dev/null > "result_1g.csv"
fi;

echo "type,32p,64p,400p,4kp,10kp" >> result_1g.csv
for j in 2o 3  10 15  18 21
do
	l1=q"$j"
	for i in 1 10
	do
		#echo q"$i"
		avg1=$(grep 'Avg runtime is' q"$j"_"$i"g.txt | sed -e 's/Avg runtime is [[:space:]]*//g')
		avg2=$(printf "%.4f\n" $avg1)
		#echo "avg: $avg2,"
		l1="$l1,$avg2"
	done
	#l2=${l1#*,}
	echo "$l1" >> result_1g.csv
done
#echo "l1: $l1"
#l2=${l1#*,}
#echo "l2: $l2"
