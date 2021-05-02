select s_acctbal,s_name,n_name,p_partkey,p_mfgr,s_address,s_phone,s_comment
from (select * from part where
((p_partkey >= 1 and p_partkey< 63205) or (p_partkey >= 94802 and p_partkey< 315681) or (p_partkey >= 348355 and p_partkey< 441114) or (p_partkey >= 472088 and p_partkey< 720999) or (p_partkey >= 752575 and p_partkey< 783377) or (p_partkey >= 813785 and p_partkey< 845923) or (p_partkey >= 877364 and p_partkey< 939184) or (p_partkey >= 969555 and p_partkey< 1000513) or (p_partkey >= 1091908 and p_partkey< 1123925) or (p_partkey >= 1154875 and p_partkey< 1529987) or (p_partkey >= 1560664 and p_partkey< 1591605) or (p_partkey >= 1654958 and p_partkey< 1719152) or (p_partkey >= 1781558 and p_partkey< 2000001))
) pp, (select * from supplier where
((s_suppkey >= 1 and s_suppkey< 1563) or (s_suppkey >= 3125 and s_suppkey< 14063) or (s_suppkey >= 15625 and s_suppkey< 25000) or (s_suppkey >= 26563 and s_suppkey< 40625) or (s_suppkey >= 42188 and s_suppkey< 48438) or (s_suppkey >= 50000 and s_suppkey< 53125) or (s_suppkey >= 54687 and s_suppkey< 60937) or (s_suppkey >= 62500 and s_suppkey< 68750) or (s_suppkey >= 70312 and s_suppkey< 76562) or (s_suppkey >= 78125 and s_suppkey< 79687) or (s_suppkey >= 81250 and s_suppkey< 85937) or (s_suppkey >= 89062 and s_suppkey< 92187) or (s_suppkey >= 93750 and s_suppkey< 100001))
) ss,(select * from partsupp where
((ps_partkey >= 1 and ps_partkey< 62383) or (ps_partkey >= 94130 and ps_partkey< 314809) or (ps_partkey >= 346905 and ps_partkey< 719596) or (ps_partkey >= 750217 and ps_partkey< 780945) or (ps_partkey >= 811843 and ps_partkey< 841830) or (ps_partkey >= 872886 and ps_partkey< 935985) or (ps_partkey >= 967525 and ps_partkey< 1028728) or (ps_partkey >= 1090113 and ps_partkey< 1306198) or (ps_partkey >= 1337439 and ps_partkey< 1526173) or (ps_partkey >= 1557642 and ps_partkey< 1589457) or (ps_partkey >= 1653105 and ps_partkey< 1715597) or (ps_partkey >= 1780431 and ps_partkey< 2000001))
) ps,nation,region
where p_partkey = ps_partkey and s_suppkey = ps_suppkey and p_size = 15 and p_type like '%BRASS' and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE' 
and ps_supplycost = (
select min(ps_supplycost) from partsupp,supplier,nation,region
where p_partkey = ps_partkey and s_suppkey = ps_suppkey and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE')
order by s_acctbal desc, n_name, s_name, p_partkey
LIMIT 100;
