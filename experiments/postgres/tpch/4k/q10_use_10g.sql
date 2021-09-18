WITH _temp_view_1 AS (
SELECT /*+ materialize */ sum((F0."l_extendedprice" * (1 - F0."l_discount"))) AS "AGGR_0", F0."c_custkey" AS "GROUP_0", F0."c_name" AS "GROUP_1", F0."c_acctbal" AS "GROUP_2", F0."c_phone" AS "GROUP_3", F0."n_name" AS "GROUP_4", F0."c_address" AS "GROUP_5", F0."c_comment" AS "GROUP_6"
FROM (
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment", F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", F1."n_nationkey" AS "n_nationkey", F1."n_name" AS "n_name", F1."n_regionkey" AS "n_regionkey", F1."n_comment" AS "n_comment"
FROM ((
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment", F1."l_orderkey" AS "l_orderkey", F1."l_partkey" AS "l_partkey", F1."l_suppkey" AS "l_suppkey", F1."l_linenumber" AS "l_linenumber", F1."l_quantity" AS "l_quantity", F1."l_extendedprice" AS "l_extendedprice", F1."l_discount" AS "l_discount", F1."l_tax" AS "l_tax", F1."l_returnflag" AS "l_returnflag", F1."l_linestatus" AS "l_linestatus", F1."l_shipdate" AS "l_shipdate", F1."l_commitdate" AS "l_commitdate", F1."l_receiptdate" AS "l_receiptdate", F1."l_shipinstruct" AS "l_shipinstruct", F1."l_shipmode" AS "l_shipmode", F1."l_comment" AS "l_comment"
FROM ((
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", F1."o_orderkey" AS "o_orderkey", F1."o_custkey" AS "o_custkey", F1."o_orderstatus" AS "o_orderstatus", F1."o_totalprice" AS "o_totalprice", F1."o_orderdate" AS "o_orderdate", F1."o_orderpriority" AS "o_orderpriority", F1."o_clerk" AS "o_clerk", F1."o_shippriority" AS "o_shippriority", F1."o_comment" AS "o_comment"
FROM ((
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment"
FROM "customer" AS F0
WHERE (F0."c_custkey" <@ '{17665,18033,124299,124693,202875,203242,355905,356283,372431,372799,437187,437584,452204,452586,559229,559599,767038,767412,835921,836298,916856,917248,1094086,1094466,1148398,1148776,1151785,1152158,1230776,1231157,1249908,1250295,1343371,1343746,1359938,1360322,1378379,1378752,1419910,1420288}'::int[])) F0 CROSS JOIN (
SELECT F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment"
FROM "orders" AS F0
WHERE (F0."o_orderkey" <@ '{617703,632933,2706370,2722115,2782788,2798628,3047079,3062053,3515525,3530112,6179874,6194240,6402753,6417600,6432034,6448131,7830343,7846209,8083557,8098565,8408483,8422373,8545376,8560679,9242914,9258404,10484551,10515457,10758944,10774692,11626083,11642274,12172129,12186948,12443109,12459264,13556866,13573607,15049255,15065411,15110661,15125220,17270593,17285123,17313861,17329058,17609702,17624740,17788032,17802404,18405505,18420672,18866209,18881444,19417222,19433059,20301120,20317383,20437280,20452899,21704643,21719396,22244705,22261603,22934240,22949536,23412038,23428192,23727522,23742084,25973349,25988837,26328001,26342049,26721411,26735783,27457286,27472773,28926822,28941408,28956806,28972290,29958757,29974466,30299427,30313826,32588355,32602785,33412455,33426054,33485570,33500740,33632454,33648994,34692132,34706368,34779495,34793765,35358147,35373540,36187588,36204034,37354853,37368320,37835399,37851206,38043297,38058274,38773797,38790341,39504257,39520132,39730084,39745824,43565216,43580004,44222720,44236452,45762593,45777184,46019392,46034983,46343778,46359718,47570119,47584994,49724098,49740871,50277670,50292133,50380290,50395975,50728710,50744100,50822246,50837857,51137249,51152801,51787717,51801891,52311428,52327655,53325283,53340359,53551491,53565861,54135011,54150629,54392096,54406916,54437603,54452641,55042754,55056964,55148800,55162823,55935911,55950661,56102883,56116578,56600134,56614819,56932864,56949413,58852165,58865731}'::int[])) F1)) F0 CROSS JOIN (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment"
FROM "lineitem" AS F0
WHERE (F0."l_orderkey" <@ '{611585,627041,2715654,2729988,2789159,2803776,3054880,3069185,3513701,3529573,6176546,6192231,6403779,6418695,6434880,6449954,7834882,7851622,8088261,8104128,8404416,8417830,8540422,8554851,9244998,9259173,10488230,10517344,10747333,10762372,11633381,11650912,12173411,12187040,12440930,12456422,13546944,13561572,15048000,15062566,15107971,15123783,17278592,17295362,17309926,17325287,17607396,17621251,17796161,17811329,18396836,18413312,18868359,18883973,19420928,19435206,20299591,20312675,20432004,20447463,21706403,21721351,22259777,22275331,22930213,22945671,23413733,23427936,23717926,23732258,25985729,25999522,26325026,26339296,26716165,26731651,27447522,27462850,28927655,28943010,28958054,28974214,29953797,29969696,30304321,30319267,32581989,32595744,33420801,33434951,33479717,33493668,33645253,33661344,34692768,34706244,34783525,34798210,35354209,35369252,36179074,36193760,37356387,37370752,37832641,37847874,38039937,38054785,38773472,38788130,39504070,39518720,39726080,39740773,43561408,43574976,44226373,44239298,45757478,45771396,46028515,46042211,46344449,46359813,47576101,47590019,49715072,49730406,50273861,50289254,50381988,50397154,50727139,50742023,50817731,50831622,51128230,51144386,51784481,51799236,52301217,52316773,53328291,53341319,53548160,53563297,54134913,54149603,54387846,54402880,54431974,54446469,55034403,55048231,55143171,55157696,55937223,55951078,56102148,56117091,56604962,56619044,56923715,56939877,58841638,58856004}'::int[])) F1)) F0 CROSS JOIN "nation" AS F1)) F0
WHERE ((((((F0."c_custkey" = F0."o_custkey") and (F0."l_orderkey" = F0."o_orderkey")) and (F0."o_orderdate" >= to_date('1994-12-01', 'YYYY-MM-DD'))) and (F0."o_orderdate" < to_date('1995-03-01', 'YYYY-MM-DD'))) and (F0."l_returnflag" = 'R')) and (F0."c_nationkey" = F0."n_nationkey"))
GROUP BY F0."c_custkey", F0."c_name", F0."c_acctbal", F0."c_phone", F0."n_name", F0."c_address", F0."c_comment"),
_temp_view_0 AS (
SELECT /*+ materialize */ F0."GROUP_0" AS "c_custkey", F0."GROUP_1" AS "c_name", F0."AGGR_0" AS "revenue", F0."GROUP_2" AS "c_acctbal", F0."GROUP_4" AS "n_name", F0."GROUP_5" AS "c_address", F0."GROUP_3" AS "c_phone", F0."GROUP_6" AS "c_comment"
FROM (SELECT * FROM _temp_view_1) F0)
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."revenue" AS "revenue", F0."c_acctbal" AS "c_acctbal", F0."n_name" AS "n_name", F0."c_address" AS "c_address", F0."c_phone" AS "c_phone", F0."c_comment" AS "c_comment"
FROM (
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."revenue" AS "revenue", F0."c_acctbal" AS "c_acctbal", F0."n_name" AS "n_name", F0."c_address" AS "c_address", F0."c_phone" AS "c_phone", F0."c_comment" AS "c_comment"
FROM (SELECT * FROM _temp_view_0) F0
ORDER BY F0."revenue" DESC NULLS LAST) F0
LIMIT 20;