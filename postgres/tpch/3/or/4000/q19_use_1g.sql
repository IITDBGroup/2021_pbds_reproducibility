WITH _temp_view_0 AS (
SELECT /*+ materialize */ sum((F0."l_extendedprice" * (1 - F0."l_discount"))) AS "AGGR_0"
FROM (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", F1."p_partkey" AS "p_partkey", F1."p_name" AS "p_name", F1."p_mfgr" AS "p_mfgr", F1."p_brand" AS "p_brand", F1."p_type" AS "p_type", F1."p_size" AS "p_size", F1."p_container" AS "p_container", F1."p_retailprice" AS "p_retailprice", F1."p_comment" AS "p_comment"
FROM ((
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment"
FROM "lineitem" AS F0
WHERE ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((F0."l_orderkey" >= '19397') AND (F0."l_orderkey" < '20928')) OR ((F0."l_orderkey" >= '29888') AND (F0."l_orderkey" < '31360'))) OR ((F0."l_orderkey" >= '40164') AND (F0."l_orderkey" < '41668'))) OR ((F0."l_orderkey" >= '245285') AND (F0."l_orderkey" < '246823'))) OR ((F0."l_orderkey" >= '312743') AND (F0."l_orderkey" < '314244'))) OR ((F0."l_orderkey" >= '367173') AND (F0."l_orderkey" < '368673'))) OR ((F0."l_orderkey" >= '374596') AND (F0."l_orderkey" < '377511'))) OR ((F0."l_orderkey" >= '384868') AND (F0."l_orderkey" < '386407'))) OR ((F0."l_orderkey" >= '445153') AND (F0."l_orderkey" < '446662'))) OR ((F0."l_orderkey" >= '490371') AND (F0."l_orderkey" < '491974'))) OR ((F0."l_orderkey" >= '572672') AND (F0."l_orderkey" < '574180'))) OR ((F0."l_orderkey" >= '683618') AND (F0."l_orderkey" < '685063'))) OR ((F0."l_orderkey" >= '691078') AND (F0."l_orderkey" < '692485'))) OR ((F0."l_orderkey" >= '696930') AND (F0."l_orderkey" < '698405'))) OR ((F0."l_orderkey" >= '707431') AND (F0."l_orderkey" < '708967'))) OR ((F0."l_orderkey" >= '785312') AND (F0."l_orderkey" < '786753'))) OR ((F0."l_orderkey" >= '801991') AND (F0."l_orderkey" < '803522'))) OR ((F0."l_orderkey" >= '805095') AND (F0."l_orderkey" < '806565'))) OR ((F0."l_orderkey" >= '1011527') AND (F0."l_orderkey" < '1013152'))) OR ((F0."l_orderkey" >= '1040067') AND (F0."l_orderkey" < '1041479'))) OR ((F0."l_orderkey" >= '1075936') AND (F0."l_orderkey" < '1077414'))) OR ((F0."l_orderkey" >= '1215174') AND (F0."l_orderkey" < '1216646'))) OR ((F0."l_orderkey" >= '1257250') AND (F0."l_orderkey" < '1258724'))) OR ((F0."l_orderkey" >= '1392705') AND (F0."l_orderkey" < '1394149'))) OR ((F0."l_orderkey" >= '1410723') AND (F0."l_orderkey" < '1412263'))) OR ((F0."l_orderkey" >= '1448261') AND (F0."l_orderkey" < '1449700'))) OR ((F0."l_orderkey" >= '1532896') AND (F0."l_orderkey" < '1534373'))) OR ((F0."l_orderkey" >= '1539047') AND (F0."l_orderkey" < '1540612'))) OR ((F0."l_orderkey" >= '1616903') AND (F0."l_orderkey" < '1618533'))) OR ((F0."l_orderkey" >= '1682211') AND (F0."l_orderkey" < '1683680'))) OR ((F0."l_orderkey" >= '1703109') AND (F0."l_orderkey" < '1704551'))) OR ((F0."l_orderkey" >= '1787042') AND (F0."l_orderkey" < '1788450'))) OR ((F0."l_orderkey" >= '1863075') AND (F0."l_orderkey" < '1864642'))) OR ((F0."l_orderkey" >= '1871941') AND (F0."l_orderkey" < '1873447'))) OR ((F0."l_orderkey" >= '1978209') AND (F0."l_orderkey" < '1979685'))) OR ((F0."l_orderkey" >= '2007046') AND (F0."l_orderkey" < '2008608'))) OR ((F0."l_orderkey" >= '2054917') AND (F0."l_orderkey" < '2056450'))) OR ((F0."l_orderkey" >= '2144738') AND (F0."l_orderkey" < '2146272'))) OR ((F0."l_orderkey" >= '2152263') AND (F0."l_orderkey" < '2153829'))) OR ((F0."l_orderkey" >= '2283173') AND (F0."l_orderkey" < '2284707'))) OR ((F0."l_orderkey" >= '2356613') AND (F0."l_orderkey" < '2358115'))) OR ((F0."l_orderkey" >= '2388003') AND (F0."l_orderkey" < '2389474'))) OR ((F0."l_orderkey" >= '2438725') AND (F0."l_orderkey" < '2440198'))) OR ((F0."l_orderkey" >= '2443297') AND (F0."l_orderkey" < '2444672'))) OR ((F0."l_orderkey" >= '2447715') AND (F0."l_orderkey" < '2449159'))) OR ((F0."l_orderkey" >= '2452068') AND (F0."l_orderkey" < '2453504'))) OR ((F0."l_orderkey" >= '2491463') AND (F0."l_orderkey" < '2492935'))) OR ((F0."l_orderkey" >= '2526080') AND (F0."l_orderkey" < '2527622'))) OR ((F0."l_orderkey" >= '2606179') AND (F0."l_orderkey" < '2607682'))) OR ((F0."l_orderkey" >= '2621346') AND (F0."l_orderkey" < '2622855'))) OR ((F0."l_orderkey" >= '2739782') AND (F0."l_orderkey" < '2741252'))) OR ((F0."l_orderkey" >= '2742629') AND (F0."l_orderkey" < '2744132'))) OR ((F0."l_orderkey" >= '2755905') AND (F0."l_orderkey" < '2757378'))) OR ((F0."l_orderkey" >= '2805350') AND (F0."l_orderkey" < '2808354'))) OR ((F0."l_orderkey" >= '2865281') AND (F0."l_orderkey" < '2866758'))) OR ((F0."l_orderkey" >= '2941893') AND (F0."l_orderkey" < '2943461'))) OR ((F0."l_orderkey" >= '2952359') AND (F0."l_orderkey" < '2953858'))) OR ((F0."l_orderkey" >= '2979365') AND (F0."l_orderkey" < '2980960'))) OR ((F0."l_orderkey" >= '3023040') AND (F0."l_orderkey" < '3024453'))) OR ((F0."l_orderkey" >= '3117665') AND (F0."l_orderkey" < '3119076'))) OR ((F0."l_orderkey" >= '3237510') AND (F0."l_orderkey" < '3239008'))) OR ((F0."l_orderkey" >= '3255299') AND (F0."l_orderkey" < '3256710'))) OR ((F0."l_orderkey" >= '3318340') AND (F0."l_orderkey" < '3319808'))) OR ((F0."l_orderkey" >= '3327303') AND (F0."l_orderkey" < '3328866'))) OR ((F0."l_orderkey" >= '3366469') AND (F0."l_orderkey" < '3367904'))) OR ((F0."l_orderkey" >= '3388867') AND (F0."l_orderkey" < '3390304'))) OR ((F0."l_orderkey" >= '3532961') AND (F0."l_orderkey" < '3534470'))) OR ((F0."l_orderkey" >= '3571872') AND (F0."l_orderkey" < '3573378'))) OR ((F0."l_orderkey" >= '3630406') AND (F0."l_orderkey" < '3631970'))) OR ((F0."l_orderkey" >= '3743175') AND (F0."l_orderkey" < '3744611'))) OR ((F0."l_orderkey" >= '3789697') AND (F0."l_orderkey" < '3791175'))) OR ((F0."l_orderkey" >= '3837635') AND (F0."l_orderkey" < '3839143'))) OR ((F0."l_orderkey" >= '3875009') AND (F0."l_orderkey" < '3876452'))) OR ((F0."l_orderkey" >= '4039109') AND (F0."l_orderkey" < '4040551'))) OR ((F0."l_orderkey" >= '4175751') AND (F0."l_orderkey" < '4177281'))) OR ((F0."l_orderkey" >= '4222116') AND (F0."l_orderkey" < '4223494'))) OR ((F0."l_orderkey" >= '4295079') AND (F0."l_orderkey" < '4296705'))) OR ((F0."l_orderkey" >= '4598498') AND (F0."l_orderkey" < '4600034'))) OR ((F0."l_orderkey" >= '4604545') AND (F0."l_orderkey" < '4606118'))) OR ((F0."l_orderkey" >= '4670566') AND (F0."l_orderkey" < '4672130'))) OR ((F0."l_orderkey" >= '4673606') AND (F0."l_orderkey" < '4675106'))) OR ((F0."l_orderkey" >= '4678085') AND (F0."l_orderkey" < '4679557'))) OR ((F0."l_orderkey" >= '4686983') AND (F0."l_orderkey" < '4688577'))) OR ((F0."l_orderkey" >= '4787553') AND (F0."l_orderkey" < '4789154'))) OR ((F0."l_orderkey" >= '4813094') AND (F0."l_orderkey" < '4814561'))) OR ((F0."l_orderkey" >= '4828038') AND (F0."l_orderkey" < '4829635'))) OR ((F0."l_orderkey" >= '4956513') AND (F0."l_orderkey" < '4957991'))) OR ((F0."l_orderkey" >= '5097889') AND (F0."l_orderkey" < '5099398'))) OR ((F0."l_orderkey" >= '5123234') AND (F0."l_orderkey" < '5124801'))) OR ((F0."l_orderkey" >= '5162531') AND (F0."l_orderkey" < '5163972'))) OR ((F0."l_orderkey" >= '5206210') AND (F0."l_orderkey" < '5207778'))) OR ((F0."l_orderkey" >= '5240676') AND (F0."l_orderkey" < '5242215'))) OR ((F0."l_orderkey" >= '5243684') AND (F0."l_orderkey" < '5245189'))) OR ((F0."l_orderkey" >= '5333315') AND (F0."l_orderkey" < '5334855'))) OR ((F0."l_orderkey" >= '5431041') AND (F0."l_orderkey" < '5432453'))) OR ((F0."l_orderkey" >= '5437027') AND (F0."l_orderkey" < '5438501'))) OR ((F0."l_orderkey" >= '5454880') AND (F0."l_orderkey" < '5456295'))) OR ((F0."l_orderkey" >= '5459367') AND (F0."l_orderkey" < '5460932'))) OR ((F0."l_orderkey" >= '5462370') AND (F0."l_orderkey" < '5463905'))) OR ((F0."l_orderkey" >= '5512166') AND (F0."l_orderkey" < '5513760'))) OR ((F0."l_orderkey" >= '5536068') AND (F0."l_orderkey" < '5537603'))) OR ((F0."l_orderkey" >= '5550886') AND (F0."l_orderkey" < '5552450'))) OR ((F0."l_orderkey" >= '5660642') AND (F0."l_orderkey" < '5662149'))) OR ((F0."l_orderkey" >= '5692129') AND (F0."l_orderkey" < '5693574'))) OR ((F0."l_orderkey" >= '5728003') AND (F0."l_orderkey" < '5729538'))) OR ((F0."l_orderkey" >= '5731078') AND (F0."l_orderkey" < '5732517'))) OR ((F0."l_orderkey" >= '5743235') AND (F0."l_orderkey" < '5744768'))) OR ((F0."l_orderkey" >= '5750625') AND (F0."l_orderkey" < '5752129'))) OR ((F0."l_orderkey" >= '5761219') AND (F0."l_orderkey" < '5762691'))) OR ((F0."l_orderkey" >= '5785318') AND (F0."l_orderkey" < '5786784'))) OR ((F0."l_orderkey" >= '5859841') AND (F0."l_orderkey" < '5861383'))) OR ((F0."l_orderkey" >= '5898245') AND (F0."l_orderkey" < '5899808'))) OR ((F0."l_orderkey" >= '5904325') AND (F0."l_orderkey" < '5905829'))) OR ((F0."l_orderkey" >= '5917959') AND (F0."l_orderkey" < '5919430'))) OR ((F0."l_orderkey" >= '5929792') AND (F0."l_orderkey" < '5931266'))) OR ((F0."l_orderkey" >= '5948934') AND (F0."l_orderkey" < '5950496'))) OR ((F0."l_orderkey" >= '5984997') AND (F0."l_orderkey" < '5986530')))) F0 CROSS JOIN (
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment"
FROM "part" AS F0
WHERE ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((F0."p_partkey" >= '400') AND (F0."p_partkey" < '450')) OR ((F0."p_partkey" >= '1050') AND (F0."p_partkey" < '1100'))) OR ((F0."p_partkey" >= '1300') AND (F0."p_partkey" < '1350'))) OR ((F0."p_partkey" >= '3850') AND (F0."p_partkey" < '3900'))) OR ((F0."p_partkey" >= '3950') AND (F0."p_partkey" < '4000'))) OR ((F0."p_partkey" >= '5200') AND (F0."p_partkey" < '5250'))) OR ((F0."p_partkey" >= '7050') AND (F0."p_partkey" < '7100'))) OR ((F0."p_partkey" >= '12050') AND (F0."p_partkey" < '12100'))) OR ((F0."p_partkey" >= '17000') AND (F0."p_partkey" < '17050'))) OR ((F0."p_partkey" >= '17100') AND (F0."p_partkey" < '17150'))) OR ((F0."p_partkey" >= '18250') AND (F0."p_partkey" < '18300'))) OR ((F0."p_partkey" >= '20150') AND (F0."p_partkey" < '20200'))) OR ((F0."p_partkey" >= '22900') AND (F0."p_partkey" < '22950'))) OR ((F0."p_partkey" >= '27150') AND (F0."p_partkey" < '27200'))) OR ((F0."p_partkey" >= '27300') AND (F0."p_partkey" < '27350'))) OR ((F0."p_partkey" >= '35300') AND (F0."p_partkey" < '35350'))) OR ((F0."p_partkey" >= '35650') AND (F0."p_partkey" < '35700'))) OR ((F0."p_partkey" >= '37350') AND (F0."p_partkey" < '37400'))) OR ((F0."p_partkey" >= '40550') AND (F0."p_partkey" < '40600'))) OR ((F0."p_partkey" >= '46900') AND (F0."p_partkey" < '46950'))) OR ((F0."p_partkey" >= '47400') AND (F0."p_partkey" < '47450'))) OR ((F0."p_partkey" >= '48300') AND (F0."p_partkey" < '48350'))) OR ((F0."p_partkey" >= '48500') AND (F0."p_partkey" < '48550'))) OR ((F0."p_partkey" >= '49250') AND (F0."p_partkey" < '49300'))) OR ((F0."p_partkey" >= '49850') AND (F0."p_partkey" < '49900'))) OR ((F0."p_partkey" >= '51750') AND (F0."p_partkey" < '51800'))) OR ((F0."p_partkey" >= '53350') AND (F0."p_partkey" < '53400'))) OR ((F0."p_partkey" >= '54750') AND (F0."p_partkey" < '54800'))) OR ((F0."p_partkey" >= '57000') AND (F0."p_partkey" < '57050'))) OR ((F0."p_partkey" >= '63550') AND (F0."p_partkey" < '63600'))) OR ((F0."p_partkey" >= '67000') AND (F0."p_partkey" < '67050'))) OR ((F0."p_partkey" >= '72300') AND (F0."p_partkey" < '72350'))) OR ((F0."p_partkey" >= '72650') AND (F0."p_partkey" < '72700'))) OR ((F0."p_partkey" >= '74000') AND (F0."p_partkey" < '74100'))) OR ((F0."p_partkey" >= '79050') AND (F0."p_partkey" < '79100'))) OR ((F0."p_partkey" >= '79950') AND (F0."p_partkey" < '80000'))) OR ((F0."p_partkey" >= '83250') AND (F0."p_partkey" < '83300'))) OR ((F0."p_partkey" >= '87150') AND (F0."p_partkey" < '87200'))) OR ((F0."p_partkey" >= '87450') AND (F0."p_partkey" < '87500'))) OR ((F0."p_partkey" >= '91250') AND (F0."p_partkey" < '91300'))) OR ((F0."p_partkey" >= '93150') AND (F0."p_partkey" < '93200'))) OR ((F0."p_partkey" >= '93500') AND (F0."p_partkey" < '93550'))) OR ((F0."p_partkey" >= '97500') AND (F0."p_partkey" < '97550'))) OR ((F0."p_partkey" >= '98750') AND (F0."p_partkey" < '98800'))) OR ((F0."p_partkey" >= '100100') AND (F0."p_partkey" < '100150'))) OR ((F0."p_partkey" >= '100350') AND (F0."p_partkey" < '100400'))) OR ((F0."p_partkey" >= '105400') AND (F0."p_partkey" < '105450'))) OR ((F0."p_partkey" >= '107700') AND (F0."p_partkey" < '107750'))) OR ((F0."p_partkey" >= '114050') AND (F0."p_partkey" < '114100'))) OR ((F0."p_partkey" >= '114300') AND (F0."p_partkey" < '114400'))) OR ((F0."p_partkey" >= '115100') AND (F0."p_partkey" < '115150'))) OR ((F0."p_partkey" >= '116800') AND (F0."p_partkey" < '116850'))) OR ((F0."p_partkey" >= '120100') AND (F0."p_partkey" < '120150'))) OR ((F0."p_partkey" >= '120950') AND (F0."p_partkey" < '121000'))) OR ((F0."p_partkey" >= '121900') AND (F0."p_partkey" < '121950'))) OR ((F0."p_partkey" >= '122900') AND (F0."p_partkey" < '122950'))) OR ((F0."p_partkey" >= '127100') AND (F0."p_partkey" < '127150'))) OR ((F0."p_partkey" >= '129100') AND (F0."p_partkey" < '129150'))) OR ((F0."p_partkey" >= '129850') AND (F0."p_partkey" < '129900'))) OR ((F0."p_partkey" >= '130350') AND (F0."p_partkey" < '130400'))) OR ((F0."p_partkey" >= '130950') AND (F0."p_partkey" < '131000'))) OR ((F0."p_partkey" >= '131900') AND (F0."p_partkey" < '131950'))) OR ((F0."p_partkey" >= '132050') AND (F0."p_partkey" < '132100'))) OR ((F0."p_partkey" >= '132650') AND (F0."p_partkey" < '132700'))) OR ((F0."p_partkey" >= '134000') AND (F0."p_partkey" < '134050'))) OR ((F0."p_partkey" >= '134900') AND (F0."p_partkey" < '134950'))) OR ((F0."p_partkey" >= '135500') AND (F0."p_partkey" < '135550'))) OR ((F0."p_partkey" >= '138400') AND (F0."p_partkey" < '138450'))) OR ((F0."p_partkey" >= '140950') AND (F0."p_partkey" < '141000'))) OR ((F0."p_partkey" >= '142000') AND (F0."p_partkey" < '142050'))) OR ((F0."p_partkey" >= '143050') AND (F0."p_partkey" < '143100'))) OR ((F0."p_partkey" >= '144050') AND (F0."p_partkey" < '144100'))) OR ((F0."p_partkey" >= '145550') AND (F0."p_partkey" < '145600'))) OR ((F0."p_partkey" >= '146350') AND (F0."p_partkey" < '146400'))) OR ((F0."p_partkey" >= '148450') AND (F0."p_partkey" < '148500'))) OR ((F0."p_partkey" >= '149350') AND (F0."p_partkey" < '149400'))) OR ((F0."p_partkey" >= '150350') AND (F0."p_partkey" < '150400'))) OR ((F0."p_partkey" >= '151900') AND (F0."p_partkey" < '151950'))) OR ((F0."p_partkey" >= '153400') AND (F0."p_partkey" < '153450'))) OR ((F0."p_partkey" >= '155900') AND (F0."p_partkey" < '155950'))) OR ((F0."p_partkey" >= '156950') AND (F0."p_partkey" < '157000'))) OR ((F0."p_partkey" >= '157950') AND (F0."p_partkey" < '158000'))) OR ((F0."p_partkey" >= '162850') AND (F0."p_partkey" < '162900'))) OR ((F0."p_partkey" >= '163400') AND (F0."p_partkey" < '163450'))) OR ((F0."p_partkey" >= '166050') AND (F0."p_partkey" < '166100'))) OR ((F0."p_partkey" >= '167050') AND (F0."p_partkey" < '167150'))) OR ((F0."p_partkey" >= '169000') AND (F0."p_partkey" < '169050'))) OR ((F0."p_partkey" >= '174600') AND (F0."p_partkey" < '174650'))) OR ((F0."p_partkey" >= '174850') AND (F0."p_partkey" < '174900'))) OR ((F0."p_partkey" >= '179200') AND (F0."p_partkey" < '179250'))) OR ((F0."p_partkey" >= '182250') AND (F0."p_partkey" < '182300'))) OR ((F0."p_partkey" >= '188800') AND (F0."p_partkey" < '188850'))) OR ((F0."p_partkey" >= '188950') AND (F0."p_partkey" < '189000'))) OR ((F0."p_partkey" >= '189650') AND (F0."p_partkey" < '189700'))) OR ((F0."p_partkey" >= '191200') AND (F0."p_partkey" < '191250'))) OR ((F0."p_partkey" >= '191450') AND (F0."p_partkey" < '191500'))) OR ((F0."p_partkey" >= '197250') AND (F0."p_partkey" < '197300'))) OR ((F0."p_partkey" >= '198900') AND (F0."p_partkey" < '198950'))) OR ((F0."p_partkey" >= '199000') AND (F0."p_partkey" < '199050')))) F1)) F0
WHERE (((((((((((F0."p_partkey" = F0."l_partkey") AND (F0."p_brand" = 'Brand#12')) AND ((((F0."p_container" = 'SM CASE') OR (F0."p_container" = 'SM BOX')) OR (F0."p_container" = 'SM PACK')) OR (F0."p_container" = 'SM PKG'))) AND (F0."l_quantity" >= 1)) AND (F0."l_quantity" <= (1 + 10))) AND (F0."p_size" >= 1)) AND (F0."p_size" <= 5)) AND ((F0."l_shipmode" = 'AIR') OR (F0."l_shipmode" = 'AIR REG'))) AND (F0."l_shipinstruct" = 'DELIVER IN PERSON')) OR (((((((((F0."p_partkey" = F0."l_partkey") AND (F0."p_brand" = 'Brand#23')) AND ((((F0."p_container" = 'MED BAG') OR (F0."p_container" = 'MED BOX')) OR (F0."p_container" = 'MED PKG')) OR (F0."p_container" = 'MED PACK'))) AND (F0."l_quantity" >= 10)) AND (F0."l_quantity" <= (10 + 10))) AND (F0."p_size" >= 1)) AND (F0."p_size" <= 10)) AND ((F0."l_shipmode" = 'AIR') OR (F0."l_shipmode" = 'AIR REG'))) AND (F0."l_shipinstruct" = 'DELIVER IN PERSON'))) OR (((((((((F0."p_partkey" = F0."l_partkey") AND (F0."p_brand" = 'Brand#34')) AND ((((F0."p_container" = 'LG CASE') OR (F0."p_container" = 'LG BOX')) OR (F0."p_container" = 'LG PACK')) OR (F0."p_container" = 'LG PKG'))) AND (F0."l_quantity" >= 20)) AND (F0."l_quantity" <= (20 + 10))) AND (F0."p_size" >= 1)) AND (F0."p_size" <= 15)) AND ((F0."l_shipmode" = 'AIR') OR (F0."l_shipmode" = 'AIR REG'))) AND (F0."l_shipinstruct" = 'DELIVER IN PERSON'))))
SELECT F0."AGGR_0" AS "revenue"
FROM (SELECT * FROM _temp_view_0) F0;