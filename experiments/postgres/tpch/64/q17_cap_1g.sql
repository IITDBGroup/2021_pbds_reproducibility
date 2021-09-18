SELECT fast_bit_or(F0."PROV_lineitem1") AS "PROV_lineitem1", fast_bit_or(F0."PROV_part1") AS "PROV_part1", fast_bit_or(F0."PROV_lineitem2") AS "PROV_lineitem2"
FROM (
SELECT (F0."AGGR_0" / 7.000000) AS "avg_yearly", F0."PROV_lineitem1" AS "PROV_lineitem1", F0."PROV_part1" AS "PROV_part1", F0."PROV_lineitem2" AS "PROV_lineitem2"
FROM (
SELECT sum(F0."l_extendedprice") AS "AGGR_0", fast_bit_or(F0."PROV_lineitem1") AS "PROV_lineitem1", fast_bit_or(F0."PROV_part1") AS "PROV_part1", fast_bit_or(F0."PROV_lineitem2") AS "PROV_lineitem2"
FROM (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", F1."avgl" AS "avgl", F1."l_partkey" AS "l_partkey1", F0."PROV_lineitem1" AS "PROV_lineitem1", F0."PROV_part1" AS "PROV_part1", F1."PROV_lineitem2" AS "PROV_lineitem2"
FROM ((
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", F1."p_partkey" AS "p_partkey", F1."p_name" AS "p_name", F1."p_mfgr" AS "p_mfgr", F1."p_brand" AS "p_brand", F1."p_type" AS "p_type", F1."p_size" AS "p_size", F1."p_container" AS "p_container", F1."p_retailprice" AS "p_retailprice", F1."p_comment" AS "p_comment", F0."PROV_lineitem1" AS "PROV_lineitem1", F1."PROV_part1" AS "PROV_part1"
FROM ((
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", set_bit(0::bit(64), binary_search_array_pos(ARRAY [1,93476,186977,281445,375301,468644,562278,656032,749568,843686,937314,1031428,1125348,1219109,1312711,1406405,1500738,1594501,1687907,1781831,1874917,1968608,2062599,2156544,2250438,2344551,2438022,2531590,2626021,2719781,2813156,2907173,3000961,3094656,3188294,3282214,3375589,3469190,3562148,3656160,3749957,3843812,3937667,4031488,4125286,4219271,4312550,4406308,4500354,4593958,4687457,4781347,4875014,4968578,5062566,5156515,5250567,5344039,5437926,5532198,5625987,5719717,5813189,5906370,6000001], l_orderkey) - 1,1 ) AS "PROV_lineitem1"
FROM "lineitem" AS F0) F0 CROSS JOIN (
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", set_bit(0::bit(64), binary_search_array_pos(ARRAY [1,3125,6250,9375,12500,15625,18750,21875,25000,28125,31250,34375,37500,40625,43750,46875,50000,53125,56250,59375,62500,65625,68750,71875,75000,78125,81250,84375,87500,90625,93750,96875,100000,103125,106250,109375,112500,115625,118750,121875,125000,128125,131250,134375,137500,140625,143750,146875,150000,153125,156250,159375,162500,165625,168750,171875,175000,178125,181250,184375,187500,190625,193750,196875,200001], p_partkey) - 1,1 ) AS "PROV_part1"
FROM "part" AS F0) F1)) F0 CROSS JOIN (
SELECT (0.200000 * F0."AGGR_0") AS "avgl", F0."GROUP_0" AS "l_partkey", F0."PROV_lineitem2" AS "PROV_lineitem2"
FROM (
SELECT avg(F0."l_quantity") AS "AGGR_0", F0."l_partkey" AS "GROUP_0", set_bit(0::bit(64), binary_search_array_pos(ARRAY [1,3129,6254,9391,12508,15638,18770,21906,25034,28158,31282,34383,37503,40633,43752,46889,50016,53143,56273,59399,62518,65636,68765,71890,75017,78152,81272,84407,87525,90639,93755,96881,100000,103128,106245,109367,112506,115622,118773,121902,125029,128157,131289,134414,137543,140658,143786,146914,150043,153162,156283,159416,162530,165658,168784,171902,175022,178151,181262,184360,187481,190600,193732,196882,200001], l_partkey) - 1,1 ) AS "PROV_lineitem2"
FROM "lineitem" AS F0
GROUP BY F0."l_partkey") F0) F1)) F0
WHERE (((((F0."p_partkey" = F0."l_partkey") and (F0."p_brand" = 'Brand#31')) and (F0."p_container" = 'SM PKG')) and (F0."l_partkey1" = F0."p_partkey")) and (F0."l_quantity" < F0."avgl"))) F0) F0;