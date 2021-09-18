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




select /*+ NO_RESULT_CACHE */ * from ( select c_name,c_custkey,o_orderkey,o_orderdate,o_totalprice,sum(l_quantity) from 
(select * from zm_customer where
ps_c_custkey in 
(59,166,412,430,437,501,587,708,730,733,842,966,1042,1111,1114,1200,1211,1360,1417,1504,1618,1779,1916,2023,2116,2162,2319,2356,2385,2442,2481,2567,2597,2715,2885,3042,3218,3338,3492,3812,3944,3990,4033,4208,4227,4287,4299,4368,4436,4453,4838,5154,5155,5193,5692,5974,6285,6353,6544,6657,6667,6885,7156,7169,7174,7213,7346,7376,7438,7604,7641,7679,7757,7789,7817,7862,7871,7920,7976,8048,8066,8123,8216,8287,8320,8458,8542,8586,8722,8723,8973,9004,9195,9202,9495,9642,9808,9814,9880)
), 
(select * from zm_orders where 
ps_o_orderkey in 
(210,367,479,509,629,785,788,801,1177,1205,1257,1301,1345,1583,1734,1767,1799,1855,1932,2052,2062,2193,2305,2511,2892,2907,3073,3201,3270,3386,3440,3442,3493,3521,3534,3669,3873,3976,3983,4063,4153,4206,4409,4494,4678,4696,4852,4880,4885,5395,5433,5599,5697,5743,5749,5820,5894,6052,6108,6254,6485,6581,6616,6725,6811,6823,6844,6878,6879,7044,7048,7207,7239,7268,7332,7357,7363,7375,7650,7748,7781,7796,7799,8051,8067,8148,8247,8310,8512,8532,8590,8725,8939,9290,9303,9419,9669,9821,9844,9858) ), 
(select * from zm_lineitem where 
ps_l_orderkey in (211,366,477,507,627,783,787,801,1177,1206,1259,1302,1347,1586,1735,1768,1801,1857,1932,2053,2063,2194,2307,2514,2897,2913,3078,3207,3275,3391,3446,3448,3500,3527,3540,3673,3878,3980,3988,4067,4158,4212,4413,4499,4683,4700,4857,4885,4891,5402,5440,5605,5703,5748,5754,5825,5899,6057,6114,6257,6487,6583,6617,6726,6813,6825,6845,6879,6880,7043,7048,7206,7239,7267,7331,7356,7362,7375,7647,7745,7779,7794,7797,8049,8065,8145,8245,8308,8509,8529,8587,8721,8935,9286,9298,9415,9667,9820,9843,9856)
 ) l,
(select * from (select sum(l_quantity) as total, l_orderkey from 
(select * from zm_lineitem where 
ps_l_orderkey in (211,366,477,507,627,783,787,801,1177,1206,1259,1302,1347,1586,1735,1768,1801,1857,1932,2053,2063,2194,2307,2514,2897,2913,3078,3207,3275,3391,3446,3448,3500,3527,3540,3673,3878,3980,3988,4067,4158,4212,4413,4499,4683,4700,4857,4885,4891,5402,5440,5605,5703,5748,5754,5825,5899,6057,6114,6257,6487,6583,6617,6726,6813,6825,6845,6879,6880,7043,7048,7206,7239,7267,7331,7356,7362,7375,7647,7745,7779,7794,7797,8049,8065,8145,8245,8308,8509,8529,8587,8721,8935,9286,9298,9415,9667,9820,9843,9856)
 ) group by l_orderkey) t where total > 312) ol
where o_orderkey = ol.l_orderkey and c_custkey = o_custkey and o_orderkey = l.l_orderkey
group by c_name,c_custkey,o_orderkey,o_orderdate,o_totalprice order by o_totalprice desc,o_orderdate) where rownum <= 100;


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
