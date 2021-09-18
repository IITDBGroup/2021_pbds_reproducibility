select * from (select maxa,v3.ee from (select max(a) as maxa, ee from v2 group by ee) y, v3 where y.ee = v3.ee) z where maxa > 32000000;
