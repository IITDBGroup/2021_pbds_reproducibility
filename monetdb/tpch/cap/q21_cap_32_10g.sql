select bit_or_blob(prov_s1) as prov_s1, bit_or_blob(prov_l1) as prov_l1 from (
select
	s_name,
	count(*) as numwait,
  bit_or_ints(prov_s1) as prov_s1,
  bit_or_blob(prov_l1) as prov_l1
from
		(select  s_nationkey, s_name, s_suppkey, binsearch_ranges_pos(s_suppkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(3049),(6157),(9244),(12316),(15398),(18511),(21622),(24821),(28010),(31244),(34281),(37386),(40491),(43630),(46733),(49976),(53123),(56098),(59414),(62587),(65761),(68809),(71953),(75065),(78153),(81329),(84513),(87560),(90590),(93882),(96931),(100001)) AS g(b))) AS prov_s1 from supplier) s1,
	(select l_orderkey, l_suppkey, l_receiptdate, l_commitdate, prov_l1 from (
select l_orderkey, l_suppkey,l_receiptdate, l_commitdate, sum(dateb) as datebc, bit_or_ints(prov_l1) as prov_l1 from (
select  l1.l_orderkey, l1.l_suppkey, l1.l_receiptdate, l1.l_commitdate, case when l2.l_receiptdate > l2.l_commitdate then  1 else  0 end as dateb, prov_l1 from ( select l_quantity,l_returnflag,l_orderkey, l_shipdate, l_extendedprice, l_commitdate,l_receiptdate,l_suppkey,l_discount, binsearch_ranges_pos(l_orderkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(1942309),(3780867),(5680996),(7438596),(9296355),(11172832),(13073988),(14915840),(16607975),(18439395),(20304326),(22259780),(24101414),(26059811),(27936422),(29847456),(31642433),(33662309),(35482019),(37259143),(38977191),(40925344),(42899968),(44780128),(46500129),(48470790),(50521505),(52554116),(54495366),(56323682),(58154343),(60000001)) AS g(b))) AS prov_l1 from lineitem ) l1, lineitem l2 where l2.l_orderkey = l1.l_orderkey and l2.l_suppkey <> l1.l_suppkey) l group by l_orderkey, l_suppkey, l_receiptdate, l_commitdate) ll where datebc = 0) l1,
	orders,
	nation
where
	s_suppkey = l1.l_suppkey
	and o_orderkey = l1.l_orderkey
	and o_orderstatus = 'F'
	and l1.l_receiptdate > l1.l_commitdate
	and s_nationkey = n_nationkey
	and n_name = 'CHINA'
group by
	s_name
order by
	numwait desc,
	s_name
LIMIT 100) f;
