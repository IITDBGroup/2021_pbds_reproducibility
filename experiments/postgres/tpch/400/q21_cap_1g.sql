SELECT fast_bit_or(F0."PROV_supplier1"::bit(10000)) AS "PROV_supplier1", fast_bit_or(F0."PROV_lineitem1"::bit(10000)) AS "PROV_lineitem1"
FROM (
SELECT F0."s_name" AS "s_name", F0."numwait" AS "numwait", F0."PROV_supplier1" AS "PROV_supplier1", F0."PROV_lineitem1" AS "PROV_lineitem1"
FROM (
SELECT F0."s_name" AS "s_name", F0."numwait" AS "numwait", F0."PROV_supplier1" AS "PROV_supplier1", F0."PROV_lineitem1" AS "PROV_lineitem1"
FROM (
SELECT F0."GROUP_0" AS "s_name", F0."AGGR_0" AS "numwait", F0."PROV_supplier1" AS "PROV_supplier1", F0."PROV_lineitem1" AS "PROV_lineitem1"
FROM (
SELECT count(1) AS "AGGR_0", F0."s_name" AS "GROUP_0", set_bits(F0."PROV_supplier1")::bit(10000) AS "PROV_supplier1", fast_bit_or(F0."PROV_lineitem1"::bit(10000)) AS "PROV_lineitem1"
FROM (
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F0."l_orderkey" AS "l_orderkey", F0."l_suppkey" AS "l_suppkey", F0."l_receiptdate" AS "l_receiptdate", F0."l_commitdate" AS "l_commitdate", F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment", F1."n_nationkey" AS "n_nationkey", F1."n_name" AS "n_name", F1."n_regionkey" AS "n_regionkey", F1."n_comment" AS "n_comment", F0."PROV_supplier1" AS "PROV_supplier1", F0."PROV_lineitem1" AS "PROV_lineitem1"
FROM ((
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F0."l_orderkey" AS "l_orderkey", F0."l_suppkey" AS "l_suppkey", F0."l_receiptdate" AS "l_receiptdate", F0."l_commitdate" AS "l_commitdate", F1."o_orderkey" AS "o_orderkey", F1."o_custkey" AS "o_custkey", F1."o_orderstatus" AS "o_orderstatus", F1."o_totalprice" AS "o_totalprice", F1."o_orderdate" AS "o_orderdate", F1."o_orderpriority" AS "o_orderpriority", F1."o_clerk" AS "o_clerk", F1."o_shippriority" AS "o_shippriority", F1."o_comment" AS "o_comment", F0."PROV_supplier1" AS "PROV_supplier1", F0."PROV_lineitem1" AS "PROV_lineitem1"
FROM ((
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F1."l_orderkey" AS "l_orderkey", F1."l_suppkey" AS "l_suppkey", F1."l_receiptdate" AS "l_receiptdate", F1."l_commitdate" AS "l_commitdate", F0."PROV_supplier1" AS "PROV_supplier1", F1."PROV_lineitem1" AS "PROV_lineitem1"
FROM ((
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", binary_search_array_pos(ARRAY [1,25,50,75,100,125,150,175,200,225,250,275,300,325,350,375,400,425,450,475,500,525,550,575,600,625,650,675,700,725,750,775,800,825,850,875,900,925,950,975,1000,1025,1050,1075,1100,1125,1150,1175,1200,1225,1250,1275,1300,1325,1350,1375,1400,1425,1450,1475,1500,1525,1550,1575,1600,1625,1650,1675,1700,1725,1750,1775,1800,1825,1850,1875,1900,1925,1950,1975,2000,2025,2050,2075,2100,2125,2150,2175,2200,2225,2250,2275,2300,2325,2350,2375,2400,2425,2450,2475,2500,2525,2550,2575,2600,2625,2650,2675,2700,2725,2750,2775,2800,2825,2850,2875,2900,2925,2950,2975,3000,3025,3050,3075,3100,3125,3150,3175,3200,3225,3250,3275,3300,3325,3350,3375,3400,3425,3450,3475,3500,3525,3550,3575,3600,3625,3650,3675,3700,3725,3750,3775,3800,3825,3850,3875,3900,3925,3950,3975,4000,4025,4050,4075,4100,4125,4150,4175,4200,4225,4250,4275,4300,4325,4350,4375,4400,4425,4450,4475,4500,4525,4550,4575,4600,4625,4650,4675,4700,4725,4750,4775,4800,4825,4850,4875,4900,4925,4950,4975,5000,5025,5050,5075,5100,5125,5150,5175,5200,5225,5250,5275,5300,5325,5350,5375,5400,5425,5450,5475,5500,5525,5550,5575,5600,5625,5650,5675,5700,5725,5750,5775,5800,5825,5850,5875,5900,5925,5950,5975,6000,6025,6050,6075,6100,6125,6150,6175,6200,6225,6250,6275,6300,6325,6350,6375,6400,6425,6450,6475,6500,6525,6550,6575,6600,6625,6650,6675,6700,6725,6750,6775,6800,6825,6850,6875,6900,6925,6950,6975,7000,7025,7050,7075,7100,7125,7150,7175,7200,7225,7250,7275,7300,7325,7350,7375,7400,7425,7450,7475,7500,7525,7550,7575,7600,7625,7650,7675,7700,7725,7750,7775,7800,7825,7850,7875,7900,7925,7950,7975,8000,8025,8050,8075,8100,8125,8150,8175,8200,8225,8250,8275,8300,8325,8350,8375,8400,8425,8450,8475,8500,8525,8550,8575,8600,8625,8650,8675,8700,8725,8750,8775,8800,8825,8850,8875,8900,8925,8950,8975,9000,9025,9050,9075,9100,9125,9150,9175,9200,9225,9250,9275,9300,9325,9350,9375,9400,9425,9450,9475,9500,9525,9550,9575,9600,9625,9650,9675,9700,9725,9750,9775,9800,9825,9850,9875,9900,9925,9950,9975,10001], s_suppkey) - 1 AS "PROV_supplier1"
FROM "supplier" AS F0) F0 CROSS JOIN (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_suppkey" AS "l_suppkey", F0."l_receiptdate" AS "l_receiptdate", F0."l_commitdate" AS "l_commitdate", F0."PROV_lineitem1" AS "PROV_lineitem1"
FROM (
SELECT F0."GROUP_0" AS "l_orderkey", F0."GROUP_1" AS "l_suppkey", F0."GROUP_2" AS "l_receiptdate", F0."GROUP_3" AS "l_commitdate", F0."AGGR_0" AS "datebc", F0."PROV_lineitem1" AS "PROV_lineitem1"
FROM (
SELECT fast_bit_or((CASE  WHEN (F0."l_receiptdate1" > F0."l_commitdate1") THEN '1'::bit(1) ELSE '0'::bit(1) END)::bit(1)) AS "AGGR_0", F0."l_orderkey" AS "GROUP_0", F0."l_suppkey" AS "GROUP_1", F0."l_receiptdate" AS "GROUP_2", F0."l_commitdate" AS "GROUP_3", set_bits(F0."PROV_lineitem1")::bit(10000) AS "PROV_lineitem1"
FROM (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", F1."l_orderkey" AS "l_orderkey1", F1."l_partkey" AS "l_partkey1", F1."l_suppkey" AS "l_suppkey1", F1."l_linenumber" AS "l_linenumber1", F1."l_quantity" AS "l_quantity1", F1."l_extendedprice" AS "l_extendedprice1", F1."l_discount" AS "l_discount1", F1."l_tax" AS "l_tax1", F1."l_returnflag" AS "l_returnflag1", F1."l_linestatus" AS "l_linestatus1", F1."l_shipdate" AS "l_shipdate1", F1."l_commitdate" AS "l_commitdate1", F1."l_receiptdate" AS "l_receiptdate1", F1."l_shipinstruct" AS "l_shipinstruct1", F1."l_shipmode" AS "l_shipmode1", F1."l_comment" AS "l_comment1", F0."PROV_lineitem1" AS "PROV_lineitem1"
FROM ((
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", binary_search_array_pos(ARRAY [1,14948,29792,44807,59815,74918,89798,104609,119463,134467,149638,164423,179461,194593,209633,224709,239749,254851,270016,285250,300259,315205,330178,345287,360353,375329,390179,405223,420227,435207,450277,464964,479815,494947,509633,524517,539716,554727,569793,584644,599555,614498,629798,644898,659781,674883,689764,704772,719748,734660,749572,764417,779591,794528,809634,824550,839844,854883,869863,884804,899814,914822,929857,944743,959776,974850,990022,1005089,1020099,1035267,1050119,1065123,1080224,1095238,1110373,1125351,1140295,1155329,1170404,1185255,1200289,1215328,1230370,1245345,1260290,1275267,1290307,1305345,1320101,1335108,1350053,1365121,1380036,1395233,1410087,1425027,1440067,1455073,1470242,1485504,1500740,1515878,1530752,1545953,1560839,1575623,1590725,1605604,1620647,1635424,1650213,1665250,1680416,1695330,1710180,1725280,1740454,1755329,1770499,1785639,1800321,1815522,1830337,1845158,1859972,1874944,1889990,1904903,1919941,1935009,1949927,1964869,1979782,1994915,2009957,2025153,2040165,2055044,2070145,2085216,2100033,2114949,2130022,2145028,2160321,2175302,2190145,2205220,2220293,2235334,2250439,2265633,2280550,2295552,2310695,2325605,2340736,2355938,2370882,2385831,2400705,2415680,2430530,2445474,2460390,2475458,2490407,2505411,2520355,2535303,2550208,2565447,2580642,2595842,2610820,2626022,2641158,2656163,2671200,2686310,2701345,2716039,2730947,2745732,2760578,2775650,2790759,2805639,2820610,2835525,2850401,2865607,2880774,2895971,2910917,2925891,2940870,2955655,2970851,2985828,3000963,3015905,3030881,3045894,3060994,3075843,3090881,3105958,3121060,3136133,3151111,3165984,3181028,3195809,3210917,3225764,3240803,3255719,3270787,3285955,3300903,3315620,3330663,3345698,3360513,3375616,3390342,3405315,3420512,3435586,3450470,3465446,3480358,3495175,3510145,3525056,3539841,3554720,3569669,3584609,3599687,3614759,3629922,3644807,3659813,3674785,3689766,3704807,3719939,3735009,3749957,3765061,3780131,3795143,3809985,3824997,3840097,3855109,3870277,3885095,3900102,3915203,3930147,3945250,3960129,3974886,3990119,4005252,4020295,4035367,4050276,4065380,4080481,4095395,4110369,4125287,4140384,4155333,4170337,4185378,4200545,4215461,4230434,4245410,4260260,4275366,4290212,4305156,4320064,4334944,4349927,4364864,4379877,4394978,4410114,4425190,4440166,4455203,4470338,4485223,4500354,4515527,4530465,4545347,4560512,4575429,4590210,4605190,4620324,4635237,4650149,4665127,4680006,4694916,4709895,4724741,4739781,4754758,4769922,4785158,4800130,4815173,4830245,4845120,4860164,4875015,4889927,4904996,4919872,4934816,4949797,4964772,4979846,4994790,5009989,5025063,5039969,5055109,5070179,5085250,5100229,5115136,5130086,5145156,5160231,5175366,5190500,5205537,5220516,5235584,5250567,5265827,5280837,5295623,5310403,5325252,5340288,5355393,5370561,5385506,5400486,5415392,5430369,5445383,5460418,5475428,5490625,5505828,5520834,5535941,5550786,5565701,5580736,5596070,5610979,5625987,5641062,5656196,5671268,5686055,5700933,5715908,5731046,5746080,5760867,5775682,5790467,5805670,5820737,5835617,5850470,5865441,5880256,5894951,5910049,5925056,5939908,5954883,5969986,5984866,6000001], l_orderkey) - 1 AS "PROV_lineitem1"
FROM "lineitem" AS F0) F0 CROSS JOIN (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment"
FROM "lineitem" AS F0) F1)) F0
WHERE ((F0."l_orderkey1" = F0."l_orderkey") and (F0."l_suppkey1" <> F0."l_suppkey"))
GROUP BY F0."l_orderkey", F0."l_suppkey", F0."l_receiptdate", F0."l_commitdate") F0) F0
WHERE (F0."datebc" != '1')) F1)) F0 CROSS JOIN (
SELECT F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment"
FROM "orders" AS F0) F1)) F0 CROSS JOIN "nation" AS F1)) F0
WHERE ((((((F0."s_suppkey" = F0."l_suppkey") and (F0."o_orderkey" = F0."l_orderkey")) and (F0."o_orderstatus" = 'F')) and (F0."l_receiptdate" > F0."l_commitdate")) and (F0."s_nationkey" = F0."n_nationkey")) and (F0."n_name" = 'CHINA'))
GROUP BY F0."s_name") F0) F0 order by numwait desc, s_name) F0
limit 100) F0;