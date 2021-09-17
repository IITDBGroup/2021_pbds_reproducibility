select bit_or_ints(prov_s1) as prov_s1, bit_or_blob(prov_l1) as prov_l1, bit_or_blob(prov_l2) as prov_l2 from (
select s_suppkey, s_name, s_address, s_phone, total_revenue, prov_s1, prov_l1, prov_l2
from
(select  s_suppkey, s_name, s_address, s_phone, binsearch_ranges_pos(s_suppkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(3049),(6157),(9244),(12316),(15398),(18511),(21622),(24821),(28010),(31244),(34281),(37386),(40491),(43630),(46733),(49976),(53123),(56098),(59414),(62587),(65761),(68809),(71953),(75065),(78153),(81329),(84513),(87560),(90590),(93882),(96931),(100001)) AS g(b))) AS prov_s1 from supplier) ss1,
(select supplier_no, total_revenue, prov_l1, prov_l2 from (
    select l_suppkey as supplier_no, sum(l_extendedprice * (1 - l_discount)) as total_revenue, bit_or_ints(prov_l1) as prov_l1
    from (select l_discount,l_extendedprice,l_suppkey,l_shipdate, binsearch_ranges_pos(l_suppkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(3239),(6398),(9486),(12596),(15741),(18935),(21896),(25049),(28193),(31285),(34236),(37354),(40739),(43814),(46966),(50145),(53299),(56618),(59824),(62681),(65708),(68701),(71924),(75147),(78244),(81346),(84419),(87592),(90889),(93863),(96940),(100001)) AS g(b))) AS prov_l1
         from lineitem) ll1
    where l_shipdate >= '1996-12-01' and l_shipdate < '1997-03-01'
    group by l_suppkey) l1,
    (select max(total_revenue) as total_revenue2 , bit_or_blob(prov_l2) as prov_l2
    from (select l_suppkey as supplier_no, sum(l_extendedprice * (1 - l_discount)) as total_revenue, bit_or_ints(prov_l2) as prov_l2
          from (select l_discount,l_extendedprice,l_suppkey,l_shipdate,binsearch_ranges_pos(l_suppkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(3239),(6398),(9486),(12596),(15741),(18935),(21896),(25049),(28193),(31285),(34236),(37354),(40739),(43814),(46966),(50145),(53299),(56618),(59824),(62681),(65708),(68701),(71924),(75147),(78244),(81346),(84419),(87592),(90889),(93863),(96940),(100001)) AS g(b))) AS prov_l2
                from lineitem) ll2
                where l_shipdate >= '1996-12-01' and l_shipdate < '1997-03-01'
                group by l_suppkey) l2
      ) l3
where l1.total_revenue = l3.total_revenue2) l5
where s_suppkey = supplier_no order by s_suppkey) f;
