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
WHERE ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((F0."p_partkey" >= '240') AND (F0."p_partkey" < '260')) OR ((F0."p_partkey" >= '4840') AND (F0."p_partkey" < '4860'))) OR ((F0."p_partkey" >= '5160') AND (F0."p_partkey" < '5180'))) OR ((F0."p_partkey" >= '5920') AND (F0."p_partkey" < '5940'))) OR ((F0."p_partkey" >= '8360') AND (F0."p_partkey" < '8380'))) OR ((F0."p_partkey" >= '11680') AND (F0."p_partkey" < '11700'))) OR ((F0."p_partkey" >= '13120') AND (F0."p_partkey" < '13140'))) OR ((F0."p_partkey" >= '13780') AND (F0."p_partkey" < '13800'))) OR ((F0."p_partkey" >= '15220') AND (F0."p_partkey" < '15240'))) OR ((F0."p_partkey" >= '17260') AND (F0."p_partkey" < '17280'))) OR ((F0."p_partkey" >= '18120') AND (F0."p_partkey" < '18140'))) OR ((F0."p_partkey" >= '18340') AND (F0."p_partkey" < '18360'))) OR ((F0."p_partkey" >= '18960') AND (F0."p_partkey" < '18980'))) OR ((F0."p_partkey" >= '19440') AND (F0."p_partkey" < '19460'))) OR ((F0."p_partkey" >= '20020') AND (F0."p_partkey" < '20040'))) OR ((F0."p_partkey" >= '21220') AND (F0."p_partkey" < '21240'))) OR ((F0."p_partkey" >= '25960') AND (F0."p_partkey" < '25980'))) OR ((F0."p_partkey" >= '26460') AND (F0."p_partkey" < '26480'))) OR ((F0."p_partkey" >= '29820') AND (F0."p_partkey" < '29840'))) OR ((F0."p_partkey" >= '33080') AND (F0."p_partkey" < '33100'))) OR ((F0."p_partkey" >= '33960') AND (F0."p_partkey" < '33980'))) OR ((F0."p_partkey" >= '34300') AND (F0."p_partkey" < '34320'))) OR ((F0."p_partkey" >= '36000') AND (F0."p_partkey" < '36020'))) OR ((F0."p_partkey" >= '37020') AND (F0."p_partkey" < '37040'))) OR ((F0."p_partkey" >= '39560') AND (F0."p_partkey" < '39580'))) OR ((F0."p_partkey" >= '40240') AND (F0."p_partkey" < '40260'))) OR ((F0."p_partkey" >= '43860') AND (F0."p_partkey" < '43880'))) OR ((F0."p_partkey" >= '44320') AND (F0."p_partkey" < '44340'))) OR ((F0."p_partkey" >= '47180') AND (F0."p_partkey" < '47200'))) OR ((F0."p_partkey" >= '59520') AND (F0."p_partkey" < '59540'))) OR ((F0."p_partkey" >= '62340') AND (F0."p_partkey" < '62360'))) OR ((F0."p_partkey" >= '66340') AND (F0."p_partkey" < '66360'))) OR ((F0."p_partkey" >= '67180') AND (F0."p_partkey" < '67200'))) OR ((F0."p_partkey" >= '69220') AND (F0."p_partkey" < '69240'))) OR ((F0."p_partkey" >= '73320') AND (F0."p_partkey" < '73340'))) OR ((F0."p_partkey" >= '75380') AND (F0."p_partkey" < '75400'))) OR ((F0."p_partkey" >= '76000') AND (F0."p_partkey" < '76020'))) OR ((F0."p_partkey" >= '76340') AND (F0."p_partkey" < '76360'))) OR ((F0."p_partkey" >= '78400') AND (F0."p_partkey" < '78420'))) OR ((F0."p_partkey" >= '81280') AND (F0."p_partkey" < '81300'))) OR ((F0."p_partkey" >= '83980') AND (F0."p_partkey" < '84000'))) OR ((F0."p_partkey" >= '85080') AND (F0."p_partkey" < '85100'))) OR ((F0."p_partkey" >= '85460') AND (F0."p_partkey" < '85480'))) OR ((F0."p_partkey" >= '86340') AND (F0."p_partkey" < '86360'))) OR ((F0."p_partkey" >= '86500') AND (F0."p_partkey" < '86520'))) OR ((F0."p_partkey" >= '88500') AND (F0."p_partkey" < '88520'))) OR ((F0."p_partkey" >= '90260') AND (F0."p_partkey" < '90280'))) OR ((F0."p_partkey" >= '99180') AND (F0."p_partkey" < '99200'))) OR ((F0."p_partkey" >= '100260') AND (F0."p_partkey" < '100280'))) OR ((F0."p_partkey" >= '100720') AND (F0."p_partkey" < '100740'))) OR ((F0."p_partkey" >= '102180') AND (F0."p_partkey" < '102200'))) OR ((F0."p_partkey" >= '104680') AND (F0."p_partkey" < '104700'))) OR ((F0."p_partkey" >= '107600') AND (F0."p_partkey" < '107620'))) OR ((F0."p_partkey" >= '108420') AND (F0."p_partkey" < '108440'))) OR ((F0."p_partkey" >= '109500') AND (F0."p_partkey" < '109520'))) OR ((F0."p_partkey" >= '110020') AND (F0."p_partkey" < '110040'))) OR ((F0."p_partkey" >= '117760') AND (F0."p_partkey" < '117780'))) OR ((F0."p_partkey" >= '118560') AND (F0."p_partkey" < '118580'))) OR ((F0."p_partkey" >= '119980') AND (F0."p_partkey" < '120000'))) OR ((F0."p_partkey" >= '120700') AND (F0."p_partkey" < '120720'))) OR ((F0."p_partkey" >= '124800') AND (F0."p_partkey" < '124820'))) OR ((F0."p_partkey" >= '125980') AND (F0."p_partkey" < '126000'))) OR ((F0."p_partkey" >= '126880') AND (F0."p_partkey" < '126900'))) OR ((F0."p_partkey" >= '128240') AND (F0."p_partkey" < '128260'))) OR ((F0."p_partkey" >= '130540') AND (F0."p_partkey" < '130560'))) OR ((F0."p_partkey" >= '135700') AND (F0."p_partkey" < '135720'))) OR ((F0."p_partkey" >= '137060') AND (F0."p_partkey" < '137080'))) OR ((F0."p_partkey" >= '138340') AND (F0."p_partkey" < '138360'))) OR ((F0."p_partkey" >= '138640') AND (F0."p_partkey" < '138660'))) OR ((F0."p_partkey" >= '139800') AND (F0."p_partkey" < '139820'))) OR ((F0."p_partkey" >= '141300') AND (F0."p_partkey" < '141320'))) OR ((F0."p_partkey" >= '143960') AND (F0."p_partkey" < '143980'))) OR ((F0."p_partkey" >= '146760') AND (F0."p_partkey" < '146780'))) OR ((F0."p_partkey" >= '150720') AND (F0."p_partkey" < '150740'))) OR ((F0."p_partkey" >= '150960') AND (F0."p_partkey" < '150980'))) OR ((F0."p_partkey" >= '152340') AND (F0."p_partkey" < '152360'))) OR ((F0."p_partkey" >= '156240') AND (F0."p_partkey" < '156260'))) OR ((F0."p_partkey" >= '159180') AND (F0."p_partkey" < '159200'))) OR ((F0."p_partkey" >= '162880') AND (F0."p_partkey" < '162900'))) OR ((F0."p_partkey" >= '164740') AND (F0."p_partkey" < '164760'))) OR ((F0."p_partkey" >= '167960') AND (F0."p_partkey" < '167980'))) OR ((F0."p_partkey" >= '170400') AND (F0."p_partkey" < '170420'))) OR ((F0."p_partkey" >= '170920') AND (F0."p_partkey" < '170940'))) OR ((F0."p_partkey" >= '173720') AND (F0."p_partkey" < '173740'))) OR ((F0."p_partkey" >= '173820') AND (F0."p_partkey" < '173840'))) OR ((F0."p_partkey" >= '173960') AND (F0."p_partkey" < '173980'))) OR ((F0."p_partkey" >= '175760') AND (F0."p_partkey" < '175780'))) OR ((F0."p_partkey" >= '179260') AND (F0."p_partkey" < '179280'))) OR ((F0."p_partkey" >= '179400') AND (F0."p_partkey" < '179420'))) OR ((F0."p_partkey" >= '181280') AND (F0."p_partkey" < '181300'))) OR ((F0."p_partkey" >= '184200') AND (F0."p_partkey" < '184220'))) OR ((F0."p_partkey" >= '185340') AND (F0."p_partkey" < '185360'))) OR ((F0."p_partkey" >= '189640') AND (F0."p_partkey" < '189660'))) OR ((F0."p_partkey" >= '190260') AND (F0."p_partkey" < '190280'))) OR ((F0."p_partkey" >= '191220') AND (F0."p_partkey" < '191240'))) OR ((F0."p_partkey" >= '191460') AND (F0."p_partkey" < '191480'))) OR ((F0."p_partkey" >= '192000') AND (F0."p_partkey" < '192020'))) OR ((F0."p_partkey" >= '193800') AND (F0."p_partkey" < '193820'))) OR ((F0."p_partkey" >= '198180') AND (F0."p_partkey" < '198200')))) F0 CROSS JOIN (
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment"
FROM "supplier" AS F0
WHERE ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((F0."s_suppkey" >= '33') AND (F0."s_suppkey" < '34')) OR ((F0."s_suppkey" >= '115') AND (F0."s_suppkey" < '116'))) OR ((F0."s_suppkey" >= '802') AND (F0."s_suppkey" < '803'))) OR ((F0."s_suppkey" >= '1013') AND (F0."s_suppkey" < '1014'))) OR ((F0."s_suppkey" >= '1226') AND (F0."s_suppkey" < '1227'))) OR ((F0."s_suppkey" >= '1286') AND (F0."s_suppkey" < '1287'))) OR ((F0."s_suppkey" >= '1288') AND (F0."s_suppkey" < '1289'))) OR ((F0."s_suppkey" >= '1518') AND (F0."s_suppkey" < '1519'))) OR ((F0."s_suppkey" >= '1744') AND (F0."s_suppkey" < '1745'))) OR ((F0."s_suppkey" >= '1816') AND (F0."s_suppkey" < '1817'))) OR ((F0."s_suppkey" >= '2324') AND (F0."s_suppkey" < '2325'))) OR ((F0."s_suppkey" >= '2352') AND (F0."s_suppkey" < '2353'))) OR ((F0."s_suppkey" >= '2536') AND (F0."s_suppkey" < '2537'))) OR ((F0."s_suppkey" >= '2675') AND (F0."s_suppkey" < '2676'))) OR ((F0."s_suppkey" >= '2731') AND (F0."s_suppkey" < '2732'))) OR ((F0."s_suppkey" >= '2920') AND (F0."s_suppkey" < '2921'))) OR ((F0."s_suppkey" >= '3121') AND (F0."s_suppkey" < '3122'))) OR ((F0."s_suppkey" >= '3142') AND (F0."s_suppkey" < '3143'))) OR ((F0."s_suppkey" >= '3228') AND (F0."s_suppkey" < '3229'))) OR ((F0."s_suppkey" >= '3245') AND (F0."s_suppkey" < '3246'))) OR ((F0."s_suppkey" >= '3323') AND (F0."s_suppkey" < '3324'))) OR ((F0."s_suppkey" >= '3347') AND (F0."s_suppkey" < '3348'))) OR ((F0."s_suppkey" >= '3384') AND (F0."s_suppkey" < '3385'))) OR ((F0."s_suppkey" >= '3439') AND (F0."s_suppkey" < '3440'))) OR ((F0."s_suppkey" >= '3532') AND (F0."s_suppkey" < '3533'))) OR ((F0."s_suppkey" >= '3817') AND (F0."s_suppkey" < '3818'))) OR ((F0."s_suppkey" >= '3967') AND (F0."s_suppkey" < '3968'))) OR ((F0."s_suppkey" >= '3973') AND (F0."s_suppkey" < '3974'))) OR ((F0."s_suppkey" >= '3979') AND (F0."s_suppkey" < '3980'))) OR ((F0."s_suppkey" >= '3990') AND (F0."s_suppkey" < '3991'))) OR ((F0."s_suppkey" >= '4211') AND (F0."s_suppkey" < '4212'))) OR ((F0."s_suppkey" >= '4305') AND (F0."s_suppkey" < '4306'))) OR ((F0."s_suppkey" >= '4311') AND (F0."s_suppkey" < '4312'))) OR ((F0."s_suppkey" >= '4429') AND (F0."s_suppkey" < '4430'))) OR ((F0."s_suppkey" >= '4582') AND (F0."s_suppkey" < '4583'))) OR ((F0."s_suppkey" >= '4603') AND (F0."s_suppkey" < '4604'))) OR ((F0."s_suppkey" >= '4702') AND (F0."s_suppkey" < '4703'))) OR ((F0."s_suppkey" >= '4856') AND (F0."s_suppkey" < '4857'))) OR ((F0."s_suppkey" >= '5148') AND (F0."s_suppkey" < '5149'))) OR ((F0."s_suppkey" >= '5250') AND (F0."s_suppkey" < '5251'))) OR ((F0."s_suppkey" >= '5306') AND (F0."s_suppkey" < '5307'))) OR ((F0."s_suppkey" >= '5359') AND (F0."s_suppkey" < '5360'))) OR ((F0."s_suppkey" >= '5406') AND (F0."s_suppkey" < '5407'))) OR ((F0."s_suppkey" >= '5750') AND (F0."s_suppkey" < '5751'))) OR ((F0."s_suppkey" >= '5791') AND (F0."s_suppkey" < '5792'))) OR ((F0."s_suppkey" >= '5864') AND (F0."s_suppkey" < '5865'))) OR ((F0."s_suppkey" >= '5936') AND (F0."s_suppkey" < '5937'))) OR ((F0."s_suppkey" >= '5969') AND (F0."s_suppkey" < '5970'))) OR ((F0."s_suppkey" >= '5975') AND (F0."s_suppkey" < '5976'))) OR ((F0."s_suppkey" >= '6003') AND (F0."s_suppkey" < '6004'))) OR ((F0."s_suppkey" >= '6108') AND (F0."s_suppkey" < '6109'))) OR ((F0."s_suppkey" >= '6188') AND (F0."s_suppkey" < '6189'))) OR ((F0."s_suppkey" >= '6330') AND (F0."s_suppkey" < '6331'))) OR ((F0."s_suppkey" >= '6345') AND (F0."s_suppkey" < '6346'))) OR ((F0."s_suppkey" >= '6373') AND (F0."s_suppkey" < '6374'))) OR ((F0."s_suppkey" >= '6683') AND (F0."s_suppkey" < '6684'))) OR ((F0."s_suppkey" >= '6830') AND (F0."s_suppkey" < '6831'))) OR ((F0."s_suppkey" >= '7043') AND (F0."s_suppkey" < '7044'))) OR ((F0."s_suppkey" >= '7194') AND (F0."s_suppkey" < '7195'))) OR ((F0."s_suppkey" >= '7206') AND (F0."s_suppkey" < '7207'))) OR ((F0."s_suppkey" >= '7269') AND (F0."s_suppkey" < '7270'))) OR ((F0."s_suppkey" >= '7342') AND (F0."s_suppkey" < '7343'))) OR ((F0."s_suppkey" >= '7769') AND (F0."s_suppkey" < '7770'))) OR ((F0."s_suppkey" >= '7772') AND (F0."s_suppkey" < '7773'))) OR ((F0."s_suppkey" >= '7807') AND (F0."s_suppkey" < '7808'))) OR ((F0."s_suppkey" >= '7967') AND (F0."s_suppkey" < '7968'))) OR ((F0."s_suppkey" >= '7981') AND (F0."s_suppkey" < '7982'))) OR ((F0."s_suppkey" >= '8097') AND (F0."s_suppkey" < '8098'))) OR ((F0."s_suppkey" >= '8101') AND (F0."s_suppkey" < '8102'))) OR ((F0."s_suppkey" >= '8406') AND (F0."s_suppkey" < '8407'))) OR ((F0."s_suppkey" >= '8518') AND (F0."s_suppkey" < '8519'))) OR ((F0."s_suppkey" >= '8520') AND (F0."s_suppkey" < '8521'))) OR ((F0."s_suppkey" >= '8757') AND (F0."s_suppkey" < '8758'))) OR ((F0."s_suppkey" >= '8770') AND (F0."s_suppkey" < '8771'))) OR ((F0."s_suppkey" >= '8780') AND (F0."s_suppkey" < '8781'))) OR ((F0."s_suppkey" >= '8851') AND (F0."s_suppkey" < '8852'))) OR ((F0."s_suppkey" >= '8854') AND (F0."s_suppkey" < '8855'))) OR ((F0."s_suppkey" >= '8973') AND (F0."s_suppkey" < '8974'))) OR ((F0."s_suppkey" >= '9012') AND (F0."s_suppkey" < '9013'))) OR ((F0."s_suppkey" >= '9186') AND (F0."s_suppkey" < '9187'))) OR ((F0."s_suppkey" >= '9407') AND (F0."s_suppkey" < '9408'))) OR ((F0."s_suppkey" >= '9456') AND (F0."s_suppkey" < '9457'))) OR ((F0."s_suppkey" >= '9529') AND (F0."s_suppkey" < '9530'))) OR ((F0."s_suppkey" >= '9558') AND (F0."s_suppkey" < '9559'))) OR ((F0."s_suppkey" >= '9658') AND (F0."s_suppkey" < '9659'))) OR ((F0."s_suppkey" >= '9690') AND (F0."s_suppkey" < '9691'))) OR ((F0."s_suppkey" >= '9792') AND (F0."s_suppkey" < '9793'))) OR ((F0."s_suppkey" >= '9814') AND (F0."s_suppkey" < '9815'))) OR ((F0."s_suppkey" >= '9999') AND (F0."s_suppkey" < '10001')))) F1)) F0 CROSS JOIN (
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
