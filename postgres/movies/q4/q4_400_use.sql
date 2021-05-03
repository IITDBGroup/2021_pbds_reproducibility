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
WHERE ((((((((((F0."movieid" >= 107) AND (F0."movieid" < 126)) OR ((F0."movieid" >= 252) AND (F0."movieid" < 269))) OR ((F0."movieid" >= 277) AND (F0."movieid" < 303))) OR ((F0."movieid" >= 308) AND (F0."movieid" < 327))) OR ((F0."movieid" >= 355) AND (F0."movieid" < 371))) OR ((F0."movieid" >= 471) AND (F0."movieid" < 481))) OR ((F0."movieid" >= 516) AND (F0."movieid" < 529))) OR ((F0."movieid" >= 569) AND (F0."movieid" < 611))) OR ((F0."movieid" >= 2551) AND (F0."movieid" < 2572)))
GROUP BY F0."movieid") F0) F0 CROSS JOIN (
SELECT F0."AGGR_0" AS "cnt2", F0."GROUP_0" AS "movieid"
FROM (
SELECT count(1) AS "AGGR_0", F0."movieid" AS "GROUP_0"
FROM "tags" AS F0
WHERE ((((((((F0."movieid" >= 76) AND (F0."movieid" < 123)) OR ((F0."movieid" >= 232) AND (F0."movieid" < 333))) OR ((F0."movieid" >= 349) AND (F0."movieid" < 372))) OR ((F0."movieid" >= 456) AND (F0."movieid" < 485))) OR ((F0."movieid" >= 509) AND (F0."movieid" < 539))) OR ((F0."movieid" >= 587) AND (F0."movieid" < 628))) OR ((F0."movieid" >= 2550) AND (F0."movieid" < 2594)))
GROUP BY F0."movieid") F0) F1)) F0
WHERE (F0."movieid" = F0."movieid1")) F0) F0 ORDER BY total_cnt DESC
limit 10) F0 CROSS JOIN (
SELECT F0."movieid" AS "movieid", F0."title" AS "title", F0."genres" AS "genres"
FROM "movies" AS F0
WHERE ((((F0."movieid" >= 69) AND (F0."movieid" < 138)) OR ((F0."movieid" >= 206) AND (F0."movieid" < 619))) OR ((F0."movieid" >= 2539) AND (F0."movieid" < 2608)))) F1)) F0
WHERE (F0."movieid1" = F0."movieid");
