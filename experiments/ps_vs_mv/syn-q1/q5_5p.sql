select * from (select avg(a) as avga, gg from v4 group by gg) x where avga > 38000000;
