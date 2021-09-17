select bit_or_ints(prov_s1) as prov_s1, bit_or_blob(prov_l1) as prov_l1, bit_or_blob(prov_l2) as prov_l2 from (
select s_suppkey, s_name, s_address, s_phone, total_revenue, prov_s1, prov_l1, prov_l2
from
(select  s_suppkey, s_name, s_address, s_phone, binsearch_ranges_pos(s_suppkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(1564),(3117),(4843),(6403),(7966),(9504),(11037),(12513),(14105),(15669),(17190),(18657),(20217),(21915),(23433),(24947),(26526),(28062),(29628),(31147),(32702),(34296),(35816),(37471),(38961),(40438),(41916),(43538),(45287),(46782),(48312),(49967),(51503),(53104),(54647),(56154),(57663),(59409),(60857),(62479),(64082),(65656),(67195),(68708),(70350),(71936),(73542),(75119),(76713),(78276),(79887),(81350),(82889),(84371),(85971),(87580),(89132),(90670),(92249),(93838),(95347),(96856),(98407),(100001)) AS g(b))) AS prov_s1 from supplier) ss1,
(select supplier_no, total_revenue, prov_l1, prov_l2 from (
    select l_suppkey as supplier_no, sum(l_extendedprice * (1 - l_discount)) as total_revenue, bit_or_ints(prov_l1) as prov_l1
    from (select l_discount,l_extendedprice,l_suppkey,l_shipdate, binsearch_ranges_pos(l_suppkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(1588),(3118),(4711),(6239),(7939),(9506),(10945),(12507),(14223),(15717),(17272),(18873),(20420),(22042),(23629),(25317),(26921),(28650),(30250),(31871),(33340),(34881),(36283),(37795),(39337),(40917),(42592),(44180),(45759),(47338),(48829),(50439),(51987),(53541),(54983),(56510),(58123),(59683),(61312),(62770),(64291),(65789),(67425),(68893),(70521),(72098),(73525),(75022),(76599),(78164),(79695),(81181),(82740),(84263),(85951),(87527),(89096),(90688),(92337),(93915),(95362),(96929),(98420),(100001)) AS g(b))) AS prov_l1
         from lineitem) ll1
    where l_shipdate >= '1996-12-01' and l_shipdate < '1997-03-01'
    group by l_suppkey) l1,
    (select max(total_revenue) as total_revenue2 , bit_or_blob(prov_l2) as prov_l2
    from (select l_suppkey as supplier_no, sum(l_extendedprice * (1 - l_discount)) as total_revenue, bit_or_ints(prov_l2) as prov_l2
          from (select l_discount,l_extendedprice,l_suppkey,l_shipdate,binsearch_ranges_pos(l_suppkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(1588),(3118),(4711),(6239),(7939),(9506),(10945),(12507),(14223),(15717),(17272),(18873),(20420),(22042),(23629),(25317),(26921),(28650),(30250),(31871),(33340),(34881),(36283),(37795),(39337),(40917),(42592),(44180),(45759),(47338),(48829),(50439),(51987),(53541),(54983),(56510),(58123),(59683),(61312),(62770),(64291),(65789),(67425),(68893),(70521),(72098),(73525),(75022),(76599),(78164),(79695),(81181),(82740),(84263),(85951),(87527),(89096),(90688),(92337),(93915),(95362),(96929),(98420),(100001)) AS g(b))) AS prov_l2
                from lineitem) ll2
                where l_shipdate >= '1996-12-01' and l_shipdate < '1997-03-01'
                group by l_suppkey) l2
      ) l3
where l1.total_revenue = l3.total_revenue2) l5
where s_suppkey = supplier_no order by s_suppkey) f;
