select * from (select * from v1_suma_gaa where (aa >= 39956568 and aa< 39962772) 
 OR (aa >= 39962772 and aa< 39968976) 
 OR (aa >= 39968976 and aa< 39975180) 
 OR (aa >= 39975180 and aa< 39981384) 
 OR (aa >= 39981384 and aa< 39987588) 
 OR (aa >= 39987588 and aa< 39993792) 
 OR (aa >= 39993792 and aa< 39999996) 
 OR (aa >= 39999996 and aa< 40000001) 
 ) x where suma > 39960000;
