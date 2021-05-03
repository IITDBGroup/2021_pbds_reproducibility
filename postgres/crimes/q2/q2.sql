select count(*) from (select * from (select * from (select count(*) AS cnt, block from crimes group by block) f1) f2 where cnt > 10000) f3;
