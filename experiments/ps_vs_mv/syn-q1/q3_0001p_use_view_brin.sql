select * from (select * from v1_brin_suma_gcc where (cc <@ '{9998953,10000001}'::int[])) x where suma > 159998400;
