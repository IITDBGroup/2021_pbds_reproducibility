SELECT * FROM (SELECT s.userId as u_link, u.u_displayname, s.answerCount, u.u_reputation, u.u_reputation / s.answerCount as peransweravg FROM (SELECT u.u_id AS userId, COUNT(p.p_id) AS answerCount FROM users u, posts p WHERE u.u_id=p.p_owneruserid AND p.p_posttypeid = 2 GROUP BY u.u_id) s, users u WHERE s.userId=u.u_id ORDER BY s.answerCount DESC) x LIMIT 10;
