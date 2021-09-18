select *  from (select sum(a) as suma, cc from (select * from v1 where 
(c >= 9989142 and c< 10000001)
) y group by cc) x where suma > 159840000;
