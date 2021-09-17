WITH _temp_view_1 AS (
SELECT /*+ materialize */ sum((F0."l_extendedprice" * (1 - F0."l_discount"))) AS "AGGR_0", F0."c_custkey" AS "GROUP_0", F0."c_name" AS "GROUP_1", F0."c_acctbal" AS "GROUP_2", F0."c_phone" AS "GROUP_3", F0."n_name" AS "GROUP_4", F0."c_address" AS "GROUP_5", F0."c_comment" AS "GROUP_6"
FROM (
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment", F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", F1."n_nationkey" AS "n_nationkey", F1."n_name" AS "n_name", F1."n_regionkey" AS "n_regionkey", F1."n_comment" AS "n_comment"
FROM ((
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment", F1."l_orderkey" AS "l_orderkey", F1."l_partkey" AS "l_partkey", F1."l_suppkey" AS "l_suppkey", F1."l_linenumber" AS "l_linenumber", F1."l_quantity" AS "l_quantity", F1."l_extendedprice" AS "l_extendedprice", F1."l_discount" AS "l_discount", F1."l_tax" AS "l_tax", F1."l_returnflag" AS "l_returnflag", F1."l_linestatus" AS "l_linestatus", F1."l_shipdate" AS "l_shipdate", F1."l_commitdate" AS "l_commitdate", F1."l_receiptdate" AS "l_receiptdate", F1."l_shipinstruct" AS "l_shipinstruct", F1."l_shipmode" AS "l_shipmode", F1."l_comment" AS "l_comment"
FROM ((
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment", F1."o_orderkey" AS "o_orderkey", F1."o_custkey" AS "o_custkey", F1."o_orderstatus" AS "o_orderstatus", F1."o_totalprice" AS "o_totalprice", F1."o_orderdate" AS "o_orderdate", F1."o_orderpriority" AS "o_orderpriority", F1."o_clerk" AS "o_clerk", F1."o_shippriority" AS "o_shippriority", F1."o_comment" AS "o_comment"
FROM ((
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."c_address" AS "c_address", F0."c_nationkey" AS "c_nationkey", F0."c_phone" AS "c_phone", F0."c_acctbal" AS "c_acctbal", F0."c_mktsegment" AS "c_mktsegment", F0."c_comment" AS "c_comment"
FROM "customer" AS F0
WHERE (((((((((((((((((((((F0."c_custkey" >= '9750') AND (F0."c_custkey" < '9788')) OR ((F0."c_custkey" >= '13350') AND (F0."c_custkey" < '13388'))) OR ((F0."c_custkey" >= '14888') AND (F0."c_custkey" < '14925'))) OR ((F0."c_custkey" >= '16875') AND (F0."c_custkey" < '16913'))) OR ((F0."c_custkey" >= '33600') AND (F0."c_custkey" < '33638'))) OR ((F0."c_custkey" >= '34875') AND (F0."c_custkey" < '34913'))) OR ((F0."c_custkey" >= '40875') AND (F0."c_custkey" < '40913'))) OR ((F0."c_custkey" >= '43350') AND (F0."c_custkey" < '43388'))) OR ((F0."c_custkey" >= '51788') AND (F0."c_custkey" < '51825'))) OR ((F0."c_custkey" >= '54638') AND (F0."c_custkey" < '54675'))) OR ((F0."c_custkey" >= '55875') AND (F0."c_custkey" < '55913'))) OR ((F0."c_custkey" >= '66638') AND (F0."c_custkey" < '66675'))) OR ((F0."c_custkey" >= '76762') AND (F0."c_custkey" < '76800'))) OR ((F0."c_custkey" >= '88537') AND (F0."c_custkey" < '88575'))) OR ((F0."c_custkey" >= '89850') AND (F0."c_custkey" < '89887'))) OR ((F0."c_custkey" >= '105187') AND (F0."c_custkey" < '105225'))) OR ((F0."c_custkey" >= '108375') AND (F0."c_custkey" < '108412'))) OR ((F0."c_custkey" >= '122625') AND (F0."c_custkey" < '122662'))) OR ((F0."c_custkey" >= '128737') AND (F0."c_custkey" < '128775'))) OR ((F0."c_custkey" >= '141937') AND (F0."c_custkey" < '141975')))) F0 CROSS JOIN (
SELECT F0."o_orderkey" AS "o_orderkey", F0."o_custkey" AS "o_custkey", F0."o_orderstatus" AS "o_orderstatus", F0."o_totalprice" AS "o_totalprice", F0."o_orderdate" AS "o_orderdate", F0."o_orderpriority" AS "o_orderpriority", F0."o_clerk" AS "o_clerk", F0."o_shippriority" AS "o_shippriority", F0."o_comment" AS "o_comment"
FROM "orders" AS F0
WHERE ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((F0."o_orderkey" >= '85572') AND (F0."o_orderkey" < '87137')) OR ((F0."o_orderkey" >= '100775') AND (F0."o_orderkey" < '102247'))) OR ((F0."o_orderkey" >= '106631') AND (F0."o_orderkey" < '108102'))) OR ((F0."o_orderkey" >= '133730') AND (F0."o_orderkey" < '135173'))) OR ((F0."o_orderkey" >= '145862') AND (F0."o_orderkey" < '147427'))) OR ((F0."o_orderkey" >= '259015') AND (F0."o_orderkey" < '260481'))) OR ((F0."o_orderkey" >= '338214') AND (F0."o_orderkey" < '339744'))) OR ((F0."o_orderkey" >= '374087') AND (F0."o_orderkey" < '375586'))) OR ((F0."o_orderkey" >= '565825') AND (F0."o_orderkey" < '567269'))) OR ((F0."o_orderkey" >= '594437') AND (F0."o_orderkey" < '595943'))) OR ((F0."o_orderkey" >= '618438') AND (F0."o_orderkey" < '619904'))) OR ((F0."o_orderkey" >= '679718') AND (F0."o_orderkey" < '681249'))) OR ((F0."o_orderkey" >= '711296') AND (F0."o_orderkey" < '712837'))) OR ((F0."o_orderkey" >= '818244') AND (F0."o_orderkey" < '819776'))) OR ((F0."o_orderkey" >= '821315') AND (F0."o_orderkey" < '822817'))) OR ((F0."o_orderkey" >= '828870') AND (F0."o_orderkey" < '830405'))) OR ((F0."o_orderkey" >= '964132') AND (F0."o_orderkey" < '965571'))) OR ((F0."o_orderkey" >= '988167') AND (F0."o_orderkey" < '989698'))) OR ((F0."o_orderkey" >= '1030371') AND (F0."o_orderkey" < '1031845'))) OR ((F0."o_orderkey" >= '1252161') AND (F0."o_orderkey" < '1253607'))) OR ((F0."o_orderkey" >= '1410724') AND (F0."o_orderkey" < '1412320'))) OR ((F0."o_orderkey" >= '1460036') AND (F0."o_orderkey" < '1461543'))) OR ((F0."o_orderkey" >= '1495973') AND (F0."o_orderkey" < '1497442'))) OR ((F0."o_orderkey" >= '1525765') AND (F0."o_orderkey" < '1527270'))) OR ((F0."o_orderkey" >= '1570851') AND (F0."o_orderkey" < '1572354'))) OR ((F0."o_orderkey" >= '1600519') AND (F0."o_orderkey" < '1602022'))) OR ((F0."o_orderkey" >= '1661923') AND (F0."o_orderkey" < '1663461'))) OR ((F0."o_orderkey" >= '2606371') AND (F0."o_orderkey" < '2607847'))) OR ((F0."o_orderkey" >= '2735109') AND (F0."o_orderkey" < '2736550'))) OR ((F0."o_orderkey" >= '2764996') AND (F0."o_orderkey" < '2766436'))) OR ((F0."o_orderkey" >= '2781606') AND (F0."o_orderkey" < '2783201'))) OR ((F0."o_orderkey" >= '2966720') AND (F0."o_orderkey" < '2968295'))) OR ((F0."o_orderkey" >= '3001382') AND (F0."o_orderkey" < '3002885'))) OR ((F0."o_orderkey" >= '3257440') AND (F0."o_orderkey" < '3258916'))) OR ((F0."o_orderkey" >= '3278435') AND (F0."o_orderkey" < '3280038'))) OR ((F0."o_orderkey" >= '3305445') AND (F0."o_orderkey" < '3306977'))) OR ((F0."o_orderkey" >= '3446374') AND (F0."o_orderkey" < '3447877'))) OR ((F0."o_orderkey" >= '3452448') AND (F0."o_orderkey" < '3453955'))) OR ((F0."o_orderkey" >= '3636962') AND (F0."o_orderkey" < '3638497'))) OR ((F0."o_orderkey" >= '3668580') AND (F0."o_orderkey" < '3670112'))) OR ((F0."o_orderkey" >= '3676103') AND (F0."o_orderkey" < '3677603'))) OR ((F0."o_orderkey" >= '3712224') AND (F0."o_orderkey" < '3713666'))) OR ((F0."o_orderkey" >= '3721216') AND (F0."o_orderkey" < '3722691'))) OR ((F0."o_orderkey" >= '3826118') AND (F0."o_orderkey" < '3827621'))) OR ((F0."o_orderkey" >= '3851650') AND (F0."o_orderkey" < '3853030'))) OR ((F0."o_orderkey" >= '3891936') AND (F0."o_orderkey" < '3893376'))) OR ((F0."o_orderkey" >= '3951845') AND (F0."o_orderkey" < '3953347'))) OR ((F0."o_orderkey" >= '3990918') AND (F0."o_orderkey" < '3992416'))) OR ((F0."o_orderkey" >= '4004613') AND (F0."o_orderkey" < '4006112'))) OR ((F0."o_orderkey" >= '4130374') AND (F0."o_orderkey" < '4131942'))) OR ((F0."o_orderkey" >= '4196263') AND (F0."o_orderkey" < '4197733'))) OR ((F0."o_orderkey" >= '4235267') AND (F0."o_orderkey" < '4236769'))) OR ((F0."o_orderkey" >= '4332483') AND (F0."o_orderkey" < '4335427'))) OR ((F0."o_orderkey" >= '4387552') AND (F0."o_orderkey" < '4389057'))) OR ((F0."o_orderkey" >= '4600675') AND (F0."o_orderkey" < '4602177'))) OR ((F0."o_orderkey" >= '4609734') AND (F0."o_orderkey" < '4611303'))) OR ((F0."o_orderkey" >= '4664960') AND (F0."o_orderkey" < '4666437'))) OR ((F0."o_orderkey" >= '4882816') AND (F0."o_orderkey" < '4884292'))) OR ((F0."o_orderkey" >= '4888933') AND (F0."o_orderkey" < '4890467'))) OR ((F0."o_orderkey" >= '4896354') AND (F0."o_orderkey" < '4897827'))) OR ((F0."o_orderkey" >= '4968739') AND (F0."o_orderkey" < '4970240'))) OR ((F0."o_orderkey" >= '5006405') AND (F0."o_orderkey" < '5007905'))) OR ((F0."o_orderkey" >= '5083106') AND (F0."o_orderkey" < '5084640'))) OR ((F0."o_orderkey" >= '5185120') AND (F0."o_orderkey" < '5186627'))) OR ((F0."o_orderkey" >= '5568835') AND (F0."o_orderkey" < '5570400'))) OR ((F0."o_orderkey" >= '5731845') AND (F0."o_orderkey" < '5733349'))) OR ((F0."o_orderkey" >= '5778149') AND (F0."o_orderkey" < '5779587'))) OR ((F0."o_orderkey" >= '5861671') AND (F0."o_orderkey" < '5863236'))) OR ((F0."o_orderkey" >= '5915841') AND (F0."o_orderkey" < '5917317')))) F1)) F0 CROSS JOIN (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment"
FROM "lineitem" AS F0
WHERE ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((F0."l_orderkey" >= '85411') AND (F0."l_orderkey" < '86880')) OR ((F0."l_orderkey" >= '101602') AND (F0."l_orderkey" < '103138'))) OR ((F0."l_orderkey" >= '107398') AND (F0."l_orderkey" < '108805'))) OR ((F0."l_orderkey" >= '132642') AND (F0."l_orderkey" < '134119'))) OR ((F0."l_orderkey" >= '146242') AND (F0."l_orderkey" < '147716'))) OR ((F0."l_orderkey" >= '258660') AND (F0."l_orderkey" < '260321'))) OR ((F0."l_orderkey" >= '338307') AND (F0."l_orderkey" < '339780'))) OR ((F0."l_orderkey" >= '374596') AND (F0."l_orderkey" < '376067'))) OR ((F0."l_orderkey" >= '565283') AND (F0."l_orderkey" < '566784'))) OR ((F0."l_orderkey" >= '593888') AND (F0."l_orderkey" < '595360'))) OR ((F0."l_orderkey" >= '619011') AND (F0."l_orderkey" < '620513'))) OR ((F0."l_orderkey" >= '679234') AND (F0."l_orderkey" < '680743'))) OR ((F0."l_orderkey" >= '711877') AND (F0."l_orderkey" < '713377'))) OR ((F0."l_orderkey" >= '818532') AND (F0."l_orderkey" < '820100'))) OR ((F0."l_orderkey" >= '821475') AND (F0."l_orderkey" < '823073'))) OR ((F0."l_orderkey" >= '828995') AND (F0."l_orderkey" < '830567'))) OR ((F0."l_orderkey" >= '964452') AND (F0."l_orderkey" < '965923'))) OR ((F0."l_orderkey" >= '988995') AND (F0."l_orderkey" < '990433'))) OR ((F0."l_orderkey" >= '1031142') AND (F0."l_orderkey" < '1032615'))) OR ((F0."l_orderkey" >= '1251335') AND (F0."l_orderkey" < '1252742'))) OR ((F0."l_orderkey" >= '1410723') AND (F0."l_orderkey" < '1412263'))) OR ((F0."l_orderkey" >= '1460289') AND (F0."l_orderkey" < '1461857'))) OR ((F0."l_orderkey" >= '1496672') AND (F0."l_orderkey" < '1498146'))) OR ((F0."l_orderkey" >= '1525381') AND (F0."l_orderkey" < '1526912'))) OR ((F0."l_orderkey" >= '1570595') AND (F0."l_orderkey" < '1572098'))) OR ((F0."l_orderkey" >= '1600642') AND (F0."l_orderkey" < '1602081'))) OR ((F0."l_orderkey" >= '1660773') AND (F0."l_orderkey" < '1662371'))) OR ((F0."l_orderkey" >= '2606179') AND (F0."l_orderkey" < '2607682'))) OR ((F0."l_orderkey" >= '2735267') AND (F0."l_orderkey" < '2736806'))) OR ((F0."l_orderkey" >= '2764741') AND (F0."l_orderkey" < '2766177'))) OR ((F0."l_orderkey" >= '2781319') AND (F0."l_orderkey" < '2782789'))) OR ((F0."l_orderkey" >= '2965795') AND (F0."l_orderkey" < '2967267'))) OR ((F0."l_orderkey" >= '3002304') AND (F0."l_orderkey" < '3003815'))) OR ((F0."l_orderkey" >= '3258244') AND (F0."l_orderkey" < '3259776'))) OR ((F0."l_orderkey" >= '3279397') AND (F0."l_orderkey" < '3280994'))) OR ((F0."l_orderkey" >= '3306562') AND (F0."l_orderkey" < '3308035'))) OR ((F0."l_orderkey" >= '3447297') AND (F0."l_orderkey" < '3448710'))) OR ((F0."l_orderkey" >= '3453090') AND (F0."l_orderkey" < '3454563'))) OR ((F0."l_orderkey" >= '3636322') AND (F0."l_orderkey" < '3637762'))) OR ((F0."l_orderkey" >= '3668001') AND (F0."l_orderkey" < '3669475'))) OR ((F0."l_orderkey" >= '3675457') AND (F0."l_orderkey" < '3676994'))) OR ((F0."l_orderkey" >= '3712934') AND (F0."l_orderkey" < '3714503'))) OR ((F0."l_orderkey" >= '3720609') AND (F0."l_orderkey" < '3722176'))) OR ((F0."l_orderkey" >= '3827203') AND (F0."l_orderkey" < '3828645'))) OR ((F0."l_orderkey" >= '3852422') AND (F0."l_orderkey" < '3853985'))) OR ((F0."l_orderkey" >= '3891459') AND (F0."l_orderkey" < '3892805'))) OR ((F0."l_orderkey" >= '3951745') AND (F0."l_orderkey" < '3953217'))) OR ((F0."l_orderkey" >= '3990595') AND (F0."l_orderkey" < '3992129'))) OR ((F0."l_orderkey" >= '4004324') AND (F0."l_orderkey" < '4005793'))) OR ((F0."l_orderkey" >= '4130404') AND (F0."l_orderkey" < '4131876'))) OR ((F0."l_orderkey" >= '4195366') AND (F0."l_orderkey" < '4196931'))) OR ((F0."l_orderkey" >= '4235552') AND (F0."l_orderkey" < '4236993'))) OR ((F0."l_orderkey" >= '4332455') AND (F0."l_orderkey" < '4335364'))) OR ((F0."l_orderkey" >= '4386754') AND (F0."l_orderkey" < '4388353'))) OR ((F0."l_orderkey" >= '4601508') AND (F0."l_orderkey" < '4603041'))) OR ((F0."l_orderkey" >= '4609122') AND (F0."l_orderkey" < '4610597'))) OR ((F0."l_orderkey" >= '4664454') AND (F0."l_orderkey" < '4665984'))) OR ((F0."l_orderkey" >= '4883204') AND (F0."l_orderkey" < '4884673'))) OR ((F0."l_orderkey" >= '4889218') AND (F0."l_orderkey" < '4890688'))) OR ((F0."l_orderkey" >= '4896740') AND (F0."l_orderkey" < '4898211'))) OR ((F0."l_orderkey" >= '4968418') AND (F0."l_orderkey" < '4969955'))) OR ((F0."l_orderkey" >= '5006116') AND (F0."l_orderkey" < '5007618'))) OR ((F0."l_orderkey" >= '5084230') AND (F0."l_orderkey" < '5085794'))) OR ((F0."l_orderkey" >= '5185248') AND (F0."l_orderkey" < '5186785'))) OR ((F0."l_orderkey" >= '5568866') AND (F0."l_orderkey" < '5570401'))) OR ((F0."l_orderkey" >= '5731078') AND (F0."l_orderkey" < '5732517'))) OR ((F0."l_orderkey" >= '5777857') AND (F0."l_orderkey" < '5779297'))) OR ((F0."l_orderkey" >= '5862789') AND (F0."l_orderkey" < '5864320'))) OR ((F0."l_orderkey" >= '5914948') AND (F0."l_orderkey" < '5916448')))) F1)) F0 CROSS JOIN "nation" AS F1)) F0
WHERE ((((((F0."c_custkey" = F0."o_custkey") and (F0."l_orderkey" = F0."o_orderkey")) and (F0."o_orderdate" >= to_date('1994-12-01', 'YYYY-MM-DD'))) and (F0."o_orderdate" < to_date('1995-03-01', 'YYYY-MM-DD'))) and (F0."l_returnflag" = 'R')) and (F0."c_nationkey" = F0."n_nationkey"))
GROUP BY F0."c_custkey", F0."c_name", F0."c_acctbal", F0."c_phone", F0."n_name", F0."c_address", F0."c_comment"),
_temp_view_0 AS (
SELECT /*+ materialize */ F0."GROUP_0" AS "c_custkey", F0."GROUP_1" AS "c_name", F0."AGGR_0" AS "revenue", F0."GROUP_2" AS "c_acctbal", F0."GROUP_4" AS "n_name", F0."GROUP_5" AS "c_address", F0."GROUP_3" AS "c_phone", F0."GROUP_6" AS "c_comment"
FROM (SELECT * FROM _temp_view_1) F0)
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."revenue" AS "revenue", F0."c_acctbal" AS "c_acctbal", F0."n_name" AS "n_name", F0."c_address" AS "c_address", F0."c_phone" AS "c_phone", F0."c_comment" AS "c_comment"
FROM (
SELECT F0."c_custkey" AS "c_custkey", F0."c_name" AS "c_name", F0."revenue" AS "revenue", F0."c_acctbal" AS "c_acctbal", F0."n_name" AS "n_name", F0."c_address" AS "c_address", F0."c_phone" AS "c_phone", F0."c_comment" AS "c_comment"
FROM (SELECT * FROM _temp_view_0) F0
ORDER BY F0."revenue" DESC NULLS LAST) F0
LIMIT 20;