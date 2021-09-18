SELECT * FROM (SELECT s.userId as u_link, u.u_displayname, s.answerCount, u.u_reputation, u.u_reputation / s.answerCount as peransweravg FROM view_r3_cguid s, users u WHERE s.userId=u.u_id ORDER BY s.answerCount DESC) x LIMIT 10;
