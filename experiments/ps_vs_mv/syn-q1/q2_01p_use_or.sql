select *  from (select sum(a) as suma, bb from (select * from v1 where 
(b >= 19978284 and b< 19989142)
 OR (b >= 19989142 and b< 20000000)
 OR (b >= 20000000 and b< 20000001)
) y group by bb) x where suma > 79920000;
