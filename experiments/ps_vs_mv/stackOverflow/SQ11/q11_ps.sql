WITH temp_view_1 AS (
SELECT /*+ materialize */ count(F0_0."p_id") AS "AGGR_0", F0_0."u_id" AS "GROUP_0"
FROM (
SELECT F0_0."u_id" AS "u_id", F0_0."u_reputation" AS "u_reputation", F0_0."u_creationtime" AS "u_creationtime", F0_0."u_creationdate" AS "u_creationdate", F0_0."u_creationyear" AS "u_creationyear", F0_0."u_displayname" AS "u_displayname", F0_0."u_lastaccesstime" AS "u_lastaccesstime", F0_0."u_lastaccessyear" AS "u_lastaccessyear", F0_0."u_location" AS "u_location", F0_0."u_views" AS "u_views", F0_0."u_upvotes" AS "u_upvotes", F0_0."u_downvotes" AS "u_downvotes", F0_0."v_accountid" AS "v_accountid", F1_0."p_id" AS "p_id", F1_0."p_posttypeid" AS "p_posttypeid", F1_0."p_acceptedanswerid" AS "p_acceptedanswerid", F1_0."p_creationdate" AS "p_creationdate", F1_0."p_viewcount" AS "p_viewcount", F1_0."p_owneruserid" AS "p_owneruserid", F1_0."p_lasteditoruserid" AS "p_lasteditoruserid", F1_0."p_lasteditordisplayname" AS "p_lasteditordisplayname", F1_0."p_lasteditdate" AS "p_lasteditdate", F1_0."p_lastactivitydate" AS "p_lastactivitydate", F1_0."p_title" AS "p_title", F1_0."p_tags" AS "p_tags", F1_0."p_answercount" AS "p_answercount", F1_0."p_commentcount" AS "p_commentcount", F1_0."p_favoritecount" AS "p_favoritecount", F1_0."p_communityowneddate" AS "p_communityowneddate", F1_0."p_parentid" AS "p_parentid", F1_0."p_score" AS "p_score", F1_0."p_body" AS "p_body", F1_0."p_contentlicense" AS "p_contentlicense"
FROM ((
SELECT F0_0."u_id" AS "u_id", F0_0."u_reputation" AS "u_reputation", F0_0."u_creationtime" AS "u_creationtime", F0_0."u_creationdate" AS "u_creationdate", F0_0."u_creationyear" AS "u_creationyear", F0_0."u_displayname" AS "u_displayname", F0_0."u_lastaccesstime" AS "u_lastaccesstime", F0_0."u_lastaccessyear" AS "u_lastaccessyear", F0_0."u_location" AS "u_location", F0_0."u_views" AS "u_views", F0_0."u_upvotes" AS "u_upvotes", F0_0."u_downvotes" AS "u_downvotes", F0_0."v_accountid" AS "v_accountid"
FROM "users_b1" F0_0
WHERE (F0_0."u_id" <@ '{5678,7970,16602,19370,22174,25172,27959,31484,111561,115436,546656,548796,1142927,1144849,1491352,1492806,2900504,2901771,3731996,3733176}'::int[])) F0_0 CROSS JOIN (
SELECT F0_0."p_id" AS "p_id", F0_0."p_posttypeid" AS "p_posttypeid", F0_0."p_acceptedanswerid" AS "p_acceptedanswerid", F0_0."p_creationdate" AS "p_creationdate", F0_0."p_viewcount" AS "p_viewcount", F0_0."p_owneruserid" AS "p_owneruserid", F0_0."p_lasteditoruserid" AS "p_lasteditoruserid", F0_0."p_lasteditordisplayname" AS "p_lasteditordisplayname", F0_0."p_lasteditdate" AS "p_lasteditdate", F0_0."p_lastactivitydate" AS "p_lastactivitydate", F0_0."p_title" AS "p_title", F0_0."p_tags" AS "p_tags", F0_0."p_answercount" AS "p_answercount", F0_0."p_commentcount" AS "p_commentcount", F0_0."p_favoritecount" AS "p_favoritecount", F0_0."p_communityowneddate" AS "p_communityowneddate", F0_0."p_parentid" AS "p_parentid", F0_0."p_score" AS "p_score", F0_0."p_body" AS "p_body", F0_0."p_contentlicense" AS "p_contentlicense"
FROM "posts_bb1" F0_0
WHERE (F0_0."p_owneruserid" <@ '{5678,7970,16602,19370,22174,25172,27959,31484,111561,115436,546656,548796,1142927,1144849,1491352,1492806,2900504,2901771,3731996,3733176}'::int[])) F1_0)) F0_0
WHERE ((F0_0."u_id" = F0_0."p_owneruserid") AND (F0_0."p_posttypeid" = 2))
GROUP BY F0_0."u_id"),
temp_view_0 AS (
SELECT /*+ materialize */ F0_0."userid" AS "u_link", F0_0."u_displayname" AS "u_displayname", F0_0."answercount" AS "answercount", F0_0."u_reputation" AS "u_reputation", (F0_0."u_reputation" / F0_0."answercount") AS "peransweravg"
FROM (
SELECT F0_0."userid" AS "userid", F0_0."answercount" AS "answercount", F1_0."u_id" AS "u_id", F1_0."u_reputation" AS "u_reputation", F1_0."u_creationtime" AS "u_creationtime", F1_0."u_creationdate" AS "u_creationdate", F1_0."u_creationyear" AS "u_creationyear", F1_0."u_displayname" AS "u_displayname", F1_0."u_lastaccesstime" AS "u_lastaccesstime", F1_0."u_lastaccessyear" AS "u_lastaccessyear", F1_0."u_location" AS "u_location", F1_0."u_views" AS "u_views", F1_0."u_upvotes" AS "u_upvotes", F1_0."u_downvotes" AS "u_downvotes", F1_0."v_accountid" AS "v_accountid"
FROM ((
SELECT F0_0."GROUP_0" AS "userid", F0_0."AGGR_0" AS "answercount"
FROM (SELECT * FROM temp_view_1) F0_0) F0_0 CROSS JOIN (
SELECT F0_0."u_id" AS "u_id", F0_0."u_reputation" AS "u_reputation", F0_0."u_creationtime" AS "u_creationtime", F0_0."u_creationdate" AS "u_creationdate", F0_0."u_creationyear" AS "u_creationyear", F0_0."u_displayname" AS "u_displayname", F0_0."u_lastaccesstime" AS "u_lastaccesstime", F0_0."u_lastaccessyear" AS "u_lastaccessyear", F0_0."u_location" AS "u_location", F0_0."u_views" AS "u_views", F0_0."u_upvotes" AS "u_upvotes", F0_0."u_downvotes" AS "u_downvotes", F0_0."v_accountid" AS "v_accountid"
FROM "users_b1" F0_0
WHERE (F0_0."u_id" <@ '{5678,7970,16602,19370,22174,25172,27959,31484,111561,115436,546656,548796,1142927,1144849,1491352,1492806,2900504,2901771,3731996,3733176}'::int[])) F1_0)) F0_0
WHERE (F0_0."userid" = F0_0."u_id"))
SELECT F0_0."u_link" AS "u_link", F0_0."u_displayname" AS "u_displayname", F0_0."answercount" AS "answercount", F0_0."u_reputation" AS "u_reputation", F0_0."peransweravg" AS "peransweravg"
FROM (
SELECT F0_0."u_link" AS "u_link", F0_0."u_displayname" AS "u_displayname", F0_0."answercount" AS "answercount", F0_0."u_reputation" AS "u_reputation", F0_0."peransweravg" AS "peransweravg"
FROM (SELECT * FROM temp_view_0) F0_0
ORDER BY "answercount" DESC NULLS LAST) F0_0
LIMIT 10;
