select * from
(select count(*) as cnt, u_id,u_displayname from
(select * from comments_b1, users_b1 where c_userid=u_id) a
group by u_id,u_displayname) b
where cnt >= 47945 and cnt <= 52973;
