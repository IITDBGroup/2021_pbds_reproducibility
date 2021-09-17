WITH _temp_view_2 AS (
SELECT /*+ materialize */ sum(F0."l_quantity") AS "AGGR_0", F0."l_orderkey" AS "GROUP_0"
FROM "lineitem" AS F0
WHERE (F0."l_orderkey" <@ '{1261955,1263395,1544358,1545890,2198434,2199909,2869028,2870374,2941280,2942693,3041892,3043303,3766950,3768454,4702596,4704098,4721703,4723360,4805858,4807303}'::int[])
GROUP BY F0."l_orderkey"),
_temp_view_1 AS (
SELECT /*+ materialize */ sum(F0."l_quantity") AS "AGGR_0", F0."c_name" AS "GROUP_0", F0."c_custkey" AS "GROUP_1", F0."o_orderkey" AS "GROUP_2", F0."o_orderdate" AS "GROUP_3", F0."o_totalprice" AS "GROUP_4"
FROM (
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment", F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", F1."total" AS "total", F1."l_orderkey" AS "l_orderkey1"
FROM ((
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment", F1."l_orderkey" AS "l_orderkey", F1."l_partkey" AS "l_partkey", F1."l_suppkey" AS "l_suppkey", F1."l_linenumber" AS "l_linenumber", F1."l_quantity" AS "l_quantity", F1."l_extendedprice" AS "l_extendedprice", F1."l_discount" AS "l_discount", F1."l_tax" AS "l_tax", F1."l_returnflag" AS "l_returnflag", F1."l_linestatus" AS "l_linestatus", F1."l_shipdate" AS "l_shipdate", F1."l_commitdate" AS "l_commitdate", F1."l_receiptdate" AS "l_receiptdate", F1."l_shipinstruct" AS "l_shipinstruct", F1."l_shipmode" AS "l_shipmode", F1."l_comment" AS "l_comment"
FROM ((
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", F1."o_orderkey" AS "o_orderkey", F1."o_custkey" AS "o_custkey", F1."o_orderstatus" AS "o_orderstatus", F1."o_totalprice" AS "o_totalprice", F1."o_orderdate" AS "o_orderdate", F1."o_orderpriority" AS "o_orderpriority", F1."o_clerk" AS "o_clerk", F1."o_shippriority" AS "o_shippriority", F1."o_comment" AS "o_comment"
FROM ((
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment"
FROM "customer" AS F0
WHERE (F0."c_custkey" <@ '{15600,15638,36600,36638,66788,66825,117900,117937,119962,120000,126862,126900,128100,128137,144600,144637,147187,147225,148875,148912}'::int[])) F0 CROSS JOIN (
SELECT F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment"
FROM "orders" AS F0
WHERE (F0."o_orderkey" <@ '{1262945,1264481,1544064,1545536,2198279,2199811,2868322,2869797,2942182,2943718,3042565,3044003,3766758,3768228,4701671,4703171,4721378,4722849,4805317,4806848}'::int[])) F1)) F0 CROSS JOIN (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment"
FROM "lineitem" AS F0
WHERE (F0."l_orderkey" <@ '{1261955,1263395,1544358,1545890,2198434,2199909,2869028,2870374,2941280,2942693,3041892,3043303,3766950,3768454,4702596,4704098,4721703,4723360,4805858,4807303}'::int[])) F1)) F0 CROSS JOIN (
SELECT F0."total" AS "total", F0."l_orderkey" AS "l_orderkey"
FROM (
SELECT F0."AGGR_0" AS "total", F0."GROUP_0" AS "l_orderkey"
FROM (SELECT * FROM _temp_view_2) F0) F0
WHERE (F0."total" > 312)) F1)) F0
WHERE (((F0."o_orderkey" = F0."l_orderkey1") and (F0."c_custkey" = F0."o_custkey")) and (F0."o_orderkey" = F0."l_orderkey"))
GROUP BY F0."c_name", F0."c_custkey", F0."o_orderkey", F0."o_orderdate", F0."o_totalprice"),
_temp_view_0 AS (
SELECT /*+ materialize */ F0."GROUP_0" AS "c_name", F0."GROUP_1" AS "c_custkey", F0."GROUP_2" AS "o_orderkey", F0."GROUP_3" AS "o_orderdate", F0."GROUP_4" AS "o_totalprice", F0."AGGR_0" AS "sum(l_quantity)"
FROM (SELECT * FROM _temp_view_1) F0)
SELECT F0."c_name" AS "c_name", F0."c_custkey" AS "c_custkey", F0."o_orderkey" AS "o_orderkey", F0."o_orderdate" AS "o_orderdate", F0."o_totalprice" AS "o_totalprice", F0."sum(l_quantity)" AS "sum(l_quantity)"
FROM (
SELECT F0."c_name" AS "c_name", F0."c_custkey" AS "c_custkey", F0."o_orderkey" AS "o_orderkey", F0."o_orderdate" AS "o_orderdate", F0."o_totalprice" AS "o_totalprice", F0."sum(l_quantity)" AS "sum(l_quantity)"
FROM (SELECT * FROM _temp_view_0) F0
ORDER BY F0."o_totalprice" DESC NULLS LAST, F0."o_orderdate" ASC NULLS LAST) F0
LIMIT 100;
