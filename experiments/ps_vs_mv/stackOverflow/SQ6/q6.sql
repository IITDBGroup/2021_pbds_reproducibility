SELECT * FROM (SELECT * FROM (SELECT * FROM (SELECT u_Id, Count(p_id) AS Answers, AVG(p_score) as avg_score FROM posts_bb1, users_b1 WHERE u_id = p_owneruserid and p_posttypeid = 2 and p_communityowneddate is null GROUP BY u_id, u_displayname) a WHERE Answers < 10) b ORDER BY avg_score DESC) c LIMIT 100;