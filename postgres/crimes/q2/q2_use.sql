--use sql
SELECT F0."AGGR_0" AS "count(1)"
FROM (
SELECT count(1) AS "AGGR_0"
FROM (
SELECT F0."cnt" AS "cnt", F0."block" AS "block"
FROM (
SELECT F0."cnt" AS "cnt", F0."block" AS "block"
FROM (
SELECT F0."AGGR_0" AS "cnt", F0."GROUP_0" AS "block"
FROM (
SELECT count(1) AS "AGGR_0", F0."block" AS "GROUP_0"
FROM "crimes" AS F0
WHERE ((((F0."beat" >= 111) AND (F0."beat" < 112)) OR ((F0."beat" >= 122) AND (F0."beat" < 123))) OR ((F0."beat" >= 1651) AND (F0."beat" < 1652)))
AND (((F0."district" >= 1) AND (F0."district" < 2)) OR ((F0."district" >= 16) AND (F0."district" < 17)))
AND ((F0."ward" >= 41) AND (F0."ward" < 43))
AND (((F0."community_area" >= 32) AND (F0."community_area" < 33)) OR ((F0."community_area" >= 76) AND (F0."community_area" < 77)))
GROUP BY F0."block") F0) F0) F0
WHERE (F0."cnt" > 10000)) F0) F0;
