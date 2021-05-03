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
where ((movieid >= 284 and movieid< 311) or (movieid >= 311 and movieid< 396) or (movieid >= 591 and movieid< 607) or (movieid >= 402 and movieid< 530) or (movieid >= 226 and movieid< 284) or (movieid >= 109 and movieid< 115) or (movieid >= 584 and movieid< 591) or (movieid >= 2564 and movieid< 2576) or (movieid >= 402 and movieid< 530))
GROUP BY F0."movieid") F0) F0 CROSS JOIN (
SELECT F0."AGGR_0" AS "cnt2", F0."GROUP_0" AS "movieid"
FROM (
SELECT count(1) AS "AGGR_0", F0."movieid" AS "GROUP_0"
FROM "tags" AS F0
where ((movieid >= 291 and movieid< 298) or (movieid >= 341 and movieid< 360) or (movieid >= 313 and movieid< 320) or (movieid >= 591 and movieid< 598) or (movieid >= 479 and movieid< 486) or (movieid >= 259 and movieid< 264) or (movieid >= 103 and movieid< 122) or (movieid >= 580 and movieid< 591) or (movieid >= 2569 and movieid< 2573) or (movieid >= 526 and movieid< 530))
GROUP BY F0."movieid") F0) F1)) F0
WHERE (F0."movieid" = F0."movieid1")) F0) F0 ORDER BY total_cnt DESC
limit 10) F0 CROSS JOIN (
SELECT F0."movieid" AS "movieid", F0."title" AS "title", F0."genres" AS "genres"
FROM "movies" AS F0
WHERE ((movieid >= 294 and movieid< 297) or (movieid >= 355 and movieid< 358) or (movieid >= 316 and movieid< 319) or (movieid >= 592 and movieid< 595) or (movieid >= 478 and movieid< 481) or (movieid >= 259 and movieid< 262) or (movieid >= 108 and movieid< 111) or (movieid >= 589 and movieid< 592) or (movieid >= 2569 and movieid< 2572) or (movieid >= 527 and movieid< 530)) ) F1)) F0
WHERE (F0."movieid1" = F0."movieid");
