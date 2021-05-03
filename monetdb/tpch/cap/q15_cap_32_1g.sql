select bit_or_ints(prov_s1) as prov_s1, bit_or_blob(prov_l1) as prov_l1, bit_or_blob(prov_l2) as prov_l2 from (
select s_suppkey, s_name, s_address, s_phone, total_revenue, prov_s1, prov_l1, prov_l2
from
(select  s_suppkey, s_name, s_address, s_phone, binsearch_ranges_pos(s_suppkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(313),(625),(938),(1250),(1563),(1875),(2188),(2500),(2813),(3125),(3438),(3750),(4063),(4375),(4688),(5000),(5313),(5625),(5938),(6250),(6563),(6875),(7188),(7500),(7813),(8125),(8438),(8750),(9063),(9375),(9688),(10001)) AS g(b))) AS prov_s1 from supplier) ss1,
(select supplier_no, total_revenue, prov_l1, prov_l2 from (
    select l_suppkey as supplier_no, sum(l_extendedprice * (1 - l_discount)) as total_revenue, bit_or_ints(prov_l1) as prov_l1
    from (select l_discount,l_extendedprice,l_suppkey,l_shipdate, binsearch_ranges_pos(l_suppkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(313),(627),(938),(1249),(1563),(1875),(2188),(2499),(2812),(3125),(3437),(3751),(4064),(4377),(4689),(5001),(5314),(5627),(5939),(6252),(6563),(6876),(7188),(7500),(7813),(8125),(8438),(8750),(9063),(9376),(9688),(10001)) AS g(b))) AS prov_l1
         from lineitem) ll1
    where l_shipdate >= '1996-12-01' and l_shipdate < '1997-03-01'
    group by l_suppkey) l1,
    (select max(total_revenue) as total_revenue2 , bit_or_blob(prov_l2) as prov_l2
    from (select l_suppkey as supplier_no, sum(l_extendedprice * (1 - l_discount)) as total_revenue, bit_or_ints(prov_l2) as prov_l2
          from (select l_discount,l_extendedprice,l_suppkey,l_shipdate,binsearch_ranges_pos(l_suppkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(313),(627),(938),(1249),(1563),(1875),(2188),(2499),(2812),(3125),(3437),(3751),(4064),(4377),(4689),(5001),(5314),(5627),(5939),(6252),(6563),(6876),(7188),(7500),(7813),(8125),(8438),(8750),(9063),(9376),(9688),(10001)) AS g(b))) AS prov_l2
                from lineitem) ll2
                where l_shipdate >= '1996-12-01' and l_shipdate < '1997-03-01'
                group by l_suppkey) l2
      ) l3
where l1.total_revenue = l3.total_revenue2) l5
where s_suppkey = supplier_no order by s_suppkey) f;
