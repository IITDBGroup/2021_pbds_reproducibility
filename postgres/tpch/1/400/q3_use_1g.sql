SELECT F0."l_orderkey" AS "l_orderkey", F0."revenue" AS "revenue", F0."o_orderdate" AS "o_orderdate", F0."o_shippriority" AS "o_shippriority"
FROM (
SELECT F0."l_orderkey" AS "l_orderkey", F0."revenue" AS "revenue", F0."o_orderdate" AS "o_orderdate", F0."o_shippriority" AS "o_shippriority"
FROM (
SELECT F0."GROUP_0" AS "l_orderkey", F0."AGGR_0" AS "revenue", F0."GROUP_1" AS "o_orderdate", F0."GROUP_2" AS "o_shippriority"
FROM (
SELECT sum((F0."l_extendedprice" * (1 - F0."l_discount"))) AS "AGGR_0", F0."l_orderkey" AS "GROUP_0", F0."o_orderdate" AS "GROUP_1", F0."o_shippriority" AS "GROUP_2"
FROM (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment", F1."c_custkey" AS "c_custkey", F1."c_name" AS "c_name", F1."c_address" AS "c_address", F1."c_nationkey" AS "c_nationkey", F1."c_phone" AS "c_phone", F1."c_acctbal" AS "c_acctbal", F1."c_mktsegment" AS "c_mktsegment", F1."c_comment" AS "c_comment"
FROM ((
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", F1."o_orderkey" AS "o_orderkey", F1."o_custkey" AS "o_custkey", F1."o_orderstatus" AS "o_orderstatus", F1."o_totalprice" AS "o_totalprice", F1."o_orderdate" AS "o_orderdate", F1."o_orderpriority" AS "o_orderpriority", F1."o_clerk" AS "o_clerk", F1."o_shippriority" AS "o_shippriority", F1."o_comment" AS "o_comment"
FROM ((
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment"
FROM "lineitem" AS F0
WHERE F0."l_orderkey" <@ '{479815,494947,990022,1005089,1185255,1200289,2295552,2310695,2430530,2460390,2626022,2641158,3450470,3465446,4875015,4889927,5520834,5535941}'::int[]) F0 CROSS JOIN (
SELECT F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment"
FROM "orders" AS F0
WHERE F0."o_orderkey" <@ '{480000,494982,989988,1004994,1184994,1200000,2294982,2309988,2429988,2460000,2624994,2640000,3449988,3464994,4874982,4889988,5520000,5534982}'::int[]) F1)) F0 CROSS JOIN (
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment"
FROM "customer" AS F0
WHERE F0."c_custkey" <@ '{31500,31875,32625,33000,39000,39375,49500,49875,59250,59625,69750,70125,99000,99375,106500,106875,131250,131625,140625,141000}'::int[]) F1)) F0
WHERE (((((F0."c_mktsegment" = 'BUILDING') and (F0."c_custkey" = F0."o_custkey")) and (F0."l_orderkey" = F0."o_orderkey")) and (F0."o_orderdate" < to_date('1995-03-15', 'YYYY-MM-DD'))) and (F0."l_shipdate" > to_date('1995-03-15', 'YYYY-MM-DD')))
GROUP BY F0."l_orderkey", F0."o_orderdate", F0."o_shippriority") F0) F0 order by revenue desc, o_orderdate) F0
limit 10;
