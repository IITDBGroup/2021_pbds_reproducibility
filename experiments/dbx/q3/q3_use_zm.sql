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




select /*+ NO_RESULT_CACHE */ * from (select * from (select l_orderkey,
sum(l_extendedprice*(1-l_discount)) as revenue, o_orderdate, o_shippriority
from (select * from zm_lineitem where
ps_l_orderkey in
(559,798,1636,2734,3806,3980,3988,7778,8827,9899)),
(select * from zm1_orders where
 ps_o_orderkey in
(561,799,1633,2728,3801,3976,3984,7780,8830,9900)),
(select * from zm_customer where
ps_c_custkey in
(1157,2029,2982,3444,4229,4362,4756,5125,5539,8816)) where c_mktsegment = 'BUILDING' and c_custkey = o_custkey and
l_orderkey = o_orderkey and o_orderdate < TO_DATE('1995-03-15','YYYY-MM-DD')
and l_shipdate > TO_DATE('1995-03-15','YYYY-MM-DD') group by l_orderkey, o_orderdate, o_shippriority) l2
order by revenue desc, o_orderdate) l1 where rownum <= 10;


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
