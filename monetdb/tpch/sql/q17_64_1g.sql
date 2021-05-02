select sum(l_extendedprice) / 7.0 as avg_yearly
from lineitem, (select * from part where ((p_partkey >= 1) AND (p_partkey < 106250)) OR ((p_partkey >= 109375) AND (p_partkey < 112500)) OR ((p_partkey >= 115625) AND (p_partkey < 153125)) OR ((p_partkey >= 159375) AND (p_partkey < 200001))) p2
where p_partkey = l_partkey and p_brand = 'Brand#31' and p_container = 'SM PKG'
and l_quantity < (
                select
                        0.2 * avg(l_quantity)
                from
                        (select * from lineitem where ((l_partkey >= 1) AND (l_partkey < 106245)) OR ((l_partkey >= 109367) AND (l_partkey < 112506)) OR ((l_partkey >= 115622) AND (l_partkey < 153162)) OR ((l_partkey >= 159416) AND (l_partkey < 200001))) l1
                where
                        l_partkey = p_partkey
        );
