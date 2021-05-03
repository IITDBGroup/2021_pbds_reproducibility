SELECT set_bits(F0."PROV_part1")::bit(400) AS "PROV_part1", set_bits(F0."PROV_supplier1")::bit(400) AS "PROV_supplier1", set_bits(F0."PROV_partsupp1")::bit(400) AS "PROV_partsupp1", fast_bit_or(F0."PROV_partsupp2") AS "PROV_partsupp2"
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
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", binary_search_array_pos('{1,5160,10418,15412,19988,25111,29765,34424,39441,44435,49763,54730,59727,64681,69809,74764,79839,84805,89978,94872,99612,104924,109321,114588,119778,125213,130228,135533,140480,145088,150161,155060,160248,165266,170200,175210,180438,184753,189677,194782,199872,204883,209935,214790,219391,224315,229709,234488,239552,244614,249695,254917,260142,264996,269471,274154,278828,284179,289434,294435,298631,303417,308938,313907,318982,324282,329133,334094,339235,344445,349474,355079,360422,365347,370917,375777,380571,385614,390839,396294,401587,406248,411117,415667,420090,425456,430508,435029,439708,444597,450020,454602,459412,464495,469798,474511,479181,484226,489141,494046,499319,504559,509848,514456,518899,523660,528441,533476,538490,543244,548417,553202,558236,563506,568574,573510,578212,582924,587604,592649,597511,602438,607282,612326,617445,622453,627164,632860,637683,643001,648604,653454,658482,663166,668357,673730,679116,684019,689279,694497,699535,704613,709722,714823,720206,725143,730430,736122,741226,746177,751132,755911,760935,766448,771898,776866,781812,786987,791506,796096,801118,806620,811617,816373,821166,825920,831219,836573,841456,846915,852333,857114,862178,867029,871473,875851,881130,886228,891260,896341,901058,905958,910806,915634,920685,925638,930531,935438,940698,945558,950604,955685,961072,966281,970797,976122,981555,986321,990868,995775,1000715,1006007,1011397,1016243,1021722,1026563,1031730,1036679,1041848,1046738,1051431,1056188,1061477,1066147,1071054,1075990,1081041,1085650,1090549,1095628,1100387,1105584,1110545,1114911,1120167,1125714,1130926,1135893,1140897,1145457,1149882,1154977,1159900,1164533,1169719,1175021,1179990,1184991,1189969,1194768,1200089,1205143,1209832,1215345,1219925,1224844,1229760,1234856,1239816,1244809,1249848,1254927,1260206,1265606,1270677,1275409,1280602,1285658,1290378,1295169,1300288,1304903,1310067,1315268,1320213,1324740,1329171,1334173,1338951,1343614,1348455,1353546,1358548,1363465,1368590,1373103,1377763,1382920,1387655,1392744,1397829,1403221,1408293,1413088,1418040,1422997,1427641,1432289,1437315,1442197,1447206,1451943,1457057,1461948,1466877,1471982,1476895,1481824,1487035,1492121,1497220,1502346,1507227,1512041,1517077,1522687,1528301,1533327,1538437,1543588,1548273,1553008,1557905,1563035,1568252,1573028,1578335,1582941,1588384,1593273,1597896,1602524,1606958,1611826,1616417,1621186,1625734,1631018,1636382,1641303,1646241,1651837,1656524,1661781,1667030,1671748,1676993,1682236,1687323,1692376,1697166,1701600,1706617,1711464,1716332,1721384,1726782,1731491,1736358,1741272,1746775,1751721,1756951,1762167,1767414,1772232,1777129,1782099,1787311,1792510,1797666,1802278,1807365,1811893,1817057,1821605,1826671,1832270,1837251,1841750,1846976,1851671,1856574,1861562,1866939,1871644,1876308,1880963,1886177,1890936,1896198,1901240,1906426,1911664,1917004,1922185,1927636,1933090,1938298,1943431,1948330,1953300,1958764,1964274,1969350,1974274,1979177,1984379,1990105,1994930,2000001}', F0."p_partkey")- 1 AS "PROV_part1"
FROM "part" AS F0) F0 CROSS JOIN (
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", binary_search_array_pos('{1,250,500,750,1000,1250,1500,1750,2000,2250,2500,2750,3000,3250,3500,3750,4000,4250,4500,4750,5000,5250,5500,5750,6000,6250,6500,6750,7000,7250,7500,7750,8000,8250,8500,8750,9000,9250,9500,9750,10000,10250,10500,10750,11000,11250,11500,11750,12000,12250,12500,12750,13000,13250,13500,13750,14000,14250,14500,14750,15000,15250,15500,15750,16000,16250,16500,16750,17000,17250,17500,17750,18000,18250,18500,18750,19000,19250,19500,19750,20000,20250,20500,20750,21000,21250,21500,21750,22000,22250,22500,22750,23000,23250,23500,23750,24000,24250,24500,24750,25000,25250,25500,25750,26000,26250,26500,26750,27000,27250,27500,27750,28000,28250,28500,28750,29000,29250,29500,29750,30000,30250,30500,30750,31000,31250,31500,31750,32000,32250,32500,32750,33000,33250,33500,33750,34000,34250,34500,34750,35000,35250,35500,35750,36000,36250,36500,36750,37000,37250,37500,37750,38000,38250,38500,38750,39000,39250,39500,39750,40000,40250,40500,40750,41000,41250,41500,41750,42000,42250,42500,42750,43000,43250,43500,43750,44000,44250,44500,44750,45000,45250,45500,45750,46000,46250,46500,46750,47000,47250,47500,47750,48000,48250,48500,48750,49000,49250,49500,49750,50000,50250,50500,50750,51000,51250,51500,51750,52000,52250,52500,52750,53000,53250,53500,53750,54000,54250,54500,54750,55000,55250,55500,55750,56000,56250,56500,56750,57000,57250,57500,57750,58000,58250,58500,58750,59000,59250,59500,59750,60000,60250,60500,60750,61000,61250,61500,61750,62000,62250,62500,62750,63000,63250,63500,63750,64000,64250,64500,64750,65000,65250,65500,65750,66000,66250,66500,66750,67000,67250,67500,67750,68000,68250,68500,68750,69000,69250,69500,69750,70000,70250,70500,70750,71000,71250,71500,71750,72000,72250,72500,72750,73000,73250,73500,73750,74000,74250,74500,74750,75000,75250,75500,75750,76000,76250,76500,76750,77000,77250,77500,77750,78000,78250,78500,78750,79000,79250,79500,79750,80000,80250,80500,80750,81000,81250,81500,81750,82000,82250,82500,82750,83000,83250,83500,83750,84000,84250,84500,84750,85000,85250,85500,85750,86000,86250,86500,86750,87000,87250,87500,87750,88000,88250,88500,88750,89000,89250,89500,89750,90000,90250,90500,90750,91000,91250,91500,91750,92000,92250,92500,92750,93000,93250,93500,93750,94000,94250,94500,94750,95000,95250,95500,95750,96000,96250,96500,96750,97000,97250,97500,97750,98000,98250,98500,98750,99000,99250,99500,99750,100001}', F0."s_suppkey")- 1 AS "PROV_supplier1"
FROM "supplier" AS F0) F1)) F0 CROSS JOIN (
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", binary_search_array_pos('{1,5221,10218,15463,21448,26952,32600,37870,42934,48091,54009,59663,65274,69856,75036,80007,85883,91263,97477,103036,108188,113482,119757,124937,130489,136302,141516,146573,151733,157013,162207,167191,172997,177838,182966,187363,192219,196778,202281,207645,212230,217503,221838,226978,231854,237285,241719,246450,251755,257358,262000,267176,271740,276390,281183,286414,291355,296244,300838,305570,310263,315082,320174,324680,329456,333907,339271,344539,349624,354313,359366,364386,369563,375341,380615,386082,390743,395772,401079,406033,410791,414808,420096,425038,430684,435704,440466,445948,451043,455867,460881,466047,470927,475430,480948,485355,490452,495715,500407,505562,510809,515550,520487,525372,530248,535661,540290,545319,550271,555116,560102,565184,569995,574548,579268,584315,589220,594175,598938,603874,608699,613957,619088,623927,629115,633502,638723,643519,647830,652187,656677,661875,667264,672133,676331,681701,686585,691590,696564,701334,706484,711675,716413,721440,726275,731557,736439,741275,746736,751000,755934,760297,765489,770418,775056,779303,784864,789849,793826,798947,803662,808278,813607,818992,823838,828732,833559,838461,843434,848216,853588,858841,864369,869349,874551,878727,883757,888273,892838,898075,902891,907368,912783,917366,922532,927115,931944,937479,942515,947512,952876,957899,962848,967687,972314,977891,982987,988054,993269,998234,1003051,1007877,1012910,1018179,1023117,1028611,1033446,1038313,1043462,1048664,1054111,1059170,1064192,1069062,1074215,1079238,1084449,1089709,1095303,1099832,1104607,1109943,1114939,1119700,1124677,1129501,1134294,1139477,1144504,1148986,1153787,1158423,1163847,1168869,1174025,1178875,1184151,1188970,1194369,1198901,1203528,1209137,1214098,1219399,1224495,1229587,1234325,1239500,1244581,1250295,1255201,1260095,1264949,1269698,1274884,1280227,1285577,1290277,1295269,1300095,1304765,1309454,1314439,1319710,1324501,1329612,1334218,1338908,1343970,1349062,1354194,1359272,1364151,1369635,1375197,1380317,1385406,1390153,1394937,1400163,1404967,1410103,1414784,1419601,1424829,1429702,1434938,1439924,1445323,1450619,1455253,1460675,1465432,1470673,1476096,1481395,1486752,1491842,1496540,1502155,1507658,1512426,1516890,1522126,1527068,1532223,1537253,1542170,1546632,1552160,1557036,1562373,1567682,1572606,1577424,1582294,1587338,1592120,1596791,1601718,1606768,1611116,1615646,1620512,1625312,1630033,1635614,1640440,1644880,1649581,1654560,1659376,1664184,1669026,1673461,1678577,1683460,1688484,1693618,1698828,1704274,1709006,1713945,1719000,1723837,1728974,1733859,1738747,1743653,1747898,1752724,1757743,1762612,1767771,1772700,1777893,1782761,1787948,1793238,1797875,1803098,1808107,1813044,1818518,1823345,1828043,1833009,1837320,1842228,1846814,1852069,1856804,1861770,1867624,1873019,1877972,1882801,1888211,1893713,1898455,1903477,1908186,1912870,1917158,1922079,1926784,1931553,1936621,1941419,1946558,1951486,1956485,1961321,1966024,1971239,1975958,1981185,1985725,1990671,1995174,2000001}', F0."ps_partkey")- 1 AS "PROV_partsupp1"
FROM "partsupp" AS F0) F1)) F0 CROSS JOIN "nation" AS F1)) F0 CROSS JOIN "region" AS F1)) F0 CROSS JOIN (
SELECT F0."AGGR_0" AS "min_supplycost", F0."GROUP_0" AS "ps_partkey", F0."PROV_partsupp2" AS "PROV_partsupp2"
FROM (
SELECT min(F0."ps_supplycost") AS "AGGR_0", F0."ps_partkey" AS "GROUP_0", set_bits(F0."PROV_partsupp2")::bit(400) AS "PROV_partsupp2"
FROM (
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F0."n_nationkey" AS "n_nationkey", F0."n_name" AS "n_name", F0."n_regionkey" AS "n_regionkey", F0."n_comment" AS "n_comment", F1."r_regionkey" AS "r_regionkey", F1."r_name" AS "r_name", F1."r_comment" AS "r_comment", F0."PROV_partsupp2" AS "PROV_partsupp2"
FROM ((
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F1."n_nationkey" AS "n_nationkey", F1."n_name" AS "n_name", F1."n_regionkey" AS "n_regionkey", F1."n_comment" AS "n_comment", F0."PROV_partsupp2" AS "PROV_partsupp2"
FROM ((
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F1."s_suppkey" AS "s_suppkey", F1."s_name" AS "s_name", F1."s_address" AS "s_address", F1."s_nationkey" AS "s_nationkey", F1."s_phone" AS "s_phone", F1."s_acctbal" AS "s_acctbal", F1."s_comment" AS "s_comment", F0."PROV_partsupp2" AS "PROV_partsupp2"
FROM ((
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", binary_search_array_pos('{1,5221,10218,15463,21448,26952,32600,37870,42934,48091,54009,59663,65274,69856,75036,80007,85883,91263,97477,103036,108188,113482,119757,124937,130489,136302,141516,146573,151733,157013,162207,167191,172997,177838,182966,187363,192219,196778,202281,207645,212230,217503,221838,226978,231854,237285,241719,246450,251755,257358,262000,267176,271740,276390,281183,286414,291355,296244,300838,305570,310263,315082,320174,324680,329456,333907,339271,344539,349624,354313,359366,364386,369563,375341,380615,386082,390743,395772,401079,406033,410791,414808,420096,425038,430684,435704,440466,445948,451043,455867,460881,466047,470927,475430,480948,485355,490452,495715,500407,505562,510809,515550,520487,525372,530248,535661,540290,545319,550271,555116,560102,565184,569995,574548,579268,584315,589220,594175,598938,603874,608699,613957,619088,623927,629115,633502,638723,643519,647830,652187,656677,661875,667264,672133,676331,681701,686585,691590,696564,701334,706484,711675,716413,721440,726275,731557,736439,741275,746736,751000,755934,760297,765489,770418,775056,779303,784864,789849,793826,798947,803662,808278,813607,818992,823838,828732,833559,838461,843434,848216,853588,858841,864369,869349,874551,878727,883757,888273,892838,898075,902891,907368,912783,917366,922532,927115,931944,937479,942515,947512,952876,957899,962848,967687,972314,977891,982987,988054,993269,998234,1003051,1007877,1012910,1018179,1023117,1028611,1033446,1038313,1043462,1048664,1054111,1059170,1064192,1069062,1074215,1079238,1084449,1089709,1095303,1099832,1104607,1109943,1114939,1119700,1124677,1129501,1134294,1139477,1144504,1148986,1153787,1158423,1163847,1168869,1174025,1178875,1184151,1188970,1194369,1198901,1203528,1209137,1214098,1219399,1224495,1229587,1234325,1239500,1244581,1250295,1255201,1260095,1264949,1269698,1274884,1280227,1285577,1290277,1295269,1300095,1304765,1309454,1314439,1319710,1324501,1329612,1334218,1338908,1343970,1349062,1354194,1359272,1364151,1369635,1375197,1380317,1385406,1390153,1394937,1400163,1404967,1410103,1414784,1419601,1424829,1429702,1434938,1439924,1445323,1450619,1455253,1460675,1465432,1470673,1476096,1481395,1486752,1491842,1496540,1502155,1507658,1512426,1516890,1522126,1527068,1532223,1537253,1542170,1546632,1552160,1557036,1562373,1567682,1572606,1577424,1582294,1587338,1592120,1596791,1601718,1606768,1611116,1615646,1620512,1625312,1630033,1635614,1640440,1644880,1649581,1654560,1659376,1664184,1669026,1673461,1678577,1683460,1688484,1693618,1698828,1704274,1709006,1713945,1719000,1723837,1728974,1733859,1738747,1743653,1747898,1752724,1757743,1762612,1767771,1772700,1777893,1782761,1787948,1793238,1797875,1803098,1808107,1813044,1818518,1823345,1828043,1833009,1837320,1842228,1846814,1852069,1856804,1861770,1867624,1873019,1877972,1882801,1888211,1893713,1898455,1903477,1908186,1912870,1917158,1922079,1926784,1931553,1936621,1941419,1946558,1951486,1956485,1961321,1966024,1971239,1975958,1981185,1985725,1990671,1995174,2000001}', F0."ps_partkey")- 1 AS "PROV_partsupp2"
FROM "partsupp" AS F0) F0 CROSS JOIN "supplier" AS F1)) F0 CROSS JOIN "nation" AS F1)) F0 CROSS JOIN "region" AS F1)) F0
WHERE ((((F0."s_suppkey" = F0."ps_suppkey") and (F0."s_nationkey" = F0."n_nationkey")) and (F0."n_regionkey" = F0."r_regionkey")) and (F0."r_name" = 'EUROPE'))
GROUP BY F0."ps_partkey") F0) F1)) F0
WHERE (((((((((F0."p_partkey" = F0."ps_partkey") and (F0."s_suppkey" = F0."ps_suppkey")) and (F0."p_size" = 15)) and (F0."p_type" like '%BRASS')) and (F0."s_nationkey" = F0."n_nationkey")) and (F0."n_regionkey" = F0."r_regionkey")) and (F0."r_name" = 'EUROPE')) and (F0."ps_supplycost" = F0."min_supplycost")) and (F0."p_partkey" = F0."ps_partkey1"))) F0 order by s_acctbal desc, n_name, s_name, p_partkey) F0
limit 100) F0;
