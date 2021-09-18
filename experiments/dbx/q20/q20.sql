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



select  /*+ NO_RESULT_CACHE */ distinct s_name, s_address from supplier, nation,
(select ps_suppkey from partsupp,
(select p_partkey from part where p_name like 'green%') p1,
(select l_partkey,l_suppkey, 0.5 * sum(l_quantity) as sum_lq from
lineitem
where l_shipdate >= to_date('1993-01-01','YYYY-MM-DD') and l_shipdate < to_date('1994-01-01','YYYY-MM-DD')
group by l_partkey,l_suppkey) l1
where l_partkey = ps_partkey and l_suppkey = ps_suppkey and ps_availqty > sum_lq
and ps_partkey = p_partkey) ps1
where s_suppkey = ps_suppkey and s_nationkey = n_nationkey and n_name = 'CHINA'
order by s_name;


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
