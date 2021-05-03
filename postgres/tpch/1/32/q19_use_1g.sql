SELECT F0."AGGR_0" AS "revenue"
FROM (
SELECT sum((F0."l_extendedprice" * (1 - F0."l_discount"))) AS "AGGR_0"
FROM (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", F1."p_partkey" AS "p_partkey", F1."p_name" AS "p_name", F1."p_mfgr" AS "p_mfgr", F1."p_brand" AS "p_brand", F1."p_type" AS "p_type", F1."p_size" AS "p_size", F1."p_container" AS "p_container", F1."p_retailprice" AS "p_retailprice", F1."p_comment" AS "p_comment"
FROM ((
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment"
FROM "lineitem" AS F0
WHERE F0."l_orderkey" <@ '{1,4312550,4500354,6000001}'::int[]) F0 CROSS JOIN "part" AS F1)) F0
WHERE (((((((((((F0."p_partkey" = F0."l_partkey") AND (F0."p_brand" = 'Brand#12')) AND ((((F0."p_container" = 'SM CASE') OR (F0."p_container" = 'SM BOX')) OR (F0."p_container" = 'SM PACK')) OR (F0."p_container" = 'SM PKG'))) AND (F0."l_quantity" >= 1)) AND (F0."l_quantity" <= (1 + 10))) AND (F0."p_size" >= 1)) AND (F0."p_size" <= 5)) AND ((F0."l_shipmode" = 'AIR') OR (F0."l_shipmode" = 'AIR REG'))) AND (F0."l_shipinstruct" = 'DELIVER IN PERSON')) OR (((((((((F0."p_partkey" = F0."l_partkey") AND (F0."p_brand" = 'Brand#23')) AND ((((F0."p_container" = 'MED BAG') OR (F0."p_container" = 'MED BOX')) OR (F0."p_container" = 'MED PKG')) OR (F0."p_container" = 'MED PACK'))) AND (F0."l_quantity" >= 10)) AND (F0."l_quantity" <= (10 + 10))) AND (F0."p_size" >= 1)) AND (F0."p_size" <= 10)) AND ((F0."l_shipmode" = 'AIR') OR (F0."l_shipmode" = 'AIR REG'))) AND (F0."l_shipinstruct" = 'DELIVER IN PERSON'))) OR (((((((((F0."p_partkey" = F0."l_partkey") AND (F0."p_brand" = 'Brand#34')) AND ((((F0."p_container" = 'LG CASE') OR (F0."p_container" = 'LG BOX')) OR (F0."p_container" = 'LG PACK')) OR (F0."p_container" = 'LG PKG'))) AND (F0."l_quantity" >= 20)) AND (F0."l_quantity" <= (20 + 10))) AND (F0."p_size" >= 1)) AND (F0."p_size" <= 15)) AND ((F0."l_shipmode" = 'AIR') OR (F0."l_shipmode" = 'AIR REG'))) AND (F0."l_shipinstruct" = 'DELIVER IN PERSON')))) F0;
