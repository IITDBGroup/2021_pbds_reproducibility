SELECT fast_bit_or(F0."PROV_customer1") AS "PROV_customer1", fast_bit_or(F0."PROV_orders1") AS "PROV_orders1", fast_bit_or(F0."PROV_lineitem1"::bit(32)) AS "PROV_lineitem1"
FROM (
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."revenue" AS "revenue", F0."c_acctbal" AS "c_acctbal", F0."n_name" AS "n_name", F0."c_address" AS "c_address", F0."c_phone" AS "c_phone", F0."c_comment" AS "c_comment", F0."PROV_customer1" AS "PROV_customer1", F0."PROV_orders1" AS "PROV_orders1", F0."PROV_lineitem1" AS "PROV_lineitem1"
FROM (
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."revenue" AS "revenue", F0."c_acctbal" AS "c_acctbal", F0."n_name" AS "n_name", F0."c_address" AS "c_address", F0."c_phone" AS "c_phone", F0."c_comment" AS "c_comment", F0."PROV_customer1" AS "PROV_customer1", F0."PROV_orders1" AS "PROV_orders1", F0."PROV_lineitem1" AS "PROV_lineitem1"
FROM (
SELECT F0."GROUP_0" AS "c_custkey", F0."GROUP_1" AS "c_name", F0."AGGR_0" AS "revenue", F0."GROUP_2" AS "c_acctbal", F0."GROUP_4" AS "n_name", F0."GROUP_5" AS "c_address", F0."GROUP_3" AS "c_phone", F0."GROUP_6" AS "c_comment", F0."PROV_customer1" AS "PROV_customer1", F0."PROV_orders1" AS "PROV_orders1", F0."PROV_lineitem1" AS "PROV_lineitem1"
FROM (
SELECT sum((F0."l_extendedprice" * (1 - F0."l_discount"))) AS "AGGR_0", F0."c_custkey" AS "GROUP_0", F0."c_name" AS "GROUP_1", F0."c_acctbal" AS "GROUP_2", F0."c_phone" AS "GROUP_3", F0."n_name" AS "GROUP_4", F0."c_address" AS "GROUP_5", F0."c_comment" AS "GROUP_6", fast_bit_or(F0."PROV_customer1") AS "PROV_customer1", fast_bit_or(F0."PROV_orders1") AS "PROV_orders1", fast_bit_or(F0."PROV_lineitem1") AS "PROV_lineitem1"
FROM (
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment", F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", F1."n_nationkey" AS "n_nationkey", F1."n_name" AS "n_name", F1."n_regionkey" AS "n_regionkey", F1."n_comment" AS "n_comment", F0."PROV_customer1" AS "PROV_customer1", F0."PROV_orders1" AS "PROV_orders1", F0."PROV_lineitem1" AS "PROV_lineitem1"
FROM ((
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment", F1."l_orderkey" AS "l_orderkey", F1."l_partkey" AS "l_partkey", F1."l_suppkey" AS "l_suppkey", F1."l_linenumber" AS "l_linenumber", F1."l_quantity" AS "l_quantity", F1."l_extendedprice" AS "l_extendedprice", F1."l_discount" AS "l_discount", F1."l_tax" AS "l_tax", F1."l_returnflag" AS "l_returnflag", F1."l_linestatus" AS "l_linestatus", F1."l_shipdate" AS "l_shipdate", F1."l_commitdate" AS "l_commitdate", F1."l_receiptdate" AS "l_receiptdate", F1."l_shipinstruct" AS "l_shipinstruct", F1."l_shipmode" AS "l_shipmode", F1."l_comment" AS "l_comment", F0."PROV_customer1" AS "PROV_customer1", F0."PROV_orders1" AS "PROV_orders1", F1."PROV_lineitem1" AS "PROV_lineitem1"
FROM ((
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", F1."o_orderkey" AS "o_orderkey", F1."o_custkey" AS "o_custkey", F1."o_orderstatus" AS "o_orderstatus", F1."o_totalprice" AS "o_totalprice", F1."o_orderdate" AS "o_orderdate", F1."o_orderpriority" AS "o_orderpriority", F1."o_clerk" AS "o_clerk", F1."o_shippriority" AS "o_shippriority", F1."o_comment" AS "o_comment", F0."PROV_customer1" AS "PROV_customer1", F1."PROV_orders1" AS "PROV_orders1"
FROM ((
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", set_bit(0::bit(32),binary_search_array_pos('{
1,4688,9376,14064,18752,23440,28128,32816,37504,42192,46880,51568,56256,60944,65632,70320,75008,79695,84382,89069,93756,98443,103130,107817,112504,117191,121878,126565,131252,135939,140626,145313,150001}', F0."c_custkey")- 1,1 ) AS "PROV_customer1"
FROM "customer" AS F0) F0 CROSS JOIN (
SELECT F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment", set_bit(0::bit(32),binary_search_array_pos('{
1,187491,374982,562497,749988,937479,1124994,1312485,1500000,1687491,1874982,2062497,2249988,2437479,2624994,2812485,3000000,3187491,3374982,3562497,3749988,3937479,4124994,4312485,4500000,4687491,4874982,5062497,5249988,5437479,5624994,5812485,6000001}', F0."o_orderkey")- 1,1 ) AS "PROV_orders1"
FROM "orders" AS F0) F1)) F0 CROSS JOIN (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", set_bit(0::bit(32),binary_search_array_pos('{
1,186977,375301,562278,749568,937314,1125348,1312711,1500738,1687907,1874917,2062599,2250438,2438022,2626021,2813156,3000961,3188294,3375589,3562148,3749957,3937667,4125286,4312550,4500354,4687457,4875014,5062566,5250567,5437926,5625987,5813189,6000001}', F0."l_orderkey")- 1,1 ) AS "PROV_lineitem1"
FROM "lineitem" AS F0) F1)) F0 CROSS JOIN "nation" AS F1)) F0
WHERE ((((((F0."c_custkey" = F0."o_custkey") and (F0."l_orderkey" = F0."o_orderkey")) and (F0."o_orderdate" >= to_date('1994-12-01', 'YYYY-MM-DD'))) and (F0."o_orderdate" < to_date('1995-03-01', 'YYYY-MM-DD'))) and (F0."l_returnflag" = 'R')) and (F0."c_nationkey" = F0."n_nationkey"))
GROUP BY F0."c_custkey", F0."c_name", F0."c_acctbal", F0."c_phone", F0."n_name", F0."c_address", F0."c_comment") F0) F0 order by revenue desc) F0
limit 20) F0;
