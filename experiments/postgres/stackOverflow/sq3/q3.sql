select * from (select * from (select count(*) as cnt, u_id,u_displayname from comments_b1, users_b1 where c_userid=u_id group by u_id,u_displayname) a order by cnt desc) b limit 10;
