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




SELECT /*+ NO_RESULT_CACHE */ * FROM (SELECT * FROM (SELECT c_custkey, c_name, sum(l_extendedprice * (1 - l_discount)) as revenue, 
c_acctbal, n_name, c_address, c_phone, c_comment FROM customer, orders, lineitem, nation WHERE c_custkey = o_custkey and 
l_orderkey = o_orderkey and o_orderdate >= TO_DATE('1994-12-01','YYYY-MM-DD') and o_orderdate < TO_DATE('1995-03-01','YYYY-MM-DD') 
and l_returnflag = 'R' and c_nationkey = n_nationkey GROUP BY c_custkey, c_name, c_acctbal, c_phone, n_name, c_address, c_comment) o1 ORDER BY revenue desc) o2 
where rownum <= 20;



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
