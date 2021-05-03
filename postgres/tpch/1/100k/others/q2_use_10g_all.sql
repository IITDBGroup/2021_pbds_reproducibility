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
WHERE (F0."ps_partkey" <@ '{12584,12603,59422,59444,124249,124275,140616,140634,142249,142268,154034,154053,163994,164014,170965,170984,192371,192389,228826,228845,272307,272325,284876,284897,291539,291559,355107,355129,380073,380092,395648,395669,397233,397254,428109,428129,441048,441067,483963,483984,494164,494184,508364,508383,511687,511714,512907,512931,515067,515094,556349,556369,556429,556449,556571,556591,562124,562142,568664,568692,599739,599759,602745,602765,609072,609092,621793,621813,624498,624518,633841,633861,645722,645742,650729,650747,667770,667789,691701,691721,754929,754949,759617,759636,761788,761808,778266,778287,817642,817662,824607,824627,894925,894944,916034,916053,992535,992553,1000430,1000450,1095952,1095972,1097469,1097489,1110069,1110089,1121525,1121546,1162609,1162628,1188982,1189007,1217553,1217573,1234718,1234737,1253068,1253088,1258243,1258263,1280262,1280283,1289584,1289606,1339646,1339666,1341586,1341606,1356956,1356976,1376441,1376459,1414712,1414731,1419380,1419400,1442975,1442995,1447945,1447965,1448319,1448338,1478757,1478775,1480079,1480100,1494810,1494830,1496209,1496227,1506084,1506103,1509383,1509404,1516317,1516336,1566080,1566100,1568027,1568047,1682327,1682346,1690052,1690072,1703771,1703790,1782991,1783015,1791541,1791561,1796229,1796250,1810010,1810029,1823741,1823762,1828817,1828838,1862494,1862515,1885416,1885435,1898645,1898674,1905397,1905416,1907119,1907138,1932629,1932647,1934062,1934080,1937823,1937842,1968351,1968371,1977781,1977799,1978419,1978438}'::int[])) F0 CROSS JOIN (
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment"
FROM "supplier" AS F0
WHERE (F0."s_suppkey" <@ '{437,438,2759,2760,3440,3441,5414,5415,6085,6086,6373,6374,8875,8876,8973,8974,9389,9390,9762,9763,10019,10020,10072,10073,11713,11714,12148,12149,12543,12544,12588,12589,12649,12650,16111,16112,16553,16554,16715,16716,17795,17796,18681,18682,19177,19178,19945,19946,20657,20658,20982,20983,21254,21255,22497,22498,22993,22994,24509,24510,24757,24758,27835,27836,28113,28114,28803,28804,28837,28838,29047,29048,29961,29962,30084,30085,30124,30125,30306,30307,31456,31457,31587,31588,32645,32646,34097,34098,34645,34646,34881,34882,36718,36719,36819,36820,37153,37154,37829,37830,39017,39018,40086,40087,40624,40625,41044,41045,42253,42254,42566,42567,42667,42668,42994,42995,43082,43083,44409,44410,45738,45739,46552,46553,48337,48338,48701,48702,50457,50458,51485,51486,52771,52772,53117,53118,53478,53479,53855,53856,55123,55124,57380,57381,58391,58392,59082,59083,59419,59420,59434,59435,60094,60095,62507,62508,62848,62849,62925,62926,64630,64631,65102,65103,66053,66054,66352,66353,66602,66603,67392,67393,67675,67676,68361,68362,68671,68672,69961,69962,71253,71254,71563,71564,72260,72261,72517,72518,73719,73720,73781,73782,74260,74261,75467,75468,75736,75737,78281,78282,78873,78874,79045,79046,80282,80283,81446,81447,81977,81978,82184,82185,82683,82684,82995,82996,83261,83262,84877,84878,85431,85432,87143,87144,87930,87931,89681,89682,89770,89771,90097,90098,91096,91097,91551,91552,91709,91710,92590,92591,94826,94827,95972,95973,96830,96831,97316,97317,99527,99528,99650,99651}'::int[])) F1)) F0 CROSS JOIN "nation" AS F1)) F0 CROSS JOIN "region" AS F1)) F0
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
WHERE (F0."p_partkey" <@ '{12580,12600,59420,59440,124240,124260,140620,140640,142240,142260,154040,154060,164000,164020,170960,170980,192380,192400,228820,228840,272300,272320,284860,284880,291540,291560,355100,355120,380060,380080,395640,395660,397240,397260,428100,428120,441040,441060,483960,483980,494160,494180,508380,508400,511700,511720,512900,512920,515080,515100,556360,556380,556440,556460,556560,556580,562120,562140,568660,568680,599740,599760,602740,602760,609080,609100,621800,621820,624500,624520,633840,633860,645720,645740,650720,650740,667780,667800,691700,691720,754920,754940,759620,759640,761780,761800,778280,778300,817640,817660,824620,824640,894920,894940,916020,916040,992540,992560,1000420,1000440,1095960,1095980,1097480,1097500,1110060,1110080,1121540,1121560,1162620,1162640,1188980,1189000,1217540,1217560,1234720,1234740,1253060,1253080,1258240,1258260,1280280,1280300,1289580,1289600,1339640,1339660,1341580,1341600,1356960,1356980,1376440,1376460,1414720,1414740,1419380,1419400,1442980,1443000,1447940,1447960,1448320,1448340,1478760,1478780,1480080,1480100,1494820,1494840,1496200,1496220,1506080,1506100,1509380,1509400,1516320,1516340,1566080,1566100,1568020,1568040,1682320,1682340,1690040,1690060,1703780,1703800,1782980,1783000,1791540,1791560,1796220,1796240,1810000,1810020,1823740,1823760,1828820,1828840,1862500,1862520,1885420,1885440,1898660,1898680,1905400,1905420,1907120,1907140,1932640,1932660,1934060,1934080,1937820,1937840,1968360,1968380,1977780,1977800,1978420,1978440}'::int[])) F0 CROSS JOIN (
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment"
FROM "supplier" AS F0
WHERE (F0."s_suppkey" <@ '{437,438,3440,3441,5414,5415,6085,6086,6373,6374,8875,8876,8973,8974,9762,9763,10019,10020,11713,11714,12588,12589,12649,12650,16553,16554,16715,16716,17795,17796,19177,19178,19945,19946,20657,20658,20982,20983,21254,21255,22993,22994,24757,24758,27835,27836,28113,28114,28803,28804,28837,28838,29047,29048,29961,29962,30084,30085,30124,30125,30306,30307,31587,31588,34097,34098,34645,34646,34881,34882,36819,36820,37153,37154,39017,39018,40624,40625,42253,42254,42566,42567,42667,42668,42994,42995,43082,43083,44409,44410,45738,45739,46552,46553,48337,48338,51485,51486,52771,52772,55123,55124,57380,57381,58391,58392,59082,59083,59419,59420,59434,59435,60094,60095,62507,62508,62848,62849,62925,62926,64630,64631,65102,65103,66053,66054,66352,66353,66602,66603,67392,67393,68361,68362,68671,68672,71253,71254,72260,72261,72517,72518,73719,73720,73781,73782,74260,74261,75736,75737,78281,78282,81446,81447,81977,81978,82184,82185,82683,82684,82995,82996,83261,83262,85431,85432,89681,89682,89770,89771,90097,90098,91096,91097,94826,94827,96830,96831,97316,97317,99527,99528,99650,99651}'::int[])) F1)) F0 CROSS JOIN (
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment"
FROM "partsupp" AS F0
WHERE (F0."ps_partkey" <@ '{12584,12603,59422,59444,124249,124275,140616,140634,142249,142268,154034,154053,163994,164014,170965,170984,192371,192389,228826,228845,272307,272325,284876,284897,291539,291559,355107,355129,380073,380092,395648,395669,397233,397254,428109,428129,441048,441067,483963,483984,494164,494184,508364,508383,511687,511714,512907,512931,515067,515094,556349,556369,556429,556449,556571,556591,562124,562142,568664,568692,599739,599759,602745,602765,609072,609092,621793,621813,624498,624518,633841,633861,645722,645742,650729,650747,667770,667789,691701,691721,754929,754949,759617,759636,761788,761808,778266,778287,817642,817662,824607,824627,894925,894944,916034,916053,992535,992553,1000430,1000450,1095952,1095972,1097469,1097489,1110069,1110089,1121525,1121546,1162609,1162628,1188982,1189007,1217553,1217573,1234718,1234737,1253068,1253088,1258243,1258263,1280262,1280283,1289584,1289606,1339646,1339666,1341586,1341606,1356956,1356976,1376441,1376459,1414712,1414731,1419380,1419400,1442975,1442995,1447945,1447965,1448319,1448338,1478757,1478775,1480079,1480100,1494810,1494830,1496209,1496227,1506084,1506103,1509383,1509404,1516317,1516336,1566080,1566100,1568027,1568047,1682327,1682346,1690052,1690072,1703771,1703790,1782991,1783015,1791541,1791561,1796229,1796250,1810010,1810029,1823741,1823762,1828817,1828838,1862494,1862515,1885416,1885435,1898645,1898674,1905397,1905416,1907119,1907138,1932629,1932647,1934062,1934080,1937823,1937842,1968351,1968371,1977781,1977799,1978419,1978438}'::int[])) F1)) F0 CROSS JOIN "nation" AS F1)) F0 CROSS JOIN "region" AS F1)) F0 CROSS JOIN (
SELECT F0."AGGR_0" AS "min_supplycost", F0."GROUP_0" AS "ps_partkey"
FROM (SELECT * FROM _temp_view_1) F0) F1)) F0
WHERE (((((((((F0."p_partkey" = F0."ps_partkey") and (F0."s_suppkey" = F0."ps_suppkey")) and (F0."p_size" = 15)) and (F0."p_type" like '%BRASS')) and (F0."s_nationkey" = F0."n_nationkey")) and (F0."n_regionkey" = F0."r_regionkey")) and (F0."r_name" = 'EUROPE')) and (F0."ps_supplycost" = F0."min_supplycost")) and (F0."p_partkey" = F0."ps_partkey1")))
SELECT F0."s_acctbal" AS "s_acctbal", F0."s_name" AS "s_name", F0."n_name" AS "n_name", F0."p_partkey" AS "p_partkey", F0."p_mfgr" AS "p_mfgr", F0."s_address" AS "s_address", F0."s_phone" AS "s_phone", F0."s_comment" AS "s_comment"
FROM (
SELECT F0."s_acctbal" AS "s_acctbal", F0."s_name" AS "s_name", F0."n_name" AS "n_name", F0."p_partkey" AS "p_partkey", F0."p_mfgr" AS "p_mfgr", F0."s_address" AS "s_address", F0."s_phone" AS "s_phone", F0."s_comment" AS "s_comment"
FROM (SELECT * FROM _temp_view_0) F0
ORDER BY F0."s_acctbal" DESC NULLS LAST, F0."n_name" ASC NULLS LAST, F0."s_name" ASC NULLS LAST, F0."p_partkey" ASC NULLS LAST) F0
LIMIT 100;
