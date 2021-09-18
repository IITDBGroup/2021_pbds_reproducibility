select * from (select * from (select * from v2_maxa_gee where ee >= 99990 and ee < 100001) y, v3 where y.ee = v3.ee) x where maxa > 39999600;
