select *  from (select sum(a) as suma, bb from (select * from v1 where 
(b >= 19997906 and b< 20000001)
) y group by bb) x where suma > 79992000;
