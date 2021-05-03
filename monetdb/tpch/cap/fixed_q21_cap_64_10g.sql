select bit_or_blob(prov_s1) as prov_s1, bit_or_blob(prov_l1) as prov_l1 from (
select
	s_name,
	count(*) as numwait,
  bit_or_ints(prov_s1) as prov_s1,
  bit_or_blob(prov_l1) as prov_l1
from
		(select  s_nationkey, s_name, s_suppkey, binsearch_ranges_pos(s_suppkey, blob '01000000000000001C060000000000002D0C000000000000EB1200000000000003190000000000001E1F00000000000020250000000000001D2B000000000000E1300000000000001937000000000000353D0000000000002643000000000000E148000000000000F94E0000000000009B55000000000000895B00000000000073610000000000009E670000000000009E6D000000000000BC73000000000000AB79000000000000BE7F000000000000F885000000000000E88B0000000000005F920000000000003198000000000000F69D000000000000BCA300000000000012AA000000000000E7B0000000000000BEB6000000000000B8BC0000000000002FC30000000000002FC900000000000070CF00000000000077D50000000000005ADB0000000000003FE100000000000011E8000000000000B9ED0000000000000FF400000000000052FA00000000000078000100000000007B06010000000000640C010000000000CE120100000000000019010000000000461F0100000000006F25010000000000A92B010000000000C4310100000000000F38010000000000C63D010000000000C9430100000000009349010000000000D34F0100000000001C560100000000002C5C0100000000002E6201000000000059680100000000008E6E0100000000007374010000000000587A0100000000006780010000000000A186010000000000') AS prov_s1 from supplier) s1,
	(select l_orderkey, l_suppkey, l_receiptdate, l_commitdate, prov_l1 from (
select l_orderkey, l_suppkey,l_receiptdate, l_commitdate, sum(dateb) as datebc, bit_or_ints(prov_l1) as prov_l1 from (
select  l1.l_orderkey, l1.l_suppkey, l1.l_receiptdate, l1.l_commitdate, case when l2.l_receiptdate > l2.l_commitdate then  1 else  0 end as dateb, prov_l1 from ( select l_quantity,l_returnflag,l_orderkey, l_shipdate, l_extendedprice, l_commitdate,l_receiptdate,l_suppkey,l_discount, binsearch_ranges_pos(l_orderkey, blob '0100000000000000A74E0E0000000000A3D21D0000000000C52D2C000000000023BB390000000000428E480000000000E18C55000000000021D9620000000000C10670000000000066E67D0000000000C58A8C000000000060229A0000000000632EA80000000000610EB500000000000377C3000000000060DFCF000000000067E0DE0000000000066BEE000000000081C1FC000000000020BD0B0100000000C26D1A010000000063352701000000006131350100000000427F43010000000067D4520100000000010D620100000000E23E70010000000025517C0100000000832A8C0100000000E2279A0100000000038CA801000000006435B60100000000E52CC50100000000C682D401000000004205E401000000002023F20100000000C2340202000000000666120200000000E6D021020000000025FB30020000000021D03F0200000000E6BC4C020000000044EF5A020000000066DF670200000000E418770200000000837383020000000007F090020000000084A69F0200000000206FAD02000000004204BC0200000000A575CA020000000043F5D802000000008031E7020000000046A9F40200000000E212030300000000A20111030000000027F81E030000000000A72E030000000040553D0300000000C19F4C030000000027985A0300000000E4D5670300000000C4F776030000000066008603000000000187930300000000') AS prov_l1 from lineitem ) l1, lineitem l2 where l2.l_orderkey = l1.l_orderkey and l2.l_suppkey <> l1.l_suppkey) l group by l_orderkey, l_suppkey, l_receiptdate, l_commitdate) ll where datebc = 0) l1,
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
