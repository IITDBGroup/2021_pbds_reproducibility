SELECT set_bits(F0."PROV_part1")::bit(64) AS "PROV_part1", set_bits(F0."PROV_supplier1")::bit(64) AS "PROV_supplier1", set_bits(F0."PROV_partsupp1")::bit(64) AS "PROV_partsupp1", fast_bit_or(F0."PROV_partsupp2") AS "PROV_partsupp2"
FROM (
SELECT F0."s_acctbal" AS "s_acctbal", F0."s_name" AS "s_name", F0."n_name" AS "n_name", F0."p_partkey" AS "p_partkey", F0."p_mfgr" AS "p_mfgr", F0."s_address" AS "s_address", F0."s_phone" AS "s_phone", F0."s_comment" AS "s_comment", F0."PROV_part1" AS "PROV_part1", F0."PROV_supplier1" AS "PROV_supplier1", F0."PROV_partsupp1" AS "PROV_partsupp1", F0."PROV_partsupp2" AS "PROV_partsupp2"
FROM (
SELECT F0."s_acctbal" AS "s_acctbal", F0."s_name" AS "s_name", F0."n_name" AS "n_name", F0."p_partkey" AS "p_partkey", F0."p_mfgr" AS "p_mfgr", F0."s_address" AS "s_address", F0."s_phone" AS "s_phone", F0."s_comment" AS "s_comment", F0."PROV_part1" AS "PROV_part1", F0."PROV_supplier1" AS "PROV_supplier1", F0."PROV_partsupp1" AS "PROV_partsupp1", F0."PROV_partsupp2" AS "PROV_partsupp2"
FROM (
SELECT F0."s_acctbal" AS "s_acctbal", F0."s_name" AS "s_name", F0."n_name" AS "n_name", F0."p_partkey" AS "p_partkey", F0."p_mfgr" AS "p_mfgr", F0."s_address" AS "s_address", F0."s_phone" AS "s_phone", F0."s_comment" AS "s_comment", F0."PROV_part1" AS "PROV_part1", F0."PROV_supplier1" AS "PROV_supplier1", F0."PROV_partsupp1" AS "PROV_partsupp1", F0."PROV_partsupp2" AS "PROV_partsupp2"
FROM (
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F0."n_nationkey" AS "n_nationkey", F0."n_name" AS "n_name", F0."n_regionkey" AS "n_regionkey", F0."n_comment" AS "n_comment", F0."r_regionkey" AS "r_regionkey", F0."r_name" AS "r_name", F0."r_comment" AS "r_comment", F1."min_supplycost" AS "min_supplycost", F1."ps_partkey" AS "ps_partkey1", F0."PROV_part1" AS "PROV_part1", F0."PROV_supplier1" AS "PROV_supplier1", F0."PROV_partsupp1" AS "PROV_partsupp1", F1."PROV_partsupp2" AS "PROV_partsupp2"
FROM ((
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F0."n_nationkey" AS "n_nationkey", F0."n_name" AS "n_name", F0."n_regionkey" AS "n_regionkey", F0."n_comment" AS "n_comment", F1."r_regionkey" AS "r_regionkey", F1."r_name" AS "r_name", F1."r_comment" AS "r_comment", F0."PROV_part1" AS "PROV_part1", F0."PROV_supplier1" AS "PROV_supplier1", F0."PROV_partsupp1" AS "PROV_partsupp1"
FROM ((
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F1."n_nationkey" AS "n_nationkey", F1."n_name" AS "n_name", F1."n_regionkey" AS "n_regionkey", F1."n_comment" AS "n_comment", F0."PROV_part1" AS "PROV_part1", F0."PROV_supplier1" AS "PROV_supplier1", F0."PROV_partsupp1" AS "PROV_partsupp1"
FROM ((
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F1."ps_partkey" AS "ps_partkey", F1."ps_suppkey" AS "ps_suppkey", F1."ps_availqty" AS "ps_availqty", F1."ps_supplycost" AS "ps_supplycost", F1."ps_comment" AS "ps_comment", F0."PROV_part1" AS "PROV_part1", F0."PROV_supplier1" AS "PROV_supplier1", F1."PROV_partsupp1" AS "PROV_partsupp1"
FROM ((
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", F1."s_suppkey" AS "s_suppkey", F1."s_name" AS "s_name", F1."s_address" AS "s_address", F1."s_nationkey" AS "s_nationkey", F1."s_phone" AS "s_phone", F1."s_acctbal" AS "s_acctbal", F1."s_comment" AS "s_comment", F0."PROV_part1" AS "PROV_part1", F1."PROV_supplier1" AS "PROV_supplier1"
FROM ((
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", binary_search_array_pos('{1,28408,58942,91193,121585,154962,184812,214504,244562,278608,308748,339042,368838,399169,429957,461374,492821,523052,554845,586448,616025,647176,678144,710298,741844,773651,804759,837086,868299,900224,933554,967650,996947,1029175,1060406,1092842,1123878,1154391,1183745,1212773,1244338,1275335,1307796,1337501,1369354,1396053,1427624,1462667,1496294,1531360,1563037,1596504,1626015,1655135,1687576,1716747,1749261,1779283,1812872,1842589,1872263,1903331,1933505,1966644,2000001}', F0."p_partkey")- 1 AS "PROV_part1"
FROM "part" AS F0) F0 CROSS JOIN (
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", binary_search_array_pos('{1,1667,3300,4874,6466,8140,9815,11397,12929,14592,15995,17573,19193,20882,22214,23719,25325,26941,28499,30003,31607,33194,34736,36226,37820,39283,40860,42343,43743,45327,46716,48311,49944,51451,53133,54764,56249,57787,59333,60975,62650,64156,65764,67291,68853,70331,71908,73356,74858,76247,77863,79473,81170,82590,84190,85801,87408,88991,90710,92226,93875,95404,96936,98465,100001}', F0."s_suppkey")- 1 AS "PROV_supplier1"
FROM "supplier" AS F0) F1)) F0 CROSS JOIN (
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", binary_search_array_pos('{1,33277,67154,100652,132456,161062,191915,222272,251674,282599,313417,348109,381790,408946,439341,468690,500361,533469,566402,594071,626157,655952,689103,719470,751390,784296,815351,845839,878414,906920,938366,970995,1004542,1034040,1067010,1098244,1131194,1163693,1194524,1222212,1253574,1279576,1309795,1342498,1375380,1404529,1434758,1465559,1494870,1525687,1554110,1588696,1621399,1651179,1681826,1714681,1745297,1777117,1807911,1839268,1871902,1900878,1933608,1967043,2000001}', F0."ps_partkey")- 1 AS "PROV_partsupp1"
FROM "partsupp" AS F0) F1)) F0 CROSS JOIN "nation" AS F1)) F0 CROSS JOIN "region" AS F1)) F0 CROSS JOIN (
SELECT F0."AGGR_0" AS "min_supplycost", F0."GROUP_0" AS "ps_partkey", F0."PROV_partsupp2" AS "PROV_partsupp2"
FROM (
SELECT min(F0."ps_supplycost") AS "AGGR_0", F0."ps_partkey" AS "GROUP_0", set_bits(F0."PROV_partsupp2")::bit(64) AS "PROV_partsupp2"
FROM (
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F0."n_nationkey" AS "n_nationkey", F0."n_name" AS "n_name", F0."n_regionkey" AS "n_regionkey", F0."n_comment" AS "n_comment", F1."r_regionkey" AS "r_regionkey", F1."r_name" AS "r_name", F1."r_comment" AS "r_comment", F0."PROV_partsupp2" AS "PROV_partsupp2"
FROM ((
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F1."n_nationkey" AS "n_nationkey", F1."n_name" AS "n_name", F1."n_regionkey" AS "n_regionkey", F1."n_comment" AS "n_comment", F0."PROV_partsupp2" AS "PROV_partsupp2"
FROM ((
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F1."s_suppkey" AS "s_suppkey", F1."s_name" AS "s_name", F1."s_address" AS "s_address", F1."s_nationkey" AS "s_nationkey", F1."s_phone" AS "s_phone", F1."s_acctbal" AS "s_acctbal", F1."s_comment" AS "s_comment", F0."PROV_partsupp2" AS "PROV_partsupp2"
FROM ((
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", binary_search_array_pos('{1,33277,67154,100652,132456,161062,191915,222272,251674,282599,313417,348109,381790,408946,439341,468690,500361,533469,566402,594071,626157,655952,689103,719470,751390,784296,815351,845839,878414,906920,938366,970995,1004542,1034040,1067010,1098244,1131194,1163693,1194524,1222212,1253574,1279576,1309795,1342498,1375380,1404529,1434758,1465559,1494870,1525687,1554110,1588696,1621399,1651179,1681826,1714681,1745297,1777117,1807911,1839268,1871902,1900878,1933608,1967043,2000001}', F0."ps_partkey")- 1 AS "PROV_partsupp2"
FROM "partsupp" AS F0) F0 CROSS JOIN "supplier" AS F1)) F0 CROSS JOIN "nation" AS F1)) F0 CROSS JOIN "region" AS F1)) F0
WHERE ((((F0."s_suppkey" = F0."ps_suppkey") and (F0."s_nationkey" = F0."n_nationkey")) and (F0."n_regionkey" = F0."r_regionkey")) and (F0."r_name" = 'EUROPE'))
GROUP BY F0."ps_partkey") F0) F1)) F0
WHERE (((((((((F0."p_partkey" = F0."ps_partkey") and (F0."s_suppkey" = F0."ps_suppkey")) and (F0."p_size" = 15)) and (F0."p_type" like '%BRASS')) and (F0."s_nationkey" = F0."n_nationkey")) and (F0."n_regionkey" = F0."r_regionkey")) and (F0."r_name" = 'EUROPE')) and (F0."ps_supplycost" = F0."min_supplycost")) and (F0."p_partkey" = F0."ps_partkey1"))) F0 order by s_acctbal desc, n_name, s_name, p_partkey) F0
limit 100) F0;