WITH _temp_view_0 AS (
SELECT /*+ materialize */ sum((F0."l_extendedprice" * (1 - F0."l_discount"))) AS "AGGR_0"
FROM (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", F1."p_partkey" AS "p_partkey", F1."p_name" AS "p_name", F1."p_mfgr" AS "p_mfgr", F1."p_brand" AS "p_brand", F1."p_type" AS "p_type", F1."p_size" AS "p_size", F1."p_container" AS "p_container", F1."p_retailprice" AS "p_retailprice", F1."p_comment" AS "p_comment"
FROM ((
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment"
FROM "lineitem" AS F0
WHERE (F0."l_orderkey" <@ '{19717,19771,30570,30628,41530,41593,246266,246337,313057,313120,368417,368477,375287,375347,377135,377195,385829,385889,446039,446100,491899,491957,573091,573156,683801,683852,691909,691974,697281,697341,708502,708563,785360,785417,802209,802272,806487,806547,1012199,1012259,1040153,1040210,1077244,1077301,1215588,1215651,1258437,1258497,1393566,1393623,1410817,1410881,1449288,1449348,1533836,1533897,1539316,1539382,1616923,1616981,1682742,1682796,1703790,1703850,1788038,1788089,1863294,1863351,1872357,1872421,1872799,1872856,1978562,1978626,2007378,2007439,2056353,2056413,2145159,2145222,2152707,2152764,2153670,2153734,2283448,2283520,2357406,2357466,2388481,2388544,2439877,2439931,2443399,2443459,2447779,2447842,2452783,2452839,2491833,2491906,2526529,2526594,2607202,2607263,2621406,2621466,2740256,2740319,2743743,2743806,2756152,2756212,2806468,2806528,2807739,2807810,2866019,2866085,2942545,2942599,2952511,2952562,2980502,2980571,3023458,3023522,3118463,3118517,3237630,3237693,3256612,3256666,3319651,3319715,3327528,3327588,3367014,3367074,3388916,3388973,3533848,3533915,3573231,3573292,3631207,3631270,3743633,3743690,3790991,3791051,3839099,3839157,3875099,3875159,4040479,4040544,4176125,4176186,4222335,4222398,4295879,4295939,4598768,4598826,4604671,4604734,4671905,4671969,4674545,4674605,4678922,4678977,4687645,4687702,4789038,4789098,4814050,4814110,4828130,4828193,4957156,4957216,5098721,5098784,5123818,5123872,5163876,5163937,5206726,5206790,5240886,5240943,5245106,5245167,5333341,5333398,5432256,5432320,5438020,5438078,5455613,5455676,5460707,5460770,5463275,5463336,5512463,5512536,5537154,5537215,5551406,5551463,5661643,5661698,5693160,5693222,5728924,5728992,5732374,5732431,5743762,5743823,5751628,5751685,5761514,5761574,5786212,5786275,5860175,5860232,5899175,5899232,5905158,5905222,5918147,5918210,5930806,5930863,5949379,5949443,5986145,5986205}'::int[])) F0 CROSS JOIN (
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment"
FROM "part" AS F0
WHERE (F0."p_partkey" <@ '{424,426,432,434,1092,1094,1318,1320,3868,3870,3986,3988,5220,5222,7088,7090,12086,12088,17036,17038,17114,17116,18282,18284,20182,20184,22904,22906,27156,27158,27326,27328,35344,35346,35668,35670,37382,37384,40596,40598,46944,46946,47428,47430,48338,48340,48520,48522,49298,49300,49870,49872,51794,51796,53378,53380,54758,54760,57040,57042,63598,63600,67002,67004,72326,72328,72660,72662,74018,74020,74076,74078,79098,79100,79960,79962,83280,83282,87152,87154,87470,87472,91262,91264,93188,93190,93500,93502,97524,97526,98794,98796,100100,100102,100380,100382,105428,105430,107742,107744,114076,114078,114304,114306,114354,114356,115148,115150,116802,116804,120130,120132,120974,120976,121906,121908,122918,122920,127100,127102,129136,129138,129898,129900,130380,130382,130992,130994,131936,131938,132086,132088,132670,132672,134016,134018,134932,134934,135512,135514,138422,138424,140972,140974,142042,142044,143072,143074,144080,144082,145574,145576,146392,146394,148460,148462,149378,149380,150352,150354,151918,151920,153414,153416,155942,155944,156962,156964,157954,157956,162892,162894,163438,163440,166068,166070,167072,167074,167114,167116,169032,169034,174624,174626,174856,174858,179228,179230,182290,182292,188826,188828,188958,188960,189680,189682,191230,191232,191474,191476,197254,197256,198920,198922,199044,199046}'::int[])) F1)) F0
WHERE (((((((((((F0."p_partkey" = F0."l_partkey") AND (F0."p_brand" = 'Brand#12')) AND ((((F0."p_container" = 'SM CASE') OR (F0."p_container" = 'SM BOX')) OR (F0."p_container" = 'SM PACK')) OR (F0."p_container" = 'SM PKG'))) AND (F0."l_quantity" >= 1)) AND (F0."l_quantity" <= (1 + 10))) AND (F0."p_size" >= 1)) AND (F0."p_size" <= 5)) AND ((F0."l_shipmode" = 'AIR') OR (F0."l_shipmode" = 'AIR REG'))) AND (F0."l_shipinstruct" = 'DELIVER IN PERSON')) OR (((((((((F0."p_partkey" = F0."l_partkey") AND (F0."p_brand" = 'Brand#23')) AND ((((F0."p_container" = 'MED BAG') OR (F0."p_container" = 'MED BOX')) OR (F0."p_container" = 'MED PKG')) OR (F0."p_container" = 'MED PACK'))) AND (F0."l_quantity" >= 10)) AND (F0."l_quantity" <= (10 + 10))) AND (F0."p_size" >= 1)) AND (F0."p_size" <= 10)) AND ((F0."l_shipmode" = 'AIR') OR (F0."l_shipmode" = 'AIR REG'))) AND (F0."l_shipinstruct" = 'DELIVER IN PERSON'))) OR (((((((((F0."p_partkey" = F0."l_partkey") AND (F0."p_brand" = 'Brand#34')) AND ((((F0."p_container" = 'LG CASE') OR (F0."p_container" = 'LG BOX')) OR (F0."p_container" = 'LG PACK')) OR (F0."p_container" = 'LG PKG'))) AND (F0."l_quantity" >= 20)) AND (F0."l_quantity" <= (20 + 10))) AND (F0."p_size" >= 1)) AND (F0."p_size" <= 15)) AND ((F0."l_shipmode" = 'AIR') OR (F0."l_shipmode" = 'AIR REG'))) AND (F0."l_shipinstruct" = 'DELIVER IN PERSON'))))
SELECT F0."AGGR_0" AS "revenue"
FROM (SELECT * FROM _temp_view_0) F0;