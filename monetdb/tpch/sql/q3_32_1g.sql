select * from (select * from (select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, o_orderdate, o_shippriority
from (select * from lineitem where ((l_orderkey >= 375301) AND (l_orderkey < 562278)) OR ((l_orderkey >= 937314) AND (l_orderkey < 1312711)) OR ((l_orderkey >= 2250438) AND (l_orderkey < 2813156)) OR ((l_orderkey >= 3375589) AND (l_orderkey < 3562148)) OR ((l_orderkey >= 4875014) AND (l_orderkey < 5062566)) OR ((l_orderkey >= 5437926) AND (l_orderkey < 5625987)) ) ll,
(select * from orders where ((o_orderkey >= 374982) AND (o_orderkey < 562497)) OR ((o_orderkey >= 937479) AND (o_orderkey < 1312485)) OR ((o_orderkey >= 2249988) AND (o_orderkey < 2812485)) OR ((o_orderkey >= 3374982) AND (o_orderkey < 3562497)) OR ((o_orderkey >= 4874982) AND (o_orderkey < 5062497)) OR ((o_orderkey >= 5437479) AND (o_orderkey < 5624994)) ) oo,
(select * from customer where ((c_custkey >= 28128) AND (c_custkey < 32816)) OR ((c_custkey >= 37504) AND (c_custkey < 42192)) OR ((c_custkey >= 46880) AND (c_custkey < 51568)) OR ((c_custkey >= 56256) AND (c_custkey < 60944)) OR ((c_custkey >= 65632) AND (c_custkey < 70320)) OR ((c_custkey >= 98443) AND (c_custkey < 107817)) OR ((c_custkey >= 131252) AND (c_custkey < 135939)) OR ((c_custkey >= 140626) AND (c_custkey < 145313)) ) cc 
where c_mktsegment = 'BUILDING' and c_custkey = o_custkey and l_orderkey = o_orderkey and o_orderdate < '1995-03-15' and l_shipdate > '1995-03-15' group by l_orderkey, o_orderdate, o_shippriority) l2 order by revenue desc, o_orderdate) l1 limit 10;