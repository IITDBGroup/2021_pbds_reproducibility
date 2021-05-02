select bit_or_ints(prov_s) as prov_s,
bit_or_ints(prov_p) as prov_p,
 bit_or_ints(prov_ps1) as prov_ps1,
  bit_or_blob(prov_ps2) as prov_ps2  from (
select s_acctbal,s_name,n_name,p_partkey,p_mfgr,s_address,s_phone,s_comment, prov_s, prov_p, prov_ps1, prov_ps2
from (select p_partkey, p_type,p_size,p_mfgr, binsearch_ranges_pos(p_partkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(6250),(12500),(18750),(25000),(31250),(37500),(43750),(50000),(56250),(62500),(68750),(75000),(81250),(87500),(93750),(100000),(106250),(112500),(118750),(125000),(131250),(137500),(143750),(150000),(156250),(162500),(168750),(175000),(181250),(187500),(193750),(200001)) AS g(b))) AS prov_p from part) p1,
(select s_acctbal, s_name,s_suppkey, s_nationkey,s_address,s_phone,s_comment, binsearch_ranges_pos(s_suppkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(313),(625),(938),(1250),(1563),(1875),(2188),(2500),(2813),(3125),(3438),(3750),(4063),(4375),(4688),(5000),(5313),(5625),(5938),(6250),(6563),(6875),(7188),(7500),(7813),(8125),(8438),(8750),(9063),(9375),(9688),(10001)) AS g(b))) AS prov_s from supplier) s1,
(select ps_partkey, ps_suppkey, ps_supplycost, binsearch_ranges_pos(ps_partkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(6250),(12500),(18750),(25000),(31250),(37500),(43750),(50000),(56250),(62500),(68750),(75000),(81250),(87500),(93750),(100000),(106250),(112500),(118750),(125000),(131250),(137500),(143750),(150000),(156250),(162500),(168750),(175000),(181250),(187500),(193750),(200001)) AS g(b))) AS prov_ps1 from partsupp) ps,nation,region,
(select min(ps_supplycost) as min_supplycost, bit_or_ints(prov_ps2) as prov_ps2, ps_partkey from (select ps_partkey, ps_suppkey, ps_supplycost, binsearch_ranges_pos(ps_partkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(6250),(12500),(18750),(25000),(31250),(37500),(43750),(50000),(56250),(62500),(68750),(75000),(81250),(87500),(93750),(100000),(106250),(112500),(118750),(125000),(131250),(137500),(143750),(150000),(156250),(162500),(168750),(175000),(181250),(187500),(193750),(200001)) AS g(b))) AS prov_ps2 from partsupp) ps2, supplier, nation, region
where s_suppkey = ps_suppkey and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE' group by ps_partkey) m
where p_partkey = ps.ps_partkey and s_suppkey = ps.ps_suppkey and p_size = 15 and p_type like '%BRASS' and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE'
and ps_supplycost = m.min_supplycost and p_partkey = m.ps_partkey
order by s_acctbal desc, n_name, s_name, p_partkey
LIMIT 100) bb;
