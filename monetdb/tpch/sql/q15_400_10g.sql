select s_suppkey, s_name, s_address, s_phone, total_revenue from (select * from supplier where ("s_suppkey" >= 10750) AND ("s_suppkey" < 11000)
) ss1, (select supplier_no, total_revenue from (select l_suppkey as supplier_no, sum(l_extendedprice * (1 - l_discount)) as total_revenue from (select * from lineitem where 
("l_suppkey" >= 10656) AND ("l_suppkey" < 10925)
) ll1 where l_shipdate >= '1996-12-01' and l_shipdate < '1997-03-01' group by l_suppkey) l1, (select max(total_revenue) as total_revenue2 from (select l_suppkey as supplier_no, sum(l_extendedprice * (1 - l_discount)) as total_revenue from (select * from lineitem where 
("l_suppkey" >= 10656) AND ("l_suppkey" < 10925)
) ll2 where l_shipdate >= '1996-12-01' and l_shipdate < '1997-03-01' group by l_suppkey) l2) l3 where l1.total_revenue = l3.total_revenue2) l5 where s_suppkey = supplier_no order by s_suppkey;
