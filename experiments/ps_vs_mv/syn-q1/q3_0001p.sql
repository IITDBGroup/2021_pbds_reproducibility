select *  from (select sum(a) as suma, cc from v1 group by cc) x where suma > 159998400;
