select * from (select * from (select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, o_orderdate, o_shippriority
from (select * from lineitem where 
((l_orderkey >= 491684) AND (l_orderkey < 492262)) OR 
((l_orderkey >= 993568) AND (l_orderkey < 994177)) OR 
((l_orderkey >= 1188102) AND (l_orderkey < 1188679)) OR 
((l_orderkey >= 2299877) AND (l_orderkey < 2300448)) OR 
((l_orderkey >= 2435430) AND (l_orderkey < 2436039)) OR 
((l_orderkey >= 2456391) AND (l_orderkey < 2456999)) OR 
((l_orderkey >= 2628096) AND (l_orderkey < 2628678)) OR 
((l_orderkey >= 3459715) AND (l_orderkey < 3460353)) OR 
((l_orderkey >= 4877892) AND (l_orderkey < 4878593)) OR
((l_orderkey >= 5521504) AND (l_orderkey < 5522082))) ll,
(select * from orders where 
((o_orderkey >= 492000) AND (o_orderkey < 492582)) OR 
((o_orderkey >= 993600) AND (o_orderkey < 994182)) OR 
((o_orderkey >= 1188000) AND (o_orderkey < 1188582)) OR 
((o_orderkey >= 2299782) AND (o_orderkey < 2300388)) OR 
((o_orderkey >= 2435394) AND (o_orderkey < 2436000)) OR 
((o_orderkey >= 2456388) AND (o_orderkey < 2456994)) OR 
((o_orderkey >= 2628000) AND (o_orderkey < 2628582)) OR 
((o_orderkey >= 3459588) AND (o_orderkey < 3460194)) OR 
((o_orderkey >= 4877988) AND (o_orderkey < 4878594)) OR 
((o_orderkey >= 5521188) AND (o_orderkey < 5521794)) ) oo,
(select * from customer where ((c_custkey >= 31650) AND (c_custkey < 31665)) OR ((c_custkey >= 32790) AND (c_custkey < 32805)) OR ((c_custkey >= 39165) AND (c_custkey < 39180)) OR ((c_custkey >= 49605) AND (c_custkey < 49620)) OR ((c_custkey >= 59610) AND (c_custkey < 59625)) OR ((c_custkey >= 69960) AND (c_custkey < 69975)) OR ((c_custkey >= 99150) AND (c_custkey < 99165)) OR ((c_custkey >= 106680) AND (c_custkey < 106695)) OR ((c_custkey >= 131385) AND (c_custkey < 131400)) OR ((c_custkey >= 140685) AND (c_custkey < 140700)) ) cc
where c_mktsegment = 'BUILDING' and c_custkey = o_custkey and l_orderkey = o_orderkey and o_orderdate < '1995-03-15' and l_shipdate > '1995-03-15' group by l_orderkey, o_orderdate, o_shippriority) l2 order by revenue desc, o_orderdate) l1 limit 10;
