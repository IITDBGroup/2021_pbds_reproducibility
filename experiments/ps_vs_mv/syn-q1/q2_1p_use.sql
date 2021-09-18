WITH temp_view_0 AS (
SELECT /*+ materialize */ sum(F0_0."a") AS "AGGR_0", F0_0."bb" AS "GROUP_0"
FROM "v1" F0_0
WHERE (F0_0."b" <@ '{19799587,19805154,19805154,19810721,19810721,19816288,19816288,19821855,19821855,19827422,19827422,19832989,19832989,19838556,19838556,19844123,19844123,19849690,19849690,19855257,19855257,19860824,19860824,19866391,19866391,19871958,19871958,19877525,19877525,19883092,19883092,19888659,19888659,19894226,19894226,19899793,19899793,19905360,19905360,19910927,19910927,19916494,19916494,19922061,19922061,19927628,19927628,19933195,19933195,19938762,19938762,19944329,19944329,19949896,19949896,19955463,19955463,19961030,19961030,19966597,19966597,19972164,19972164,19977731,19977731,19983298,19983298,19988865,19988865,19994432,19994432,19999999,19999999,20000001}'::int[])
GROUP BY F0_0."bb")
SELECT F0_0."suma" AS "suma", F0_0."bb" AS "bb"
FROM (
SELECT F0_0."AGGR_0" AS "suma", F0_0."GROUP_0" AS "bb"
FROM (SELECT * FROM temp_view_0) F0_0) F0_0
WHERE (F0_0."suma" > 79200000);