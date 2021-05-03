EXPLAIN ANALYZE
SELECT bit_or(F0."PROV_movies1"::bit(64)) AS "PROV_movies1", bit_or(F0."PROV_ratings1"::bit(64)) AS "PROV_ratings1"
FROM (
SELECT F0."title" AS "title", F0."movieid" AS "movieid", F0."num_ratings" AS "num_ratings", F0."PROV_movies1" AS "PROV_movies1", F0."PROV_ratings1" AS "PROV_ratings1"
FROM (
SELECT F0."title" AS "title", F0."movieid" AS "movieid", F0."num_ratings" AS "num_ratings", F0."PROV_movies1" AS "PROV_movies1", F0."PROV_ratings1" AS "PROV_ratings1"
FROM (
SELECT F0."GROUP_1" AS "title", F0."GROUP_0" AS "movieid", F0."AGGR_0" AS "num_ratings", F0."PROV_movies1" AS "PROV_movies1", F0."PROV_ratings1" AS "PROV_ratings1"
FROM (
SELECT count(F0."rating") AS "AGGR_0", F0."movieid" AS "GROUP_0", F0."title" AS "GROUP_1", bit_or(F0."PROV_movies1"::bit(64)) AS "PROV_movies1", bit_or(F0."PROV_ratings1"::bit(64)) AS "PROV_ratings1"
FROM (
SELECT F0."movieid" AS "movieid", F0."title" AS "title", F0."genres" AS "genres", F1."userid" AS "userid", F1."movieid" AS "movieid1", F1."rating" AS "rating", F1."timestamp" AS "timestamp", F1."rdate" AS "rdate", F1."ryear" AS "ryear", F1."rmonth" AS "rmonth", F1."rday" AS "rday", F0."PROV_movies1" AS "PROV_movies1", F1."PROV_ratings1" AS "PROV_ratings1"
FROM ((
SELECT F0."movieid" AS "movieid", F0."title" AS "title", F0."genres" AS "genres",set_bit(0::bit(64), inc(ARRAY [1,430,868,1307,1773,2215,2642,3070,3499,3928,4357,4784,5211,5639,6065,6503,6931,7357,8140,8780,25974,26611,27548,31960,34065,41688,46062,49766,53769,57209,60293,64427,68067,70597,72593,74685,78211,80132,81853,84103,86372,88049,89850,91566,93391,95352,97031,98751,100291,102058,103619,105159,106674,108212,109846,111626,113350,115149,116879,118756,120936,124348,126987,128991,131263], movieid), 1) AS "PROV_movies1"
FROM "movies" AS F0) F0 CROSS JOIN (
SELECT F0."userid" AS "userid", F0."movieid" AS "movieid", F0."rating" AS "rating", F0."timestamp" AS "timestamp", F0."rdate" AS "rdate", F0."ryear" AS "ryear", F0."rmonth" AS "rmonth", F0."rday" AS "rday",  set_bit(0::bit(64), inc(ARRAY [1,25,94,163,223,288,339,410,471,537,631,779,902,945,1047,1101,1206,1228,1261,1301,1373,1438,1573,1646,1744,1917,1976,2054,2131,2268,2353,2421,2541,2664,2719,2859,2985,3087,3201,3363,3524,3703,3868,4007,4210,4448,4834,5010,5378,5669,6093,6537,6896,7319,8361,8957,30894,37382,45722,51834,56782,64839,74545,89804,131263], movieid), 1) AS "PROV_ratings1"
FROM "ratings" AS F0) F1)) F0
WHERE (F0."movieid" = F0."movieid1")
GROUP BY F0."movieid", F0."title") F0) F0) F0 ORDER BY num_ratings DESC
limit 10) F0;
