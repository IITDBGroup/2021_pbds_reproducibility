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
WHERE (F0."ps_partkey" <@ '{12425,12629,59249,59440,124184,124407,140535,140710,142115,142306,154007,154203,164006,164208,170830,171037,192189,192407,228811,229011,272168,272366,284704,284912,291343,291551,355012,355214,380011,380215,395629,395818,397243,397450,428042,428247,441004,441190,483799,483999,494025,494230,508343,508539,511557,511763,512756,512958,514958,515150,556161,556588,562010,562220,568668,568862,599641,599847,602601,602806,608961,609169,621755,621953,624339,624546,633707,633884,645563,645767,650709,650918,667772,667969,691677,691869,754812,755028,759585,759800,761789,761984,778143,778346,817572,817775,824544,824738,894751,894968,915981,916174,992506,992708,1000333,1000526,1095795,1095998,1097394,1097590,1109943,1110143,1121475,1121665,1162479,1162686,1188936,1189148,1217443,1217635,1234694,1234891,1252997,1253203,1258080,1258281,1280272,1280475,1289459,1289656,1339569,1339783,1341411,1341607,1356795,1356990,1376401,1376613,1414696,1414888,1419345,1419561,1442795,1442996,1447779,1447982,1448175,1448369,1478701,1478913,1479938,1480140,1494782,1494979,1496152,1496335,1505933,1506127,1509301,1509498,1516309,1516506,1565871,1566090,1567880,1568088,1682272,1682462,1689954,1690165,1703638,1703833,1782888,1783091,1791449,1791670,1796078,1796302,1809905,1810094,1823578,1823779,1828754,1828968,1862370,1862552,1885341,1885549,1898548,1898759,1905347,1905539,1907123,1907312,1932541,1932735,1933908,1934108,1937684,1937875,1968193,1968393,1977789,1977993,1978416,1978618}'::int[])) F0 CROSS JOIN (
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
WHERE (F0."p_partkey" <@ '{12400,12600,59400,59600,124200,124400,140600,140800,142200,142400,154000,154200,164000,164200,170800,171000,192200,192400,228800,229000,272200,272400,284800,285000,291400,291600,355000,355200,380000,380200,395600,395800,397200,397400,428000,428200,441000,441200,483800,484000,494000,494200,508200,508400,511600,511800,512800,513000,515000,515200,556200,556600,562000,562200,568600,568800,599600,599800,602600,602800,609000,609200,621800,622000,624400,624600,633800,634000,645600,645800,650600,650800,667600,667800,691600,691800,754800,755000,759600,759800,761600,761800,778200,778400,817600,817800,824600,824800,894800,895000,916000,916200,992400,992600,1000400,1000600,1095800,1096000,1097400,1097600,1110000,1110200,1121400,1121600,1162600,1162800,1188800,1189000,1217400,1217600,1234600,1234800,1253000,1253200,1258200,1258400,1280200,1280400,1289400,1289600,1339600,1339800,1341400,1341600,1356800,1357000,1376400,1376600,1414600,1414800,1419200,1419400,1442800,1443000,1447800,1448000,1448200,1448400,1478600,1478800,1480000,1480200,1494800,1495000,1496200,1496400,1506000,1506200,1509200,1509400,1516200,1516400,1566000,1566200,1568000,1568200,1682200,1682400,1690000,1690200,1703600,1703800,1782800,1783000,1791400,1791600,1796200,1796400,1810000,1810200,1823600,1823800,1828800,1829000,1862400,1862600,1885400,1885600,1898600,1898800,1905400,1905600,1907000,1907200,1932600,1932800,1934000,1934200,1937800,1938000,1968200,1968400,1977600,1977800,1978400,1978600}'::int[])) F0 CROSS JOIN (
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment"
FROM "supplier" AS F0
WHERE (F0."s_suppkey" <@ '{430,440,3440,3450,5410,5420,6080,6090,6370,6380,8870,8880,8970,8980,9760,9770,10010,10020,11710,11720,12580,12590,12640,12650,16550,16560,16710,16720,17790,17800,19170,19180,19940,19950,20650,20660,20980,20990,21250,21260,22990,23000,24750,24760,27830,27840,28110,28120,28800,28810,28830,28840,29040,29050,29960,29970,30080,30090,30120,30130,30300,30310,31580,31590,34090,34100,34640,34650,34880,34890,36810,36820,37150,37160,39010,39020,40620,40630,42250,42260,42560,42570,42660,42670,42990,43000,43080,43090,44400,44410,45730,45740,46550,46560,48330,48340,51480,51490,52770,52780,55120,55130,57380,57390,58390,58400,59080,59090,59410,59420,59430,59440,60090,60100,62500,62510,62840,62850,62920,62930,64630,64640,65100,65110,66050,66060,66350,66360,66600,66610,67390,67400,68360,68370,68670,68680,71250,71260,72260,72270,72510,72520,73710,73720,73780,73790,74260,74270,75730,75740,78280,78290,81440,81450,81970,81980,82180,82190,82680,82690,82990,83000,83260,83270,85430,85440,89680,89690,89770,89780,90090,90100,91090,91100,94820,94830,96830,96840,97310,97320,99520,99530,99650,99660}'::int[])) F1)) F0 CROSS JOIN (
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment"
FROM "partsupp" AS F0
WHERE (F0."ps_partkey" <@ '{12425,12629,59249,59440,124184,124407,140535,140710,142115,142306,154007,154203,164006,164208,170830,171037,192189,192407,228811,229011,272168,272366,284704,284912,291343,291551,355012,355214,380011,380215,395629,395818,397243,397450,428042,428247,441004,441190,483799,483999,494025,494230,508343,508539,511557,511763,512756,512958,514958,515150,556161,556588,562010,562220,568668,568862,599641,599847,602601,602806,608961,609169,621755,621953,624339,624546,633707,633884,645563,645767,650709,650918,667772,667969,691677,691869,754812,755028,759585,759800,761789,761984,778143,778346,817572,817775,824544,824738,894751,894968,915981,916174,992506,992708,1000333,1000526,1095795,1095998,1097394,1097590,1109943,1110143,1121475,1121665,1162479,1162686,1188936,1189148,1217443,1217635,1234694,1234891,1252997,1253203,1258080,1258281,1280272,1280475,1289459,1289656,1339569,1339783,1341411,1341607,1356795,1356990,1376401,1376613,1414696,1414888,1419345,1419561,1442795,1442996,1447779,1447982,1448175,1448369,1478701,1478913,1479938,1480140,1494782,1494979,1496152,1496335,1505933,1506127,1509301,1509498,1516309,1516506,1565871,1566090,1567880,1568088,1682272,1682462,1689954,1690165,1703638,1703833,1782888,1783091,1791449,1791670,1796078,1796302,1809905,1810094,1823578,1823779,1828754,1828968,1862370,1862552,1885341,1885549,1898548,1898759,1905347,1905539,1907123,1907312,1932541,1932735,1933908,1934108,1937684,1937875,1968193,1968393,1977789,1977993,1978416,1978618}'::int[])) F1)) F0 CROSS JOIN "nation" AS F1)) F0 CROSS JOIN "region" AS F1)) F0 CROSS JOIN (
SELECT F0."AGGR_0" AS "min_supplycost", F0."GROUP_0" AS "ps_partkey"
FROM (SELECT * FROM _temp_view_1) F0) F1)) F0
WHERE (((((((((F0."p_partkey" = F0."ps_partkey") and (F0."s_suppkey" = F0."ps_suppkey")) and (F0."p_size" = 15)) and (F0."p_type" like '%BRASS')) and (F0."s_nationkey" = F0."n_nationkey")) and (F0."n_regionkey" = F0."r_regionkey")) and (F0."r_name" = 'EUROPE')) and (F0."ps_supplycost" = F0."min_supplycost")) and (F0."p_partkey" = F0."ps_partkey1")))
SELECT F0."s_acctbal" AS "s_acctbal", F0."s_name" AS "s_name", F0."n_name" AS "n_name", F0."p_partkey" AS "p_partkey", F0."p_mfgr" AS "p_mfgr", F0."s_address" AS "s_address", F0."s_phone" AS "s_phone", F0."s_comment" AS "s_comment"
FROM (
SELECT F0."s_acctbal" AS "s_acctbal", F0."s_name" AS "s_name", F0."n_name" AS "n_name", F0."p_partkey" AS "p_partkey", F0."p_mfgr" AS "p_mfgr", F0."s_address" AS "s_address", F0."s_phone" AS "s_phone", F0."s_comment" AS "s_comment"
FROM (SELECT * FROM _temp_view_0) F0
ORDER BY F0."s_acctbal" DESC NULLS LAST, F0."n_name" ASC NULLS LAST, F0."s_name" ASC NULLS LAST, F0."p_partkey" ASC NULLS LAST) F0
LIMIT (100);
