WITH _temp_view_2 AS (
SELECT /*+ materialize */ sum(F0."l_quantity") AS "AGGR_0", F0."l_orderkey" AS "GROUP_0"
FROM "lineitem" AS F0
WHERE (((((((((((F0."l_orderkey" >= '1261671') AND (F0."l_orderkey" < '1263142')) OR ((F0."l_orderkey" >= '1543620') AND (F0."l_orderkey" < '1545093'))) OR ((F0."l_orderkey" >= '2198464') AND (F0."l_orderkey" < '2199936'))) OR ((F0."l_orderkey" >= '2868289') AND (F0."l_orderkey" < '2869829'))) OR ((F0."l_orderkey" >= '2941893') AND (F0."l_orderkey" < '2943461'))) OR ((F0."l_orderkey" >= '3042563') AND (F0."l_orderkey" < '3044036'))) OR ((F0."l_orderkey" >= '3766883') AND (F0."l_orderkey" < '3768421'))) OR ((F0."l_orderkey" >= '4702048') AND (F0."l_orderkey" < '4703524'))) OR ((F0."l_orderkey" >= '4721477') AND (F0."l_orderkey" < '4723106'))) OR ((F0."l_orderkey" >= '4805603') AND (F0."l_orderkey" < '4807047')))
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
WHERE (((((((((((F0."c_custkey" >= '15600') AND (F0."c_custkey" < '15638')) OR ((F0."c_custkey" >= '36600') AND (F0."c_custkey" < '36638'))) OR ((F0."c_custkey" >= '66788') AND (F0."c_custkey" < '66825'))) OR ((F0."c_custkey" >= '117900') AND (F0."c_custkey" < '117937'))) OR ((F0."c_custkey" >= '119962') AND (F0."c_custkey" < '120000'))) OR ((F0."c_custkey" >= '126862') AND (F0."c_custkey" < '126900'))) OR ((F0."c_custkey" >= '128100') AND (F0."c_custkey" < '128137'))) OR ((F0."c_custkey" >= '144600') AND (F0."c_custkey" < '144637'))) OR ((F0."c_custkey" >= '147187') AND (F0."c_custkey" < '147225'))) OR ((F0."c_custkey" >= '148875') AND (F0."c_custkey" < '148912')))) F0 CROSS JOIN (
SELECT F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment"
FROM "orders" AS F0
WHERE (((((((((((F0."o_orderkey" >= '1262694') AND (F0."o_orderkey" < '1264167')) OR ((F0."o_orderkey" >= '1543911') AND (F0."o_orderkey" < '1545447'))) OR ((F0."o_orderkey" >= '2199590') AND (F0."o_orderkey" < '2201092'))) OR ((F0."o_orderkey" >= '2868710') AND (F0."o_orderkey" < '2870148'))) OR ((F0."o_orderkey" >= '2940962') AND (F0."o_orderkey" < '2942530'))) OR ((F0."o_orderkey" >= '3041889') AND (F0."o_orderkey" < '3043392'))) OR ((F0."o_orderkey" >= '3766148') AND (F0."o_orderkey" < '3767655'))) OR ((F0."o_orderkey" >= '4701858') AND (F0."o_orderkey" < '4703269'))) OR ((F0."o_orderkey" >= '4721157') AND (F0."o_orderkey" < '4722599'))) OR ((F0."o_orderkey" >= '4806406') AND (F0."o_orderkey" < '4807907')))) F1)) F0 CROSS JOIN (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment"
FROM "lineitem" AS F0
WHERE (((((((((((F0."l_orderkey" >= '1261671') AND (F0."l_orderkey" < '1263142')) OR ((F0."l_orderkey" >= '1543620') AND (F0."l_orderkey" < '1545093'))) OR ((F0."l_orderkey" >= '2198464') AND (F0."l_orderkey" < '2199936'))) OR ((F0."l_orderkey" >= '2868289') AND (F0."l_orderkey" < '2869829'))) OR ((F0."l_orderkey" >= '2941893') AND (F0."l_orderkey" < '2943461'))) OR ((F0."l_orderkey" >= '3042563') AND (F0."l_orderkey" < '3044036'))) OR ((F0."l_orderkey" >= '3766883') AND (F0."l_orderkey" < '3768421'))) OR ((F0."l_orderkey" >= '4702048') AND (F0."l_orderkey" < '4703524'))) OR ((F0."l_orderkey" >= '4721477') AND (F0."l_orderkey" < '4723106'))) OR ((F0."l_orderkey" >= '4805603') AND (F0."l_orderkey" < '4807047')))) F1)) F0 CROSS JOIN (
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
