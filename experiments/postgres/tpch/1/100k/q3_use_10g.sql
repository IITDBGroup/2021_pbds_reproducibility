WITH _temp_view_1 AS (
SELECT /*+ materialize */ sum((F0."l_extendedprice" * (1 - F0."l_discount"))) AS "AGGR_0", F0."l_orderkey" AS "GROUP_0", F0."o_orderdate" AS "GROUP_1", F0."o_shippriority" AS "GROUP_2"
FROM (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment", F1."c_custkey" AS "c_custkey", F1."c_name" AS "c_name", F1."c_address" AS "c_address", F1."c_nationkey" AS "c_nationkey", F1."c_phone" AS "c_phone", F1."c_acctbal" AS "c_acctbal", F1."c_mktsegment" AS "c_mktsegment", F1."c_comment" AS "c_comment"
FROM ((
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", F1."o_orderkey" AS "o_orderkey", F1."o_custkey" AS "o_custkey", F1."o_orderstatus" AS "o_orderstatus", F1."o_totalprice" AS "o_totalprice", F1."o_orderdate" AS "o_orderdate", F1."o_orderpriority" AS "o_orderpriority", F1."o_clerk" AS "o_clerk", F1."o_shippriority" AS "o_shippriority", F1."o_comment" AS "o_comment"
FROM ((
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment"
FROM "lineitem" AS F0
WHERE (F0."l_orderkey" <@ '{3355111,3355734,4790603,4791201,9806172,9806770,16383717,16384334,22810060,22810607,23860876,23861513,23906521,23907119,46677910,46678521,52973733,52974327,59393570,59394165}'::int[])) F0 CROSS JOIN (
SELECT F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment"
FROM "orders" AS F0
WHERE (F0."o_orderkey" <@ '{3354903,3355507,4790856,4791454,9806146,9806801,16383799,16384388,22810435,22811039,23861343,23861960,23906483,23907097,46677885,46678496,52973937,52974551,59393429,59393999}'::int[])) F1)) F0 CROSS JOIN (
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment"
FROM "customer" AS F0
WHERE (F0."c_custkey" <@ '{173415,173430,304230,304245,447195,447210,516540,516555,634260,634275,654180,654195,713250,713265,768705,768720,830760,830775,1322265,1322280}'::int[])) F1)) F0
WHERE (((((F0."c_mktsegment" = 'BUILDING') and (F0."c_custkey" = F0."o_custkey")) and (F0."l_orderkey" = F0."o_orderkey")) and (F0."o_orderdate" < to_date('1995-03-15', 'YYYY-MM-DD'))) and (F0."l_shipdate" > to_date('1995-03-15', 'YYYY-MM-DD')))
GROUP BY F0."l_orderkey", F0."o_orderdate", F0."o_shippriority"),
_temp_view_0 AS (
SELECT /*+ materialize */ F0."GROUP_0" AS "l_orderkey", F0."AGGR_0" AS "revenue", F0."GROUP_1" AS "o_orderdate", F0."GROUP_2" AS "o_shippriority"
FROM (SELECT * FROM _temp_view_1) F0)
SELECT F0."l_orderkey" AS "l_orderkey", F0."revenue" AS "revenue", F0."o_orderdate" AS "o_orderdate", F0."o_shippriority" AS "o_shippriority"
FROM (
SELECT F0."l_orderkey" AS "l_orderkey", F0."revenue" AS "revenue", F0."o_orderdate" AS "o_orderdate", F0."o_shippriority" AS "o_shippriority"
FROM (SELECT * FROM _temp_view_0) F0
ORDER BY F0."revenue" DESC NULLS LAST, F0."o_orderdate" ASC NULLS LAST) F0
LIMIT 10;
