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
c_acctbal, n_name, c_address, c_phone, c_comment FROM (select * from zm_customer
where ps_c_custkey in
(120,832,1354,2375,2485,2915,3016,3731,5115,5574,6114,7295,7657,7679,8207,8334,8958,9069,9190,9468)),
(select * from zm1_orders where
ps_o_orderkey in
(104,454,467,511,589,1031,1066,1073,1306,1347,1402,1425,1540,1748,1749,1792,1938,2029,2075,2258,2508,2518,2878,2884,2933,2964,3067,3143,3237,3383,3406,3617,3709,3823,3901,3954,4330,4388,4453,4575,4821,4825,4992,5050,5427,5566,5578,5604,5780,5795,5891,6030,6225,6306,6341,6463,6585,6622,7261,7371,7629,7671,7726,7931,8289,8382,8400,8456,8471,8525,8633,8720,8891,8929,9025,9069,9076,9176,9194,9195,9326,9354,9438,9491,9811)) ,
(select * from zm_lineitem where
ps_l_orderkey in
(105,452,465,509,588,1032,1067,1074,1308,1350,1404,1426,1542,1749,1750,1793,1938,2030,2076,2260,2512,2522,2884,2890,2938,2969,3072,3149,3242,3389,3412,3623,3714,3828,3907,3958,4334,4393,4457,4579,4826,4830,4997,5056,5434,5573,5584,5610,5785,5800,5896,6035,6229,6310,6344,6466,6587,6624,7260,7371,7627,7669,7724,7930,8287,8380,8398,8454,8469,8522,8630,8717,8888,8925,9021,9066,9073,9173,9191,9322,9350,9434,9488,9809)) , nation WHERE c_custkey = o_custkey and
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
