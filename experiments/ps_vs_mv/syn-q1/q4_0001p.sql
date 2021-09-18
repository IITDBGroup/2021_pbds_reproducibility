select * from (select avg(a) as avga, ee from v2 group by ee) x where avga > 39999600;
