WITH temp_view_1 AS (
SELECT /*+ materialize */ count(F0_0."p_favoritecount") AS "AGGR_0", F0_0."u_id" AS "GROUP_0"
FROM (
SELECT F0_0."u_id" AS "u_id", F0_0."u_reputation" AS "u_reputation", F0_0."u_creationtime" AS "u_creationtime", F0_0."u_creationdate" AS "u_creationdate", F0_0."u_creationyear" AS "u_creationyear", F0_0."u_displayname" AS "u_displayname", F0_0."u_lastaccesstime" AS "u_lastaccesstime", F0_0."u_lastaccessyear" AS "u_lastaccessyear", F0_0."u_location" AS "u_location", F0_0."u_views" AS "u_views", F0_0."u_upvotes" AS "u_upvotes", F0_0."u_downvotes" AS "u_downvotes", F0_0."v_accountid" AS "v_accountid", F0_0."c_id" AS "c_id", F0_0."c_postid" AS "c_postid", F0_0."c_score" AS "c_score", F0_0."c_creationtime" AS "c_creationtime", F0_0."c_creationdate" AS "c_creationdate", F0_0."c_creationyear" AS "c_creationyear", F0_0."c_userid" AS "c_userid", F1_0."p_id" AS "p_id", F1_0."p_posttypeid" AS "p_posttypeid", F1_0."p_acceptedanswerid" AS "p_acceptedanswerid", F1_0."p_creationtime" AS "p_creationtime", F1_0."p_creationdate" AS "p_creationdate", F1_0."p_creationyear" AS "p_creationyear", F1_0."p_viewcount" AS "p_viewcount", F1_0."p_owneruserid" AS "p_owneruserid", F1_0."p_lasteditoruserid" AS "p_lasteditoruserid", F1_0."p_lasteditordisplayname" AS "p_lasteditordisplayname", F1_0."p_lasteditdate" AS "p_lasteditdate", F1_0."p_lastactivitydate" AS "p_lastactivitydate", F1_0."p_title" AS "p_title", F1_0."p_tags" AS "p_tags", F1_0."p_answercount" AS "p_answercount", F1_0."p_commentcount" AS "p_commentcount", F1_0."p_favoritecount" AS "p_favoritecount", F1_0."p_communityowneddate" AS "p_communityowneddate"
FROM ((
SELECT F0_0."u_id" AS "u_id", F0_0."u_reputation" AS "u_reputation", F0_0."u_creationtime" AS "u_creationtime", F0_0."u_creationdate" AS "u_creationdate", F0_0."u_creationyear" AS "u_creationyear", F0_0."u_displayname" AS "u_displayname", F0_0."u_lastaccesstime" AS "u_lastaccesstime", F0_0."u_lastaccessyear" AS "u_lastaccessyear", F0_0."u_location" AS "u_location", F0_0."u_views" AS "u_views", F0_0."u_upvotes" AS "u_upvotes", F0_0."u_downvotes" AS "u_downvotes", F0_0."v_accountid" AS "v_accountid", F1_0."c_id" AS "c_id", F1_0."c_postid" AS "c_postid", F1_0."c_score" AS "c_score", F1_0."c_creationtime" AS "c_creationtime", F1_0."c_creationdate" AS "c_creationdate", F1_0."c_creationyear" AS "c_creationyear", F1_0."c_userid" AS "c_userid"
FROM ((
SELECT F0_0."u_id" AS "u_id", F0_0."u_reputation" AS "u_reputation", F0_0."u_creationtime" AS "u_creationtime", F0_0."u_creationdate" AS "u_creationdate", F0_0."u_creationyear" AS "u_creationyear", F0_0."u_displayname" AS "u_displayname", F0_0."u_lastaccesstime" AS "u_lastaccesstime", F0_0."u_lastaccessyear" AS "u_lastaccessyear", F0_0."u_location" AS "u_location", F0_0."u_views" AS "u_views", F0_0."u_upvotes" AS "u_upvotes", F0_0."u_downvotes" AS "u_downvotes", F0_0."v_accountid" AS "v_accountid"
FROM "users_b1" F0_0
WHERE (F0_0."u_id" <@ '{16602,19370,22174,25172,111561,115436,207173,209364,217916,219985,438733,440668,503104,505148,1046628,1048633,1414564,1415921,1491352,1492806}'::int[])) F0_0 CROSS JOIN (select * from "comments_b1" where "c_userid" <@ '{16602,19370,22174,25172,111561,115436,207173,209364,217916,219985,438733,440668,503104,505148,1046628,1048633,1414564,1415921,1491352,1492806}'::int[] ) F1_0)) F0_0 CROSS JOIN (select * from "posts_b1" where "p_owneruserid" <@ '{16602,19370,22174,25172,111561,115436,207173,209364,217916,219985,438733,440668,503104,505148,1046628,1048633,1414564,1415921,1491352,1492806}'::int[] ) F1_0)) F0_0
WHERE ((F0_0."u_id" = F0_0."c_userid") and (F0_0."c_postid" = F0_0."p_id"))
GROUP BY F0_0."u_id"),
temp_view_0 AS (
SELECT /*+ materialize */ F0_0."GROUP_0" AS "u_id", F0_0."AGGR_0" AS "numcmts"
FROM (SELECT * FROM temp_view_1) F0_0)
SELECT F0_0."u_id" AS "u_id", F0_0."numcmts" AS "numcmts"
FROM (
SELECT F0_0."u_id" AS "u_id", F0_0."numcmts" AS "numcmts"
FROM (SELECT * FROM temp_view_0) F0_0
ORDER BY "numcmts" DESC NULLS LAST) F0_0
LIMIT 10;
