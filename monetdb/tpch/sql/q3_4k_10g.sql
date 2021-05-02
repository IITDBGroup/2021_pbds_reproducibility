select * from (select * from (select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, o_orderdate, o_shippriority
from (select * from lineitem where ((l_orderkey >= 3341794 and l_orderkey< 3356999) or (l_orderkey >= 4783682 and l_orderkey< 4798659) or (l_orderkey >= 9792263 and l_orderkey< 9808032) or (l_orderkey >= 16380066 and l_orderkey< 16396449) or (l_orderkey >= 22807139 and l_orderkey< 22822439) or (l_orderkey >= 23860903 and l_orderkey< 23876967) or (l_orderkey >= 23892294 and l_orderkey< 23907970) or (l_orderkey >= 46672482 and l_orderkey< 46686691) or (l_orderkey >= 52965153 and l_orderkey< 52980068) or (l_orderkey >= 59382405 and l_orderkey< 59397248))
 ) ll,
(select * from orders where ((o_orderkey >= 3351302 and o_orderkey< 3366243) or (o_orderkey >= 4780164 and o_orderkey< 4795559) or (o_orderkey >= 9804167 and o_orderkey< 9818434) or (o_orderkey >= 16379013 and o_orderkey< 16392352) or (o_orderkey >= 22796706 and o_orderkey< 22812769) or (o_orderkey >= 23849472 and o_orderkey< 23865442) or (o_orderkey >= 23894339 and o_orderkey< 23911078) or (o_orderkey >= 46673888 and o_orderkey< 46690310) or (o_orderkey >= 52961697 and o_orderkey< 52977990) or (o_orderkey >= 59381669 and o_orderkey< 59396773))
 ) oo,
(select * from customer where ((c_custkey >= 173233 and c_custkey< 173616) or (c_custkey >= 304196 and c_custkey< 304572) or (c_custkey >= 446961 and c_custkey< 447328) or (c_custkey >= 516494 and c_custkey< 516876) or (c_custkey >= 633956 and c_custkey< 634328) or (c_custkey >= 653870 and c_custkey< 654247) or (c_custkey >= 713011 and c_custkey< 713376) or (c_custkey >= 768554 and c_custkey< 768928) or (c_custkey >= 830591 and c_custkey< 830995) or (c_custkey >= 1322073 and c_custkey< 1322441))
 ) cc
where c_mktsegment = 'BUILDING' and c_custkey = o_custkey and l_orderkey = o_orderkey and o_orderdate < '1995-03-15' and l_shipdate > '1995-03-15' group by l_orderkey, o_orderdate, o_shippriority) l2 order by revenue desc, o_orderdate) l1 limit 10;
