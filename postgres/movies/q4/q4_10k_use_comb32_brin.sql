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
WHERE (((F0."movieid" >= 95) AND (F0."movieid" < 745)) OR ((F0."movieid" >= 2396) AND (F0."movieid" < 2639)))
GROUP BY F0."movieid") F0) F0 CROSS JOIN (
SELECT F0."AGGR_0" AS "cnt2", F0."GROUP_0" AS "movieid"
FROM (
SELECT count(1) AS "AGGR_0", F0."movieid" AS "GROUP_0"
FROM "tags" AS F0
WHERE (((F0."movieid" >= 1) AND (F0."movieid" < 778)) OR ((F0."movieid" >= 2291) AND (F0."movieid" < 2692)))
GROUP BY F0."movieid") F0) F1)) F0
WHERE (F0."movieid" = F0."movieid1")) F0) F0 ORDER BY total_cnt DESC
limit 10) F0 CROSS JOIN (
SELECT F0."movieid" AS "movieid", F0."title" AS "title", F0."genres" AS "genres"
FROM "movies" AS F0
WHERE movieid <@ '{108,111,259,262,294,297,316,319,355,358,478,481,527,530,589,592,592,595,2569,2572}'::int[] ) F1)) F0
WHERE (F0."movieid1" = F0."movieid");
