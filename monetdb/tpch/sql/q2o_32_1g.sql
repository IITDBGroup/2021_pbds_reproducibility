select s_acctbal,s_name,n_name,p_partkey,p_mfgr,s_address,s_phone,s_comment
from (select * from part where 
(("p_partkey" >= 1) AND ("p_partkey" < 50000)) OR 
(("p_partkey" >= 56250) AND ("p_partkey" < 200001))
) pp, (select * from supplier where 
(("s_suppkey" >= 1) AND ("s_suppkey" < 313)) OR 
(("s_suppkey" >= 625) AND ("s_suppkey" < 1875)) OR 
(("s_suppkey" >= 2188) AND ("s_suppkey" < 10001))
) ss,(select * from partsupp where 
(("ps_partkey" >= 1) AND ("ps_partkey" < 50000)) OR 
(("ps_partkey" >= 56250) AND ("ps_partkey" < 200001))
) ps,nation,region
where p_partkey = ps_partkey and s_suppkey = ps_suppkey and p_size = 15 and p_type like '%BRASS' and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE' 
and ps_supplycost = (
select min(ps_supplycost) from partsupp,supplier,nation,region
where p_partkey = ps_partkey and s_suppkey = ps_suppkey and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE')
order by s_acctbal desc, n_name, s_name, p_partkey
LIMIT 100;
