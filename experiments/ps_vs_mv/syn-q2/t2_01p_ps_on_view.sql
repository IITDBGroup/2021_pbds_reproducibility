select * from (select * from (select * from v2_maxa_gee where ee >= 99892 and ee < 100000) y, v3 where y.ee = v3.ee) x where maxa > 39960000
