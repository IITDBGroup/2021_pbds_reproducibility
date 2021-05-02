select bit_or_blob(prov_s1) as prov_s1, bit_or_blob(prov_l1) as prov_l1 from (
select
	s_name,
	count(*) as numwait,
  bit_or_ints(prov_s1) as prov_s1,
  bit_or_blob(prov_l1) as prov_l1
from
		(select  s_nationkey, s_name, s_suppkey, binsearch_ranges_pos(s_suppkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(1564),(3117),(4843),(6403),(7966),(9504),(11037),(12513),(14105),(15669),(17190),(18657),(20217),(21915),(23433),(24947),(26526),(28062),(29628),(31147),(32702),(34296),(35816),(37471),(38961),(40438),(41916),(43538),(45287),(46782),(48312),(49967),(51503),(53104),(54647),(56154),(57663),(59409),(60857),(62479),(64082),(65656),(67195),(68708),(70350),(71936),(73542),(75119),(76713),(78276),(79887),(81350),(82889),(84371),(85971),(87580),(89132),(90670),(92249),(93838),(95347),(96856),(98407),(100001)) AS g(b))) AS prov_s1 from supplier) s1,
	(select l_orderkey, l_suppkey, l_receiptdate, l_commitdate, prov_l1 from (
select l_orderkey, l_suppkey,l_receiptdate, l_commitdate, sum(dateb) as datebc, bit_or_ints(prov_l1) as prov_l1 from (
select  l1.l_orderkey, l1.l_suppkey, l1.l_receiptdate, l1.l_commitdate, case when l2.l_receiptdate > l2.l_commitdate then  1 else  0 end as dateb, prov_l1 from ( select l_quantity,l_returnflag,l_orderkey, l_shipdate, l_extendedprice, l_commitdate,l_receiptdate,l_suppkey,l_discount, binsearch_ranges_pos(l_orderkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(937639),(1954467),(2895301),(3783459),(4755010),(5606625),(6478113),(7341761),(8250982),(9210565),(10101344),(11021923),(11865697),(12809987),(13623136),(14606439),(15624966),(16564609),(17546528),(18509250),(19346787),(20263265),(21200706),(22205543),(23203073),(24133346),(24924453),(25963139),(26879970),(27823107),(28718436),(29699301),(30704326),(31720770),(32645920),(33699010),(34760198),(35770598),(36764453),(37736481),(38583526),(39513924),(40361830),(41359588),(42169219),(43053063),(44017284),(44920608),(45876290),(46822821),(47772995),(48705920),(49588550),(50533090),(51446178),(52361255),(53389056),(54351168),(55353281),(56268839),(57136612),(58128324),(59113574),(60000001)) AS g(b))) AS prov_l1 from lineitem ) l1, lineitem l2 where l2.l_orderkey = l1.l_orderkey and l2.l_suppkey <> l1.l_suppkey) l group by l_orderkey, l_suppkey, l_receiptdate, l_commitdate) ll where datebc = 0) l1,
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
