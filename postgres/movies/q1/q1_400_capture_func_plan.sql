EXPLAIN ANALYZE
SELECT bit_or(F0."PROV_movies1"::bit(400)) AS "PROV_movies1", bit_or(F0."PROV_ratings1"::bit(400)) AS "PROV_ratings1"
FROM (
SELECT F0."title" AS "title", F0."movieid" AS "movieid", F0."num_ratings" AS "num_ratings", F0."PROV_movies1" AS "PROV_movies1", F0."PROV_ratings1" AS "PROV_ratings1"
FROM (
SELECT F0."title" AS "title", F0."movieid" AS "movieid", F0."num_ratings" AS "num_ratings", F0."PROV_movies1" AS "PROV_movies1", F0."PROV_ratings1" AS "PROV_ratings1"
FROM (
SELECT F0."GROUP_1" AS "title", F0."GROUP_0" AS "movieid", F0."AGGR_0" AS "num_ratings", F0."PROV_movies1" AS "PROV_movies1", F0."PROV_ratings1" AS "PROV_ratings1"
FROM (
SELECT count(F0."rating") AS "AGGR_0", F0."movieid" AS "GROUP_0", F0."title" AS "GROUP_1", bit_or(F0."PROV_movies1"::bit(400)) AS "PROV_movies1", bit_or(F0."PROV_ratings1"::bit(400)) AS "PROV_ratings1"
FROM (
SELECT F0."movieid" AS "movieid", F0."title" AS "title", F0."genres" AS "genres", F1."userid" AS "userid", F1."movieid" AS "movieid1", F1."rating" AS "rating", F1."timestamp" AS "timestamp", F1."rdate" AS "rdate", F1."ryear" AS "ryear", F1."rmonth" AS "rmonth", F1."rday" AS "rday", F0."PROV_movies1" AS "PROV_movies1", F1."PROV_ratings1" AS "PROV_ratings1"
FROM ((
SELECT F0."movieid" AS "movieid", F0."title" AS "title", F0."genres" AS "genres",set_bit(0::bit(400), inc(ARRAY [1,69,138,206,275,344,413,481,549,619,693,763,833,903,971,1041,1114,1183,1255,1324,1394,1470,1550,1622,1694,1773,1856,1925,1993,2061,2129,2197,2267,2335,2403,2471,2539,2608,2677,2745,2813,2881,2950,3018,3087,3155,3223,3292,3360,3430,3499,3568,3637,3705,3773,3843,3911,3980,4049,4117,4185,4253,4322,4391,4459,4527,4595,4663,4733,4801,4869,4937,5005,5074,5142,5211,5279,5347,5416,5484,5552,5622,5690,5758,5827,5895,5963,6031,6099,6168,6236,6304,6379,6451,6520,6588,6656,6724,6792,6861,6931,6999,7067,7135,7204,7272,7340,7408,7561,7716,7824,7934,8055,8222,8372,8485,8593,8661,8729,8797,8866,8934,9002,25798,25890,25974,26076,26171,26263,26362,26479,26580,26708,26813,26964,27131,27311,27461,27644,27777,27881,30977,31342,31682,32031,32345,32659,33001,33330,33743,34065,34482,36373,37736,39292,40414,41499,42197,42987,43853,44555,45003,45666,46559,47092,47629,48098,48682,49282,49951,50651,51246,51905,52528,53024,53769,54256,54833,55267,55729,56367,56941,57655,58250,58760,59178,59721,60103,60469,60914,61357,62203,62970,63793,64620,65227,65729,66289,66798,67429,68067,68533,68976,69421,69744,70102,70531,70833,71158,71448,71732,72043,72367,72701,73000,73270,73630,74075,74448,74780,75947,76279,77208,77615,77968,78211,78579,78905,79207,79519,79771,80072,80311,80592,80860,81138,81424,81713,82015,82298,82606,83034,83351,83760,84158,84485,84801,85205,85544,86033,86372,86637,86860,87085,87366,87689,87996,88228,88495,88785,89100,89377,89707,89988,90284,90549,90819,91094,91360,91617,91866,92122,92374,92674,93008,93391,93676,93963,94308,94679,94972,95230,95597,95937,96216,96496,96704,96921,97168,97538,97806,98019,98253,98483,98817,99087,99371,99638,99855,100081,100291,100505,100904,101235,101479,101741,101989,102235,102483,102841,103055,103290,103523,103727,103982,104241,104498,104757,104996,105213,105423,105703,105948,106188,106421,106674,106927,107194,107426,107671,107906,108143,108479,108729,108979,109239,109472,109720,109965,110223,110447,110675,111038,111387,111694,112001,112316,112550,112814,113066,113350,113638,113895,114166,114453,114754,115068,115357,115685,115955,116181,116457,116766,116961,117354,117547,117855,118166,118464,118816,119045,119316,119820,120313,120773,120936,121225,121575,122092,122519,123221,124131,124867,125596,125968,126106,126412,126919,127058,127208,127575,128279,128574,128844,129080,129449,129820,130079,130532,131066,131263], movieid), 1) AS "PROV_movies1"
FROM "movies" AS F0) F0 CROSS JOIN (
SELECT F0."userid" AS "userid", F0."movieid" AS "movieid", F0."rating" AS "rating", F0."timestamp" AS "timestamp", F0."rdate" AS "rdate", F0."ryear" AS "ryear", F0."rmonth" AS "rmonth", F0."rday" AS "rday",  set_bit(0::bit(400), inc(ARRAY [1,20,28,41,52,65,80,94,107,126,145,158,170,180,194,205,218,230,239,252,269,277,303,308,327,343,355,371,376,405,419,431,445,461,471,481,501,516,529,534,544,569,611,635,661,674,714,728,759,798,818,838,861,891,902,910,917,932,948,966,996,1013,1021,1029,1037,1047,1060,1078,1091,1103,1124,1135,1175,1186,1211,1223,1235,1244,1255,1262,1269,1274,1281,1287,1295,1301,1334,1344,1350,1367,1372,1379,1405,1422,1446,1466,1480,1513,1554,1569,1590,1603,1620,1644,1672,1683,1695,1726,1754,1794,1827,1846,1883,1893,1911,1918,1933,1950,1957,1963,1974,1994,2003,2009,2020,2024,2053,2064,2076,2085,2094,2106,2114,2124,2134,2142,2148,2160,2186,2232,2248,2269,2282,2294,2312,2333,2340,2363,2374,2382,2393,2403,2409,2418,2424,2431,2454,2467,2478,2501,2525,2533,2551,2572,2587,2611,2641,2664,2687,2699,2718,2724,2738,2752,2770,2792,2805,2827,2857,2872,2900,2915,2942,2950,2966,2986,3000,3016,3033,3039,3067,3082,3095,3104,3113,3148,3169,3189,3210,3248,3255,3262,3272,3298,3317,3354,3362,3388,3420,3435,3449,3468,3489,3504,3515,3536,3552,3584,3617,3635,3668,3685,3700,3705,3729,3745,3763,3791,3819,3831,3865,3893,3916,3959,3978,3988,4003,4015,4019,4036,4069,4102,4135,4174,4223,4239,4270,4308,4326,4349,4368,4387,4446,4477,4519,4569,4621,4642,4679,4718,4736,4787,4835,4866,4900,4954,4988,5015,5064,5110,5171,5254,5294,5334,5388,5444,5463,5500,5528,5585,5630,5679,5782,5833,5893,5943,5968,5995,6078,6183,6234,6287,6327,6378,6429,6503,6541,6595,6659,6727,6783,6810,6870,6934,6950,6993,7029,7087,7143,7167,7254,7323,7373,7451,7573,7792,8011,8228,8373,8528,8622,8644,8784,8831,8910,8950,8970,8999,26131,26614,27416,27773,27876,30793,31032,31685,32300,33166,33722,34162,34542,36529,37739,39183,40629,41569,43333,44199,45028,45517,45950,46976,47997,48738,48997,49932,50872,51575,52604,53127,53996,54286,54997,55276,55895,56775,57669,58492,59715,60514,61250,62956,63992,64957,66544,68157,68791,69280,69844,71264,72226,73321,75813,77561,79091,80463,81591,82767,85414,87004,88427,90405,91535,93948,96079,97921,101112,104119,106782,111921,131263], movieid), 1) AS "PROV_ratings1"
FROM "ratings" AS F0) F1)) F0
WHERE (F0."movieid" = F0."movieid1")
GROUP BY F0."movieid", F0."title") F0) F0) F0 ORDER BY num_ratings DESC
limit 10) F0;
