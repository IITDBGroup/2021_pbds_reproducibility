WITH temp_view_0 AS (
SELECT /*+ materialize */ count(F0_0."p_id1") AS "AGGR_0", F0_0."t_id" AS "GROUP_0"
FROM (
SELECT F0_0."t_id" AS "t_id", F0_0."t_tagname" AS "t_tagname", F0_0."t_count" AS "t_count", F0_0."t_excerptpostid" AS "t_excerptpostid", F0_0."t_wikipostid" AS "t_wikipostid", F0_0."p_id" AS "p_id", F0_0."t_id1" AS "t_id1", F0_0."t_tagname1" AS "t_tagname1", F1_0."p_id" AS "p_id1", F1_0."p_posttypeid" AS "p_posttypeid", F1_0."p_acceptedanswerid" AS "p_acceptedanswerid", F1_0."p_creationdate" AS "p_creationdate", F1_0."p_viewcount" AS "p_viewcount", F1_0."p_owneruserid" AS "p_owneruserid", F1_0."p_lasteditoruserid" AS "p_lasteditoruserid", F1_0."p_lasteditordisplayname" AS "p_lasteditordisplayname", F1_0."p_lasteditdate" AS "p_lasteditdate", F1_0."p_lastactivitydate" AS "p_lastactivitydate", F1_0."p_title" AS "p_title", F1_0."p_tags" AS "p_tags", F1_0."p_answercount" AS "p_answercount", F1_0."p_commentcount" AS "p_commentcount", F1_0."p_favoritecount" AS "p_favoritecount", F1_0."p_communityowneddate" AS "p_communityowneddate", F1_0."p_parentid" AS "p_parentid", F1_0."p_score" AS "p_score", F1_0."p_body" AS "p_body", F1_0."p_contentlicense" AS "p_contentlicense"
FROM ((
SELECT F0_0."t_id" AS "t_id", F0_0."t_tagname" AS "t_tagname", F0_0."t_count" AS "t_count", F0_0."t_excerptpostid" AS "t_excerptpostid", F0_0."t_wikipostid" AS "t_wikipostid", F1_0."p_id" AS "p_id", F1_0."t_id" AS "t_id1", F1_0."t_tagname" AS "t_tagname1"
FROM ((
SELECT F0_0."t_id" AS "t_id", F0_0."t_tagname" AS "t_tagname", F0_0."t_count" AS "t_count", F0_0."t_excerptpostid" AS "t_excerptpostid", F0_0."t_wikipostid" AS "t_wikipostid"
FROM "tags" F0_0
) F0_0 CROSS JOIN (
SELECT F0_0."p_id" AS "p_id", F0_0."t_id" AS "t_id", F0_0."t_tagname" AS "t_tagname"
FROM "posttags_b1" F0_0
WHERE (F0_0."t_id" <@ '{1,26,1383,1390}'::int[])) F1_0)) F0_0 CROSS JOIN (
SELECT F0_0."p_id" AS "p_id", F0_0."p_posttypeid" AS "p_posttypeid", F0_0."p_acceptedanswerid" AS "p_acceptedanswerid", F0_0."p_creationdate" AS "p_creationdate", F0_0."p_viewcount" AS "p_viewcount", F0_0."p_owneruserid" AS "p_owneruserid", F0_0."p_lasteditoruserid" AS "p_lasteditoruserid", F0_0."p_lasteditordisplayname" AS "p_lasteditordisplayname", F0_0."p_lasteditdate" AS "p_lasteditdate", F0_0."p_lastactivitydate" AS "p_lastactivitydate", F0_0."p_title" AS "p_title", F0_0."p_tags" AS "p_tags", F0_0."p_answercount" AS "p_answercount", F0_0."p_commentcount" AS "p_commentcount", F0_0."p_favoritecount" AS "p_favoritecount", F0_0."p_communityowneddate" AS "p_communityowneddate", F0_0."p_parentid" AS "p_parentid", F0_0."p_score" AS "p_score", F0_0."p_body" AS "p_body", F0_0."p_contentlicense" AS "p_contentlicense"
FROM "posts_bb1" F0_0
) F1_0)) F0_0
WHERE ((((F0_0."t_id" = F0_0."t_id1") and (F0_0."p_id1" = F0_0."p_id")) and (F0_0."p_creationdate" < '2010-06-01')) and (F0_0."p_creationdate" > '2010-05-01'))
GROUP BY F0_0."t_id"),
temp_view_1 AS (
SELECT /*+ materialize */ count(F0_0."p_id1") AS "AGGR_0", F0_0."t_id" AS "GROUP_0"
FROM (
SELECT F0_0."t_id" AS "t_id", F0_0."t_tagname" AS "t_tagname", F0_0."t_count" AS "t_count", F0_0."t_excerptpostid" AS "t_excerptpostid", F0_0."t_wikipostid" AS "t_wikipostid", F0_0."p_id" AS "p_id", F0_0."t_id1" AS "t_id1", F0_0."t_tagname1" AS "t_tagname1", F1_0."p_id" AS "p_id1", F1_0."p_posttypeid" AS "p_posttypeid", F1_0."p_acceptedanswerid" AS "p_acceptedanswerid", F1_0."p_creationdate" AS "p_creationdate", F1_0."p_viewcount" AS "p_viewcount", F1_0."p_owneruserid" AS "p_owneruserid", F1_0."p_lasteditoruserid" AS "p_lasteditoruserid", F1_0."p_lasteditordisplayname" AS "p_lasteditordisplayname", F1_0."p_lasteditdate" AS "p_lasteditdate", F1_0."p_lastactivitydate" AS "p_lastactivitydate", F1_0."p_title" AS "p_title", F1_0."p_tags" AS "p_tags", F1_0."p_answercount" AS "p_answercount", F1_0."p_commentcount" AS "p_commentcount", F1_0."p_favoritecount" AS "p_favoritecount", F1_0."p_communityowneddate" AS "p_communityowneddate", F1_0."p_parentid" AS "p_parentid", F1_0."p_score" AS "p_score", F1_0."p_body" AS "p_body", F1_0."p_contentlicense" AS "p_contentlicense"
FROM ((
SELECT F0_0."t_id" AS "t_id", F0_0."t_tagname" AS "t_tagname", F0_0."t_count" AS "t_count", F0_0."t_excerptpostid" AS "t_excerptpostid", F0_0."t_wikipostid" AS "t_wikipostid", F1_0."p_id" AS "p_id", F1_0."t_id" AS "t_id1", F1_0."t_tagname" AS "t_tagname1"
FROM ((
SELECT F0_0."t_id" AS "t_id", F0_0."t_tagname" AS "t_tagname", F0_0."t_count" AS "t_count", F0_0."t_excerptpostid" AS "t_excerptpostid", F0_0."t_wikipostid" AS "t_wikipostid"
FROM "tags" F0_0
) F0_0 CROSS JOIN (
SELECT F0_0."p_id" AS "p_id", F0_0."t_id" AS "t_id", F0_0."t_tagname" AS "t_tagname"
FROM "posttags_b1" F0_0
WHERE (F0_0."t_id" <@ '{1,26,1383,1390}'::int[])) F1_0)) F0_0 CROSS JOIN (
SELECT F0_0."p_id" AS "p_id", F0_0."p_posttypeid" AS "p_posttypeid", F0_0."p_acceptedanswerid" AS "p_acceptedanswerid", F0_0."p_creationdate" AS "p_creationdate", F0_0."p_viewcount" AS "p_viewcount", F0_0."p_owneruserid" AS "p_owneruserid", F0_0."p_lasteditoruserid" AS "p_lasteditoruserid", F0_0."p_lasteditordisplayname" AS "p_lasteditordisplayname", F0_0."p_lasteditdate" AS "p_lasteditdate", F0_0."p_lastactivitydate" AS "p_lastactivitydate", F0_0."p_title" AS "p_title", F0_0."p_tags" AS "p_tags", F0_0."p_answercount" AS "p_answercount", F0_0."p_commentcount" AS "p_commentcount", F0_0."p_favoritecount" AS "p_favoritecount", F0_0."p_communityowneddate" AS "p_communityowneddate", F0_0."p_parentid" AS "p_parentid", F0_0."p_score" AS "p_score", F0_0."p_body" AS "p_body", F0_0."p_contentlicense" AS "p_contentlicense"
FROM "posts_bb1" F0_0
) F1_0)) F0_0
WHERE ((F0_0."t_id" = F0_0."t_id1") and (F0_0."p_id1" = F0_0."p_id"))
GROUP BY F0_0."t_id")
SELECT F0_0."rate" AS "rate", F0_0."tagname" AS "tagname", F0_0."num" AS "num", F0_0."tagname1" AS "tagname1"
FROM (
SELECT F0_0."rate" AS "rate", F0_0."tagname" AS "tagname", F1_0."num" AS "num", F1_0."tagname" AS "tagname1"
FROM ((
SELECT F0_0."AGGR_0" AS "rate", F0_0."GROUP_0" AS "tagname"
FROM (SELECT * FROM temp_view_0) F0_0) F0_0 CROSS JOIN (
SELECT F0_0."num" AS "num", F0_0."tagname" AS "tagname"
FROM (
SELECT F0_0."AGGR_0" AS "num", F0_0."GROUP_0" AS "tagname"
FROM (SELECT * FROM temp_view_1) F0_0) F0_0
WHERE (F0_0."num" > 1000000)) F1_0)) F0_0
WHERE (F0_0."tagname" = F0_0."tagname1");
