select * from (select * from v1_brin_suma_gcc where (cc <@ '{9989142,10000001}'::int[])) x where suma > 144000000;
