select * from (select sum(a) as suma, aa from v1 group by aa) x where suma > 39996000;
