select * from (select * from v1_brin_suma_gbb where (bb <@ '{19978284,19989142,19989142,20000000,20000000,20000001}'::int[])) x where suma > 79920000;
