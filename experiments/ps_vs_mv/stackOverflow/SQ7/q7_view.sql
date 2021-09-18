select * from (select * from (SELECT  t_TagName AS Tags, avg(u_upvotes) AS avg_ans_age, count(*) AS num_ans FROM q7_v1 ut, tags t, users u where t.t_Id = ut.t_Id and u.u_Id = ut.p_OwnerUserId GROUP BY t.t_Id, t.t_TagName) a where num_ans > 1000) b ORDER BY 2 DESC;