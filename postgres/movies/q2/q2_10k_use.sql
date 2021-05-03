WITH _temp_view_1 AS (
SELECT /*+ materialize */ count(F0."rating") AS "AGGR_0", F0."movieid" AS "GROUP_0", F0."title" AS "GROUP_1"
FROM (
SELECT F0."movieid" AS "movieid", F0."title" AS "title", F0."genres" AS "genres", F1."userid" AS "userid", F1."movieid" AS "movieid1", F1."rating" AS "rating", F1."timestamp" AS "timestamp", F1."rdate" AS "rdate", F1."ryear" AS "ryear", F1."rmonth" AS "rmonth", F1."rday" AS "rday"
FROM ((
SELECT F0."movieid" AS "movieid", F0."title" AS "title", F0."genres" AS "genres"
FROM "movies" AS F0
WHERE ((((F0."movieid" >= '294') AND (F0."movieid" < '297')) OR ((F0."movieid" >= '316') AND (F0."movieid" < '319'))) OR ((F0."movieid" >= '355') AND (F0."movieid" < '358')))) F0 CROSS JOIN (
SELECT F0."userid" AS "userid", F0."movieid" AS "movieid", F0."rating" AS "rating", F0."timestamp" AS "timestamp", F0."rdate" AS "rdate", F0."ryear" AS "ryear", F0."rmonth" AS "rmonth", F0."rday" AS "rday"
FROM "ratings" AS F0
WHERE ((F0."movieid" >= '284') AND (F0."movieid" < '396'))) F1)) F0
WHERE (F0."movieid" = F0."movieid1")
GROUP BY F0."movieid", F0."title"),
_temp_view_0 AS (
SELECT /*+ materialize */ count(1) AS "AGGR_0"
FROM (
SELECT F0."GROUP_1" AS "title", F0."GROUP_0" AS "movieid", F0."AGGR_0" AS "num_ratings"
FROM (SELECT * FROM _temp_view_1) F0) F0
WHERE (F0."num_ratings" >= 63300))
SELECT F0."AGGR_0" AS "cnt"
FROM (SELECT * FROM _temp_view_0) F0;
