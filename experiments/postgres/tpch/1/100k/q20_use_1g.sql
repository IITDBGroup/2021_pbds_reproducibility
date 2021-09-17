WITH _temp_view_1 AS (
SELECT /*+ materialize */ sum(F0."l_quantity") AS "AGGR_0", F0."l_partkey" AS "GROUP_0", F0."l_suppkey" AS "GROUP_1"
FROM (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment"
FROM "lineitem" AS F0
WHERE (F0."l_orderkey" <@ '{2140,2198,11828,11885,12785,12842,23175,23235,50139,50199,61668,61725,70030,70087,71867,71927,91463,91523,120180,120237,137058,137121,153121,153181,159456,159522,162735,162795,166870,166931,179009,179072,187553,187617,189034,189100,191604,191664,193766,193829,194823,194883,197023,197084,201016,201083,206381,206442,249633,249696,273965,274022,278625,278689,300900,300954,312805,312868,316633,316690,316804,316864,324222,324280,351589,351652,356290,356357,362922,362982,393846,393907,395297,395357,411374,411434,420090,420147,423421,423479,446723,446787,467454,467511,474190,474251,501065,501125,513235,513292,514241,514295,567281,567339,579878,579941,601892,601952,609189,609249,629601,629664,639954,640008,660855,660910,664148,664205,676503,676557,678822,678888,721724,721779,725768,725825,738362,738416,742585,742639,763204,763268,802146,802209,802785,802849,813156,813220,836881,836935,845722,845782,873828,873891,878734,878801,895547,895608,903778,903843,910371,910434,911407,911464,944807,944864,950077,950134,956463,956520,961139,961196,963219,963276,967777,967834,978358,978418,983552,983612,989736,989793,990810,990870,1006191,1006251,1021705,1021765,1036292,1036356,1042343,1042404,1060339,1060396,1086645,1086706,1111855,1111915,1136511,1136574,1161046,1161103,1175160,1175220,1233985,1234049,1261446,1261511,1273237,1273294,1286142,1286209,1288895,1288952,1303088,1303142,1304008,1304065,1311159,1311219,1331029,1331086,1333346,1333407,1336203,1336260,1355846,1355910,1375110,1375173,1377756,1377817,1385445,1385505,1394589,1394649,1446739,1446800,1467798,1467858,1507967,1508018,1511264,1511333,1514455,1514513,1528186,1528247,1549796,1549862,1555791,1555848,1560991,1561045,1595997,1596054,1599795,1599846,1605741,1605798,1611522,1611586,1647045,1647111,1668752,1668809,1676784,1676841,1713468,1713526,1729927,1729990,1744866,1744935,1760577,1760632,1763034,1763092,1770269,1770329,1783284,1783338,1814977,1815037,1824203,1824263,1837369,1837426,1842752,1842806,1852897,1852957,1857783,1857844,1869179,1869239,1870790,1870851,1881433,1881490,1895561,1895618,1902378,1902435,1927011,1927068,1937897,1937959,1946719,1946787,1975772,1975829,1978876,1978937,2016098,2016161,2023328,2023392,2035692,2035753,2089635,2089695,2120693,2120753,2131188,2131245,2132552,2132614,2134069,2134130,2140002,2140065,2145600,2145663,2156577,2156641,2173744,2173804,2178470,2178530,2201358,2201418,2259106,2259170,2263125,2263185,2267005,2267073,2281698,2281761,2283448,2283520,2303601,2303658,2309123,2309180,2323205,2323269,2357406,2357466,2417336,2417397,2429569,2429624,2444918,2444975,2449221,2449281,2458934,2458991,2469264,2469322,2485316,2485379,2493797,2493860,2496959,2497016,2498770,2498824,2514688,2514751,2537007,2537067,2559109,2559173,2583103,2583166,2588224,2588281,2594116,2594173,2605713,2605774,2612030,2612101,2628120,2628180,2629522,2629583,2636825,2636882,2638959,2639019,2647776,2647839,2663907,2663968,2671298,2671361,2672354,2672414,2674077,2674144,2685664,2685721,2686880,2686944,2695766,2695824,2714144,2714208,2736209,2736275,2739004,2739059,2788681,2788747,2818012,2818070,2827820,2827874,2828798,2828867,2831658,2831713,2845590,2845650,2856357,2856422,2862522,2862582,2881591,2881658,2892048,2892114,2914928,2914988,2944327,2944387,2962438,2962498,2975758,2975816,2981681,2981738,2982834,2982891,2998623,2998683,3004777,3004831,3018642,3018700,3027477,3027537,3027966,3028026,3036045,3036105,3036813,3036871,3044768,3044828,3045890,3045955,3055905,3055956,3056806,3056860,3064435,3064489,3070106,3070166,3081696,3081750,3095937,3095997,3102331,3102385,3119187,3119244,3122368,3122423,3166226,3166287,3169927,3169987,3171879,3171942,3174914,3174982,3189878,3189935,3227625,3227685,3254212,3254277,3285195,3285255,3309437,3309498,3314145,3314206,3345005,3345062,3351697,3351758,3360172,3360229,3397685,3397742,3400732,3400789,3402094,3402148,3406830,3406891,3407645,3407712,3411365,3411432,3416644,3416701,3430286,3430343,3432453,3432517,3458176,3458233,3489332,3489392,3541540,3541605,3556422,3556487,3569451,3569508,3584656,3584714,3586285,3586345,3588321,3588381,3605221,3605284,3611361,3611425,3621513,3621575,3648085,3648146,3648829,3648892,3695875,3695929,3703187,3703248,3728255,3728309,3734140,3734197,3735791,3735857,3765520,3765574,3773390,3773457,3776779,3776838,3793520,3793574,3794954,3795020,3801344,3801407,3806014,3806077,3818236,3818294,3833063,3833127,3841382,3841444,3847049,3847107,3849737,3849798,3870695,3870755,3874535,3874589,3876012,3876070,3881989,3882049,3926469,3926529,3937836,3937895,3939076,3939130,3959574,3959634,3977170,3977227,3979124,3979191,3983519,3983582,3989859,3989924,4024837,4024897,4089728,4089791,4122758,4122818,4188691,4188761,4203652,4203712,4224290,4224348,4240114,4240171,4240612,4240666,4240836,4240893,4241064,4241121,4259203,4259265,4311009,4311070,4314974,4315037,4319203,4319271,4337339,4337397,4337745,4337803,4384916,4384982,4393388,4393447,4446593,4446662,4449252,4449306,4482058,4482115,4484028,4484082,4489696,4489753,4496449,4496512,4509680,4509740,4531715,4531776,4534879,4534936,4577280,4577340,4584831,4584894,4586573,4586633,4643744,4643801,4652129,4652189,4653218,4653281,4681654,4681714,4707815,4707875,4718368,4718432,4744677,4744740,4745486,4745543,4745958,4746022,4764639,4764696,4769942,4769996,4776751,4776817,4794368,4794425,4836576,4836633,4872844,4872905,4879620,4879674,4911295,4911364,4914007,4914064,4977185,4977249,4998268,4998338,4998871,4998931,5017627,5017688,5037041,5037098,5041511,5041571,5053030,5053091,5058550,5058604,5059474,5059528,5072919,5072979,5091390,5091447,5099470,5099528,5111104,5111168,5112584,5112644,5116117,5116168,5142778,5142836,5148356,5148419,5148671,5148734,5157338,5157396,5158498,5158558,5177494,5177554,5210306,5210370,5223014,5223074,5236463,5236520,5239663,5239723,5251656,5251722,5273530,5273591,5279537,5279594,5280061,5280121,5284410,5284467,5296483,5296540,5372525,5372591,5380418,5380482,5441221,5441286,5442952,5443012,5445698,5445761,5460342,5460396,5460896,5460959,5490166,5490224,5490572,5490630,5499164,5499221,5547207,5547258,5549018,5549085,5614691,5614751,5619068,5619126,5624127,5624184,5630824,5630894,5633453,5633514,5635300,5635360,5657731,5657791,5682327,5682383,5712093,5712147,5737139,5737200,5737383,5737443,5745184,5745253,5759793,5759851,5761758,5761818,5763119,5763173,5790643,5790697,5799869,5799937,5831075,5831135,5914015,5914078,5924135,5924192,5925512,5925572,5984642,5984705}'::int[])) F0
WHERE ((F0."l_shipdate" >= '1993-01-01') and (F0."l_shipdate" < '1994-01-01'))
GROUP BY F0."l_partkey", F0."l_suppkey"),
_temp_view_0 AS (
SELECT /*+ materialize */ F0."s_name" AS "s_name", F0."s_address" AS "s_address"
FROM (
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F0."n_nationkey" AS "n_nationkey", F0."n_name" AS "n_name", F0."n_regionkey" AS "n_regionkey", F0."n_comment" AS "n_comment", F1."ps_suppkey" AS "ps_suppkey"
FROM ((
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment", F1."n_nationkey" AS "n_nationkey", F1."n_name" AS "n_name", F1."n_regionkey" AS "n_regionkey", F1."n_comment" AS "n_comment"
FROM ((
SELECT F0."s_suppkey" AS "s_suppkey", F0."s_name" AS "s_name", F0."s_address" AS "s_address", F0."s_nationkey" AS "s_nationkey", F0."s_phone" AS "s_phone", F0."s_acctbal" AS "s_acctbal", F0."s_comment" AS "s_comment"
FROM "supplier" AS F0
WHERE (F0."s_suppkey" <@ '{11,12,27,28,41,42,119,120,137,138,187,188,191,192,196,197,209,210,213,214,294,295,302,303,319,320,345,346,395,396,479,480,662,664,724,725,733,734,793,794,915,916,928,929,947,948,956,957,962,963,987,988,995,996,1027,1028,1045,1046,1070,1071,1106,1107,1117,1118,1145,1146,1221,1222,1238,1239,1466,1467,1610,1611,1650,1651,1674,1675,1686,1687,1704,1705,1729,1730,1732,1733,1786,1787,1843,1844,1876,1877,1995,1996,2021,2022,2068,2069,2098,2099,2114,2115,2184,2185,2231,2232,2263,2264,2290,2291,2393,2394,2482,2483,2484,2485,2500,2501,2614,2615,2631,2632,2650,2652,2664,2665,2670,2671,2697,2698,2715,2716,2761,2762,2793,2794,2903,2904,3025,3026,3068,3069,3257,3258,3268,3269,3279,3280,3340,3341,3392,3393,3432,3433,3460,3461,3629,3630,3643,3644,3664,3665,3672,3673,3728,3729,3869,3870,3876,3877,3938,3939,4046,4047,4107,4108,4132,4133,4154,4155,4173,4174,4182,4183,4193,4194,4225,4226,4242,4243,4330,4331,4431,4432,4448,4449,4471,4472,4487,4488,4495,4496,4547,4548,4629,4630,4651,4652,4666,4667,4733,4734,4757,4758,4759,4760,4854,4855,4922,4923,4999,5000,5083,5085,5184,5185,5265,5266,5391,5392,5424,5425,5427,5428,5541,5542,5569,5570,5593,5594,5630,5631,5700,5701,5704,5705,5717,5718,5758,5759,5765,5766,5832,5833,5854,5855,5879,5880,5895,5896,5924,5925,5995,5996,6015,6016,6022,6023,6050,6051,6061,6062,6071,6072,6096,6097,6105,6106,6133,6134,6255,6256,6273,6274,6293,6294,6341,6342,6438,6439,6457,6458,6604,6605,6634,6635,6720,6721,6760,6761,6833,6834,6848,6849,7082,7083,7248,7249,7266,7267,7320,7321,7468,7469,7533,7534,7586,7587,7606,7607,7650,7651,7680,7681,8012,8013,8022,8023,8187,8188,8208,8209,8274,8275,8277,8278,8441,8442,8656,8657,8667,8668,8803,8804,8896,8897,8942,8943,8969,8970,9004,9005,9051,9052,9111,9112,9222,9223,9230,9231,9238,9239,9284,9285,9308,9309,9387,9388,9434,9435,9467,9468,9522,9523,9698,9699,9756,9757,9808,9809,9895,9896,9902,9903,9941,9942,9962,9963}'::int[])) F0 CROSS JOIN "nation" AS F1)) F0 CROSS JOIN (
SELECT F0."ps_suppkey" AS "ps_suppkey"
FROM (
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F0."p_partkey" AS "p_partkey", F1."l_partkey" AS "l_partkey", F1."l_suppkey" AS "l_suppkey", F1."sum_lq" AS "sum_lq"
FROM ((
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment", F1."p_partkey" AS "p_partkey"
FROM ((
SELECT F0."ps_partkey" AS "ps_partkey", F0."ps_suppkey" AS "ps_suppkey", F0."ps_availqty" AS "ps_availqty", F0."ps_supplycost" AS "ps_supplycost", F0."ps_comment" AS "ps_comment"
FROM "partsupp" AS F0
WHERE (F0."ps_partkey" <@ '{1,10019,10038,10057,11919,11938,13192,13211,13724,13743,15510,15529,16061,16080,18208,18227,19291,19310,19614,19633,19728,19747,20165,20184,20393,20412,21666,21685,21989,22008,22255,22274,22483,22502,22654,22673,22787,22806,24364,24383,25200,25219,26055,26074,26093,26112,26948,26967,27005,27024,27974,27993,28734,28753,28962,28981,30064,30083,32667,32686,36771,36790,38082,38101,38272,38291,38329,38348,39222,39241,39374,39393,40134,40153,40476,40514,40780,40799,41692,41711,42148,42167,42414,42433,45074,45093,45739,45758,46119,46138,46689,46727,47240,47259,47468,47487,48304,48323,48608,48627,49710,49729,50470,50489,51534,51553,52180,52199,52788,52807,52902,52921,53054,53073,53548,53567,55733,55771,58393,58412,58849,58868,59666,59685,61243,61262,62250,62269,63865,63884,63922,63941,64435,64454,65936,65955,66145,66164,66601,66620,66715,66734,70914,70933,72301,72320,75265,75284,76766,76785,77678,77697,77811,77830,78837,78856,79236,79255,80509,80528,80547,80566,81098,81117,81725,81744,83416,83435,83739,83758,84081,84100,84195,84214,84556,84575,85107,85126,86114,86133,86855,86874,87368,87387,90123,90142,90978,90997,92137,92156,92213,92232,93106,93125,93410,93429,96697,96716,96887,96906,97229,97248,97723,97742,98483,98502,99148,99167,99680,99699,99965,100003,100117,100136,101257,101276,101694,101713,102093,102112,102359,102378,104126,104145,104848,104867,104981,105000,105323,105342,105627,105646,105893,105912,108648,108667,109085,109104,111688,111707,111802,111821,112049,112068,113246,113265,114747,114766,115925,115944,117179,117198,119269,119288,119725,119744,119991,120010,120276,120295,120827,120846,121055,121074,121682,121701,121967,121986,122670,122689,123544,123563,123962,123981,127591,127610,127781,127800,128161,128180,129624,129643,130042,130061,131638,131657,132436,132455,133671,133690,134431,134450,136445,136464,137661,137680,138592,138611,138896,138915,139884,139903,140036,140055,141499,141518,142468,142487,142563,142582,143475,143494,143608,143627,143646,143665,144102,144121,144919,144938,148510,148529,150353,150372,150885,150904,151816,151835,152272,152291,153013,153032,153374,153393,154172,154191,158200,158219,158542,158561,158618,158637,158903,158922,158998,159017,159321,159340,159815,159834,160138,160157,160784,160803,160974,160993,161734,161753,162608,162627,162646,162665,162779,162798,163368,163387,163406,163425,163577,163596,164242,164261,165667,165705,168441,168460,169068,169087,169201,169220,169885,169904,171804,171823,171994,172013,172203,172222,172640,172659,174711,174730,176687,176706,179100,179119,179157,179176,181038,181057,185161,185180,185693,185712,186833,186852,187061,187080,187669,187688,188467,188486,189455,189474,189493,189512,189607,189626,190367,190386,190709,190728,190823,190842,190861,190880,191051,191070,191089,191108,192457,192476,193901,193920,194528,194547,195079,195098,195193,195212,195345,195364,195421,195440,196827,196846,197283,197302,197853,197872,198195,198214,198632,198651}'::int[])) F0 CROSS JOIN (
SELECT F0."p_partkey" AS "p_partkey"
FROM (
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment"
FROM "part" AS F0
WHERE (F0."p_partkey" <@ '{1692,1694,2612,2614,3352,3354,3840,3842,4172,4174,5716,5718,6048,6050,7662,7664,8160,8162,8378,8380,8446,8448,9132,9134,9960,9962,10040,10042,11930,11932,13202,13204,13726,13728,15510,15512,16070,16072,18212,18214,19306,19308,19626,19628,19728,19730,20178,20180,20394,20396,21678,21680,21994,21996,22260,22262,22482,22484,22662,22664,22794,22796,24382,24384,25208,25210,26064,26066,26100,26102,26964,26966,27018,27020,27976,27978,28734,28736,28962,28964,30076,30078,32680,32682,36780,36782,38082,38084,38272,38274,38276,38278,38332,38334,39234,39236,39386,39388,40136,40138,40478,40480,40508,40510,40792,40794,41702,41704,42160,42162,42428,42430,45082,45084,45754,45756,46136,46138,46694,46696,46722,46724,47244,47246,47472,47474,48318,48320,48612,48614,49724,49726,50478,50480,51534,51536,52182,52184,52802,52804,52902,52904,53062,53064,53554,53556,55740,55742,55762,55764,58408,58410,58864,58866,59678,59680,61260,61262,62262,62264,63882,63884,63928,63930,64446,64448,65948,65950,66148,66150,66602,66604,66714,66716,70924,70926,72304,72306,75270,75272,76776,76778,77678,77680,77810,77812,78854,78856,79236,79238,80524,80526,80558,80560,81116,81118,81742,81744,83430,83432,83746,83748,84094,84096,84212,84214,84572,84574,85124,85126,86118,86120,86858,86860,87386,87388,90136,90138,90986,90988,92140,92142,92228,92230,93120,93122,93422,93424,96696,96698,96902,96904,97244,97246,97736,97738,98486,98488,99154,99156,99696,99698,99980,99982,99990,99992,100120,100122,101272,101274,101698,101700,102096,102098,102364,102366,104130,104132,104862,104864,104990,104992,105324,105326,105642,105644,105894,105896,108666,108668,109098,109100,111696,111698,111818,111820,112066,112068,113246,113248,114756,114758,115926,115928,117186,117188,119274,119276,119736,119738,119998,120000,120292,120294,120826,120828,121070,121072,121684,121686,121974,121976,122670,122672,123548,123550,123978,123980,127604,127606,127780,127782,128162,128164,129640,129642,130046,130048,131640,131642,132440,132442,133680,133682,134446,134448,136454,136456,137670,137672,138602,138604,138910,138912,139900,139902,140040,140042,141508,141510,142480,142482,142576,142578,143480,143482,143618,143620,143662,143664,144106,144108,144920,144922,148512,148514,150360,150362,150892,150894,151816,151818,152288,152290,153024,153026,153382,153384,154182,154184,158216,158218,158558,158560,158628,158630,158910,158912,159014,159016,159326,159328,159822,159824,160152,160154,160792,160794,160988,160990,161734,161736,162612,162614,162650,162652,162664,162666,162796,162798,163378,163380,163408,163410,163578,163580,164242,164244,165670,165672,165690,165692,168446,168448,169074,169076,169212,169214,169888,169890,171812,171814,171994,171996,172212,172214,172650,172652,174710,174712,176704,176706,179110,179112,179168,179170,181044,181046,185160,185162,185172,185174,185702,185704,186838,186840,187076,187078,187676,187678,188476,188478,189458,189460,189502,189504,189614,189616,190382,190384,190716,190718,190840,190842,190872,190874,191056,191058,191098,191100,192468,192470,193918,193920,194546,194548,195082,195084,195202,195204,195344,195346,195426,195428,196832,196834,197288,197290,197866,197868,198206,198208,198632,198634}'::int[])) F0
WHERE (F0."p_name" like 'green%')) F1)) F0 CROSS JOIN (
SELECT F0."GROUP_0" AS "l_partkey", F0."GROUP_1" AS "l_suppkey", (0.500000 * F0."AGGR_0") AS "sum_lq"
FROM (SELECT * FROM _temp_view_1) F0) F1)) F0
WHERE ((((F0."l_partkey" = F0."ps_partkey") and (F0."l_suppkey" = F0."ps_suppkey")) and (F0."ps_availqty" > F0."sum_lq")) and (F0."ps_partkey" = F0."p_partkey"))) F1)) F0
WHERE (((F0."s_suppkey" = F0."ps_suppkey") and (F0."s_nationkey" = F0."n_nationkey")) and (F0."n_name" = 'CHINA')))
SELECT distinct F0."s_name" AS "s_name", F0."s_address" AS "s_address"
FROM (SELECT * FROM _temp_view_0) F0
ORDER BY F0."s_name" ASC NULLS LAST;