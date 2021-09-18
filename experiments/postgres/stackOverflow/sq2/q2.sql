select * from (
select u_id, count(p_favoritecount) as numCmts from users_b1, comments_b1, posts_b1 where u_id = c_userid and c_postid = p_id
group by u_id ) a
order by numCmts desc
limit 10;
