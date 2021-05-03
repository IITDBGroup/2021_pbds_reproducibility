SELECT F0."AGGR_0" AS "revenue"
FROM (
SELECT sum((F0."l_extendedprice" * (1 - F0."l_discount"))) AS "AGGR_0"
FROM (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", F1."p_partkey" AS "p_partkey", F1."p_name" AS "p_name", F1."p_mfgr" AS "p_mfgr", F1."p_brand" AS "p_brand", F1."p_type" AS "p_type", F1."p_size" AS "p_size", F1."p_container" AS "p_container", F1."p_retailprice" AS "p_retailprice", F1."p_comment" AS "p_comment"
FROM ((
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment"
FROM "lineitem" AS F0
WHERE F0."l_orderkey" <@ '{19235,19813,30500,31140,41317,41889,246083,246693,312897,313511,368067,368643,375175,375744,376864,377475,385794,386368,445890,446435,491684,492262,572512,573186,683399,684001,691296,691974,696769,697319,708103,708737,785094,785699,802016,802625,806369,806977,1011684,1012324,1040162,1040707,1077223,1077831,1215617,1216166,1257858,1258466,1393280,1393892,1410658,1411330,1448902,1449507,1533793,1534343,1538784,1539366,1616803,1617377,1682243,1682790,1703717,1704320,1787910,1788451,1863266,1863814,1872321,1872898,1978305,1978886,2007206,2007872,2056194,2056804,2144710,2145350,2152640,2153892,2283330,2284039,2357248,2357766,2388037,2388644,2439682,2440261,2443270,2443842,2447526,2448103,2452230,2452837,2491845,2492487,2526016,2526625,2606945,2607556,2620965,2621575,2739904,2740450,2743329,2743906,2756003,2756615,2806114,2806725,2807303,2807939,2865573,2866181,2942531,2943139,2952069,2952676,2980256,2980804,3023138,3023680,3118467,3119046,3237537,3238208,3256321,3256903,3319267,3319878,3327045,3327715,3366692,3367299,3388898,3389507,3533603,3534272,3573280,3573922,3630599,3631270,3743073,3743680,3791045,3791654,3839075,3839682,3874817,3875399,4040288,4040866,4176068,4176704,4221953,4222498,4295590,4296225,4598437,4599015,4604390,4604992,4671617,4672162,4674435,4675012,4678598,4679139,4687527,4688163,4788836,4789442,4813569,4814150,4827781,4828420,4956739,4957283,5098434,5099073,5123745,5124294,5163364,5163906,5206786,5207365,5240931,5241511,5244967,5245572,5332837,5333409,5432199,5432897,5437767,5438341,5455110,5455716,5460579,5461218,5462944,5463523,5511972,5512641,5536801,5537379,5551200,5551783,5661410,5661989,5692673,5693253,5728961,5729511,5731876,5732449,5743428,5744066,5751264,5751841,5761318,5761958,5785989,5786563,5860224,5860832,5898660,5899266,5904897,5905415,5918048,5918631,5930533,5931137,5948903,5949505,5986049,5986660}'::int[]) F0 CROSS JOIN (
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment"
FROM "part" AS F0
WHERE F0."p_partkey" <@ '{420,440,1080,1100,1300,1320,3860,3880,3980,4000,5220,5240,7080,7100,12080,12100,17020,17040,17100,17120,18280,18300,20180,20200,22900,22920,27140,27160,27320,27340,35340,35360,35660,35680,37380,37400,40580,40600,46940,46960,47420,47440,48320,48340,48520,48540,49280,49300,49860,49880,51780,51800,53360,53380,54740,54760,57040,57060,63580,63600,67000,67020,72320,72340,72660,72680,74000,74020,74060,74080,79080,79100,79960,79980,83280,83300,87140,87160,87460,87480,91260,91280,93180,93200,93500,93520,97520,97540,98780,98800,100100,100120,100380,100400,105420,105440,107740,107760,114060,114080,114300,114320,114340,114360,115140,115160,116800,116820,120120,120140,120960,120980,121900,121920,122900,122920,127100,127120,129120,129140,129880,129900,130380,130400,130980,131000,131920,131940,132080,132100,132660,132680,134000,134020,134920,134940,135500,135520,138420,138440,140960,140980,142040,142060,143060,143080,144080,144100,145560,145580,146380,146400,148460,148480,149360,149380,150340,150360,151900,151920,153400,153420,155940,155960,156960,156980,157940,157960,162880,162900,163420,163440,166060,166080,167060,167080,167100,167120,169020,169040,174620,174640,174840,174860,179220,179240,182280,182300,188820,188840,188940,188960,189680,189700,191220,191240,191460,191480,197240,197260,198920,198940,199040,199060}'::int[]) F1)) F0
WHERE (((((((((((F0."p_partkey" = F0."l_partkey") AND (F0."p_brand" = 'Brand#12')) AND ((((F0."p_container" = 'SM CASE') OR (F0."p_container" = 'SM BOX')) OR (F0."p_container" = 'SM PACK')) OR (F0."p_container" = 'SM PKG'))) AND (F0."l_quantity" >= 1)) AND (F0."l_quantity" <= (1 + 10))) AND (F0."p_size" >= 1)) AND (F0."p_size" <= 5)) AND ((F0."l_shipmode" = 'AIR') OR (F0."l_shipmode" = 'AIR REG'))) AND (F0."l_shipinstruct" = 'DELIVER IN PERSON')) OR (((((((((F0."p_partkey" = F0."l_partkey") AND (F0."p_brand" = 'Brand#23')) AND ((((F0."p_container" = 'MED BAG') OR (F0."p_container" = 'MED BOX')) OR (F0."p_container" = 'MED PKG')) OR (F0."p_container" = 'MED PACK'))) AND (F0."l_quantity" >= 10)) AND (F0."l_quantity" <= (10 + 10))) AND (F0."p_size" >= 1)) AND (F0."p_size" <= 10)) AND ((F0."l_shipmode" = 'AIR') OR (F0."l_shipmode" = 'AIR REG'))) AND (F0."l_shipinstruct" = 'DELIVER IN PERSON'))) OR (((((((((F0."p_partkey" = F0."l_partkey") AND (F0."p_brand" = 'Brand#34')) AND ((((F0."p_container" = 'LG CASE') OR (F0."p_container" = 'LG BOX')) OR (F0."p_container" = 'LG PACK')) OR (F0."p_container" = 'LG PKG'))) AND (F0."l_quantity" >= 20)) AND (F0."l_quantity" <= (20 + 10))) AND (F0."p_size" >= 1)) AND (F0."p_size" <= 15)) AND ((F0."l_shipmode" = 'AIR') OR (F0."l_shipmode" = 'AIR REG'))) AND (F0."l_shipinstruct" = 'DELIVER IN PERSON')))) F0;
