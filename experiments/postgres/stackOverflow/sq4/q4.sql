select * from (SELECT * FROM (SELECT count(*) as cnt,u_id,u_displayname from badges_b1, users_b1 WHERE b_userid=u_id GROUP BY u_id,u_displayname) a order by cnt desc) b limit 10;
