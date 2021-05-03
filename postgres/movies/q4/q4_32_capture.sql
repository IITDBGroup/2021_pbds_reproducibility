SELECT fast_bit_or(F0."PROV_ratings1") AS "PROV_ratings1", fast_bit_or(F0."PROV_tags1") AS "PROV_tags1", set_bits(F0."PROV_movies1")::bit(32) AS "PROV_movies1"
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
SELECT count(1) AS "AGGR_0", F0."movieid" AS "GROUP_0", set_bits(F0."PROV_ratings1")::bit(32) AS "PROV_ratings1"
FROM (
SELECT F0."userid" AS "userid", F0."movieid" AS "movieid", F0."rating" AS "rating", F0."timestamp" AS "timestamp", F0."rdate" AS "rdate", F0."ryear" AS "ryear", F0."rmonth" AS "rmonth", F0."rday" AS "rday",  binary_search_array_pos(ARRAY [1,95,218,329,435,552,745,925,1091,1213,1269,1380,1590,1779,2003,2167,2396,2639,2826,3083,3403,3717,4019,4465,5008,5754,6564,7361,26094,43652,55290,72407,131263], movieid) - 1 AS "PROV_ratings1"
FROM "ratings" AS F0) F0
GROUP BY F0."movieid") F0) F0 CROSS JOIN (
SELECT F0."AGGR_0" AS "cnt2", F0."GROUP_0" AS "movieid", F0."PROV_tags1" AS "PROV_tags1"
FROM (
SELECT count(1) AS "AGGR_0", F0."movieid" AS "GROUP_0", set_bits(F0."PROV_tags1")::bit(32) AS "PROV_tags1"
FROM (
SELECT F0."userid" AS "userid", F0."movieid" AS "movieid", F0."tag" AS "tag", F0."timestamp" AS "timestamp", F0."tdate" AS "tdate", F0."tyear" AS "tyear", F0."tmonth" AS "tmonth", F0."tday" AS "tday",  binary_search_array_pos(ARRAY [1,353,778,1095,1240,1464,1917,2291,2692,3108,3683,4283,4979,5690,6385,7034,7925,8957,27904,35836,44555,48997,54503,58347,63179,69134,73321,79897,86866,92259,99112,106920,131259], movieid) - 1 AS "PROV_tags1"
FROM "tags" AS F0) F0
GROUP BY F0."movieid") F0) F1)) F0
WHERE (F0."movieid" = F0."movieid1")) F0) F0 ORDER BY total_cnt DESC
limit 10) F0 CROSS JOIN (
SELECT F0."movieid" AS "movieid", F0."title" AS "title", F0."genres" AS "genres", binary_search_array_pos(ARRAY [1,868,1773,2642,3499,4357,5211,6065,6931,8140,25974,27548,34065,46062,53769,60293,68067,72593,78211,81853,86372,89850,93391,97031,100291,103619,106674,109846,113350,116879,120936,126987,131263], movieid) - 1 AS "PROV_movies1"
FROM "movies" AS F0) F1)) F0
WHERE (F0."movieid1" = F0."movieid")) F0;
