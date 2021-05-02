select bit_or_blob(prov_c1) as prov_c1, bit_or_blob(prov_o1) as prov_o1, bit_or_blob(prov_l1) as prov_l1 from (
select 	c_name,c_custkey,o_orderkey,o_orderdate,o_totalprice,sum(l_quantity), bit_or_ints(prov_c1) as prov_c1, bit_or_ints(prov_o1) as prov_o1, bit_or_ints(prov_l1) as prov_l1
from
(select c_acctbal, c_address, c_name, c_phone, c_comment, c_nationkey, c_custkey, binsearch_ranges_pos(c_custkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(375),(750),(1125),(1500),(1875),(2250),(2625),(3000),(3375),(3750),(4125),(4500),(4875),(5250),(5625),(6000),(6375),(6750),(7125),(7500),(7875),(8250),(8625),(9000),(9375),(9750),(10125),(10500),(10875),(11250),(11625),(12000),(12375),(12750),(13125),(13500),(13875),(14250),(14625),(15000),(15375),(15750),(16125),(16500),(16875),(17250),(17625),(18000),(18375),(18750),(19125),(19500),(19875),(20250),(20625),(21000),(21375),(21750),(22125),(22500),(22875),(23250),(23625),(24000),(24375),(24750),(25125),(25500),(25875),(26250),(26625),(27000),(27375),(27750),(28125),(28500),(28875),(29250),(29625),(30000),(30375),(30750),(31125),(31500),(31875),(32250),(32625),(33000),(33375),(33750),(34125),(34500),(34875),(35250),(35625),(36000),(36375),(36750),(37125),(37500),(37875),(38250),(38625),(39000),(39375),(39750),(40125),(40500),(40875),(41250),(41625),(42000),(42375),(42750),(43125),(43500),(43875),(44250),(44625),(45000),(45375),(45750),(46125),(46500),(46875),(47250),(47625),(48000),(48375),(48750),(49125),(49500),(49875),(50250),(50625),(51000),(51375),(51750),(52125),(52500),(52875),(53250),(53625),(54000),(54375),(54750),(55125),(55500),(55875),(56250),(56625),(57000),(57375),(57750),(58125),(58500),(58875),(59250),(59625),(60000),(60375),(60750),(61125),(61500),(61875),(62250),(62625),(63000),(63375),(63750),(64125),(64500),(64875),(65250),(65625),(66000),(66375),(66750),(67125),(67500),(67875),(68250),(68625),(69000),(69375),(69750),(70125),(70500),(70875),(71250),(71625),(72000),(72375),(72750),(73125),(73500),(73875),(74250),(74625),(75000),(75375),(75750),(76125),(76500),(76875),(77250),(77625),(78000),(78375),(78750),(79125),(79500),(79875),(80250),(80625),(81000),(81375),(81750),(82125),(82500),(82875),(83250),(83625),(84000),(84375),(84750),(85125),(85500),(85875),(86250),(86625),(87000),(87375),(87750),(88125),(88500),(88875),(89250),(89625),(90000),(90375),(90750),(91125),(91500),(91875),(92250),(92625),(93000),(93375),(93750),(94125),(94500),(94875),(95250),(95625),(96000),(96375),(96750),(97125),(97500),(97875),(98250),(98625),(99000),(99375),(99750),(100125),(100500),(100875),(101250),(101625),(102000),(102375),(102750),(103125),(103500),(103875),(104250),(104625),(105000),(105375),(105750),(106125),(106500),(106875),(107250),(107625),(108000),(108375),(108750),(109125),(109500),(109875),(110250),(110625),(111000),(111375),(111750),(112125),(112500),(112875),(113250),(113625),(114000),(114375),(114750),(115125),(115500),(115875),(116250),(116625),(117000),(117375),(117750),(118125),(118500),(118875),(119250),(119625),(120000),(120375),(120750),(121125),(121500),(121875),(122250),(122625),(123000),(123375),(123750),(124125),(124500),(124875),(125250),(125625),(126000),(126375),(126750),(127125),(127500),(127875),(128250),(128625),(129000),(129375),(129750),(130125),(130500),(130875),(131250),(131625),(132000),(132375),(132750),(133125),(133500),(133875),(134250),(134625),(135000),(135375),(135750),(136125),(136500),(136875),(137250),(137625),(138000),(138375),(138750),(139125),(139500),(139875),(140250),(140625),(141000),(141375),(141750),(142125),(142500),(142875),(143250),(143625),(144000),(144375),(144750),(145125),(145500),(145875),(146250),(146625),(147000),(147375),(147750),(148125),(148500),(148875),(149250),(149625),(150001)) AS g(b))) AS prov_c1 from customer) c1,
(select l_quantity,l_returnflag,l_orderkey, l_shipdate, l_extendedprice, l_discount, binsearch_ranges_pos(l_orderkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(14948),(29792),(44807),(59815),(74918),(89798),(104609),(119463),(134467),(149638),(164423),(179461),(194593),(209633),(224709),(239749),(254851),(270016),(285250),(300259),(315205),(330178),(345287),(360353),(375329),(390179),(405223),(420227),(435207),(450277),(464964),(479815),(494947),(509633),(524517),(539716),(554727),(569793),(584644),(599555),(614498),(629798),(644898),(659781),(674883),(689764),(704772),(719748),(734660),(749572),(764417),(779591),(794528),(809634),(824550),(839844),(854883),(869863),(884804),(899814),(914822),(929857),(944743),(959776),(974850),(990022),(1005089),(1020099),(1035267),(1050119),(1065123),(1080224),(1095238),(1110373),(1125351),(1140295),(1155329),(1170404),(1185255),(1200289),(1215328),(1230370),(1245345),(1260290),(1275267),(1290307),(1305345),(1320101),(1335108),(1350053),(1365121),(1380036),(1395233),(1410087),(1425027),(1440067),(1455073),(1470242),(1485504),(1500740),(1515878),(1530752),(1545953),(1560839),(1575623),(1590725),(1605604),(1620647),(1635424),(1650213),(1665250),(1680416),(1695330),(1710180),(1725280),(1740454),(1755329),(1770499),(1785639),(1800321),(1815522),(1830337),(1845158),(1859972),(1874944),(1889990),(1904903),(1919941),(1935009),(1949927),(1964869),(1979782),(1994915),(2009957),(2025153),(2040165),(2055044),(2070145),(2085216),(2100033),(2114949),(2130022),(2145028),(2160321),(2175302),(2190145),(2205220),(2220293),(2235334),(2250439),(2265633),(2280550),(2295552),(2310695),(2325605),(2340736),(2355938),(2370882),(2385831),(2400705),(2415680),(2430530),(2445474),(2460390),(2475458),(2490407),(2505411),(2520355),(2535303),(2550208),(2565447),(2580642),(2595842),(2610820),(2626022),(2641158),(2656163),(2671200),(2686310),(2701345),(2716039),(2730947),(2745732),(2760578),(2775650),(2790759),(2805639),(2820610),(2835525),(2850401),(2865607),(2880774),(2895971),(2910917),(2925891),(2940870),(2955655),(2970851),(2985828),(3000963),(3015905),(3030881),(3045894),(3060994),(3075843),(3090881),(3105958),(3121060),(3136133),(3151111),(3165984),(3181028),(3195809),(3210917),(3225764),(3240803),(3255719),(3270787),(3285955),(3300903),(3315620),(3330663),(3345698),(3360513),(3375616),(3390342),(3405315),(3420512),(3435586),(3450470),(3465446),(3480358),(3495175),(3510145),(3525056),(3539841),(3554720),(3569669),(3584609),(3599687),(3614759),(3629922),(3644807),(3659813),(3674785),(3689766),(3704807),(3719939),(3735009),(3749957),(3765061),(3780131),(3795143),(3809985),(3824997),(3840097),(3855109),(3870277),(3885095),(3900102),(3915203),(3930147),(3945250),(3960129),(3974886),(3990119),(4005252),(4020295),(4035367),(4050276),(4065380),(4080481),(4095395),(4110369),(4125287),(4140384),(4155333),(4170337),(4185378),(4200545),(4215461),(4230434),(4245410),(4260260),(4275366),(4290212),(4305156),(4320064),(4334944),(4349927),(4364864),(4379877),(4394978),(4410114),(4425190),(4440166),(4455203),(4470338),(4485223),(4500354),(4515527),(4530465),(4545347),(4560512),(4575429),(4590210),(4605190),(4620324),(4635237),(4650149),(4665127),(4680006),(4694916),(4709895),(4724741),(4739781),(4754758),(4769922),(4785158),(4800130),(4815173),(4830245),(4845120),(4860164),(4875015),(4889927),(4904996),(4919872),(4934816),(4949797),(4964772),(4979846),(4994790),(5009989),(5025063),(5039969),(5055109),(5070179),(5085250),(5100229),(5115136),(5130086),(5145156),(5160231),(5175366),(5190500),(5205537),(5220516),(5235584),(5250567),(5265827),(5280837),(5295623),(5310403),(5325252),(5340288),(5355393),(5370561),(5385506),(5400486),(5415392),(5430369),(5445383),(5460418),(5475428),(5490625),(5505828),(5520834),(5535941),(5550786),(5565701),(5580736),(5596070),(5610979),(5625987),(5641062),(5656196),(5671268),(5686055),(5700933),(5715908),(5731046),(5746080),(5760867),(5775682),(5790467),(5805670),(5820737),(5835617),(5850470),(5865441),(5880256),(5894951),(5910049),(5925056),(5939908),(5954883),(5969986),(5984866),(6000001)) AS g(b))) AS prov_l1 from lineitem) l,
(select o_totalprice,o_shippriority,o_orderdate,o_orderkey,o_custkey, binsearch_ranges_pos(o_orderkey, (SELECT bounds_to_blob(b) FROM (VALUES (1),(14982),(29988),(44994),(60000),(74982),(89988),(104994),(120000),(134982),(149988),(164994),(180000),(194982),(209988),(224994),(240000),(254982),(269988),(284994),(300000),(314982),(329988),(344994),(360000),(374982),(389988),(404994),(420000),(434982),(449988),(464994),(480000),(494982),(509988),(524994),(540000),(554982),(569988),(584994),(600000),(614982),(629988),(644994),(660000),(674982),(689988),(704994),(720000),(734982),(749988),(764994),(780000),(794982),(809988),(824994),(840000),(854982),(869988),(884994),(900000),(914982),(929988),(944994),(960000),(974982),(989988),(1004994),(1020000),(1034982),(1049988),(1064994),(1080000),(1094982),(1109988),(1124994),(1140000),(1154982),(1169988),(1184994),(1200000),(1214982),(1229988),(1244994),(1260000),(1274982),(1289988),(1304994),(1320000),(1334982),(1349988),(1364994),(1380000),(1394982),(1409988),(1424994),(1440000),(1454982),(1469988),(1484994),(1500000),(1514982),(1529988),(1544994),(1560000),(1574982),(1589988),(1604994),(1620000),(1634982),(1649988),(1664994),(1680000),(1694982),(1709988),(1724994),(1740000),(1754982),(1769988),(1784994),(1800000),(1814982),(1829988),(1844994),(1860000),(1874982),(1889988),(1904994),(1920000),(1934982),(1949988),(1964994),(1980000),(1994982),(2009988),(2024994),(2040000),(2054982),(2069988),(2084994),(2100000),(2114982),(2129988),(2144994),(2160000),(2174982),(2189988),(2204994),(2220000),(2234982),(2249988),(2264994),(2280000),(2294982),(2309988),(2324994),(2340000),(2354982),(2369988),(2384994),(2400000),(2414982),(2429988),(2444994),(2460000),(2474982),(2489988),(2504994),(2520000),(2534982),(2549988),(2564994),(2580000),(2594982),(2609988),(2624994),(2640000),(2654982),(2669988),(2684994),(2700000),(2714982),(2729988),(2744994),(2760000),(2774982),(2789988),(2804994),(2820000),(2834982),(2849988),(2864994),(2880000),(2894982),(2909988),(2924994),(2940000),(2954982),(2969988),(2984994),(3000000),(3014982),(3029988),(3044994),(3060000),(3074982),(3089988),(3104994),(3120000),(3134982),(3149988),(3164994),(3180000),(3194982),(3209988),(3224994),(3240000),(3254982),(3269988),(3284994),(3300000),(3314982),(3329988),(3344994),(3360000),(3374982),(3389988),(3404994),(3420000),(3434982),(3449988),(3464994),(3480000),(3494982),(3509988),(3524994),(3540000),(3554982),(3569988),(3584994),(3600000),(3614982),(3629988),(3644994),(3660000),(3674982),(3689988),(3704994),(3720000),(3734982),(3749988),(3764994),(3780000),(3794982),(3809988),(3824994),(3840000),(3854982),(3869988),(3884994),(3900000),(3914982),(3929988),(3944994),(3960000),(3974982),(3989988),(4004994),(4020000),(4034982),(4049988),(4064994),(4080000),(4094982),(4109988),(4124994),(4140000),(4154982),(4169988),(4184994),(4200000),(4214982),(4229988),(4244994),(4260000),(4274982),(4289988),(4304994),(4320000),(4334982),(4349988),(4364994),(4380000),(4394982),(4409988),(4424994),(4440000),(4454982),(4469988),(4484994),(4500000),(4514982),(4529988),(4544994),(4560000),(4574982),(4589988),(4604994),(4620000),(4634982),(4649988),(4664994),(4680000),(4694982),(4709988),(4724994),(4740000),(4754982),(4769988),(4784994),(4800000),(4814982),(4829988),(4844994),(4860000),(4874982),(4889988),(4904994),(4920000),(4934982),(4949988),(4964994),(4980000),(4994982),(5009988),(5024994),(5040000),(5054982),(5069988),(5084994),(5100000),(5114982),(5129988),(5144994),(5160000),(5174982),(5189988),(5204994),(5220000),(5234982),(5249988),(5264994),(5280000),(5294982),(5309988),(5324994),(5340000),(5354982),(5369988),(5384994),(5400000),(5414982),(5429988),(5444994),(5460000),(5474982),(5489988),(5504994),(5520000),(5534982),(5549988),(5564994),(5580000),(5594982),(5609988),(5624994),(5640000),(5654982),(5669988),(5684994),(5700000),(5714982),(5729988),(5744994),(5760000),(5774982),(5789988),(5804994),(5820000),(5834982),(5849988),(5864994),(5880000),(5894982),(5909988),(5924994),(5940000),(5954982),(5969988),(5984994),(6000001)) AS g(b))) AS prov_o1 from orders) o1,
(select * from (select sum(l_quantity) as total, l_orderkey from lineitem group by l_orderkey) t where total > 312) ol
where o_orderkey = ol.l_orderkey and c_custkey = o_custkey and o_orderkey = l.l_orderkey group by c_name,c_custkey,o_orderkey,o_orderdate,o_totalprice order by o_totalprice desc,o_orderdate LIMIT 100) f;
