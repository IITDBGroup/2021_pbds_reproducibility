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
WHERE (F0."p_partkey" <@ '{240,260,4840,4860,5160,5180,5920,5940,8360,8380,11680,11700,13120,13140,13780,13800,15220,15240,17260,17280,18120,18140,18340,18360,18960,18980,19440,19460,20020,20040,21220,21240,25960,25980,26460,26480,29820,29840,33080,33100,33960,33980,34300,34320,36000,36020,37020,37040,39560,39580,40240,40260,43860,43880,44320,44340,47180,47200,59520,59540,62340,62360,66340,66360,67180,67200,69220,69240,73320,73340,75380,75400,76000,76020,76340,76360,78400,78420,81280,81300,83980,84000,85080,85100,85460,85480,86340,86360,86500,86520,88500,88520,90260,90280,99180,99200,100260,100280,100720,100740,102180,102200,104680,104700,107600,107620,108420,108440,109500,109520,110020,110040,117760,117780,118560,118580,119980,120000,120700,120720,124800,124820,125980,126000,126880,126900,128240,128260,130540,130560,135700,135720,137060,137080,138340,138360,138640,138660,139800,139820,141300,141320,143960,143980,146760,146780,150720,150740,150960,150980,152340,152360,156240,156260,159180,159200,162880,162900,164740,164760,167960,167980,170400,170420,170920,170940,173720,173740,173820,173840,173960,173980,175760,175780,179260,179280,179400,179420,181280,181300,184200,184220,185340,185360,189640,189660,190260,190280,191220,191240,191460,191480,192000,192020,193800,193820,198180,198200}'::int[])) F0 CROSS JOIN (
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment"
FROM "supplier" AS F0
WHERE (F0."s_suppkey" <@ '{33,34,115,116,802,803,1013,1014,1226,1227,1286,1287,1288,1289,1518,1519,1744,1745,1816,1817,2324,2325,2352,2353,2536,2537,2675,2676,2731,2732,2920,2921,3121,3122,3142,3143,3228,3229,3245,3246,3323,3324,3347,3348,3384,3385,3439,3440,3532,3533,3817,3818,3967,3968,3973,3974,3979,3980,3990,3991,4211,4212,4305,4306,4311,4312,4429,4430,4582,4583,4603,4604,4702,4703,4856,4857,5148,5149,5250,5251,5306,5307,5359,5360,5406,5407,5750,5751,5791,5792,5864,5865,5936,5937,5969,5970,5975,5976,6003,6004,6108,6109,6188,6189,6330,6331,6345,6346,6373,6374,6683,6684,6830,6831,7043,7044,7194,7195,7206,7207,7269,7270,7342,7343,7769,7770,7772,7773,7807,7808,7967,7968,7981,7982,8097,8098,8101,8102,8406,8407,8518,8519,8520,8521,8757,8758,8770,8771,8780,8781,8851,8852,8854,8855,8973,8974,9012,9013,9186,9187,9407,9408,9456,9457,9529,9530,9558,9559,9658,9659,9690,9691,9792,9793,9814,9815,9999,10001}'::int[])) F1)) F0 CROSS JOIN (
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