select * from (select p.p_id as p_link, up, down from view_VoteStats x, posts p where v_postid = p.p_id and down > (up * 0.5) and p.p_communityowneddate is null order by up desc) y limit 100;
