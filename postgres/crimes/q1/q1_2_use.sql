SELECT F0."c" AS "c", F0."district" AS "district", F0."ward" AS "ward", F0."block" AS "block", F0."community_area" AS "community_area", F0."beat" AS "beat"
FROM (
SELECT F0."c" AS "c", F0."district" AS "district", F0."ward" AS "ward", F0."block" AS "block", F0."community_area" AS "community_area", F0."beat" AS "beat"
FROM (
SELECT F0."AGGR_0" AS "c", F0."GROUP_0" AS "district", F0."GROUP_1" AS "ward", F0."GROUP_2" AS "block", F0."GROUP_3" AS "community_area", F0."GROUP_4" AS "beat"
FROM (
SELECT count(1) AS "AGGR_0", F0."district" AS "GROUP_0", F0."ward" AS "GROUP_1", F0."block" AS "GROUP_2", F0."community_area" AS "GROUP_3", F0."beat" AS "GROUP_4"
FROM "crimes" AS F0
WHERE ( (((((F0."district" >= 1) AND (F0."district" < 2)) OR ((F0."district" >= 8) AND (F0."district" < 9))) OR ((F0."district" >= 16) AND (F0."district" < 17))) OR ((F0."district" >= 18) AND (F0."district" < 19))) AND (((((F0."community_area" >= 8) AND (F0."community_area" < 9)) OR ((F0."community_area" >= 32) AND (F0."community_area" < 33))) OR ((F0."community_area" >= 65) AND (F0."community_area" < 66))) OR ((F0."community_area" >= 76) AND (F0."community_area" < 77))) AND (((F0."ward" >= 13) AND (F0."ward" < 14)) OR ((F0."ward" >= 41) AND (F0."ward" < 43))) AND ((((((F0."beat" >= 111) AND (F0."beat" < 112)) OR ((F0."beat" >= 122) AND (F0."beat" < 123))) OR ((F0."beat" >= 833) AND (F0."beat" < 834))) OR ((F0."beat" >= 1651) AND (F0."beat" < 1652))) OR ((F0."beat" >= 1833) AND (F0."beat" < 1834))) )
GROUP BY F0."district", F0."ward", F0."block", F0."community_area", F0."beat") F0) F0 order by c desc) F0
limit 5;
