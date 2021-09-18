WITH temp_view_0 AS (
SELECT /*+ materialize */ sum(F0_0."a") AS "AGGR_0", F0_0."aa" AS "GROUP_0"
FROM "v1" F0_0
WHERE (F0_0."a" <@ '{39995812,40000001}'::int[])
GROUP BY F0_0."aa")
SELECT F0_0."suma" AS "suma", F0_0."aa" AS "aa"
FROM (
SELECT F0_0."AGGR_0" AS "suma", F0_0."GROUP_0" AS "aa"
FROM (SELECT * FROM temp_view_0) F0_0) F0_0
WHERE (F0_0."suma" > 39999600);
