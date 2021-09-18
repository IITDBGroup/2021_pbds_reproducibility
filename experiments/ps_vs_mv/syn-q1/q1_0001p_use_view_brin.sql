select * from (select * from v1_brin_suma_gaa WHERE (aa <@ '{39995812,40000001}'::int[])) x where suma > 39999600;
