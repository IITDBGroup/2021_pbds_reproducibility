WITH temp_view_0 AS (
SELECT /*+ materialize */ sum(F0_0."a") AS "AGGR_0", F0_0."cc" AS "GROUP_0"
FROM "v1" F0_0
WHERE (F0_0."c" <@ '{9998953,10000001}'::int[])
GROUP BY F0_0."cc")
SELECT F0_0."suma" AS "suma", F0_0."cc" AS "cc"
FROM (
SELECT F0_0."AGGR_0" AS "suma", F0_0."GROUP_0" AS "cc"
FROM (SELECT * FROM temp_view_0) F0_0) F0_0
WHERE (F0_0."suma" > 159998400);
