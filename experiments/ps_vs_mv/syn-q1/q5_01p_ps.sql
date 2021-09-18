select * from (select avg(a) as avga, gg from (select * from v4 where a <@ '{39956568,40000001}'::int[]) y group by gg) x where avga > 39960000;
