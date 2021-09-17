#!/bin/bash



QUERY=$1
REPETITIONS=$2
RMREP=$3
#PSQL=/home/oracle/anton/code/postgresql-9.6beta3-temporal/server/bin/psql -p 5400 -d tpg -h localhost -f


i=1;
totalsum=0.0;
while [ ${i} -le ${REPETITIONS} ]
do
echo "${i} of ${REPETITIONS}"

	start=$(date +%s%3N);
	#echo "start is ${start}"

	/home/perm/postgres11/install/bin/psql -d tpch_1g_brin_100ppr -h localhost -p 5440 -U pbds -f $QUERY > /dev/null ;
	#/home/perm/xing/hippo/hippo-postges/bin/psql -d tpch_1gb -h localhost -U perm -f $QUERY > /dev/null ;
#/home/oracle/anton/code/postgresql-9.6beta3-temporal/server/bin/psql -p 5400 -d tpg -h localhost -f q3-2.sql
	end=$(date +%s%3N);
	#echo "end is ${end}"

	result=$(echo "scale=6;$(( $end - $start ))/1000" | bc);
	echo "runtime is ${result}"

	if [ $i -gt $RMREP ];
        then
                totalsum=`echo $result + $totalsum | bc`
        fi

	i=`expr ${i} + 1`

	#totalsum=`echo $result + $totalsum | bc`
	echo "Current total sum is ${totalsum}"
done

rep=$(($REPETITIONS - $RMREP))
avgsum=`echo $totalsum/$rep | bc -l`
#avgsum=`echo $totalsum/$REPETITIONS | bc -l`
echo "total sum is ${totalsum}"
echo "Avg runtime is ${avgsum}"



#output time
