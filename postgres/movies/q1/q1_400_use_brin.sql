SELECT F0."title" AS "title", F0."movieid" AS "movieid", F0."num_ratings" AS "num_ratings"
FROM (
SELECT F0."title" AS "title", F0."movieid" AS "movieid", F0."num_ratings" AS "num_ratings"
FROM (
SELECT F0."GROUP_1" AS "title", F0."GROUP_0" AS "movieid", F0."AGGR_0" AS "num_ratings"
FROM (
SELECT count(F0."rating") AS "AGGR_0", F0."movieid" AS "GROUP_0", F0."title" AS "GROUP_1"
FROM (
SELECT F0."movieid" AS "movieid", F0."title" AS "title", F0."genres" AS "genres", F1."userid" AS "userid", F1."movieid" AS "movieid1", F1."rating" AS "rating", F1."timestamp" AS "timestamp", F1."rdate" AS "rdate", F1."ryear" AS "ryear", F1."rmonth" AS "rmonth", F1."rday" AS "rday"
FROM ((
SELECT F0."movieid" AS "movieid", F0."title" AS "title", F0."genres" AS "genres"
FROM "movies" AS F0
WHERE F0."movieid" <@ '{69,138,206,619,2539,2608}'::int[] ) F0 CROSS JOIN (
SELECT F0."userid" AS "userid", F0."movieid" AS "movieid", F0."rating" AS "rating", F0."timestamp" AS "timestamp", F0."rdate" AS "rdate", F0."ryear" AS "ryear", F0."rmonth" AS "rmonth", F0."rday" AS "rday"
FROM "ratings" AS F0
WHERE F0."movieid" <@ '{107,126,252,269,277,303,308,327,355,371,471,481,516,529,569,611,2551,2572}'::int[] ) F1)) F0
WHERE (F0."movieid" = F0."movieid1")
GROUP BY F0."movieid", F0."title") F0) F0) F0 ORDER BY num_ratings DESC
limit 10;
