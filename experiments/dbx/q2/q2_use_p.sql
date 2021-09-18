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




select /*+ NO_RESULT_CACHE */ * from (select s_acctbal,s_name,n_name,p_partkey,p_mfgr,s_address,s_phone,s_comment
from (select * from p_part where 
ps_p_partkey in (63,298,622,704,712,771,821,855,962,1145,1362,1425,1458,1776,1901,1979,1987,2141,2206,2420,2471,2542,2559,2565,2576,2782,2783,2811,2844,2999,3014,3046,3110,3123,3170,3229,3254,3339,3459,3775,3799,3809,3892,4089,4124,4475,4581,4963,5003,5480,5488,5551,5608,5814,5945,6088,6174,6266,6292,6402,6448,6699,6708,6785,6883,7074,7097,7215,7240,7242,7394,7401,7475,7482,7531,7547,7582,7831,7841,8412,8451,8519,8915,8958,8982,9051,9119,9145,9313,9428,9494,9528,9536,9664,9671,9690,9842,9889,9893)), 
(select * from p_supplier where 
ps_s_suppkey in 
(44,345,542,609,638,888,898,977,1002,1172,1259,1265,1656,1672,1780,1918,1995,2066,2099,2126,2300,2476,2784,2812,2881,2884,2905,2997,3009,3013,3031,3159,3410,3465,3489,3682,3716,3902,4063,4226,4257,4267,4300,4309,4441,4574,4656,4834,5149,5278,5513,5739,5840,5909,5942,5944,6010,6251,6285,6293,6464,6511,6606,6636,6661,6740,6837,6868,7126,7227,7252,7372,7379,7427,7574,7829,8145,8198,8219,8269,8300,8327,8544,8969,8978,9010,9110,9483,9684,9732,9953,9966)),
(select * from p_partsupp where 
ps_ps_partkey in 
(64,300,623,706,714,774,823,858,965,1146,1364,1427,1460,1778,1903,1981,1989,2143,2208,2423,2474,2545,2561,2567,2578,2784,2785,2812,2845,3000,3015,3047,3110,3124,3170,3229,3254,3340,3460,3777,3800,3811,3894,4090,4125,4476,4582,4964,5003,5481,5489,5551,5609,5815,5947,6090,6175,6267,6293,6404,6451,6699,6709,6786,6883,7074,7097,7215,7240,7242,7394,7400,7474,7481,7530,7547,7581,7829,7839,8410,8449,8518,8914,8957,8981,9050,9118,9143,9313,9427,9493,9527,9535,9664,9671,9689,9842,9889,9892)) ps,nation,region, (select min(ps_supplycost) as min_supplycost, ps_partkey from (select * from p_partsupp where ps_ps_partkey in 
(64,300,623,706,714,774,823,858,965,1146,1364,1427,1460,1778,1903,1981,1989,2143,2208,2423,2474,2545,2561,2567,2578,2784,2785,2812,2845,3000,3015,3047,3110,3124,3170,3229,3254,3340,3460,3777,3800,3811,3894,4090,4125,4476,4582,4964,5003,5481,5489,5551,5609,5815,5947,6090,6175,6267,6293,6404,6451,6699,6709,6786,6883,7074,7097,7215,7240,7242,7394,7400,7474,7481,7530,7547,7581,7829,7839,8410,8449,8518,8914,8957,8981,9050,9118,9143,9313,9427,9493,9527,9535,9664,9671,9689,9842,9889,9892)), supplier, nation, region where s_suppkey = ps_suppkey and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE' group by ps_partkey) m
where p_partkey = ps.ps_partkey and s_suppkey = ps.ps_suppkey and p_size = 15 and p_type like '%BRASS' and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE'
and ps_supplycost = m.min_supplycost and p_partkey = m.ps_partkey
order by s_acctbal desc, n_name, s_name, p_partkey)
where rownum <= 100;


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
