SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_phone" AS "s_phone", F0."total_revenue" AS "total_revenue"
FROM (
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F1."supplier_no" AS "supplier_no", F1."total_revenue" AS "total_revenue"
FROM ((
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment"
FROM "supplier" AS F0
WHERE F0."s_suppkey" <@ '{10750,11000}'::int[]) F0 CROSS JOIN (
SELECT F0."supplier_no" AS "supplier_no", F0."total_revenue" AS "total_revenue"
FROM (
SELECT F0."supplier_no" AS "supplier_no", F0."total_revenue" AS "total_revenue", F1."total_revenue2" AS "total_revenue2"
FROM ((
SELECT F0."GROUP_0" AS "supplier_no", F0."AGGR_0" AS "total_revenue"
FROM (
SELECT sum((F0."l_extendedprice" * (1 - F0."l_discount"))) AS "AGGR_0", F0."l_suppkey" AS "GROUP_0"
FROM (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment"
FROM "lineitem" AS F0
WHERE F0."l_suppkey" <@ '{10656,10925}'::int[]) F0
WHERE ((F0."l_shipdate" >= '1996-12-01') and (F0."l_shipdate" < '1997-03-01'))
GROUP BY F0."l_suppkey") F0) F0 CROSS JOIN (
SELECT F0."AGGR_0" AS "total_revenue2"
FROM (
SELECT max(F0."AGGR_0") AS "AGGR_0"
FROM (
SELECT sum((F0."l_extendedprice" * (1 - F0."l_discount"))) AS "AGGR_0", F0."l_suppkey" AS "GROUP_0"
FROM (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment"
FROM "lineitem" AS F0
WHERE F0."l_suppkey" <@ '{10656,10925}'::int[]) F0
WHERE ((F0."l_shipdate" >= '1996-12-01') and (F0."l_shipdate" < '1997-03-01'))
GROUP BY F0."l_suppkey") F0) F0) F1)) F0
WHERE (F0."total_revenue" = F0."total_revenue2")) F1)) F0
WHERE (F0."s_suppkey" = F0."supplier_no");
