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




select /*+ NO_RESULT_CACHE */ *
from (
select
    s_name,
    count(*) as numwait
from
    (select * from zm_supplier where
ps_s_suppkey in
(97,284,287,474,571,603,673,676,733,776,981,994,1131,1245,1301,1669,1699,1745,1755,1776,1902,2008,2019,2144,2278,2419,2677,2744,2819,2825,2925,2932,2969,3173,3195,3230,3235,3286,3316,3386,3401,3574,3631,3682,3987,4045,4100,4381,4423,4436,4761,4790,4801,4845,4851,4914,4948,4997,5315,5414,5546,5574,5593,5623,5653,5671,5755,5852,5863,6116,6346,6564,6579,6707,6785,6846,6971,7003,7192,7310,7732,7870,7889,7934,7971,8004,8047,8090,8162,8270,8273,8907,9050,9256,9458,9534,9555,9602,9610,9633)),
    lineitem l1,
    orders,
    nation
where
    s_suppkey = l1.l_suppkey
    and o_orderkey = l1.l_orderkey
    and o_orderstatus = 'F'
    and l1.l_receiptdate > l1.l_commitdate
    and exists (
        select
            *
        from
            lineitem l2
        where
            l2.l_orderkey = l1.l_orderkey
            and l2.l_suppkey <> l1.l_suppkey
    )
    and not exists (
        select
            *
        from
            lineitem l3
        where
            l3.l_orderkey = l1.l_orderkey
            and l3.l_suppkey <> l1.l_suppkey
            and l3.l_receiptdate > l3.l_commitdate
    )
    and s_nationkey = n_nationkey
    and n_name = 'CHINA'
group by
    s_name
order by
    numwait desc,
    s_name)
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
