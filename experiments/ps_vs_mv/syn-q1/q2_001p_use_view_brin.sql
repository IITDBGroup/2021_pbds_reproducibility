select * from (select * from v1_brin_suma_gbb where (bb <@ '{19997906,20000001}'::int[])) x where suma > 79992000;
