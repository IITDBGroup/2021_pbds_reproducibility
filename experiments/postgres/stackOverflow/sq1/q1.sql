select * from 
(select u_id, count(*) as numPosts from users_b1, posts_b1 where u_id = p_owneruserid 
group by u_id) a
order by numPosts desc
limit 10;
