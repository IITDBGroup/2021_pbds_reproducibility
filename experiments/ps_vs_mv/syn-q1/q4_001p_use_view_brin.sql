select * from (select * from v2_avga_gee where
ee <@ '{98998,100001}'::int[]
) x where suma > 39996000;
