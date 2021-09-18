set serveroutput on;
set echo off;
set feedback off;
set linesize 100;
set pagesize 0;
set sqlprompt '';
set trimspool on;
SET arraysize 500;

-- set start time
variable start_time VARCHAR2(200)
exec :start_time := to_char(SYSTIMESTAMP,'HH24:MI:SS.FF');

-- fail on error
WHENEVER SQLERROR EXIT FAILURE;

-- deactivate output
set termout off;




SELECT /*+ NO_RESULT_CACHE */ sum(l_extendedprice* (1 - l_discount)) AS revenue FROM lineitem, part 
WHERE (p_partkey = l_partkey AND p_Brand = 'Brand#12' AND (p_container = 'SM CASE' OR p_container = 'SM BOX' OR p_container = 'SM PACK' OR p_container = 'SM PKG') 
AND l_quantity >= 1 AND l_quantity <= 1 + 10 AND p_size >= 1 AND p_size <= 5 AND (l_shipmode ='AIR' OR l_shipmode = 'AIR REG') 
AND l_shipinstruct = 'DELIVER IN PERSON') OR (p_partkey = l_partkey AND p_Brand = 'Brand#23' 
AND (p_container = 'MED BAG' OR p_container = 'MED BOX' OR p_container = 'MED PKG' OR p_container = 'MED PACK') AND l_quantity >= 10 
AND l_quantity <= 10 + 10 AND p_size >= 1 AND p_size <= 10 AND (l_shipmode ='AIR' OR l_shipmode = 'AIR REG') AND l_shipinstruct = 'DELIVER IN PERSON') OR (p_partkey = l_partkey 
AND p_Brand = 'Brand#34' AND (p_container = 'LG CASE' OR p_container = 'LG BOX' OR p_container = 'LG PACK' OR p_container = 'LG PKG') AND l_quantity >= 20 AND l_quantity <= 20 + 10 
AND p_size >= 1 AND p_size <= 15 AND (l_shipmode ='AIR' OR l_shipmode = 'AIR REG') AND l_shipinstruct = 'DELIVER IN PERSON');



            -- activate output
set termout on;

-- set finish time and output
variable finish_time VARCHAR2(200)
exec :finish_time := to_char(SYSTIMESTAMP,'HH24:MI:SS.FF');
SELECT (EXTRACT(SECOND from to_timestamp(:finish_time, 'HH24:MI:SS.FF'))-extract(SECOND from to_timestamp(:start_time, 'HH24:MI:SS.FF')))
        + ((EXTRACT(MINUTE from to_timestamp(:finish_time, 'HH24:MI:SS.FF'))-extract(MINUTE from to_timestamp(:start_time, 'HH24:MI:SS.FF'))) * 60)
            + ((EXTRACT(HOUR from to_timestamp(:finish_time, 'HH24:MI:SS.FF'))-extract(HOUR from to_timestamp(:start_time, 'HH24:MI:SS.FF'))) * 3600)
                + ((EXTRACT(DAY from to_timestamp(:finish_time, 'HH24:MI:SS.FF'))-extract(DAY from to_timestamp(:start_time, 'HH24:MI:SS.FF'))) * 86400)
                    AS t from dual;

                quit;
