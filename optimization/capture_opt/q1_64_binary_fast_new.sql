SELECT fast_bit_or(F0."PROV_tag1"::bit(64)) AS "PROV_tag1"
FROM (
SELECT F0."tagid" AS "tagid", F0."userid" AS "userid", F0."movieid" AS "movieid", F0."tag" AS "tag", F0."timestamp" AS "timestamp", F0."tdate" AS "tdate", F0."tyear" AS "tyear", F0."tmonth" AS "tmonth", F0."tday" AS "tday", F0."PROV_tag1" AS "PROV_tag1"
FROM (
SELECT F0."tagid" AS "tagid", F0."userid" AS "userid", F0."movieid" AS "movieid", F0."tag" AS "tag", F0."timestamp" AS "timestamp", F0."tdate" AS "tdate", F0."tyear" AS "tyear", F0."tmonth" AS "tmonth", F0."tday" AS "tday", set_bit(0::bit(64), binary_search_array_pos(ARRAY [1,6864,14551,21619,28749,35527,42880,50605,57041,64048,71455,78981,86849,94422,101685,109146,115922,123408,131009,138519,145653,152414,159591,166749,173554,180796,188032,195063,202396,209491,216943,224253,231441,238027,245461,252821,260508,267735,275272,282472,289916,296231,303444,310773,318016,325689,333039,340548,347924,355294,362657,370646,377264,384673,391983,399589,406133,413056,420426,427419,435151,443220,450992,458519,465565], tagid) - 1,1 ) AS "PROV_tag1"
FROM "tag" AS F0) F0
) F0;
