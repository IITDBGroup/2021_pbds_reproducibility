SELECT bit_or(F0."PROV_movies1"::bit(32)) AS "PROV_movies1", bit_or(F0."PROV_ratings1"::bit(32)) AS "PROV_ratings1"
FROM (
SELECT F0."title" AS "title", F0."movieid" AS "movieid", F0."num_ratings" AS "num_ratings", F0."PROV_movies1" AS "PROV_movies1", F0."PROV_ratings1" AS "PROV_ratings1"
FROM (
SELECT F0."title" AS "title", F0."movieid" AS "movieid", F0."num_ratings" AS "num_ratings", F0."PROV_movies1" AS "PROV_movies1", F0."PROV_ratings1" AS "PROV_ratings1"
FROM (
SELECT F0."GROUP_1" AS "title", F0."GROUP_0" AS "movieid", F0."AGGR_0" AS "num_ratings", F0."PROV_movies1" AS "PROV_movies1", F0."PROV_ratings1" AS "PROV_ratings1"
FROM (
SELECT count(F0."rating") AS "AGGR_0", F0."movieid" AS "GROUP_0", F0."title" AS "GROUP_1", bit_or(F0."PROV_movies1"::bit(32)) AS "PROV_movies1", bit_or(F0."PROV_ratings1"::bit(32)) AS "PROV_ratings1"
FROM (
SELECT F0."movieid" AS "movieid", F0."title" AS "title", F0."genres" AS "genres", F1."userid" AS "userid", F1."movieid" AS "movieid1", F1."rating" AS "rating", F1."timestamp" AS "timestamp", F1."rdate" AS "rdate", F1."ryear" AS "ryear", F1."rmonth" AS "rmonth", F1."rday" AS "rday", F0."PROV_movies1" AS "PROV_movies1", F1."PROV_ratings1" AS "PROV_ratings1"
FROM ((
SELECT F0."movieid" AS "movieid", F0."title" AS "title", F0."genres" AS "genres",set_bit(0::bit(32), binary_search_array_pos(ARRAY [1,868,1773,2642,3499,4357,5211,6065,6931,8140,25974,27548,34065,46062,53769,60293,68067,72593,78211,81853,86372,89850,93391,97031,100291,103619,106674,109846,113350,116879,120936,126987,131263], movieid) - 1, 1) AS "PROV_movies1"
FROM "movies" AS F0) F0 CROSS JOIN (
SELECT F0."userid" AS "userid", F0."movieid" AS "movieid", F0."rating" AS "rating", F0."timestamp" AS "timestamp", F0."rdate" AS "rdate", F0."ryear" AS "ryear", F0."rmonth" AS "rmonth", F0."rday" AS "rday",  set_bit(0::bit(32), binary_search_array_pos(ARRAY [1,95,218,329,435,552,745,925,1091,1213,1269,1380,1590,1779,2003,2167,2396,2639,2826,3083,3403,3717,4019,4465,5008,5754,6564,7361,26094,43652,55290,72407,131263], movieid) - 1, 1) AS "PROV_ratings1"
FROM "ratings" AS F0) F1)) F0
WHERE (F0."movieid" = F0."movieid1")
GROUP BY F0."movieid", F0."title") F0) F0) F0 ORDER BY num_ratings DESC
limit 10) F0;
