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
WHERE (F0."ps_partkey" <@ '{1,1002,4005,6007,8009,9010,11680,11681,13120,13121,13784,13785,15227,15228,17267,17277,18139,18140,18344,18345,18972,18973,19452,19462,20033,20034,21219,21229,25969,25979,26460,26461,26463,26473,29821,29822,33094,33104,33968,33978,34306,34307,36014,36015,37025,37026,39573,39583,40256,40257,43867,43877,44323,44333,47192,47202,59523,59533,62349,62350,66344,66354,67180,67190,69232,69242,73317,73327,75398,75399,75996,76006,76338,76348,78405,78406,81278,81288,83995,84005,85097,85107,85472,85473,86344,86345,86501,86502,88515,88516,90279,90280,99176,99186,100276,100277,100729,100730,102191,102192,104686,104696,107612,107622,108429,108439,109512,109522,110025,110035,117771,117772,118574,118575,119999,120000,120715,120716,124807,124817,125985,125995,126892,126893,128246,128256,130557,130558,135705,135706,137062,137072,138354,138364,138639,138649,139813,139814,141299,141309,143978,143988,146768,146769,150723,150733,150970,150980,152351,152352,156233,156243,159178,159188,162883,162893,164759,164760,167966,167967,170402,170403,170920,170930,173732,173742,173827,173837,173960,173970,175765,175775,179261,179271,179406,179407,181285,181286,184201,184211,185358,185359,189654,189664,190262,190272,191222,191223,191470,191471,191991,192001,193810,193811,198185,198195}'::int[])) F0 CROSS JOIN (
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment"
FROM "supplier" AS F0
WHERE (F0."s_suppkey" <@ '{33,34,115,116,128,129,268,269,802,803,949,950,1013,1014,1223,1224,1226,1227,1272,1273,1286,1287,1288,1289,1482,1483,1518,1519,1520,1521,1744,1745,1765,1766,1816,1817,2001,2002,2032,2033,2202,2203,2324,2325,2352,2353,2536,2537,2623,2624,2675,2676,2731,2732,2920,2921,3121,3122,3142,3143,3228,3229,3245,3246,3323,3324,3347,3348,3384,3385,3439,3440,3532,3533,3794,3795,3817,3818,3863,3864,3967,3968,3973,3974,3979,3980,3990,3991,4211,4212,4250,4251,4305,4306,4311,4312,4326,4327,4429,4430,4458,4459,4533,4534,4582,4583,4603,4604,4702,4703,4856,4857,5148,5149,5250,5251,5306,5307,5359,5360,5406,5407,5747,5748,5750,5751,5760,5761,5791,5792,5864,5865,5927,5928,5936,5937,5969,5970,5975,5976,6003,6004,6108,6109,6188,6189,6286,6287,6330,6331,6345,6346,6373,6374,6467,6468,6683,6684,6713,6714,6726,6727,6830,6831,7043,7044,7194,7195,7206,7207,7269,7270,7342,7343,7618,7619,7769,7770,7772,7773,7807,7808,7967,7968,7981,7982,8097,8098,8101,8102,8358,8359,8406,8407,8436,8437,8518,8519,8520,8521,8757,8758,8770,8771,8780,8781,8787,8788,8810,8811,8845,8846,8849,8850,8851,8852,8854,8855,8973,8974,9001,9002,9010,9011,9012,9013,9181,9182,9186,9187,9407,9408,9456,9457,9513,9514,9529,9530,9558,9559,9658,9659,9690,9691,9792,9793,9814,9815,9999,10001}'::int[])) F1)) F0 CROSS JOIN "nation" AS F1)) F0 CROSS JOIN "region" AS F1)) F0
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
WHERE (F0."p_partkey" <@ '{248,250,4840,4842,5174,5176,5934,5936,8362,8364,11680,11682,13120,13122,13784,13786,15226,15228,17268,17270,18138,18140,18344,18346,18972,18974,19454,19456,20032,20034,21224,21226,25974,25976,26460,26462,26466,26468,29820,29822,33094,33096,33972,33974,34306,34308,36014,36016,37024,37026,39574,39576,40256,40258,43868,43870,44324,44326,47192,47194,59528,59530,62348,62350,66344,66346,67182,67184,69236,69238,73322,73324,75398,75400,76002,76004,76346,76348,78404,78406,81284,81286,83994,83996,85098,85100,85472,85474,86344,86346,86500,86502,88514,88516,90278,90280,99184,99186,100276,100278,100728,100730,102190,102192,104694,104696,107616,107618,108438,108440,109512,109514,110032,110034,117770,117772,118574,118576,119998,120000,120714,120716,124814,124816,125988,125990,126892,126894,128254,128256,130556,130558,135704,135706,137062,137064,138356,138358,138648,138650,139812,139814,141302,141304,143978,143980,146768,146770,150728,150730,150974,150976,152350,152352,156240,156242,159180,159182,162888,162890,164758,164760,167966,167968,170402,170404,170920,170922,173734,173736,173826,173828,173966,173968,175766,175768,179270,179272,179406,179408,181284,181286,184210,184212,185358,185360,189656,189658,190266,190268,191222,191224,191470,191472,192000,192002,193810,193812,198188,198190}'::int[])) F0 CROSS JOIN (
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment"
FROM "supplier" AS F0
WHERE (F0."s_suppkey" <@ '{33,34,115,116,802,803,1013,1014,1226,1227,1286,1287,1288,1289,1518,1519,1744,1745,1816,1817,2324,2325,2352,2353,2536,2537,2675,2676,2731,2732,2920,2921,3121,3122,3142,3143,3228,3229,3245,3246,3323,3324,3347,3348,3384,3385,3439,3440,3532,3533,3817,3818,3967,3968,3973,3974,3979,3980,3990,3991,4211,4212,4305,4306,4311,4312,4429,4430,4582,4583,4603,4604,4702,4703,4856,4857,5148,5149,5250,5251,5306,5307,5359,5360,5406,5407,5750,5751,5791,5792,5864,5865,5936,5937,5969,5970,5975,5976,6003,6004,6108,6109,6188,6189,6330,6331,6345,6346,6373,6374,6683,6684,6830,6831,7043,7044,7194,7195,7206,7207,7269,7270,7342,7343,7769,7770,7772,7773,7807,7808,7967,7968,7981,7982,8097,8098,8101,8102,8406,8407,8518,8519,8520,8521,8757,8758,8770,8771,8780,8781,8851,8852,8854,8855,8973,8974,9012,9013,9186,9187,9407,9408,9456,9457,9529,9530,9558,9559,9658,9659,9690,9691,9792,9793,9814,9815,9999,10001}'::int[])) F1)) F0 CROSS JOIN (
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment"
FROM "partsupp" AS F0
WHERE (F0."ps_partkey" <@ '{1,1002,4005,6007,8009,9010,11680,11681,13120,13121,13784,13785,15227,15228,17267,17277,18139,18140,18344,18345,18972,18973,19452,19462,20033,20034,21219,21229,25969,25979,26460,26461,26463,26473,29821,29822,33094,33104,33968,33978,34306,34307,36014,36015,37025,37026,39573,39583,40256,40257,43867,43877,44323,44333,47192,47202,59523,59533,62349,62350,66344,66354,67180,67190,69232,69242,73317,73327,75398,75399,75996,76006,76338,76348,78405,78406,81278,81288,83995,84005,85097,85107,85472,85473,86344,86345,86501,86502,88515,88516,90279,90280,99176,99186,100276,100277,100729,100730,102191,102192,104686,104696,107612,107622,108429,108439,109512,109522,110025,110035,117771,117772,118574,118575,119999,120000,120715,120716,124807,124817,125985,125995,126892,126893,128246,128256,130557,130558,135705,135706,137062,137072,138354,138364,138639,138649,139813,139814,141299,141309,143978,143988,146768,146769,150723,150733,150970,150980,152351,152352,156233,156243,159178,159188,162883,162893,164759,164760,167966,167967,170402,170403,170920,170930,173732,173742,173827,173837,173960,173970,175765,175775,179261,179271,179406,179407,181285,181286,184201,184211,185358,185359,189654,189664,190262,190272,191222,191223,191470,191471,191991,192001,193810,193811,198185,198195}'::int[])) F1)) F0 CROSS JOIN "nation" AS F1)) F0 CROSS JOIN "region" AS F1)) F0 CROSS JOIN (
SELECT F0."AGGR_0" AS "min_supplycost", F0."GROUP_0" AS "ps_partkey"
FROM (SELECT * FROM _temp_view_1) F0) F1)) F0
WHERE (((((((((F0."p_partkey" = F0."ps_partkey") and (F0."s_suppkey" = F0."ps_suppkey")) and (F0."p_size" = 15)) and (F0."p_type" like '%BRASS')) and (F0."s_nationkey" = F0."n_nationkey")) and (F0."n_regionkey" = F0."r_regionkey")) and (F0."r_name" = 'EUROPE')) and (F0."ps_supplycost" = F0."min_supplycost")) and (F0."p_partkey" = F0."ps_partkey1")))
SELECT F0."s_acctbal" AS "s_acctbal", F0."s_name" AS "s_name", F0."n_name" AS "n_name", F0."p_partkey" AS "p_partkey", F0."p_mfgr" AS "p_mfgr", F0."s_address" AS "s_address", F0."s_phone" AS "s_phone", F0."s_comment" AS "s_comment"
FROM (
SELECT F0."s_acctbal" AS "s_acctbal", F0."s_name" AS "s_name", F0."n_name" AS "n_name", F0."p_partkey" AS "p_partkey", F0."p_mfgr" AS "p_mfgr", F0."s_address" AS "s_address", F0."s_phone" AS "s_phone", F0."s_comment" AS "s_comment"
FROM (SELECT * FROM _temp_view_0) F0
ORDER BY F0."s_acctbal" DESC NULLS LAST, F0."n_name" ASC NULLS LAST, F0."s_name" ASC NULLS LAST, F0."p_partkey" ASC NULLS LAST) F0
LIMIT 100;
