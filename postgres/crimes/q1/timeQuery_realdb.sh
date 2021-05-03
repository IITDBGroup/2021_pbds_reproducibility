#!/bin/bash



QUERY=$1
REPETITIONS=$2
#PSQL=/home/oracle/anton/code/postgresql-9.6beta3-temporal/server/bin/psql -p 5400 -d tpg -h localhost -f


i=1;
totalsum=0.0;
while [ ${i} -le ${REPETITIONS} ]
do
echo "${i} of ${REPETITIONS}"

	start=$(date +%s%3N);
	#echo "start is ${start}"

	/home/perm/xing/hippo/hippo-postges/bin/psql -d realdb -h localhost -U perm -f $QUERY > /dev/null ;
#/home/oracle/anton/code/postgresql-9.6beta3-temporal/server/bin/psql -p 5400 -d tpg -h localhost -f q3-2.sql
	end=$(date +%s%3N);
	#echo "end is ${end}"

	result=$(echo "scale=6;$(( $end - $start ))/1000" | bc);
	echo "runtime is ${result}"

	i=`expr ${i} + 1`

	totalsum=`echo $result + $totalsum | bc`
	echo "Current total sum is ${totalsum}"
done

avgsum=`echo $totalsum/$REPETITIONS | bc -l`
echo "total sum is ${totalsum}"
echo "Avg runtime is ${avgsum}"



#output time
