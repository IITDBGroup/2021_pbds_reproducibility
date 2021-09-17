select bit_or_ints(prov_s1) as prov_s1, bit_or_blob(prov_l1) as prov_l1, bit_or_blob(prov_l2) as prov_l2 from (
select s_suppkey, s_name, s_address, s_phone, total_revenue, prov_s1, prov_l1, prov_l2
from
(select  s_suppkey, s_name, s_address, s_phone, binsearch_ranges_pos(s_suppkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(156),(312),(468),(624),(780),(936),(1092),(1248),(1404),(1560),(1716),(1872),(2028),(2184),(2340),(2496),(2652),(2808),(2964),(3120),(3276),(3432),(3588),(3744),(3900),(4056),(4212),(4368),(4524),(4680),(4836),(4992),(5149),(5305),(5462),(5618),(5775),(5931),(6088),(6244),(6401),(6557),(6714),(6870),(7027),(7183),(7340),(7496),(7653),(7809),(7966),(8122),(8279),(8435),(8592),(8748),(8905),(9061),(9218),(9374),(9531),(9687),(9844),(10001)) AS g(b))) AS prov_s1 from supplier) ss1,
(select supplier_no, total_revenue, prov_l1, prov_l2 from (
    select l_suppkey as supplier_no, sum(l_extendedprice * (1 - l_discount)) as total_revenue, bit_or_ints(prov_l1) as prov_l1
    from (select l_discount,l_extendedprice,l_suppkey,l_shipdate, binsearch_ranges_pos(l_suppkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(157),(313),(469),(627),(782),(938),(1092),(1249),(1405),(1563),(1719),(1875),(2031),(2188),(2343),(2499),(2656),(2812),(2969),(3125),(3281),(3437),(3595),(3751),(3907),(4064),(4220),(4377),(4533),(4689),(4846),(5001),(5157),(5314),(5471),(5627),(5783),(5939),(6095),(6252),(6407),(6563),(6719),(6876),(7032),(7188),(7344),(7500),(7657),(7813),(7969),(8125),(8282),(8438),(8594),(8750),(8907),(9063),(9220),(9376),(9532),(9688),(9845),(10001)) AS g(b))) AS prov_l1
         from lineitem) ll1
    where l_shipdate >= '1996-12-01' and l_shipdate < '1997-03-01'
    group by l_suppkey) l1,
    (select max(total_revenue) as total_revenue2 , bit_or_blob(prov_l2) as prov_l2
    from (select l_suppkey as supplier_no, sum(l_extendedprice * (1 - l_discount)) as total_revenue, bit_or_ints(prov_l2) as prov_l2
          from (select l_discount,l_extendedprice,l_suppkey,l_shipdate,binsearch_ranges_pos(l_suppkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(157),(313),(469),(627),(782),(938),(1092),(1249),(1405),(1563),(1719),(1875),(2031),(2188),(2343),(2499),(2656),(2812),(2969),(3125),(3281),(3437),(3595),(3751),(3907),(4064),(4220),(4377),(4533),(4689),(4846),(5001),(5157),(5314),(5471),(5627),(5783),(5939),(6095),(6252),(6407),(6563),(6719),(6876),(7032),(7188),(7344),(7500),(7657),(7813),(7969),(8125),(8282),(8438),(8594),(8750),(8907),(9063),(9220),(9376),(9532),(9688),(9845),(10001)) AS g(b))) AS prov_l2
                from lineitem) ll2
                where l_shipdate >= '1996-12-01' and l_shipdate < '1997-03-01'
                group by l_suppkey) l2
      ) l3
where l1.total_revenue = l3.total_revenue2) l5
where s_suppkey = supplier_no order by s_suppkey) f;
