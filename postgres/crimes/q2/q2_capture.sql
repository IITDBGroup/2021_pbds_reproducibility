SELECT fast_bit_or(F0."PROV_crimes1") AS "PROV_crimes1", fast_bit_or(F0."PROV_crimes2") AS "PROV_crimes2", fast_bit_or(F0."PROV_crimes3") AS "PROV_crimes3", fast_bit_or(F0."PROV_crimes4") AS "PROV_crimes4"
FROM (
SELECT F0."AGGR_0" AS "count(1)", F0."PROV_crimes1" AS "PROV_crimes1", F0."PROV_crimes2" AS "PROV_crimes2",F0."PROV_crimes3" AS "PROV_crimes3", F0."PROV_crimes4" AS "PROV_crimes4"
FROM (
SELECT count(1) AS "AGGR_0", fast_bit_or(F0."PROV_crimes1") AS "PROV_crimes1", fast_bit_or(F0."PROV_crimes2") AS "PROV_crimes2", fast_bit_or(F0."PROV_crimes3") AS "PROV_crimes3", fast_bit_or(F0."PROV_crimes4") AS "PROV_crimes4"
FROM (
SELECT F0."cnt" AS "cnt", F0."block" AS "block", F0."PROV_crimes1" AS "PROV_crimes1", F0."PROV_crimes2" AS "PROV_crimes2",F0."PROV_crimes3" AS "PROV_crimes3", F0."PROV_crimes4" AS "PROV_crimes4"
FROM (
SELECT F0."cnt" AS "cnt", F0."block" AS "block", F0."PROV_crimes1" AS "PROV_crimes1", F0."PROV_crimes2" AS "PROV_crimes2",F0."PROV_crimes3" AS "PROV_crimes3", F0."PROV_crimes4" AS "PROV_crimes4"
FROM (
SELECT F0."AGGR_0" AS "cnt", F0."GROUP_0" AS "block", F0."PROV_crimes1" AS "PROV_crimes1", F0."PROV_crimes2" AS "PROV_crimes2",F0."PROV_crimes3" AS "PROV_crimes3", F0."PROV_crimes4" AS "PROV_crimes4"
FROM (
SELECT count(1) AS "AGGR_0", F0."block" AS "GROUP_0", set_bits(F0."PROV_crimes1")::bit(78) AS "PROV_crimes1", set_bits(F0."PROV_crimes2")::bit(50) AS "PROV_crimes2", set_bits(F0."PROV_crimes3")::bit(24) AS "PROV_crimes3", set_bits(F0."PROV_crimes4")::bit(303) AS "PROV_crimes4"
FROM (
SELECT F0."cid" AS "cid", F0."case_number" AS "case_number", F0."cdate" AS "cdate", F0."block" AS "block", F0."iucr" AS "iucr", F0."primary_type" AS "primary_type", F0."description" AS "description", F0."location_description" AS "location_description", F0."arrest" AS "arrest", F0."domestic" AS "domestic", F0."beat" AS "beat", F0."district" AS "district", F0."ward" AS "ward", F0."community_area" AS "community_area", F0."fbi_code" AS "fbi_code", F0."x_coordinate" AS "x_coordinate", F0."y_coordinate" AS "y_coordinate", F0."cyear" AS "cyear", F0."updated_on" AS "updated_on", F0."latitude" AS "latitude", F0."longitude" AS "longitude", F0."location" AS "location", 
binary_search_array_pos(ARRAY [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78], community_area) - 1 AS "PROV_crimes1" , 
binary_search_array_pos(ARRAY [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51], ward) - 1 AS "PROV_crimes2", 
binary_search_array_pos(ARRAY [1,2,3,4,5,6,7,8,9,10,11,12,14,15,16,17,18,19,20,21,22,24,25,31,32], district) - 1 AS "PROV_crimes3", 
binary_search_array_pos(ARRAY [111,112,113,114,121,122,123,124,131,132,133,134,211,212,213,214,215,221,222,223,224,225,231,232,233,234,235,311,312,313,314,321,322,323,324,331,332,333,334,411,412,413,414,421,422,423,424,430,431,432,433,434,511,512,513,522,523,524,531,532,533,611,612,613,614,621,622,623,624,631,632,633,634,711,712,713,714,715,722,723,724,725,726,731,732,733,734,735,811,812,813,814,815,821,822,823,824,825,831,832,833,834,835,911,912,913,914,915,921,922,923,924,925,931,932,933,934,935,1011,1012,1013,1014,1021,1022,1023,1024,1031,1032,1033,1034,1111,1112,1113,1114,1115,1121,1122,1123,1124,1125,1131,1132,1133,1134,1135,1211,1212,1213,1214,1215,1221,1222,1223,1224,1225,1231,1232,1233,1234,1235,1311,1312,1313,1322,1323,1324,1331,1332,1333,1411,1412,1413,1414,1421,1422,1423,1424,1431,1432,1433,1434,1511,1512,1513,1522,1523,1524,1531,1532,1533,1611,1612,1613,1614,1621,1622,1623,1624,1631,1632,1633,1634,1651,1652,1653,1654,1655,1711,1712,1713,1722,1723,1724,1731,1732,1733,1811,1812,1813,1814,1821,1822,1823,1824,1831,1832,1833,1834,1911,1912,1913,1914,1915,1921,1922,1923,1924,1925,1931,1932,1933,1934,1935,2011,2012,2013,2022,2023,2024,2031,2032,2033,2111,2112,2113,2122,2123,2124,2131,2132,2133,2211,2212,2213,2221,2222,2223,2232,2233,2234,2311,2312,2313,2322,2323,2324,2331,2332,2333,2411,2412,2413,2422,2423,2424,2431,2432,2433,2511,2512,2513,2514,2515,2521,2522,2523,2524,2525,2531,2532,2533,2534,2535,2536], beat) - 1 AS "PROV_crimes4"
FROM "crimes" AS F0) F0
GROUP BY F0."block") F0) F0) F0
WHERE (F0."cnt" > 10000)) F0) F0) F0;
