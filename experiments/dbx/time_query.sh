#!/bin/bash

# set number of repetitions
if [ "$#" != 2 ]; then
	        echo "takes one parameter that is the query file"
		        exit 1
		else
			        QUERYFILE=$2
			fi

			REPETITIONS=$1

			if [ ! -f ${QUERYFILE} ]; then
				        echo "${QUERYFILE} does not exit"
					        exit 1
					fi

					#TEMPFILE=`echo "${QUERYFILE}" | sed 's/.sql/_tmp.sql/g'`
					#echo "use ${TEMPFILE}"


					#cat "${QUERYFILE}" | grep -v 'set termout off;' > "${TEMPFILE}"

					#sqlplus -s TPCH/IaDdpdr@'(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=ligeti.cs.iit.edu)(PORT=1521)))(CONNECT_DATA=(SID=orcl)))' @${TEMPFILE}

					i=1;
					totalsum=0.0;
					while [ ${i} -le ${REPETITIONS} ]
					do
						echo "${i} of ${REPETITIONS}"
						       result=$(sqlplus -s tpch_10gb/Provenancesketch32@db202104032058_high @${QUERYFILE})
						       echo "runtime is ${result}"
						                       i=`expr ${i} + 1`

								       totalsum=`echo $result + $totalsum | bc`

								       echo "Current total sum is ${totalsum}"
							       done

							       avgsum=`echo $totalsum/$REPETITIONS | bc -l`
							       echo "total sum is ${totalsum}"
							       echo "Avg runtime is ${avgsum}"
							       #echo "Total time is ${result}"
							       #rm -f ${TEMPFILE}
