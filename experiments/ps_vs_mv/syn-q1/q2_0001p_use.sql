WITH temp_view_0 AS (
SELECT /*+ materialize */ sum(F0_0."a") AS "AGGR_0", F0_0."bb" AS "GROUP_0"
FROM "v1" F0_0
WHERE (F0_0."b" <@ '{19997906,20000001}'::int[])
GROUP BY F0_0."bb")
SELECT F0_0."suma" AS "suma", F0_0."bb" AS "bb"
FROM (
SELECT F0_0."AGGR_0" AS "suma", F0_0."GROUP_0" AS "bb"
FROM (SELECT * FROM temp_view_0) F0_0) F0_0
WHERE (F0_0."suma" > 79999200);
