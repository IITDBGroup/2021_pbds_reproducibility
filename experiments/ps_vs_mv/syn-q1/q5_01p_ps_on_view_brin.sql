select * from (select * from v4_avga_ggg where gg <@ '{998915,1000001}'::int[] ) x where avga > 39960000;
