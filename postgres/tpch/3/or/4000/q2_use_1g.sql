WITH _temp_view_1 AS (
SELECT /*+ materialize */ min(F0."ps_supplycost") AS "AGGR_0", F0."ps_partkey" AS "GROUP_0"
FROM (
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F0."n_nationkey" AS "n_nationkey", F0."n_name" AS "n_name", F0."n_regionkey" AS "n_regionkey", F0."n_comment" AS "n_comment", F1."r_regionkey" AS "r_regionkey", F1."r_name" AS "r_name", F1."r_comment" AS "r_comment"
FROM ((
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F1."n_nationkey" AS "n_nationkey", F1."n_name" AS "n_name", F1."n_regionkey" AS "n_regionkey", F1."n_comment" AS "n_comment"
FROM ((
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F1."s_suppkey" AS "s_suppkey", F1."s_name" AS "s_name", F1."s_address" AS "s_address", F1."s_nationkey" AS "s_nationkey", F1."s_phone" AS "s_phone", F1."s_acctbal" AS "s_acctbal", F1."s_comment" AS "s_comment"
FROM ((
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment"
FROM "partsupp" AS F0
WHERE ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((F0."ps_partkey" >= '1') AND (F0."ps_partkey" < '4049')) OR ((F0."ps_partkey" >= '4833') AND (F0."ps_partkey" < '4882'))) OR ((F0."ps_partkey" >= '5127') AND (F0."ps_partkey" < '5176'))) OR ((F0."ps_partkey" >= '5911') AND (F0."ps_partkey" < '5960'))) OR ((F0."ps_partkey" >= '8361') AND (F0."ps_partkey" < '8410'))) OR ((F0."ps_partkey" >= '11644') AND (F0."ps_partkey" < '11693'))) OR ((F0."ps_partkey" >= '13114') AND (F0."ps_partkey" < '13163'))) OR ((F0."ps_partkey" >= '13751') AND (F0."ps_partkey" < '13800'))) OR ((F0."ps_partkey" >= '15221') AND (F0."ps_partkey" < '15270'))) OR ((F0."ps_partkey" >= '17230') AND (F0."ps_partkey" < '17279'))) OR ((F0."ps_partkey" >= '18112') AND (F0."ps_partkey" < '18161'))) OR ((F0."ps_partkey" >= '18308') AND (F0."ps_partkey" < '18357'))) OR ((F0."ps_partkey" >= '18945') AND (F0."ps_partkey" < '18994'))) OR ((F0."ps_partkey" >= '19435') AND (F0."ps_partkey" < '19484'))) OR ((F0."ps_partkey" >= '20023') AND (F0."ps_partkey" < '20072'))) OR ((F0."ps_partkey" >= '21199') AND (F0."ps_partkey" < '21248'))) OR ((F0."ps_partkey" >= '25952') AND (F0."ps_partkey" < '26001'))) OR ((F0."ps_partkey" >= '26442') AND (F0."ps_partkey" < '26491'))) OR ((F0."ps_partkey" >= '29774') AND (F0."ps_partkey" < '29823'))) OR ((F0."ps_partkey" >= '33057') AND (F0."ps_partkey" < '33106'))) OR ((F0."ps_partkey" >= '33939') AND (F0."ps_partkey" < '33988'))) OR ((F0."ps_partkey" >= '34282') AND (F0."ps_partkey" < '34331'))) OR ((F0."ps_partkey" >= '35997') AND (F0."ps_partkey" < '36046'))) OR ((F0."ps_partkey" >= '36977') AND (F0."ps_partkey" < '37026'))) OR ((F0."ps_partkey" >= '39574') AND (F0."ps_partkey" < '39623'))) OR ((F0."ps_partkey" >= '40211') AND (F0."ps_partkey" < '40260'))) OR ((F0."ps_partkey" >= '43837') AND (F0."ps_partkey" < '43886'))) OR ((F0."ps_partkey" >= '44278') AND (F0."ps_partkey" < '44327'))) OR ((F0."ps_partkey" >= '47169') AND (F0."ps_partkey" < '47218'))) OR ((F0."ps_partkey" >= '59517') AND (F0."ps_partkey" < '59566'))) OR ((F0."ps_partkey" >= '62310') AND (F0."ps_partkey" < '62359'))) OR ((F0."ps_partkey" >= '66328') AND (F0."ps_partkey" < '66377'))) OR ((F0."ps_partkey" >= '67161') AND (F0."ps_partkey" < '67210'))) OR ((F0."ps_partkey" >= '69219') AND (F0."ps_partkey" < '69268'))) OR ((F0."ps_partkey" >= '73286') AND (F0."ps_partkey" < '73335'))) OR ((F0."ps_partkey" >= '75393') AND (F0."ps_partkey" < '75442'))) OR ((F0."ps_partkey" >= '75981') AND (F0."ps_partkey" < '76030'))) OR ((F0."ps_partkey" >= '76324') AND (F0."ps_partkey" < '76373'))) OR ((F0."ps_partkey" >= '78382') AND (F0."ps_partkey" < '78431'))) OR ((F0."ps_partkey" >= '81273') AND (F0."ps_partkey" < '81322'))) OR ((F0."ps_partkey" >= '83968') AND (F0."ps_partkey" < '84017'))) OR ((F0."ps_partkey" >= '85095') AND (F0."ps_partkey" < '85144'))) OR ((F0."ps_partkey" >= '85438') AND (F0."ps_partkey" < '85487'))) OR ((F0."ps_partkey" >= '86320') AND (F0."ps_partkey" < '86369'))) OR ((F0."ps_partkey" >= '86467') AND (F0."ps_partkey" < '86516'))) OR ((F0."ps_partkey" >= '88476') AND (F0."ps_partkey" < '88525'))) OR ((F0."ps_partkey" >= '90240') AND (F0."ps_partkey" < '90289'))) OR ((F0."ps_partkey" >= '99158') AND (F0."ps_partkey" < '99207'))) OR ((F0."ps_partkey" >= '100236') AND (F0."ps_partkey" < '100285'))) OR ((F0."ps_partkey" >= '100726') AND (F0."ps_partkey" < '100775'))) OR ((F0."ps_partkey" >= '102147') AND (F0."ps_partkey" < '102196'))) OR ((F0."ps_partkey" >= '104695') AND (F0."ps_partkey" < '104744'))) OR ((F0."ps_partkey" >= '107586') AND (F0."ps_partkey" < '107635'))) OR ((F0."ps_partkey" >= '108419') AND (F0."ps_partkey" < '108468'))) OR ((F0."ps_partkey" >= '109497') AND (F0."ps_partkey" < '109546'))) OR ((F0."ps_partkey" >= '109987') AND (F0."ps_partkey" < '110036'))) OR ((F0."ps_partkey" >= '117729') AND (F0."ps_partkey" < '117778'))) OR ((F0."ps_partkey" >= '118562') AND (F0."ps_partkey" < '118611'))) OR ((F0."ps_partkey" >= '119983') AND (F0."ps_partkey" < '120032'))) OR ((F0."ps_partkey" >= '120669') AND (F0."ps_partkey" < '120718'))) OR ((F0."ps_partkey" >= '124785') AND (F0."ps_partkey" < '124834'))) OR ((F0."ps_partkey" >= '125961') AND (F0."ps_partkey" < '126010'))) OR ((F0."ps_partkey" >= '126892') AND (F0."ps_partkey" < '126941'))) OR ((F0."ps_partkey" >= '128215') AND (F0."ps_partkey" < '128264'))) OR ((F0."ps_partkey" >= '130518') AND (F0."ps_partkey" < '130567'))) OR ((F0."ps_partkey" >= '135663') AND (F0."ps_partkey" < '135712'))) OR ((F0."ps_partkey" >= '137035') AND (F0."ps_partkey" < '137084'))) OR ((F0."ps_partkey" >= '138309') AND (F0."ps_partkey" < '138358'))) OR ((F0."ps_partkey" >= '138603') AND (F0."ps_partkey" < '138652'))) OR ((F0."ps_partkey" >= '139779') AND (F0."ps_partkey" < '139828'))) OR ((F0."ps_partkey" >= '141298') AND (F0."ps_partkey" < '141347'))) OR ((F0."ps_partkey" >= '143944') AND (F0."ps_partkey" < '143993'))) OR ((F0."ps_partkey" >= '146737') AND (F0."ps_partkey" < '146786'))) OR ((F0."ps_partkey" >= '150706') AND (F0."ps_partkey" < '150755'))) OR ((F0."ps_partkey" >= '150951') AND (F0."ps_partkey" < '151000'))) OR ((F0."ps_partkey" >= '152323') AND (F0."ps_partkey" < '152372'))) OR ((F0."ps_partkey" >= '156194') AND (F0."ps_partkey" < '156243'))) OR ((F0."ps_partkey" >= '159134') AND (F0."ps_partkey" < '159183'))) OR ((F0."ps_partkey" >= '162858') AND (F0."ps_partkey" < '162907'))) OR ((F0."ps_partkey" >= '164720') AND (F0."ps_partkey" < '164769'))) OR ((F0."ps_partkey" >= '167954') AND (F0."ps_partkey" < '168003'))) OR ((F0."ps_partkey" >= '170355') AND (F0."ps_partkey" < '170404'))) OR ((F0."ps_partkey" >= '170894') AND (F0."ps_partkey" < '170943'))) OR ((F0."ps_partkey" >= '173687') AND (F0."ps_partkey" < '173736'))) OR ((F0."ps_partkey" >= '173785') AND (F0."ps_partkey" < '173834'))) OR ((F0."ps_partkey" >= '173932') AND (F0."ps_partkey" < '173981'))) OR ((F0."ps_partkey" >= '175745') AND (F0."ps_partkey" < '175794'))) OR ((F0."ps_partkey" >= '179224') AND (F0."ps_partkey" < '179273'))) OR ((F0."ps_partkey" >= '179371') AND (F0."ps_partkey" < '179420'))) OR ((F0."ps_partkey" >= '181282') AND (F0."ps_partkey" < '181331'))) OR ((F0."ps_partkey" >= '184173') AND (F0."ps_partkey" < '184222'))) OR ((F0."ps_partkey" >= '185349') AND (F0."ps_partkey" < '185398'))) OR ((F0."ps_partkey" >= '189612') AND (F0."ps_partkey" < '189661'))) OR ((F0."ps_partkey" >= '190249') AND (F0."ps_partkey" < '190298'))) OR ((F0."ps_partkey" >= '191180') AND (F0."ps_partkey" < '191229'))) OR ((F0."ps_partkey" >= '191425') AND (F0."ps_partkey" < '191474'))) OR ((F0."ps_partkey" >= '191964') AND (F0."ps_partkey" < '192013'))) OR ((F0."ps_partkey" >= '193777') AND (F0."ps_partkey" < '193826'))) OR ((F0."ps_partkey" >= '198187') AND (F0."ps_partkey" < '198236')))) F0 CROSS JOIN (
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment"
FROM "supplier" AS F0
) F1)) F0 CROSS JOIN "nation" AS F1)) F0 CROSS JOIN "region" AS F1)) F0
WHERE ((((F0."s_suppkey" = F0."ps_suppkey") and (F0."s_nationkey" = F0."n_nationkey")) and (F0."n_regionkey" = F0."r_regionkey")) and (F0."r_name" = 'EUROPE'))
GROUP BY F0."ps_partkey"),
_temp_view_0 AS (
SELECT /*+ materialize */ F0."s_acctbal" AS "s_acctbal", F0."s_name" AS "s_name", F0."n_name" AS "n_name", F0."p_partkey" AS "p_partkey", F0."p_mfgr" AS "p_mfgr", F0."s_address" AS "s_address", F0."s_phone" AS "s_phone", F0."s_comment" AS "s_comment"
FROM (
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F0."n_nationkey" AS "n_nationkey", F0."n_name" AS "n_name", F0."n_regionkey" AS "n_regionkey", F0."n_comment" AS "n_comment", F0."r_regionkey" AS "r_regionkey", F0."r_name" AS "r_name", F0."r_comment" AS "r_comment", F1."min_supplycost" AS "min_supplycost", F1."ps_partkey" AS "ps_partkey1"
FROM ((
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F0."n_nationkey" AS "n_nationkey", F0."n_name" AS "n_name", F0."n_regionkey" AS "n_regionkey", F0."n_comment" AS "n_comment", F1."r_regionkey" AS "r_regionkey", F1."r_name" AS "r_name", F1."r_comment" AS "r_comment"
FROM ((
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F1."n_nationkey" AS "n_nationkey", F1."n_name" AS "n_name", F1."n_regionkey" AS "n_regionkey", F1."n_comment" AS "n_comment"
FROM ((
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F1."ps_partkey" AS "ps_partkey", F1."ps_suppkey" AS "ps_suppkey", F1."ps_availqty" AS "ps_availqty", F1."ps_supplycost" AS "ps_supplycost", F1."ps_comment" AS "ps_comment"
FROM ((
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", F1."s_suppkey" AS "s_suppkey", F1."s_name" AS "s_name", F1."s_address" AS "s_address", F1."s_nationkey" AS "s_nationkey", F1."s_phone" AS "s_phone", F1."s_acctbal" AS "s_acctbal", F1."s_comment" AS "s_comment"
FROM ((
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment"
FROM "part" AS F0
WHERE ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((F0."p_partkey" >= '200') AND (F0."p_partkey" < '250')) OR ((F0."p_partkey" >= '4800') AND (F0."p_partkey" < '4850'))) OR ((F0."p_partkey" >= '5150') AND (F0."p_partkey" < '5200'))) OR ((F0."p_partkey" >= '5900') AND (F0."p_partkey" < '5950'))) OR ((F0."p_partkey" >= '8350') AND (F0."p_partkey" < '8400'))) OR ((F0."p_partkey" >= '11650') AND (F0."p_partkey" < '11700'))) OR ((F0."p_partkey" >= '13100') AND (F0."p_partkey" < '13150'))) OR ((F0."p_partkey" >= '13750') AND (F0."p_partkey" < '13800'))) OR ((F0."p_partkey" >= '15200') AND (F0."p_partkey" < '15250'))) OR ((F0."p_partkey" >= '17250') AND (F0."p_partkey" < '17300'))) OR ((F0."p_partkey" >= '18100') AND (F0."p_partkey" < '18150'))) OR ((F0."p_partkey" >= '18300') AND (F0."p_partkey" < '18350'))) OR ((F0."p_partkey" >= '18950') AND (F0."p_partkey" < '19000'))) OR ((F0."p_partkey" >= '19450') AND (F0."p_partkey" < '19500'))) OR ((F0."p_partkey" >= '20000') AND (F0."p_partkey" < '20050'))) OR ((F0."p_partkey" >= '21200') AND (F0."p_partkey" < '21250'))) OR ((F0."p_partkey" >= '25950') AND (F0."p_partkey" < '26000'))) OR ((F0."p_partkey" >= '26450') AND (F0."p_partkey" < '26500'))) OR ((F0."p_partkey" >= '29800') AND (F0."p_partkey" < '29850'))) OR ((F0."p_partkey" >= '33050') AND (F0."p_partkey" < '33100'))) OR ((F0."p_partkey" >= '33950') AND (F0."p_partkey" < '34000'))) OR ((F0."p_partkey" >= '34300') AND (F0."p_partkey" < '34350'))) OR ((F0."p_partkey" >= '36000') AND (F0."p_partkey" < '36050'))) OR ((F0."p_partkey" >= '37000') AND (F0."p_partkey" < '37050'))) OR ((F0."p_partkey" >= '39550') AND (F0."p_partkey" < '39600'))) OR ((F0."p_partkey" >= '40250') AND (F0."p_partkey" < '40300'))) OR ((F0."p_partkey" >= '43850') AND (F0."p_partkey" < '43900'))) OR ((F0."p_partkey" >= '44300') AND (F0."p_partkey" < '44350'))) OR ((F0."p_partkey" >= '47150') AND (F0."p_partkey" < '47200'))) OR ((F0."p_partkey" >= '59500') AND (F0."p_partkey" < '59550'))) OR ((F0."p_partkey" >= '62300') AND (F0."p_partkey" < '62350'))) OR ((F0."p_partkey" >= '66300') AND (F0."p_partkey" < '66350'))) OR ((F0."p_partkey" >= '67150') AND (F0."p_partkey" < '67200'))) OR ((F0."p_partkey" >= '69200') AND (F0."p_partkey" < '69250'))) OR ((F0."p_partkey" >= '73300') AND (F0."p_partkey" < '73350'))) OR ((F0."p_partkey" >= '75350') AND (F0."p_partkey" < '75400'))) OR ((F0."p_partkey" >= '76000') AND (F0."p_partkey" < '76050'))) OR ((F0."p_partkey" >= '76300') AND (F0."p_partkey" < '76350'))) OR ((F0."p_partkey" >= '78400') AND (F0."p_partkey" < '78450'))) OR ((F0."p_partkey" >= '81250') AND (F0."p_partkey" < '81300'))) OR ((F0."p_partkey" >= '83950') AND (F0."p_partkey" < '84000'))) OR ((F0."p_partkey" >= '85050') AND (F0."p_partkey" < '85100'))) OR ((F0."p_partkey" >= '85450') AND (F0."p_partkey" < '85500'))) OR ((F0."p_partkey" >= '86300') AND (F0."p_partkey" < '86350'))) OR ((F0."p_partkey" >= '86500') AND (F0."p_partkey" < '86550'))) OR ((F0."p_partkey" >= '88500') AND (F0."p_partkey" < '88550'))) OR ((F0."p_partkey" >= '90250') AND (F0."p_partkey" < '90300'))) OR ((F0."p_partkey" >= '99150') AND (F0."p_partkey" < '99200'))) OR ((F0."p_partkey" >= '100250') AND (F0."p_partkey" < '100300'))) OR ((F0."p_partkey" >= '100700') AND (F0."p_partkey" < '100750'))) OR ((F0."p_partkey" >= '102150') AND (F0."p_partkey" < '102200'))) OR ((F0."p_partkey" >= '104650') AND (F0."p_partkey" < '104700'))) OR ((F0."p_partkey" >= '107600') AND (F0."p_partkey" < '107650'))) OR ((F0."p_partkey" >= '108400') AND (F0."p_partkey" < '108450'))) OR ((F0."p_partkey" >= '109500') AND (F0."p_partkey" < '109550'))) OR ((F0."p_partkey" >= '110000') AND (F0."p_partkey" < '110050'))) OR ((F0."p_partkey" >= '117750') AND (F0."p_partkey" < '117800'))) OR ((F0."p_partkey" >= '118550') AND (F0."p_partkey" < '118600'))) OR ((F0."p_partkey" >= '119950') AND (F0."p_partkey" < '120000'))) OR ((F0."p_partkey" >= '120700') AND (F0."p_partkey" < '120750'))) OR ((F0."p_partkey" >= '124800') AND (F0."p_partkey" < '124850'))) OR ((F0."p_partkey" >= '125950') AND (F0."p_partkey" < '126000'))) OR ((F0."p_partkey" >= '126850') AND (F0."p_partkey" < '126900'))) OR ((F0."p_partkey" >= '128250') AND (F0."p_partkey" < '128300'))) OR ((F0."p_partkey" >= '130550') AND (F0."p_partkey" < '130600'))) OR ((F0."p_partkey" >= '135700') AND (F0."p_partkey" < '135750'))) OR ((F0."p_partkey" >= '137050') AND (F0."p_partkey" < '137100'))) OR ((F0."p_partkey" >= '138350') AND (F0."p_partkey" < '138400'))) OR ((F0."p_partkey" >= '138600') AND (F0."p_partkey" < '138650'))) OR ((F0."p_partkey" >= '139800') AND (F0."p_partkey" < '139850'))) OR ((F0."p_partkey" >= '141300') AND (F0."p_partkey" < '141350'))) OR ((F0."p_partkey" >= '143950') AND (F0."p_partkey" < '144000'))) OR ((F0."p_partkey" >= '146750') AND (F0."p_partkey" < '146800'))) OR ((F0."p_partkey" >= '150700') AND (F0."p_partkey" < '150750'))) OR ((F0."p_partkey" >= '150950') AND (F0."p_partkey" < '151000'))) OR ((F0."p_partkey" >= '152350') AND (F0."p_partkey" < '152400'))) OR ((F0."p_partkey" >= '156200') AND (F0."p_partkey" < '156250'))) OR ((F0."p_partkey" >= '159150') AND (F0."p_partkey" < '159200'))) OR ((F0."p_partkey" >= '162850') AND (F0."p_partkey" < '162900'))) OR ((F0."p_partkey" >= '164750') AND (F0."p_partkey" < '164800'))) OR ((F0."p_partkey" >= '167950') AND (F0."p_partkey" < '168000'))) OR ((F0."p_partkey" >= '170400') AND (F0."p_partkey" < '170450'))) OR ((F0."p_partkey" >= '170900') AND (F0."p_partkey" < '170950'))) OR ((F0."p_partkey" >= '173700') AND (F0."p_partkey" < '173750'))) OR ((F0."p_partkey" >= '173800') AND (F0."p_partkey" < '173850'))) OR ((F0."p_partkey" >= '173950') AND (F0."p_partkey" < '174000'))) OR ((F0."p_partkey" >= '175750') AND (F0."p_partkey" < '175800'))) OR ((F0."p_partkey" >= '179250') AND (F0."p_partkey" < '179300'))) OR ((F0."p_partkey" >= '179400') AND (F0."p_partkey" < '179450'))) OR ((F0."p_partkey" >= '181250') AND (F0."p_partkey" < '181300'))) OR ((F0."p_partkey" >= '184200') AND (F0."p_partkey" < '184250'))) OR ((F0."p_partkey" >= '185350') AND (F0."p_partkey" < '185400'))) OR ((F0."p_partkey" >= '189650') AND (F0."p_partkey" < '189700'))) OR ((F0."p_partkey" >= '190250') AND (F0."p_partkey" < '190300'))) OR ((F0."p_partkey" >= '191200') AND (F0."p_partkey" < '191250'))) OR ((F0."p_partkey" >= '191450') AND (F0."p_partkey" < '191500'))) OR ((F0."p_partkey" >= '192000') AND (F0."p_partkey" < '192050'))) OR ((F0."p_partkey" >= '193800') AND (F0."p_partkey" < '193850'))) OR ((F0."p_partkey" >= '198150') AND (F0."p_partkey" < '198200')))) F0 CROSS JOIN (
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment"
FROM "supplier" AS F0
WHERE ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((F0."s_suppkey" >= '33') AND (F0."s_suppkey" < '35')) OR ((F0."s_suppkey" >= '115') AND (F0."s_suppkey" < '118'))) OR ((F0."s_suppkey" >= '800') AND (F0."s_suppkey" < '803'))) OR ((F0."s_suppkey" >= '1013') AND (F0."s_suppkey" < '1015'))) OR ((F0."s_suppkey" >= '1225') AND (F0."s_suppkey" < '1228'))) OR ((F0."s_suppkey" >= '1285') AND (F0."s_suppkey" < '1290'))) OR ((F0."s_suppkey" >= '1518') AND (F0."s_suppkey" < '1520'))) OR ((F0."s_suppkey" >= '1743') AND (F0."s_suppkey" < '1745'))) OR ((F0."s_suppkey" >= '1815') AND (F0."s_suppkey" < '1818'))) OR ((F0."s_suppkey" >= '2323') AND (F0."s_suppkey" < '2325'))) OR ((F0."s_suppkey" >= '2350') AND (F0."s_suppkey" < '2353'))) OR ((F0."s_suppkey" >= '2535') AND (F0."s_suppkey" < '2538'))) OR ((F0."s_suppkey" >= '2675') AND (F0."s_suppkey" < '2678'))) OR ((F0."s_suppkey" >= '2730') AND (F0."s_suppkey" < '2733'))) OR ((F0."s_suppkey" >= '2920') AND (F0."s_suppkey" < '2923'))) OR ((F0."s_suppkey" >= '3120') AND (F0."s_suppkey" < '3123'))) OR ((F0."s_suppkey" >= '3140') AND (F0."s_suppkey" < '3143'))) OR ((F0."s_suppkey" >= '3228') AND (F0."s_suppkey" < '3230'))) OR ((F0."s_suppkey" >= '3245') AND (F0."s_suppkey" < '3248'))) OR ((F0."s_suppkey" >= '3323') AND (F0."s_suppkey" < '3325'))) OR ((F0."s_suppkey" >= '3345') AND (F0."s_suppkey" < '3348'))) OR ((F0."s_suppkey" >= '3383') AND (F0."s_suppkey" < '3385'))) OR ((F0."s_suppkey" >= '3438') AND (F0."s_suppkey" < '3440'))) OR ((F0."s_suppkey" >= '3530') AND (F0."s_suppkey" < '3533'))) OR ((F0."s_suppkey" >= '3815') AND (F0."s_suppkey" < '3818'))) OR ((F0."s_suppkey" >= '3965') AND (F0."s_suppkey" < '3968'))) OR ((F0."s_suppkey" >= '3973') AND (F0."s_suppkey" < '3975'))) OR ((F0."s_suppkey" >= '3978') AND (F0."s_suppkey" < '3980'))) OR ((F0."s_suppkey" >= '3990') AND (F0."s_suppkey" < '3993'))) OR ((F0."s_suppkey" >= '4210') AND (F0."s_suppkey" < '4213'))) OR ((F0."s_suppkey" >= '4305') AND (F0."s_suppkey" < '4308'))) OR ((F0."s_suppkey" >= '4310') AND (F0."s_suppkey" < '4313'))) OR ((F0."s_suppkey" >= '4428') AND (F0."s_suppkey" < '4430'))) OR ((F0."s_suppkey" >= '4580') AND (F0."s_suppkey" < '4583'))) OR ((F0."s_suppkey" >= '4603') AND (F0."s_suppkey" < '4605'))) OR ((F0."s_suppkey" >= '4700') AND (F0."s_suppkey" < '4703'))) OR ((F0."s_suppkey" >= '4855') AND (F0."s_suppkey" < '4858'))) OR ((F0."s_suppkey" >= '5147') AND (F0."s_suppkey" < '5150'))) OR ((F0."s_suppkey" >= '5250') AND (F0."s_suppkey" < '5252'))) OR ((F0."s_suppkey" >= '5305') AND (F0."s_suppkey" < '5307'))) OR ((F0."s_suppkey" >= '5357') AND (F0."s_suppkey" < '5360'))) OR ((F0."s_suppkey" >= '5405') AND (F0."s_suppkey" < '5407'))) OR ((F0."s_suppkey" >= '5750') AND (F0."s_suppkey" < '5752'))) OR ((F0."s_suppkey" >= '5790') AND (F0."s_suppkey" < '5792'))) OR ((F0."s_suppkey" >= '5862') AND (F0."s_suppkey" < '5865'))) OR ((F0."s_suppkey" >= '5935') AND (F0."s_suppkey" < '5937'))) OR ((F0."s_suppkey" >= '5967') AND (F0."s_suppkey" < '5970'))) OR ((F0."s_suppkey" >= '5975') AND (F0."s_suppkey" < '5977'))) OR ((F0."s_suppkey" >= '6002') AND (F0."s_suppkey" < '6005'))) OR ((F0."s_suppkey" >= '6107') AND (F0."s_suppkey" < '6110'))) OR ((F0."s_suppkey" >= '6187') AND (F0."s_suppkey" < '6190'))) OR ((F0."s_suppkey" >= '6330') AND (F0."s_suppkey" < '6332'))) OR ((F0."s_suppkey" >= '6345') AND (F0."s_suppkey" < '6347'))) OR ((F0."s_suppkey" >= '6372') AND (F0."s_suppkey" < '6375'))) OR ((F0."s_suppkey" >= '6682') AND (F0."s_suppkey" < '6685'))) OR ((F0."s_suppkey" >= '6830') AND (F0."s_suppkey" < '6832'))) OR ((F0."s_suppkey" >= '7042') AND (F0."s_suppkey" < '7045'))) OR ((F0."s_suppkey" >= '7192') AND (F0."s_suppkey" < '7195'))) OR ((F0."s_suppkey" >= '7205') AND (F0."s_suppkey" < '7207'))) OR ((F0."s_suppkey" >= '7267') AND (F0."s_suppkey" < '7270'))) OR ((F0."s_suppkey" >= '7342') AND (F0."s_suppkey" < '7345'))) OR ((F0."s_suppkey" >= '7767') AND (F0."s_suppkey" < '7770'))) OR ((F0."s_suppkey" >= '7772') AND (F0."s_suppkey" < '7775'))) OR ((F0."s_suppkey" >= '7807') AND (F0."s_suppkey" < '7810'))) OR ((F0."s_suppkey" >= '7967') AND (F0."s_suppkey" < '7970'))) OR ((F0."s_suppkey" >= '7980') AND (F0."s_suppkey" < '7982'))) OR ((F0."s_suppkey" >= '8097') AND (F0."s_suppkey" < '8102'))) OR ((F0."s_suppkey" >= '8405') AND (F0."s_suppkey" < '8407'))) OR ((F0."s_suppkey" >= '8517') AND (F0."s_suppkey" < '8522'))) OR ((F0."s_suppkey" >= '8757') AND (F0."s_suppkey" < '8760'))) OR ((F0."s_suppkey" >= '8770') AND (F0."s_suppkey" < '8772'))) OR ((F0."s_suppkey" >= '8780') AND (F0."s_suppkey" < '8782'))) OR ((F0."s_suppkey" >= '8850') AND (F0."s_suppkey" < '8855'))) OR ((F0."s_suppkey" >= '8972') AND (F0."s_suppkey" < '8975'))) OR ((F0."s_suppkey" >= '9012') AND (F0."s_suppkey" < '9015'))) OR ((F0."s_suppkey" >= '9185') AND (F0."s_suppkey" < '9187'))) OR ((F0."s_suppkey" >= '9407') AND (F0."s_suppkey" < '9410'))) OR ((F0."s_suppkey" >= '9455') AND (F0."s_suppkey" < '9457'))) OR ((F0."s_suppkey" >= '9527') AND (F0."s_suppkey" < '9530'))) OR ((F0."s_suppkey" >= '9557') AND (F0."s_suppkey" < '9560'))) OR ((F0."s_suppkey" >= '9657') AND (F0."s_suppkey" < '9660'))) OR ((F0."s_suppkey" >= '9690') AND (F0."s_suppkey" < '9692'))) OR ((F0."s_suppkey" >= '9792') AND (F0."s_suppkey" < '9795'))) OR ((F0."s_suppkey" >= '9812') AND (F0."s_suppkey" < '9815'))) OR ((F0."s_suppkey" >= '9997') AND (F0."s_suppkey" < '10001')))) F1)) F0 CROSS JOIN (
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment"
FROM "partsupp" AS F0
WHERE ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((F0."ps_partkey" >= '1') AND (F0."ps_partkey" < '4049')) OR ((F0."ps_partkey" >= '4833') AND (F0."ps_partkey" < '4882'))) OR ((F0."ps_partkey" >= '5127') AND (F0."ps_partkey" < '5176'))) OR ((F0."ps_partkey" >= '5911') AND (F0."ps_partkey" < '5960'))) OR ((F0."ps_partkey" >= '8361') AND (F0."ps_partkey" < '8410'))) OR ((F0."ps_partkey" >= '11644') AND (F0."ps_partkey" < '11693'))) OR ((F0."ps_partkey" >= '13114') AND (F0."ps_partkey" < '13163'))) OR ((F0."ps_partkey" >= '13751') AND (F0."ps_partkey" < '13800'))) OR ((F0."ps_partkey" >= '15221') AND (F0."ps_partkey" < '15270'))) OR ((F0."ps_partkey" >= '17230') AND (F0."ps_partkey" < '17279'))) OR ((F0."ps_partkey" >= '18112') AND (F0."ps_partkey" < '18161'))) OR ((F0."ps_partkey" >= '18308') AND (F0."ps_partkey" < '18357'))) OR ((F0."ps_partkey" >= '18945') AND (F0."ps_partkey" < '18994'))) OR ((F0."ps_partkey" >= '19435') AND (F0."ps_partkey" < '19484'))) OR ((F0."ps_partkey" >= '20023') AND (F0."ps_partkey" < '20072'))) OR ((F0."ps_partkey" >= '21199') AND (F0."ps_partkey" < '21248'))) OR ((F0."ps_partkey" >= '25952') AND (F0."ps_partkey" < '26001'))) OR ((F0."ps_partkey" >= '26442') AND (F0."ps_partkey" < '26491'))) OR ((F0."ps_partkey" >= '29774') AND (F0."ps_partkey" < '29823'))) OR ((F0."ps_partkey" >= '33057') AND (F0."ps_partkey" < '33106'))) OR ((F0."ps_partkey" >= '33939') AND (F0."ps_partkey" < '33988'))) OR ((F0."ps_partkey" >= '34282') AND (F0."ps_partkey" < '34331'))) OR ((F0."ps_partkey" >= '35997') AND (F0."ps_partkey" < '36046'))) OR ((F0."ps_partkey" >= '36977') AND (F0."ps_partkey" < '37026'))) OR ((F0."ps_partkey" >= '39574') AND (F0."ps_partkey" < '39623'))) OR ((F0."ps_partkey" >= '40211') AND (F0."ps_partkey" < '40260'))) OR ((F0."ps_partkey" >= '43837') AND (F0."ps_partkey" < '43886'))) OR ((F0."ps_partkey" >= '44278') AND (F0."ps_partkey" < '44327'))) OR ((F0."ps_partkey" >= '47169') AND (F0."ps_partkey" < '47218'))) OR ((F0."ps_partkey" >= '59517') AND (F0."ps_partkey" < '59566'))) OR ((F0."ps_partkey" >= '62310') AND (F0."ps_partkey" < '62359'))) OR ((F0."ps_partkey" >= '66328') AND (F0."ps_partkey" < '66377'))) OR ((F0."ps_partkey" >= '67161') AND (F0."ps_partkey" < '67210'))) OR ((F0."ps_partkey" >= '69219') AND (F0."ps_partkey" < '69268'))) OR ((F0."ps_partkey" >= '73286') AND (F0."ps_partkey" < '73335'))) OR ((F0."ps_partkey" >= '75393') AND (F0."ps_partkey" < '75442'))) OR ((F0."ps_partkey" >= '75981') AND (F0."ps_partkey" < '76030'))) OR ((F0."ps_partkey" >= '76324') AND (F0."ps_partkey" < '76373'))) OR ((F0."ps_partkey" >= '78382') AND (F0."ps_partkey" < '78431'))) OR ((F0."ps_partkey" >= '81273') AND (F0."ps_partkey" < '81322'))) OR ((F0."ps_partkey" >= '83968') AND (F0."ps_partkey" < '84017'))) OR ((F0."ps_partkey" >= '85095') AND (F0."ps_partkey" < '85144'))) OR ((F0."ps_partkey" >= '85438') AND (F0."ps_partkey" < '85487'))) OR ((F0."ps_partkey" >= '86320') AND (F0."ps_partkey" < '86369'))) OR ((F0."ps_partkey" >= '86467') AND (F0."ps_partkey" < '86516'))) OR ((F0."ps_partkey" >= '88476') AND (F0."ps_partkey" < '88525'))) OR ((F0."ps_partkey" >= '90240') AND (F0."ps_partkey" < '90289'))) OR ((F0."ps_partkey" >= '99158') AND (F0."ps_partkey" < '99207'))) OR ((F0."ps_partkey" >= '100236') AND (F0."ps_partkey" < '100285'))) OR ((F0."ps_partkey" >= '100726') AND (F0."ps_partkey" < '100775'))) OR ((F0."ps_partkey" >= '102147') AND (F0."ps_partkey" < '102196'))) OR ((F0."ps_partkey" >= '104695') AND (F0."ps_partkey" < '104744'))) OR ((F0."ps_partkey" >= '107586') AND (F0."ps_partkey" < '107635'))) OR ((F0."ps_partkey" >= '108419') AND (F0."ps_partkey" < '108468'))) OR ((F0."ps_partkey" >= '109497') AND (F0."ps_partkey" < '109546'))) OR ((F0."ps_partkey" >= '109987') AND (F0."ps_partkey" < '110036'))) OR ((F0."ps_partkey" >= '117729') AND (F0."ps_partkey" < '117778'))) OR ((F0."ps_partkey" >= '118562') AND (F0."ps_partkey" < '118611'))) OR ((F0."ps_partkey" >= '119983') AND (F0."ps_partkey" < '120032'))) OR ((F0."ps_partkey" >= '120669') AND (F0."ps_partkey" < '120718'))) OR ((F0."ps_partkey" >= '124785') AND (F0."ps_partkey" < '124834'))) OR ((F0."ps_partkey" >= '125961') AND (F0."ps_partkey" < '126010'))) OR ((F0."ps_partkey" >= '126892') AND (F0."ps_partkey" < '126941'))) OR ((F0."ps_partkey" >= '128215') AND (F0."ps_partkey" < '128264'))) OR ((F0."ps_partkey" >= '130518') AND (F0."ps_partkey" < '130567'))) OR ((F0."ps_partkey" >= '135663') AND (F0."ps_partkey" < '135712'))) OR ((F0."ps_partkey" >= '137035') AND (F0."ps_partkey" < '137084'))) OR ((F0."ps_partkey" >= '138309') AND (F0."ps_partkey" < '138358'))) OR ((F0."ps_partkey" >= '138603') AND (F0."ps_partkey" < '138652'))) OR ((F0."ps_partkey" >= '139779') AND (F0."ps_partkey" < '139828'))) OR ((F0."ps_partkey" >= '141298') AND (F0."ps_partkey" < '141347'))) OR ((F0."ps_partkey" >= '143944') AND (F0."ps_partkey" < '143993'))) OR ((F0."ps_partkey" >= '146737') AND (F0."ps_partkey" < '146786'))) OR ((F0."ps_partkey" >= '150706') AND (F0."ps_partkey" < '150755'))) OR ((F0."ps_partkey" >= '150951') AND (F0."ps_partkey" < '151000'))) OR ((F0."ps_partkey" >= '152323') AND (F0."ps_partkey" < '152372'))) OR ((F0."ps_partkey" >= '156194') AND (F0."ps_partkey" < '156243'))) OR ((F0."ps_partkey" >= '159134') AND (F0."ps_partkey" < '159183'))) OR ((F0."ps_partkey" >= '162858') AND (F0."ps_partkey" < '162907'))) OR ((F0."ps_partkey" >= '164720') AND (F0."ps_partkey" < '164769'))) OR ((F0."ps_partkey" >= '167954') AND (F0."ps_partkey" < '168003'))) OR ((F0."ps_partkey" >= '170355') AND (F0."ps_partkey" < '170404'))) OR ((F0."ps_partkey" >= '170894') AND (F0."ps_partkey" < '170943'))) OR ((F0."ps_partkey" >= '173687') AND (F0."ps_partkey" < '173736'))) OR ((F0."ps_partkey" >= '173785') AND (F0."ps_partkey" < '173834'))) OR ((F0."ps_partkey" >= '173932') AND (F0."ps_partkey" < '173981'))) OR ((F0."ps_partkey" >= '175745') AND (F0."ps_partkey" < '175794'))) OR ((F0."ps_partkey" >= '179224') AND (F0."ps_partkey" < '179273'))) OR ((F0."ps_partkey" >= '179371') AND (F0."ps_partkey" < '179420'))) OR ((F0."ps_partkey" >= '181282') AND (F0."ps_partkey" < '181331'))) OR ((F0."ps_partkey" >= '184173') AND (F0."ps_partkey" < '184222'))) OR ((F0."ps_partkey" >= '185349') AND (F0."ps_partkey" < '185398'))) OR ((F0."ps_partkey" >= '189612') AND (F0."ps_partkey" < '189661'))) OR ((F0."ps_partkey" >= '190249') AND (F0."ps_partkey" < '190298'))) OR ((F0."ps_partkey" >= '191180') AND (F0."ps_partkey" < '191229'))) OR ((F0."ps_partkey" >= '191425') AND (F0."ps_partkey" < '191474'))) OR ((F0."ps_partkey" >= '191964') AND (F0."ps_partkey" < '192013'))) OR ((F0."ps_partkey" >= '193777') AND (F0."ps_partkey" < '193826'))) OR ((F0."ps_partkey" >= '198187') AND (F0."ps_partkey" < '198236')))) F1)) F0 CROSS JOIN "nation" AS F1)) F0 CROSS JOIN "region" AS F1)) F0 CROSS JOIN (
SELECT F0."AGGR_0" AS "min_supplycost", F0."GROUP_0" AS "ps_partkey"
FROM (SELECT * FROM _temp_view_1) F0) F1)) F0
WHERE (((((((((F0."p_partkey" = F0."ps_partkey") and (F0."s_suppkey" = F0."ps_suppkey")) and (F0."p_size" = 15)) and (F0."p_type" like '%BRASS')) and (F0."s_nationkey" = F0."n_nationkey")) and (F0."n_regionkey" = F0."r_regionkey")) and (F0."r_name" = 'EUROPE')) and (F0."ps_supplycost" = F0."min_supplycost")) and (F0."p_partkey" = F0."ps_partkey1")))
SELECT F0."s_acctbal" AS "s_acctbal", F0."s_name" AS "s_name", F0."n_name" AS "n_name", F0."p_partkey" AS "p_partkey", F0."p_mfgr" AS "p_mfgr", F0."s_address" AS "s_address", F0."s_phone" AS "s_phone", F0."s_comment" AS "s_comment"
FROM (
SELECT F0."s_acctbal" AS "s_acctbal", F0."s_name" AS "s_name", F0."n_name" AS "n_name", F0."p_partkey" AS "p_partkey", F0."p_mfgr" AS "p_mfgr", F0."s_address" AS "s_address", F0."s_phone" AS "s_phone", F0."s_comment" AS "s_comment"
FROM (SELECT * FROM _temp_view_0) F0
ORDER BY F0."s_acctbal" DESC NULLS LAST, F0."n_name" ASC NULLS LAST, F0."s_name" ASC NULLS LAST, F0."p_partkey" ASC NULLS LAST) F0
LIMIT 100;
