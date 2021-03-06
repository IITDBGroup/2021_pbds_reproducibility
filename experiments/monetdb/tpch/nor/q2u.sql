select s_acctbal,s_name,n_name,p_partkey,p_mfgr,s_address,s_phone,s_comment
from part, supplier,partsupp ps,nation,region, (select min(ps_supplycost) as min_supplycost, ps_partkey from partsupp, supplier, nation, region where s_suppkey = ps_suppkey and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE' group by ps_partkey) m
where p_partkey = ps.ps_partkey and s_suppkey = ps.ps_suppkey and p_size = 15 and p_type like '%BRASS' and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE'
and ps_supplycost = m.min_supplycost and p_partkey = m.ps_partkey
order by s_acctbal desc, n_name, s_name, p_partkey
LIMIT 100;
