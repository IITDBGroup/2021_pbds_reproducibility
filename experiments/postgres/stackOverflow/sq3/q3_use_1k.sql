WITH temp_view_1 AS (
SELECT /*+ materialize */ count(1) AS "AGGR_0", F0_0."u_id" AS "GROUP_0", F0_0."u_displayname" AS "GROUP_1"
FROM (
SELECT F0_0."c_id" AS "c_id", F0_0."c_postid" AS "c_postid", F0_0."c_score" AS "c_score", F0_0."c_creationtime" AS "c_creationtime", F0_0."c_creationdate" AS "c_creationdate", F0_0."c_creationyear" AS "c_creationyear", F0_0."c_userid" AS "c_userid", F1_0."u_id" AS "u_id", F1_0."u_reputation" AS "u_reputation", F1_0."u_creationtime" AS "u_creationtime", F1_0."u_creationdate" AS "u_creationdate", F1_0."u_creationyear" AS "u_creationyear", F1_0."u_displayname" AS "u_displayname", F1_0."u_lastaccesstime" AS "u_lastaccesstime", F1_0."u_lastaccessyear" AS "u_lastaccessyear", F1_0."u_location" AS "u_location", F1_0."u_views" AS "u_views", F1_0."u_upvotes" AS "u_upvotes", F1_0."u_downvotes" AS "u_downvotes", F1_0."v_accountid" AS "v_accountid"
FROM ((SELECT * FROM "comments_b1" WHERE c_userid <@ '{1,25565,99804,134824,420412,441204,499826,520237,1042073,1063027,1123241,1145096,1402819,1417036,1485260,1498729}'::int[]) F0_0 CROSS JOIN (
SELECT F0_0."u_id" AS "u_id", F0_0."u_reputation" AS "u_reputation", F0_0."u_creationtime" AS "u_creationtime", F0_0."u_creationdate" AS "u_creationdate", F0_0."u_creationyear" AS "u_creationyear", F0_0."u_displayname" AS "u_displayname", F0_0."u_lastaccesstime" AS "u_lastaccesstime", F0_0."u_lastaccessyear" AS "u_lastaccessyear", F0_0."u_location" AS "u_location", F0_0."u_views" AS "u_views", F0_0."u_upvotes" AS "u_upvotes", F0_0."u_downvotes" AS "u_downvotes", F0_0."v_accountid" AS "v_accountid"
FROM "users_b1" F0_0
WHERE (F0_0."u_id" <@ '{1,25565,99804,134824,420412,441204,499826,520237,1042073,1063027,1123241,1145096,1402819,1417036,1485260,1498729}'::int[])) F1_0)) F0_0
WHERE (F0_0."c_userid" = F0_0."u_id")
GROUP BY F0_0."u_id", F0_0."u_displayname"),
temp_view_0 AS (
SELECT /*+ materialize */ F0_0."AGGR_0" AS "cnt", F0_0."GROUP_0" AS "u_id", F0_0."GROUP_1" AS "u_displayname"
FROM (SELECT * FROM temp_view_1) F0_0)
SELECT F0_0."cnt" AS "cnt", F0_0."u_id" AS "u_id", F0_0."u_displayname" AS "u_displayname"
FROM (
SELECT F0_0."cnt" AS "cnt", F0_0."u_id" AS "u_id", F0_0."u_displayname" AS "u_displayname"
FROM (SELECT * FROM temp_view_0) F0_0
ORDER BY "cnt" DESC NULLS LAST) F0_0
LIMIT 10;
