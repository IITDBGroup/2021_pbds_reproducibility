select * from (select * from v4_avga_ggg where gg <@ '{999896,1000001}'::int[] ) x where avga > 39996000;
