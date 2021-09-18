select * from 
    (select count(*) as cnt, u_id, u_displayname from 
        (select * from 
            (select * from comments where ((c_userid >= 3832491 and c_userid < 3833891) or
                                            (c_userid >= 154126 and c_userid < 158348) or
                                            (c_userid >= 570447 and c_userid < 572291) or
                                            (c_userid >= 111561 and c_userid < 115436) or
                                            (c_userid >= 558769 and c_userid < 560653)) ) a1,
             (select * from users where ((u_id >= 3832491 and u_id < 3833891) or
                                         (u_id >= 154126 and u_id < 158348) or
                                         (u_id >= 570447 and u_id < 572291) or
                                         (u_id >= 111561 and u_id < 115436) or
                                         (u_id >= 558769 and u_id < 560653)) ) a2
        where c_userid=u_id) a
    group by u_id,u_displayname) b
where cnt >= 47945 and cnt <= 52973;
