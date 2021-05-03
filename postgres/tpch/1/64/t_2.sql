
WITH _temp_view_1 AS (
SELECT /*+ materialize */ min(F0."ps_supplycost") AS "AGGR_0", F0."ps_partkey" AS "GROUP_0"
FROM (
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F0."n_nationkey" AS "n_nationkey", F0."n_name" AS "n_name", F0."n_regionkey" AS "n_regionkey", F0."n_comment" AS "n_comment", F1."r_regionkey" AS "r_regionkey", F1."r_name" AS "r_name", F1."r_comment" AS "r_comment"
FROM ((
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F1."n_nationkey" AS "n_nationkey", F1."n_name" AS "n_name", F1."n_regionkey" AS "n_regionkey", F1."n_comment" AS "n_comment"
FROM ((
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F1."s_suppkey" AS "s_suppkey", F1."s_name" AS "s_name", F1."s_address" AS "s_address", F1."s_nationkey" AS "s_nationkey", F1."s_phone" AS "s_phone", F1."s_acctbal" AS "s_acctbal", F1."s_comment" AS "s_comment"
FROM ((
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment"
FROM "partsupp" AS F0
) F0 CROSS JOIN (
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment"
FROM "supplier" AS F0
) F1)) F0 CROSS JOIN "nation" AS F1)) F0 CROSS JOIN "region" AS F1)) F0
WHERE ((((F0."s_suppkey" = F0."ps_suppkey") and (F0."s_nationkey" = F0."n_nationkey")) and (F0."n_regionkey" = F0."r_regionkey")) and (F0."r_name" = 'EUROPE'))
GROUP BY F0."ps_partkey"),
_temp_view_0 AS (
SELECT /*+ materialize */ F0."s_acctbal" AS "s_acctbal", F0."s_name" AS "s_name", F0."n_name" AS "n_name", F0."p_partkey" AS "p_partkey", F0."p_mfgr" AS "p_mfgr", F0."s_address" AS "s_address", F0."s_phone" AS "s_phone", F0."s_comment" AS "s_comment"
FROM (
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F0."n_nationkey" AS "n_nationkey", F0."n_name" AS "n_name", F0."n_regionkey" AS "n_regionkey", F0."n_comment" AS "n_comment", F0."r_regionkey" AS "r_regionkey", F0."r_name" AS "r_name", F0."r_comment" AS "r_comment", F1."min_supplycost" AS "min_supplycost", F1."ps_partkey" AS "ps_partkey1"
FROM ((
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F0."n_nationkey" AS "n_nationkey", F0."n_name" AS "n_name", F0."n_regionkey" AS "n_regionkey", F0."n_comment" AS "n_comment", F1."r_regionkey" AS "r_regionkey", F1."r_name" AS "r_name", F1."r_comment" AS "r_comment"
FROM ((
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F1."n_nationkey" AS "n_nationkey", F1."n_name" AS "n_name", F1."n_regionkey" AS "n_regionkey", F1."n_comment" AS "n_comment"
FROM ((
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F1."ps_partkey" AS "ps_partkey", F1."ps_suppkey" AS "ps_suppkey", F1."ps_availqty" AS "ps_availqty", F1."ps_supplycost" AS "ps_supplycost", F1."ps_comment" AS "ps_comment"
FROM ((
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", F1."s_suppkey" AS "s_suppkey", F1."s_name" AS "s_name", F1."s_address" AS "s_address", F1."s_nationkey" AS "s_nationkey", F1."s_phone" AS "s_phone", F1."s_acctbal" AS "s_acctbal", F1."s_comment" AS "s_comment"
FROM ((
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment"
FROM "part" AS F0
WHERE (F0."p_partkey" <@ '{1,21844,24956,40492,43645,49841,59256,62355,65510,90612,96835,112437,115613,131250,134425,146908,149994,159344,162416,200001}'::int[])) F0 CROSS JOIN (
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment"
FROM "supplier" AS F0
WHERE (F0."s_suppkey" <@ '{1,157,782,1563,1719,1875,2188,3594,3750,5469,5625,6406,6562,6875,7031,7344,7656,8125,8281,8593,8750,9218,9375,10001}'::int[])) F1)) F0 CROSS JOIN (
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment"
FROM "partsupp" AS F0
) F1)) F0 CROSS JOIN "nation" AS F1)) F0 CROSS JOIN "region" AS F1)) F0 CROSS JOIN (
SELECT F0."AGGR_0" AS "min_supplycost", F0."GROUP_0" AS "ps_partkey"
FROM (SELECT * FROM _temp_view_1) F0) F1)) F0
WHERE (((((((((F0."p_partkey" = F0."ps_partkey") and (F0."s_suppkey" = F0."ps_suppkey")) and (F0."p_size" = 15)) and (F0."p_type" like '%BRASS')) and (F0."s_nationkey" = F0."n_nationkey")) and (F0."n_regionkey" = F0."r_regionkey")) and (F0."r_name" = 'EUROPE')) and (F0."ps_supplycost" = F0."min_supplycost")) and (F0."p_partkey" = F0."ps_partkey1")))
SELECT F0."s_acctbal" AS "s_acctbal", F0."s_name" AS "s_name", F0."n_name" AS "n_name", F0."p_partkey" AS "p_partkey", F0."p_mfgr" AS "p_mfgr", F0."s_address" AS "s_address", F0."s_phone" AS "s_phone", F0."s_comment" AS "s_comment"
FROM (
SELECT F0."s_acctbal" AS "s_acctbal", F0."s_name" AS "s_name", F0."n_name" AS "n_name", F0."p_partkey" AS "p_partkey", F0."p_mfgr" AS "p_mfgr", F0."s_address" AS "s_address", F0."s_phone" AS "s_phone", F0."s_comment" AS "s_comment"
FROM (SELECT * FROM _temp_view_0) F0
ORDER BY F0."s_acctbal" DESC NULLS LAST, F0."n_name" ASC NULLS LAST, F0."s_name" ASC NULLS LAST, F0."p_partkey" ASC NULLS LAST) F0
LIMIT (100);
