WITH temp_view_2 AS (
SELECT /*+ materialize */ count(1) AS "AGGR_0", F0_0."v_postid" AS "GROUP_0"
FROM (
SELECT F0_0."v_id" AS "v_id", F0_0."v_postid" AS "v_postid", F0_0."v_votetypeid" AS "v_votetypeid", F0_0."v_userid" AS "v_userid", F0_0."v_creationtime" AS "v_creationtime", F0_0."v_creationdate" AS "v_creationdate", F0_0."v_creationyear" AS "v_creationyear"
FROM "votes" F0_0) F0_0
WHERE (F0_0."v_votetypeid" = 3)
GROUP BY F0_0."v_postid"),
temp_view_1 AS (
SELECT /*+ materialize */ sum(F0_0."downvotes") AS "AGGR_0", F0_0."u_id" AS "GROUP_0"
FROM (
SELECT F0_0."u_id" AS "u_id", F0_0."u_reputation" AS "u_reputation", F0_0."u_creationtime" AS "u_creationtime", F0_0."u_creationdate" AS "u_creationdate", F0_0."u_creationyear" AS "u_creationyear", F0_0."u_displayname" AS "u_displayname", F0_0."u_lastaccesstime" AS "u_lastaccesstime", F0_0."u_lastaccessyear" AS "u_lastaccessyear", F0_0."u_location" AS "u_location", F0_0."u_views" AS "u_views", F0_0."u_upvotes" AS "u_upvotes", F0_0."u_downvotes" AS "u_downvotes", F0_0."v_accountid" AS "v_accountid", F1_0."postid" AS "postid", F1_0."userid" AS "userid", F1_0."downvotes" AS "downvotes"
FROM ((
SELECT F0_0."u_id" AS "u_id", F0_0."u_reputation" AS "u_reputation", F0_0."u_creationtime" AS "u_creationtime", F0_0."u_creationdate" AS "u_creationdate", F0_0."u_creationyear" AS "u_creationyear", F0_0."u_displayname" AS "u_displayname", F0_0."u_lastaccesstime" AS "u_lastaccesstime", F0_0."u_lastaccessyear" AS "u_lastaccessyear", F0_0."u_location" AS "u_location", F0_0."u_views" AS "u_views", F0_0."u_upvotes" AS "u_upvotes", F0_0."u_downvotes" AS "u_downvotes", F0_0."v_accountid" AS "v_accountid"
FROM "users" F0_0) F0_0 CROSS JOIN (
SELECT F0_0."p_id" AS "postid", F0_0."p_owneruserid" AS "userid", F0_0."downvotes" AS "downvotes"
FROM (
SELECT F0_0."p_id" AS "p_id", F0_0."p_posttypeid" AS "p_posttypeid", F0_0."p_acceptedanswerid" AS "p_acceptedanswerid", F0_0."p_creationdate" AS "p_creationdate", F0_0."p_viewcount" AS "p_viewcount", F0_0."p_owneruserid" AS "p_owneruserid", F0_0."p_lasteditoruserid" AS "p_lasteditoruserid", F0_0."p_lasteditordisplayname" AS "p_lasteditordisplayname", F0_0."p_lasteditdate" AS "p_lasteditdate", F0_0."p_lastactivitydate" AS "p_lastactivitydate", F0_0."p_title" AS "p_title", F0_0."p_tags" AS "p_tags", F0_0."p_answercount" AS "p_answercount", F0_0."p_commentcount" AS "p_commentcount", F0_0."p_favoritecount" AS "p_favoritecount", F0_0."p_communityowneddate" AS "p_communityowneddate", F0_0."p_parentid" AS "p_parentid", F0_0."p_score" AS "p_score", F0_0."p_body" AS "p_body", F0_0."p_contentlicense" AS "p_contentlicense", F1_0."v_postid" AS "v_postid", F1_0."downvotes" AS "downvotes"
FROM ((
SELECT F0_0."p_id" AS "p_id", F0_0."p_posttypeid" AS "p_posttypeid", F0_0."p_acceptedanswerid" AS "p_acceptedanswerid", F0_0."p_creationdate" AS "p_creationdate", F0_0."p_viewcount" AS "p_viewcount", F0_0."p_owneruserid" AS "p_owneruserid", F0_0."p_lasteditoruserid" AS "p_lasteditoruserid", F0_0."p_lasteditordisplayname" AS "p_lasteditordisplayname", F0_0."p_lasteditdate" AS "p_lasteditdate", F0_0."p_lastactivitydate" AS "p_lastactivitydate", F0_0."p_title" AS "p_title", F0_0."p_tags" AS "p_tags", F0_0."p_answercount" AS "p_answercount", F0_0."p_commentcount" AS "p_commentcount", F0_0."p_favoritecount" AS "p_favoritecount", F0_0."p_communityowneddate" AS "p_communityowneddate", F0_0."p_parentid" AS "p_parentid", F0_0."p_score" AS "p_score", F0_0."p_body" AS "p_body", F0_0."p_contentlicense" AS "p_contentlicense"
FROM "posts_bb1" F0_0
WHERE (F0_0."p_owneruserid" <@ '{1,25172,27959,43355,51108,71053,75112,79213,87506,91591,95733,107723,111561,119361,131152,134839,138505,142873,146560,150440,154126,158348,178150,181113,187171,190028,202569,204774,207173,209364,215668,219985,255532,257566,284839,287059,297353,299398,313874,315861,335544,337514,341445,343621,379380,381431,389452,391341,438733,440668,462610,464642,503104,505148,507168,509207,540260,542364,546656,548796,558769,562632,588265,590243,649502,651430,839736,841673,873820,875760,1102581,1104667,1142927,1144849,1159116,1161140,1446813,1448075,1491352,1492806,1748669,1750076,1832931,1834450,1862587,1863896,2379573,2381060,2876216,2877484,3317321,3318674,3731996,3733176,7428483,7429842,8290752,8292001}'::int[])) F0_0 CROSS JOIN (
SELECT F0_0."GROUP_0" AS "v_postid", F0_0."AGGR_0" AS "downvotes"
FROM (SELECT * FROM temp_view_2) F0_0) F1_0)) F0_0
WHERE (F0_0."p_id" = F0_0."v_postid")) F1_0)) F0_0
WHERE (F0_0."u_id" = F0_0."userid")
GROUP BY F0_0."u_id"),
temp_view_0 AS (
SELECT /*+ materialize */ F0_0."GROUP_0" AS "u_link", F0_0."AGGR_0" AS "downvotes"
FROM (SELECT * FROM temp_view_1) F0_0)
SELECT F0_0."u_link" AS "u_link", F0_0."downvotes" AS "downvotes"
FROM (
SELECT F0_0."u_link" AS "u_link", F0_0."downvotes" AS "downvotes"
FROM (SELECT * FROM temp_view_0) F0_0
ORDER BY "downvotes" DESC NULLS LAST) F0_0
LIMIT 100;
