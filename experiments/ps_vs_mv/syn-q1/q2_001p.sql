select *  from (select sum(a) as suma, bb from v1 group by bb) x where suma > 79992000;
