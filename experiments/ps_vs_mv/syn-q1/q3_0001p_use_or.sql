select *  from (select sum(a) as suma, cc from (select * from v1 where 
(c >= 9998953 and c< 10000001)
) y group by cc) x where suma > 159998400;
