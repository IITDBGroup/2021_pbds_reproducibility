SELECT fast_bit_or(F0."PROV_ratings1") AS "PROV_ratings1", fast_bit_or(F0."PROV_tags1") AS "PROV_tags1", set_bits(F0."PROV_movies1")::bit(64) AS "PROV_movies1"
FROM (
SELECT F0."title" AS "title", F0."movieid" AS "movieid", F0."total_cnt" AS "total_cnt", F0."PROV_ratings1" AS "PROV_ratings1", F0."PROV_tags1" AS "PROV_tags1", F0."PROV_movies1" AS "PROV_movies1"
FROM (
SELECT F0."total_cnt" AS "total_cnt", F0."movieid1" AS "movieid1", F1."movieid" AS "movieid", F1."title" AS "title", F1."genres" AS "genres", F0."PROV_ratings1" AS "PROV_ratings1", F0."PROV_tags1" AS "PROV_tags1", F1."PROV_movies1" AS "PROV_movies1"
FROM ((
SELECT F0."total_cnt" AS "total_cnt", F0."movieid1" AS "movieid1", F0."PROV_ratings1" AS "PROV_ratings1", F0."PROV_tags1" AS "PROV_tags1"
FROM (
SELECT F0."total_cnt" AS "total_cnt", F0."movieid1" AS "movieid1", F0."PROV_ratings1" AS "PROV_ratings1", F0."PROV_tags1" AS "PROV_tags1"
FROM (
SELECT (F0."cnt1" + F0."cnt2") AS "total_cnt", F0."movieid1" AS "movieid1", F0."PROV_ratings1" AS "PROV_ratings1", F0."PROV_tags1" AS "PROV_tags1"
FROM (
SELECT F0."cnt1" AS "cnt1", F0."movieid" AS "movieid", F1."cnt2" AS "cnt2", F1."movieid" AS "movieid1", F0."PROV_ratings1" AS "PROV_ratings1", F1."PROV_tags1" AS "PROV_tags1"
FROM ((
SELECT F0."AGGR_0" AS "cnt1", F0."GROUP_0" AS "movieid", F0."PROV_ratings1" AS "PROV_ratings1"
FROM (
SELECT count(1) AS "AGGR_0", F0."movieid" AS "GROUP_0", set_bits(F0."PROV_ratings1")::bit(64) AS "PROV_ratings1"
FROM (
SELECT F0."userid" AS "userid", F0."movieid" AS "movieid", F0."rating" AS "rating", F0."timestamp" AS "timestamp", F0."rdate" AS "rdate", F0."ryear" AS "ryear", F0."rmonth" AS "rmonth", F0."rday" AS "rday",  binary_search_array_pos(ARRAY [1,25,94,163,223,288,339,410,471,537,631,779,902,945,1047,1101,1206,1228,1261,1301,1373,1438,1573,1646,1744,1917,1976,2054,2131,2268,2353,2421,2541,2664,2719,2859,2985,3087,3201,3363,3524,3703,3868,4007,4210,4448,4834,5010,5378,5669,6093,6537,6896,7319,8361,8957,30894,37382,45722,51834,56782,64839,74545,89804,131263], movieid) - 1 AS "PROV_ratings1"
FROM "ratings" AS F0) F0
GROUP BY F0."movieid") F0) F0 CROSS JOIN (
SELECT F0."AGGR_0" AS "cnt2", F0."GROUP_0" AS "movieid", F0."PROV_tags1" AS "PROV_tags1"
FROM (
SELECT count(1) AS "AGGR_0", F0."movieid" AS "GROUP_0", set_bits(F0."PROV_tags1")::bit(64) AS "PROV_tags1"
FROM (
SELECT F0."userid" AS "userid", F0."movieid" AS "movieid", F0."tag" AS "tag", F0."timestamp" AS "timestamp", F0."tdate" AS "tdate", F0."tyear" AS "tyear", F0."tmonth" AS "tmonth", F0."tday" AS "tday",  binary_search_array_pos(ARRAY [1,153,345,551,832,993,1175,1219,1262,1345,1584,1785,1997,2160,2366,2599,2797,3028,3260,3534,3809,4037,4370,4802,5068,5459,5900,6218,6552,6934,7153,7445,8327,8783,9013,26974,30749,33166,36517,40815,44555,47099,49524,52281,54503,55908,58154,60293,63676,66509,69498,71579,74282,77947,80463,83049,86882,89804,92535,96417,99249,103339,106920,111778,131259], movieid) - 1 AS "PROV_tags1"
FROM "tags" AS F0) F0
GROUP BY F0."movieid") F0) F1)) F0
WHERE (F0."movieid" = F0."movieid1")) F0) F0 ORDER BY total_cnt DESC
limit 10) F0 CROSS JOIN (
SELECT F0."movieid" AS "movieid", F0."title" AS "title", F0."genres" AS "genres", binary_search_array_pos(ARRAY [1,430,868,1307,1773,2215,2642,3070,3499,3928,4357,4784,5211,5639,6065,6503,6931,7357,8140,8780,25974,26611,27548,31960,34065,41688,46062,49766,53769,57209,60293,64427,68067,70597,72593,74685,78211,80132,81853,84103,86372,88049,89850,91566,93391,95352,97031,98751,100291,102058,103619,105159,106674,108212,109846,111626,113350,115149,116879,118756,120936,124348,126987,128991,131263], movieid) - 1 AS "PROV_movies1"
FROM "movies" AS F0) F1)) F0
WHERE (F0."movieid1" = F0."movieid")) F0;
