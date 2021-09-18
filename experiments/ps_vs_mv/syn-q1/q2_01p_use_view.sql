select * from (select * from v1_suma_gbb where 
(bb >= 19978284 and bb< 19989142) 
 OR (bb >= 19989142 and bb< 20000000) 
 OR (bb >= 20000000 and bb< 20000001) 
) x where suma > 79920000;
