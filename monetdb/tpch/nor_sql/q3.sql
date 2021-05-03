select * from (select * from (select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, o_orderdate, o_shippriority from lineitem, orders, customer where c_mktsegment = 'BUILDING' and c_custkey = o_custkey and l_orderkey = o_orderkey and o_orderdate < '1995-03-15' and l_shipdate > '1995-03-15' group by l_orderkey, o_orderdate, o_shippriority) l2 order by revenue desc, o_orderdate) l1 limit 10;
