WITH temp_view_1 AS (
SELECT /*+ materialize */ count(1) AS "AGGR_0", F0_0."u_id" AS "GROUP_0", F0_0."u_displayname" AS "GROUP_1"
FROM (
SELECT F0_0."b_id" AS "b_id", F0_0."b_userid" AS "b_userid", F0_0."b_name" AS "b_name", F0_0."b_time" AS "b_time", F0_0."b_date" AS "b_date", F0_0."b_year" AS "b_year", F0_0."b_class" AS "b_class", F0_0."b_tagbased" AS "b_tagbased", F1_0."u_id" AS "u_id", F1_0."u_reputation" AS "u_reputation", F1_0."u_creationtime" AS "u_creationtime", F1_0."u_creationdate" AS "u_creationdate", F1_0."u_creationyear" AS "u_creationyear", F1_0."u_displayname" AS "u_displayname", F1_0."u_lastaccesstime" AS "u_lastaccesstime", F1_0."u_lastaccessyear" AS "u_lastaccessyear", F1_0."u_location" AS "u_location", F1_0."u_views" AS "u_views", F1_0."u_upvotes" AS "u_upvotes", F1_0."u_downvotes" AS "u_downvotes", F1_0."v_accountid" AS "v_accountid"
FROM ((SELECT * FROM "badges_b1" WHERE b_userid <@ '{1,62313,99804,173923}'::int[]) F0_0 CROSS JOIN (
SELECT F0_0."u_id" AS "u_id", F0_0."u_reputation" AS "u_reputation", F0_0."u_creationtime" AS "u_creationtime", F0_0."u_creationdate" AS "u_creationdate", F0_0."u_creationyear" AS "u_creationyear", F0_0."u_displayname" AS "u_displayname", F0_0."u_lastaccesstime" AS "u_lastaccesstime", F0_0."u_lastaccessyear" AS "u_lastaccessyear", F0_0."u_location" AS "u_location", F0_0."u_views" AS "u_views", F0_0."u_upvotes" AS "u_upvotes", F0_0."u_downvotes" AS "u_downvotes", F0_0."v_accountid" AS "v_accountid"
FROM "users_b1" F0_0
WHERE (F0_0."u_id" <@ '{1,62313,99804,173923}'::int[])) F1_0)) F0_0
WHERE (F0_0."b_userid" = F0_0."u_id")
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


