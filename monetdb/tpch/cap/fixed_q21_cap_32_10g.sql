select bit_or_blob(prov_s1) as prov_s1, bit_or_blob(prov_l1) as prov_l1 from (
select
	s_name,
	count(*) as numwait,
  bit_or_ints(prov_s1) as prov_s1,
  bit_or_blob(prov_l1) as prov_l1
from
		(select  s_nationkey, s_name, s_suppkey, binsearch_ranges_pos(s_suppkey, blob '0100000000000000E90B0000000000000D180000000000001C240000000000001C30000000000000263C0000000000004F480000000000007654000000000000F5600000000000006A6D0000000000000C7A000000000000E9850000000000000A920000000000002B9E0000000000006EAA0000000000008DB600000000000038C300000000000083CF00000000000022DB00000000000016E80000000000007BF4000000000000E100010000000000C90C010000000000111901000000000039250100000000004931010000000000B13D010000000000214A0100000000000856010000000000DE61010000000000BA6E010000000000A37A010000000000A186010000000000') AS prov_s1 from supplier) s1,
	(select l_orderkey, l_suppkey, l_receiptdate, l_commitdate, prov_l1 from (
select l_orderkey, l_suppkey,l_receiptdate, l_commitdate, sum(dateb) as datebc, bit_or_ints(prov_l1) as prov_l1 from (
select  l1.l_orderkey, l1.l_suppkey, l1.l_receiptdate, l1.l_commitdate, case when l2.l_receiptdate > l2.l_commitdate then  1 else  0 end as dateb, prov_l1 from ( select l_quantity,l_returnflag,l_orderkey, l_shipdate, l_extendedprice, l_commitdate,l_receiptdate,l_suppkey,l_discount, binsearch_ranges_pos(l_orderkey, blob '010000000000000025A31D000000000003B139000000000064AF5600000000000481710000000000E3D98D0000000000E07BAA0000000000447EC700000000000099E30000000000E76AFD0000000000E35C190100000000C6D135010000000044A853010000000026C26F010000000023A48D0100000000A646AA0100000000A06FC7010000000041D3E2010000000065A5010200000000A3691D02000000008787380200000000A7BE520200000000A078700200000000009A8E0200000000604AAB02000000002189C50200000000069BE30200000000A1E502030000000084E921030000000086883F0300000000626E5B0300000000675D7703000000000187930300000000') AS prov_l1 from lineitem ) l1, lineitem l2 where l2.l_orderkey = l1.l_orderkey and l2.l_suppkey <> l1.l_suppkey) l group by l_orderkey, l_suppkey, l_receiptdate, l_commitdate) ll where datebc = 0) l1,
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
