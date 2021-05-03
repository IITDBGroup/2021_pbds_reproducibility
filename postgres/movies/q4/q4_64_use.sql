SELECT F0."title" AS "title", F0."movieid" AS "movieid", F0."total_cnt" AS "total_cnt"
FROM (
SELECT F0."total_cnt" AS "total_cnt", F0."movieid1" AS "movieid1", F1."movieid" AS "movieid", F1."title" AS "title", F1."genres" AS "genres"
FROM ((
SELECT F0."total_cnt" AS "total_cnt", F0."movieid1" AS "movieid1"
FROM (
SELECT F0."total_cnt" AS "total_cnt", F0."movieid1" AS "movieid1"
FROM (
SELECT (F0."cnt1" + F0."cnt2") AS "total_cnt", F0."movieid1" AS "movieid1"
FROM (
SELECT F0."cnt1" AS "cnt1", F0."movieid" AS "movieid", F1."cnt2" AS "cnt2", F1."movieid" AS "movieid1"
FROM ((
SELECT F0."AGGR_0" AS "cnt1", F0."GROUP_0" AS "movieid"
FROM (
SELECT count(1) AS "AGGR_0", F0."movieid" AS "GROUP_0"
FROM "ratings" AS F0
WHERE (((((F0."movieid" >= 94) AND (F0."movieid" < 163)) OR ((F0."movieid" >= 223) AND (F0."movieid" < 410))) OR ((F0."movieid" >= 471) AND (F0."movieid" < 631))) OR ((F0."movieid" >= 2541) AND (F0."movieid" < 2664)))
GROUP BY F0."movieid") F0) F0 CROSS JOIN (
SELECT F0."AGGR_0" AS "cnt2", F0."GROUP_0" AS "movieid"
FROM (
SELECT count(1) AS "AGGR_0", F0."movieid" AS "GROUP_0"
FROM "tags" AS F0
WHERE (((F0."movieid" >= 1) AND (F0."movieid" < 832)) OR ((F0."movieid" >= 2366) AND (F0."movieid" < 2599)))
GROUP BY F0."movieid") F0) F1)) F0
WHERE (F0."movieid" = F0."movieid1")) F0) F0 ORDER BY total_cnt DESC
limit 10) F0 CROSS JOIN (
SELECT F0."movieid" AS "movieid", F0."title" AS "title", F0."genres" AS "genres"
FROM "movies" AS F0
WHERE (((F0."movieid" >= 1) AND (F0."movieid" < 868)) OR ((F0."movieid" >= 2215) AND (F0."movieid" < 2642)))) F1)) F0
WHERE (F0."movieid1" = F0."movieid");
