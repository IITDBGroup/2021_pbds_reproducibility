select * from (select sum(a) as suma, aa from (select * from v1 where 
(a >= 39995812 and a< 40000001)
) y group by aa) x where suma > 39999600;
