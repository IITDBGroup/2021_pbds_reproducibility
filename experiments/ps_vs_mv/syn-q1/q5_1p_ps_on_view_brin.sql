select * from (select * from v4_avga_ggg where gg <@ '{989980,990536,990536,991092,991092,991648,991648,992204,992204,992760,992760,993316,993316,993872,993872,994428,994428,994984,994984,995540,995540,996096,996096,996652,996652,997208,997208,997764,997764,998320,998320,998876,998876,999432,999432,999988,999988,1000001}'::int[] ) x where avga > 39600000;
