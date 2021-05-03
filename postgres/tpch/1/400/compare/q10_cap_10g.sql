SELECT fast_bit_or(F0."PROV_customer1") AS "PROV_customer1", fast_bit_or(F0."PROV_orders1"::bit(400)) AS "PROV_orders1", fast_bit_or(F0."PROV_lineitem1") AS "PROV_lineitem1"
FROM (
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."revenue" AS "revenue", F0."c_acctbal" AS "c_acctbal", F0."n_name" AS "n_name", F0."c_address" AS "c_address", F0."c_phone" AS "c_phone", F0."c_comment" AS "c_comment", F0."PROV_customer1" AS "PROV_customer1", F0."PROV_orders1" AS "PROV_orders1", F0."PROV_lineitem1" AS "PROV_lineitem1"
FROM (
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."revenue" AS "revenue", F0."c_acctbal" AS "c_acctbal", F0."n_name" AS "n_name", F0."c_address" AS "c_address", F0."c_phone" AS "c_phone", F0."c_comment" AS "c_comment", F0."PROV_customer1" AS "PROV_customer1", F0."PROV_orders1" AS "PROV_orders1", F0."PROV_lineitem1" AS "PROV_lineitem1"
FROM (
SELECT F0."GROUP_0" AS "c_custkey", F0."GROUP_1" AS "c_name", F0."AGGR_0" AS "revenue", F0."GROUP_2" AS "c_acctbal", F0."GROUP_4" AS "n_name", F0."GROUP_5" AS "c_address", F0."GROUP_3" AS "c_phone", F0."GROUP_6" AS "c_comment", F0."PROV_customer1" AS "PROV_customer1", F0."PROV_orders1" AS "PROV_orders1", F0."PROV_lineitem1" AS "PROV_lineitem1"
FROM (
SELECT sum((F0."l_extendedprice" * (1 - F0."l_discount"))) AS "AGGR_0", F0."c_custkey" AS "GROUP_0", F0."c_name" AS "GROUP_1", F0."c_acctbal" AS "GROUP_2", F0."c_phone" AS "GROUP_3", F0."n_name" AS "GROUP_4", F0."c_address" AS "GROUP_5", F0."c_comment" AS "GROUP_6", set_bits(F0."PROV_customer1")::bit(400) AS "PROV_customer1", set_bits(F0."PROV_orders1")::bit(400) AS "PROV_orders1", set_bits(F0."PROV_lineitem1")::bit(400) AS "PROV_lineitem1"
FROM (
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment", F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", F1."n_nationkey" AS "n_nationkey", F1."n_name" AS "n_name", F1."n_regionkey" AS "n_regionkey", F1."n_comment" AS "n_comment", F0."PROV_customer1" AS "PROV_customer1", F0."PROV_orders1" AS "PROV_orders1", F0."PROV_lineitem1" AS "PROV_lineitem1"
FROM ((
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment", F1."l_orderkey" AS "l_orderkey", F1."l_partkey" AS "l_partkey", F1."l_suppkey" AS "l_suppkey", F1."l_linenumber" AS "l_linenumber", F1."l_quantity" AS "l_quantity", F1."l_extendedprice" AS "l_extendedprice", F1."l_discount" AS "l_discount", F1."l_tax" AS "l_tax", F1."l_returnflag" AS "l_returnflag", F1."l_linestatus" AS "l_linestatus", F1."l_shipdate" AS "l_shipdate", F1."l_commitdate" AS "l_commitdate", F1."l_receiptdate" AS "l_receiptdate", F1."l_shipinstruct" AS "l_shipinstruct", F1."l_shipmode" AS "l_shipmode", F1."l_comment" AS "l_comment", F0."PROV_customer1" AS "PROV_customer1", F0."PROV_orders1" AS "PROV_orders1", F1."PROV_lineitem1" AS "PROV_lineitem1"
FROM ((
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", F1."o_orderkey" AS "o_orderkey", F1."o_custkey" AS "o_custkey", F1."o_orderstatus" AS "o_orderstatus", F1."o_totalprice" AS "o_totalprice", F1."o_orderdate" AS "o_orderdate", F1."o_orderpriority" AS "o_orderpriority", F1."o_clerk" AS "o_clerk", F1."o_shippriority" AS "o_shippriority", F1."o_comment" AS "o_comment", F0."PROV_customer1" AS "PROV_customer1", F1."PROV_orders1" AS "PROV_orders1"
FROM ((
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", binary_search_array_pos('{1,3530,7305,10855,14709,18761,22292,25941,29565,33544,37877,41260,44983,48755,52745,56284,60351,64519,68348,72054,75631,79427,82904,86460,89974,93744,96999,100659,104053,107953,111567,115517,119040,122760,126182,130018,133675,137651,141251,145113,148746,152409,156060,159608,163528,167221,170592,174383,178065,181576,185067,189184,192689,196214,200021,203422,207221,211294,214878,218519,222180,225821,229826,233331,237335,241022,244833,248841,252552,256284,259874,263902,267639,271619,275164,278369,282297,286158,289668,293434,297601,301064,304951,308440,312435,315886,319568,323141,326935,330520,334168,337785,341128,345010,348513,352385,356086,359809,363450,367367,371312,375301,378940,382682,386532,389998,393737,397022,400636,404193,408065,411742,415257,419448,423280,427121,431277,434920,438683,442255,445907,449859,453375,457101,460680,464006,467794,471759,475100,479037,482907,486578,490223,493962,497691,501604,505570,509187,513264,516982,520803,524752,528560,532569,536197,540224,543749,547474,550970,554838,558731,562371,565968,569844,573410,577447,581265,585101,588600,592302,596160,599995,604008,608034,612022,615912,619944,623579,627467,631537,635122,638800,643054,646663,650302,654034,657836,661754,665250,668909,672786,676235,679966,683690,687464,691474,695653,699651,703587,707149,710536,713925,717830,721792,725387,729145,733008,736648,740140,743647,747569,751272,755148,758870,762432,766291,770291,774212,777877,781502,785735,789341,793180,796596,800372,804543,808443,811790,815474,819049,822815,827029,830761,834330,838268,841796,845367,849277,853187,856940,860784,864551,868023,871493,875044,878719,882636,886768,890772,894435,898427,902462,906410,910134,913698,916978,920998,925036,928569,932797,936222,939567,943042,946585,950688,954439,958697,962301,966125,969941,973737,977577,981082,984655,988738,992263,995697,999489,1003192,1006903,1010606,1014138,1017963,1021891,1025574,1029407,1033193,1036794,1040695,1044687,1048492,1051998,1055729,1059602,1063545,1067749,1071307,1075289,1079103,1082535,1086098,1089505,1093015,1096718,1100769,1104237,1108005,1111894,1115728,1119333,1122998,1126800,1130529,1134519,1138590,1142526,1145926,1149588,1153895,1157748,1161653,1165741,1169533,1173644,1177257,1181213,1184733,1188587,1192379,1196345,1200131,1203686,1207560,1211084,1215029,1218478,1222197,1225706,1229378,1232911,1237061,1240899,1244567,1248338,1252489,1256375,1260252,1263854,1267804,1271604,1275331,1279259,1282900,1286619,1290477,1294130,1297910,1301597,1305688,1309798,1313043,1316817,1320326,1324366,1328024,1331671,1335017,1339021,1343044,1346585,1350346,1353845,1357621,1361222,1364629,1368231,1372162,1375942,1379698,1383512,1387449,1391262,1394866,1398695,1402310,1406047,1409731,1413413,1417201,1421028,1424866,1429039,1433100,1436752,1440201,1443670,1447500,1451254,1455403,1459115,1462661,1466436,1470081,1473865,1477765,1481303,1485113,1488914,1492562,1496398,1500001}', F0."c_custkey")- 1 AS "PROV_customer1"
FROM "customer" AS F0) F0 CROSS JOIN (
SELECT F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment", binary_search_array_pos('{1,167845,334944,471969,616037,772578,927458,1080704,1217766,1363655,1511558,1669605,1800384,1956675,2099459,2255495,2397541,2549442,2702215,2861984,3029989,3176290,3343170,3483559,3634817,3779493,3911431,4074439,4225028,4385568,4545541,4714531,4863523,5005638,5135557,5280997,5400224,5540772,5684994,5854437,6030434,6168039,6301698,6457826,6600518,6755878,6891235,7053350,7205184,7362146,7500070,7638213,7783460,7929216,8074273,8203106,8377766,8509568,8663205,8814850,8969892,9110469,9269602,9425863,9586117,9769540,9933858,10079909,10236357,10394756,10548037,10701953,10849027,11004707,11134624,11288293,11445478,11595968,11746086,11895621,12041989,12196930,12338533,12500613,12646628,12792423,12947748,13089253,13259488,13413254,13547366,13684162,13841253,14000292,14144160,14281414,14428256,14592100,14732225,14869862,15006849,15151841,15280771,15433508,15571558,15735552,15895137,16046119,16188359,16340581,16479168,16641986,16788454,16954915,17113351,17273671,17410309,17560323,17693187,17844230,18004068,18145414,18292961,18447653,18584741,18762054,18908869,19064837,19222758,19386913,19529504,19680992,19833858,19983363,20141159,20290880,20436070,20597155,20750496,20889862,21039940,21177504,21317664,21479653,21638566,21781220,21917664,22069056,22215813,22368422,22512577,22657891,22816389,22960325,23110241,23275489,23418432,23550754,23724231,23866405,24030853,24189570,24332038,24469445,24627908,24780901,24920231,25070307,25211043,25359431,25521824,25666086,25824896,25983653,26156870,26277409,26438758,26576839,26745862,26894086,27053126,27193638,27359269,27526565,27662656,27827813,27974723,28121888,28263489,28383943,28555782,28701795,28852801,28998023,29143876,29278532,29420421,29589760,29738467,29881702,30038535,30202468,30350562,30502498,30668805,30824611,30954757,31100294,31260487,31427648,31587748,31724164,31854147,31988325,32142688,32294567,32442182,32590022,32723461,32885093,33031527,33172611,33295781,33429220,33568835,33732130,33896739,34047715,34215494,34375489,34504772,34682754,34838599,35010470,35153254,35318818,35465282,35618881,35781889,35931141,36094112,36246497,36391108,36537543,36682374,36844384,37007874,37176868,37316224,37456260,37605474,37749184,37911495,38052610,38210660,38359077,38509895,38648165,38817313,38965158,39121696,39255874,39425798,39581059,39725251,39872803,40028962,40168673,40303905,40455942,40604806,40750818,40899394,41041827,41199106,41332995,41486149,41631552,41786246,41938118,42057605,42203077,42337153,42507364,42654178,42791302,42932674,43104582,43252549,43393956,43545029,43701954,43833700,43982048,44138212,44276738,44430756,44579136,44736769,44903972,45032353,45186496,45342181,45504486,45647555,45797731,45954279,46094146,46249573,46398339,46556416,46690081,46850311,47003907,47170533,47319652,47480070,47618693,47780580,47938787,48089728,48258406,48392448,48547264,48698208,48834307,49002787,49143398,49310019,49464769,49611301,49743911,49902784,50048262,50208166,50347618,50496289,50642022,50797731,50967780,51099430,51242439,51396768,51530980,51674727,51817158,51957667,52109348,52256514,52408642,52544227,52701860,52858983,53001219,53165666,53324455,53488900,53647044,53806406,53952995,54130279,54283367,54437252,54591621,54734532,54864742,55004551,55152384,55301575,55450242,55605601,55764256,55909509,56061508,56214914,56349319,56494978,56664164,56809987,56962435,57120802,57274080,57418178,57571618,57714916,57859557,57998914,58117191,58266400,58416838,58577696,58726017,58861383,58995239,59131297,59273249,59407652,59572325,59714246,59865255,60000001}', F0."o_orderkey")- 1 AS "PROV_orders1"
FROM "orders" AS F0) F1)) F0 CROSS JOIN (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", binary_search_array_pos('{1,145509,300710,469600,624737,782116,979072,1145892,1315492,1475649,1644771,1832001,1994565,2145991,2306183,2480292,2625699,2771909,2941632,3139237,3284706,3446919,3607812,3763168,3929250,4101798,4279041,4440930,4611234,4762242,4914213,5057252,5204454,5357667,5514368,5643140,5789763,5933696,6076935,6225350,6363009,6511074,6640709,6791366,6924422,7068768,7209633,7365634,7515299,7662149,7808099,7955046,8113216,8268004,8406340,8552706,8699617,8847265,8977472,9120481,9256135,9414628,9561344,9700901,9852867,9997506,10133760,10256609,10411430,10552934,10700676,10849382,10998979,11134435,11291203,11454945,11588802,11719745,11861479,12020836,12174694,12321607,12476801,12616804,12788583,12946724,13098406,13252487,13400803,13553829,13706944,13857319,14007138,14152640,14292227,14436548,14589475,14763398,14908737,15057221,15195907,15347938,15504896,15643940,15758659,15895714,16038756,16192641,16352711,16505569,16643363,16777249,16904615,17056162,17207008,17362661,17500097,17641926,17787013,17924644,18073763,18213091,18341413,18467235,18623300,18757863,18918528,19066055,19227718,19371239,19541092,19696834,19843586,19988544,20143911,20296390,20460640,20610402,20755205,20883268,21018241,21161188,21324739,21479137,21631584,21789222,21936067,22088039,22223366,22385153,22529732,22688000,22838722,22979137,23138433,23312966,23444097,23598535,23757029,23919909,24055968,24191335,24348422,24503140,24644836,24788131,24962342,25118530,25264422,25424166,25572903,25717921,25857826,26013639,26183074,26318242,26488261,26634918,26787268,26923015,27085127,27234880,27373539,27528545,27647461,27789767,27945383,28113317,28283681,28453187,28593830,28747650,28900003,29064579,29216295,29375714,29510946,29637923,29776036,29914212,30068228,30242882,30379429,30534240,30700963,30841314,30984929,31151175,31297921,31439042,31599042,31738464,31889281,32028231,32176614,32322084,32460998,32622948,32761541,32910726,33064323,33208230,33362500,33492166,33623527,33806055,33964327,34102051,34240486,34390566,34550822,34725093,34896704,35043008,35174816,35328451,35482595,35635297,35804487,35911717,36058279,36207746,36330694,36449060,36589318,36728198,36893760,37035168,37183237,37335079,37482593,37620196,37768836,37931814,38076066,38226913,38400802,38544035,38686823,38847172,39012099,39161412,39334465,39502915,39634660,39790337,39919685,40063940,40229030,40397158,40549157,40682471,40828352,40972227,41116773,41274368,41437607,41565890,41696930,41856615,42023555,42185314,42338566,42475271,42622661,42783715,42954305,43107303,43253089,43398019,43549349,43726309,43874243,44036099,44180807,44331653,44488069,44625058,44765346,44916096,45060801,45218279,45368581,45531586,45687491,45851110,46022240,46146272,46291108,46444994,46582785,46727297,46874786,47016774,47157062,47314560,47452832,47607938,47771397,47926305,48092007,48223973,48382080,48540807,48695298,48836902,48957733,49097824,49247585,49389187,49555014,49722500,49864133,49983813,50128804,50275553,50433537,50585379,50742818,50903328,51055079,51190053,51330592,51461762,51593922,51746371,51898017,52061061,52210563,52363207,52517765,52664547,52832320,52992768,53135170,53275621,53417187,53543556,53678691,53842054,53975781,54108866,54243618,54409122,54549862,54700929,54844769,54983393,55121634,55307586,55486979,55654821,55819911,55965922,56108039,56235105,56396866,56559782,56703234,56838592,56989479,57159687,57302117,57462532,57601479,57757062,57900448,58052289,58206054,58354438,58519812,58670278,58809250,58966720,59107778,59253317,59396576,59534977,59689382,59840321,60000001}', F0."l_orderkey")- 1 AS "PROV_lineitem1"
FROM "lineitem" AS F0) F1)) F0 CROSS JOIN "nation" AS F1)) F0
WHERE ((((((F0."c_custkey" = F0."o_custkey") and (F0."l_orderkey" = F0."o_orderkey")) and (F0."o_orderdate" >= to_date('1994-12-01', 'YYYY-MM-DD'))) and (F0."o_orderdate" < to_date('1995-03-01', 'YYYY-MM-DD'))) and (F0."l_returnflag" = 'R')) and (F0."c_nationkey" = F0."n_nationkey"))
GROUP BY F0."c_custkey", F0."c_name", F0."c_acctbal", F0."c_phone", F0."n_name", F0."c_address", F0."c_comment") F0) F0 order by revenue desc) F0
limit 20) F0;
