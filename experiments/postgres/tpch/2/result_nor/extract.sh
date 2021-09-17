#!/bin/bash

if [ -f "result_1g.csv" ];
then
    cat /dev/null > "result_use_1g.csv"
fi;

echo "type,nor1,nor10" >> result_1g.csv
for j in 2 3 5 7 8 10 15 17 18 19 20 21 21u
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
