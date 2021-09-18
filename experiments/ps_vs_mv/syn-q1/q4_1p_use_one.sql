WITH temp_view_0 AS (
SELECT /*+ materialize */ avg(F0_0."a") AS "AGGR_0", F0_0."ee" AS "GROUP_0"
FROM "v2" F0_0
WHERE (F0_0."a" <@ '{39599174,40000001}'::int[])
GROUP BY F0_0."ee")
SELECT F0_0."suma" AS "suma", F0_0."ee" AS "ee"
FROM (
SELECT F0_0."AGGR_0" AS "suma", F0_0."GROUP_0" AS "ee"
FROM (SELECT * FROM temp_view_0) F0_0) F0_0
WHERE (F0_0."suma" > 39600000);


