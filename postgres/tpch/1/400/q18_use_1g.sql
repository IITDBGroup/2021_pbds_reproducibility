SELECT F0."c_name" AS "c_name", F0."c_custkey" AS "c_custkey", F0."o_orderkey" AS "o_orderkey", F0."o_orderdate" AS "o_orderdate", F0."o_totalprice" AS "o_totalprice", F0."sum(l_quantity)" AS "sum(l_quantity)"
FROM (
SELECT F0."c_name" AS "c_name", F0."c_custkey" AS "c_custkey", F0."o_orderkey" AS "o_orderkey", F0."o_orderdate" AS "o_orderdate", F0."o_totalprice" AS "o_totalprice", F0."sum(l_quantity)" AS "sum(l_quantity)"
FROM (
SELECT F0."GROUP_0" AS "c_name", F0."GROUP_1" AS "c_custkey", F0."GROUP_2" AS "o_orderkey", F0."GROUP_3" AS "o_orderdate", F0."GROUP_4" AS "o_totalprice", F0."AGGR_0" AS "sum(l_quantity)"
FROM (
SELECT sum(F0."l_quantity") AS "AGGR_0", F0."c_name" AS "GROUP_0", F0."c_custkey" AS "GROUP_1", F0."o_orderkey" AS "GROUP_2", F0."o_orderdate" AS "GROUP_3", F0."o_totalprice" AS "GROUP_4"
FROM (
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment", F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", F1."total" AS "total", F1."l_orderkey" AS "l_orderkey1"
FROM ((
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment", F1."l_orderkey" AS "l_orderkey", F1."l_partkey" AS "l_partkey", F1."l_suppkey" AS "l_suppkey", F1."l_linenumber" AS "l_linenumber", F1."l_quantity" AS "l_quantity", F1."l_extendedprice" AS "l_extendedprice", F1."l_discount" AS "l_discount", F1."l_tax" AS "l_tax", F1."l_returnflag" AS "l_returnflag", F1."l_linestatus" AS "l_linestatus", F1."l_shipdate" AS "l_shipdate", F1."l_commitdate" AS "l_commitdate", F1."l_receiptdate" AS "l_receiptdate", F1."l_shipinstruct" AS "l_shipinstruct", F1."l_shipmode" AS "l_shipmode", F1."l_comment" AS "l_comment"
FROM ((
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", F1."o_orderkey" AS "o_orderkey", F1."o_custkey" AS "o_custkey", F1."o_orderstatus" AS "o_orderstatus", F1."o_totalprice" AS "o_totalprice", F1."o_orderdate" AS "o_orderdate", F1."o_orderpriority" AS "o_orderpriority", F1."o_clerk" AS "o_clerk", F1."o_shippriority" AS "o_shippriority", F1."o_comment" AS "o_comment"
FROM ((
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment"
FROM "customer" AS F0
WHERE F0."c_custkey" <@ '{15375,15750,36375,36750,66750,67125,117750,118125,119625,120000,126750,127125,127875,128250,144375,144750,147000,147375,148875,149250}'::int[]) F0 CROSS JOIN (
SELECT F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment"
FROM "orders" AS F0
WHERE F0."o_orderkey" <@ '{1260000,1274982,1529988,1544994,2189988,2204994,2864994,2880000,2940000,2954982,3029988,3044994,3764994,3780000,4694982,4724994,4800000,4814982}'::int[]) F1)) F0 CROSS JOIN (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment"
FROM "lineitem" AS F0
WHERE F0."l_orderkey" <@ '{1260290,1275267,1530752,1545953,2190145,2205220,2865607,2880774,2940870,2955655,3030881,3045894,3765061,3780131,4694916,4724741,4800130,4815173}'::int[]) F1)) F0 CROSS JOIN (
SELECT F0."total" AS "total", F0."l_orderkey" AS "l_orderkey"
FROM (
SELECT F0."AGGR_0" AS "total", F0."GROUP_0" AS "l_orderkey"
FROM (
SELECT sum(F0."l_quantity") AS "AGGR_0", F0."l_orderkey" AS "GROUP_0"
FROM "lineitem" AS F0
WHERE F0."l_orderkey" <@ '{1260290,1275267,1530752,1545953,2190145,2205220,2865607,2880774,2940870,2955655,3030881,3045894,3765061,3780131,4694916,4724741,4800130,4815173}'::int[]
GROUP BY F0."l_orderkey") F0) F0
WHERE (F0."total" > 312)) F1)) F0
WHERE (((F0."o_orderkey" = F0."l_orderkey1") and (F0."c_custkey" = F0."o_custkey")) and (F0."o_orderkey" = F0."l_orderkey"))
GROUP BY F0."c_name", F0."c_custkey", F0."o_orderkey", F0."o_orderdate", F0."o_totalprice") F0) F0 order by o_totalprice desc,o_orderdate) F0
limit 100;
