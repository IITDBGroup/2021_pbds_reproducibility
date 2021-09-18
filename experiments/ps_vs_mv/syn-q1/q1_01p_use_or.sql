select * from (select sum(a) as suma, aa from (select * from v1 where 
(a >= 39956568 and a< 39962772)
 OR (a >= 39962772 and a< 39968976)
 OR (a >= 39968976 and a< 39975180)
 OR (a >= 39975180 and a< 39981384)
 OR (a >= 39981384 and a< 39987588)
 OR (a >= 39987588 and a< 39993792)
 OR (a >= 39993792 and a< 39999996)
 OR (a >= 39999996 and a< 40000001)
) y group by aa) x where suma > 39960000;
