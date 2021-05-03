select 	c_name,c_custkey,o_orderkey,o_orderdate,o_totalprice,sum(l_quantity)
from
(select * from customer where
((c_custkey >= 1) AND (c_custkey < 797177)) OR ((c_custkey >= 842308) AND (c_custkey < 1500001))
) cc,
(select * from orders where
((o_orderkey >= 1) AND (o_orderkey < 30112293)) OR ((o_orderkey >= 31919138) AND (o_orderkey < 60000001))
) oo,
(select * from lineitem where
((l_orderkey >= 1) AND (l_orderkey < 29847456)) OR ((l_orderkey >= 31642433) AND (l_orderkey < 60000001))
) l,
(select * from (select sum(l_quantity) as total, l_orderkey from
(select * from lineitem where
((l_orderkey >= 1) AND (l_orderkey < 29847456)) OR ((l_orderkey >= 31642433) AND (l_orderkey < 60000001))
) ll group by l_orderkey) t where total > 312) ol where o_orderkey = ol.l_orderkey and c_custkey = o_custkey and o_orderkey = l.l_orderkey group by c_name,c_custkey,o_orderkey,o_orderdate,o_totalprice order by o_totalprice desc,o_orderdate LIMIT 100;
