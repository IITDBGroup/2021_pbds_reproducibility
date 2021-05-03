WITH _temp_view_1 AS (
SELECT /*+ materialize */ avg(F0."l_quantity") AS "AGGR_0", F0."l_partkey" AS "GROUP_0"
FROM "lineitem" AS F0
WHERE (F0."l_partkey" <@ '{515,563,1050,1100,2837,2890,2987,3040,3190,3243,4459,4509,5762,5812,6997,7048,7102,7151,7607,7710,7954,8009,8645,8692,9758,9802,9899,9945,11862,11913,12018,12072,12725,12776,15113,15160,18300,18353,18546,18596,18845,18895,19780,19830,19935,19986,20138,20187,20339,20388,21320,21375,21575,21623,22210,22256,23465,23517,25467,25516,26126,26179,26983,27036,28225,28275,29280,29335,31024,31121,31216,31267,33795,33840,34229,34280,34379,34432,36213,36262,37103,37152,37545,37593,40328,40377,43195,43245,44331,44387,45399,45454,47548,47591,48054,48108,49222,49270,51059,51107,52542,52590,53307,53359,53933,53979,55196,55246,55494,55542,55735,55788,57181,57231,57433,57482,58589,58632,58740,58791,60198,60245,60642,60692,60888,60994,61295,61344,61799,61843,62935,62983,63937,63995,66659,66703,67011,67058,68124,68173,71485,71533,71786,71839,74466,74514,74609,74657,75849,75906,76654,76747,77055,77108,78093,78140,78880,78933,80381,80431,80479,80526,81038,81091,82380,82427,84274,84322,85539,85587,85988,86034,86929,86987,87386,87432,89159,89206,89449,89497,90494,90543,91493,91543,91831,91878,92954,92997,93449,93495,94345,94394,96301,96353,96401,96451,96558,96606,97119,97167,101400,101448,101789,101842,102526,102568,102808,102855,102903,102954,105197,105249,110383,110431,111433,111485,115735,115782,115929,115983,116984,117032,118552,118600,118697,118747,119011,119056,119490,119544,121961,122010,125577,125628,126223,126268,126832,126879,127127,127176,128426,128474,129839,129889,130490,130541,131044,131091,131685,131733,132039,132092,133861,133911,134401,134451,137395,137449,138227,138277,140192,140240,140384,140434,141289,141339,141838,141886,142837,142888,144065,144116,144957,145002,147909,147954,148722,148775,150030,150084,150180,150230,159840,159938,160296,160349,160599,160649,161041,161088,162751,162804,164282,164333,165789,165845,166437,166486,166586,166636,167631,167683,168095,168140,169827,169879,169972,170024,172162,172209,174239,174289,174929,174977,175417,175467,175566,175615,176351,176397,176894,176944,177404,177452,179055,179106,182714,182765,184634,184686,184836,184887,185401,185452,186199,186253,186459,186510,186812,186868,187567,187621,187767,187818,189117,189160,190011,190063,190706,190759,191121,191172,192158,192208,194160,194212,194456,194506,195756,195804,195956,196007,196516,196567,196722,196774,197429,197479,198711,198762,198909,198953,198999,199047}'::int[])
GROUP BY F0."l_partkey"),
_temp_view_0 AS (
SELECT /*+ materialize */ sum(F0."l_extendedprice") AS "AGGR_0"
FROM (
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment", F1."avgl" AS "avgl", F1."l_partkey" AS "l_partkey1"
FROM ((
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment", F1."p_partkey" AS "p_partkey", F1."p_name" AS "p_name", F1."p_mfgr" AS "p_mfgr", F1."p_brand" AS "p_brand", F1."p_type" AS "p_type", F1."p_size" AS "p_size", F1."p_container" AS "p_container", F1."p_retailprice" AS "p_retailprice", F1."p_comment" AS "p_comment"
FROM ((
SELECT F0."l_orderkey" AS "l_orderkey", F0."l_partkey" AS "l_partkey", F0."l_suppkey" AS "l_suppkey", F0."l_linenumber" AS "l_linenumber", F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_tax" AS "l_tax", F0."l_returnflag" AS "l_returnflag", F0."l_linestatus" AS "l_linestatus", F0."l_shipdate" AS "l_shipdate", F0."l_commitdate" AS "l_commitdate", F0."l_receiptdate" AS "l_receiptdate", F0."l_shipinstruct" AS "l_shipinstruct", F0."l_shipmode" AS "l_shipmode", F0."l_comment" AS "l_comment"
FROM "lineitem" AS F0
WHERE (F0."l_orderkey" <@ '{4422,6017,7463,11841,24967,26598,40263,41702,53476,55014,64448,66053,71718,73219,106850,108353,111207,112711,114278,115744,120099,121600,128740,130465,144482,146023,153569,155170,165701,167104,170279,171872,215685,218624,239909,241506,253731,255300,260035,261541,264454,267587,275264,276743,298054,299589,303910,305316,317411,318919,335335,336742,338243,339943,341639,343142,346373,347876,349350,350949,365830,367399,368869,370402,383815,385409,388421,391428,400614,402114,458631,460068,475111,476672,484033,485350,492772,494176,495527,496992,500097,501541,507394,510213,533057,534533,548677,550051,551649,553155,568256,569826,584743,586213,587809,589379,593762,595143,599428,600903,619074,620614,633120,634503,636128,637733,652837,654307,655777,658951,665030,669285,682820,684226,716965,718407,735137,736612,752999,755872,757284,758659,766208,767712,781319,782631,794566,796005,811110,814086,828869,831815,844608,847558,852035,853509,858244,859685,889792,891174,892647,894113,910496,913509,915105,916548,919715,921319,928993,930531,938151,939585,946945,948418,954279,955776,964835,966404,971206,972770,980164,981729,992455,994016,1005924,1007393,1013220,1014503,1031040,1034148,1050563,1052131,1074690,1076352,1079360,1080865,1092354,1095526,1099939,1101411,1130146,1131493,1146277,1147744,1153572,1154945,1156455,1157958,1159558,1162400,1163942,1165442,1184832,1186180,1193639,1195170,1198149,1199650,1201156,1202720,1204228,1207334,1222340,1223911,1238337,1239780,1242694,1244262,1259394,1260900,1269828,1271366,1274469,1277377,1294115,1295712,1304804,1309408,1315367,1316806,1334721,1336164,1366086,1367526,1376384,1377984,1387072,1388674,1394500,1395975,1398851,1400384,1403202,1406117,1409056,1410496,1417829,1419397,1422471,1424006,1434919,1436455,1438054,1439557,1448647,1450081,1456004,1457445,1468102,1471010,1475714,1477287,1481952,1483394,1518049,1519394,1539428,1541092,1550019,1551524,1554626,1556166,1563330,1564612,1582146,1583780,1597126,1600102,1601729,1603138,1612102,1613635,1624358,1625860,1636225,1637824,1642087,1643655,1665959,1667553,1675554,1677153,1686119,1687808,1692036,1693542,1694919,1696423,1713191,1714689,1719461,1720929,1730082,1731809,1739297,1740705,1742148,1743654,1767488,1769027,1770560,1771972,1791906,1793316,1794913,1797799,1802247,1805319,1840833,1842432,1843971,1845446,1858373,1859783,1861216,1862658,1867362,1870209,1873316,1874758,1877607,1879078,1881991,1883622,1906855,1908292,1921255,1924518,1928899,1930407,1933412,1934950,1939392,1940835,1945088,1946470,1949953,1951457,1976802,1978464,1990368,1991717,1994882,1997858,2036423,2037921,2041094,2042560,2044192,2045697,2047264,2048868,2059398,2061024,2067010,2068486,2070082,2071680,2115111,2116517,2127170,2128737,2146631,2148260,2162115,2165255,2178695,2180161,2183109,2184582,2199140,2200679,2226626,2228164,2237152,2238726,2246213,2247906,2250947,2252420,2253986,2255651,2261926,2263425,2272576,2274112,2292578,2294051,2300226,2301824,2307905,2309382,2312035,2313443,2316199,2317703,2325383,2326727,2331267,2334278,2339205,2340672,2345058,2346660,2354498,2356005,2360487,2361831,2368003,2369415,2388679,2391557,2420420,2423362,2426311,2427840,2429316,2430662,2468131,2469508,2483394,2484930,2498533,2501446,2519078,2520613,2560993,2562402,2566914,2568421,2596359,2597735,2599265,2600864,2611331,2612871,2631365,2632933,2637537,2640641,2642176,2643684,2649537,2652707,2670404,2672000,2684292,2688836,2690435,2693536,2696448,2698021,2711269,2712676,2717187,2718852,2738528,2740037,2742886,2744359,2748544,2750050,2766917,2768358,2772868,2774503,2775968,2777379,2783524,2785156,2807591,2808903,2812096,2813671,2824194,2827202,2858403,2860034,2870370,2871971,2876549,2878020,2882656,2884134,2885572,2887175,2900451,2902017,2906400,2907970,2911142,2912551,2914023,2915425,2944098,2945509,2951012,2952512,2958307,2959776,2963014,2964614,2966340,2967713,2972257,2973572,3003365,3004805,3006306,3007783,3021093,3022688,3025733,3027203,3054112,3055458,3059908,3061411,3063015,3064420,3098726,3101793,3122628,3124196,3125701,3127175,3128641,3130276,3131685,3133377,3139426,3140928,3167648,3169095,3185536,3187072,3203783,3205507,3207105,3208611,3221984,3223361,3235522,3237090,3244449,3245954,3273184,3274662,3294661,3296161,3297671,3299205,3316706,3318499,3330754,3332258,3345254,3346759,3352710,3354340,3357221,3358560,3361509,3363106,3369185,3370725,3378083,3379776,3383911,3385350,3395520,3397092,3406437,3408102,3424581,3426086,3464834,3466400,3467842,3469221,3473604,3475104,3498722,3501575,3504642,3506020,3519139,3520359,3527970,3529479,3540192,3541638,3561057,3562567,3565505,3566950,3571459,3572868,3578823,3580358,3583489,3585088,3596839,3598307,3602692,3604194,3622598,3624004,3638948,3640353,3646374,3647937,3670593,3672193,3679587,3683940,3705603,3708516,3729091,3730752,3748546,3749986,3753287,3754818,3759236,3760613,3777122,3778469,3788644,3790241,3828612,3830085,3836129,3837573,3850981,3852545,3889703,3891141,3894019,3897030,3910528,3912097,3916453,3919586,3927109,3928672,3930182,3933286,3936418,3937799,3940679,3942245,3946944,3948454,3956001,3957507,3960544,3961987,3969602,3970978,3972387,3973830,4004675,4006180,4010817,4012198,4021286,4022790,4049762,4051300,4054374,4055971,4057540,4059072,4060487,4061988,4068290,4069669,4073990,4078406,4081413,4083008,4085767,4087238,4101859,4104966,4109697,4112706,4115652,4117280,4120355,4121734,4123172,4124615,4144421,4145990,4151779,4153216,4173893,4175463,4176995,4179940,4200674,4202370,4206882,4208324,4217248,4220162,4230759,4232388,4234081,4235584,4240135,4241412,4242944,4244385,4269986,4272836,4285893,4287334,4290338,4291877,4321219,4322662,4336035,4338885,4344997,4346501,4382439,4383814,4391491,4392999,4423713,4425154,4436960,4438503,4449125,4450720,4466112,4467654,4492641,4494240,4507680,4509220,4535008,4536292,4543652,4546592,4549443,4550854,4553857,4556678,4572992,4576067,4584993,4586404,4589350,4590913,4595392,4596870,4623777,4628385,4643620,4645025,4649601,4651078,4653958,4655459,4661443,4662854,4688259,4689762,4697216,4698535,4712066,4714947,4725763,4727328,4730403,4733476,4741126,4742598,4743974,4745446,4759077,4762115,4763651,4765189,4771334,4774471,4792450,4793991,4798402,4799936,4807653,4809253,4813735,4815202,4819652,4821184,4830151,4831751,4837729,4839265,4842208,4843777,4846690,4848161,4876131,4877572,4885185,4886690,4909254,4910566,4920867,4922402,4928292,4929761,4934176,4937251,4940292,4941793,4944743,4946277,4967299,4968868,4973509,4976482,5010119,5011524,5025029,5026499,5029574,5031170,5047616,5049122,5055075,5056672,5060999,5062499,5078948,5080452,5100097,5101506,5103111,5104547,5106055,5107618,5113697,5115362,5145345,5148484,5183335,5186336,5189318,5190914,5202535,5204097,5207173,5208644,5214726,5216198,5223650,5225029,5237058,5238498,5265568,5267047,5292512,5294023,5296962,5299879,5307269,5308806,5324902,5326338,5337954,5339522,5348740,5350372,5359425,5360834,5367169,5368932,5392900,5394279,5400485,5401831,5413825,5415456,5431746,5433382,5458758,5460162,5461634,5463170,5466118,5467683,5479812,5481345,5499619,5501219,5510438,5511879,5515075,5516577,5525792,5527270,5530178,5531686,5533253,5534918,5555719,5558752,5582885,5584259,5593763,5595364,5622497,5624224,5638950,5640513,5645063,5646694,5658948,5660481,5661956,5663429,5688932,5693350,5694688,5696130,5700711,5702243,5705287,5706720,5714469,5715970,5741413,5742755,5758853,5760294,5776167,5777632,5825890,5827268,5837795,5839204,5843842,5845282,5855941,5857508,5865092,5866466,5874214,5876996,5912549,5914016,5915425,5916930,5928869,5930372,5948736,5950339,5959331,5960772,5987746,5989218,5995394,5996932}'::int[])) F0 CROSS JOIN (
SELECT F0."p_partkey" AS "p_partkey", F0."p_name" AS "p_name", F0."p_mfgr" AS "p_mfgr", F0."p_brand" AS "p_brand", F0."p_type" AS "p_type", F0."p_size" AS "p_size", F0."p_container" AS "p_container", F0."p_retailprice" AS "p_retailprice", F0."p_comment" AS "p_comment"
FROM "part" AS F0
WHERE (F0."p_partkey" <@ '{500,600,1050,1100,2850,2900,3000,3050,3200,3250,4500,4550,5750,5800,7000,7050,7100,7150,7650,7700,7950,8000,8650,8700,9750,9800,9900,9950,11900,11950,12050,12100,12700,12750,15100,15150,18300,18350,18550,18600,18850,18900,19800,19850,19900,19950,20150,20200,20350,20400,21350,21400,21550,21600,22200,22250,23450,23500,25450,25500,26150,26200,27000,27050,28250,28300,29300,29350,31050,31100,31200,31250,33800,33850,34200,34300,34350,34400,36200,36250,37100,37150,37550,37600,40350,40400,43150,43200,44350,44400,45400,45450,47550,47600,48050,48100,49250,49300,51050,51100,52500,52550,53300,53350,53950,54000,55200,55250,55500,55550,55750,55800,57200,57250,57450,57500,58600,58650,58750,58800,60200,60250,60650,60700,60900,61000,61300,61350,61800,61850,62950,63000,63900,63950,66650,66700,67000,67050,68100,68150,71500,71550,71800,71850,74450,74500,74600,74650,75850,75900,76650,76750,77050,77100,78100,78150,78900,78950,80400,80500,81050,81100,82400,82450,84250,84300,85550,85600,85950,86050,86950,87000,87400,87450,89150,89200,89400,89450,90500,90550,91500,91550,91800,91850,92950,93000,93450,93500,94350,94400,96300,96350,96400,96450,96550,96600,97100,97150,101400,101450,101800,101850,102550,102600,102800,102850,102900,102950,105200,105250,110400,110450,111450,111500,115700,115750,115950,116000,116950,117000,118550,118600,118700,118750,119050,119100,119500,119550,121950,122000,125550,125600,126200,126250,126850,126900,127100,127150,128450,128500,129850,129900,130500,130550,131050,131100,131700,131750,132000,132050,133850,133900,134400,134450,137350,137400,138250,138300,140150,140200,140350,140400,141300,141350,141850,141900,142850,142900,144050,144100,144950,145000,147900,147950,148700,148750,150050,150100,150150,150200,159850,159900,160250,160350,160600,160650,161050,161100,162750,162800,164300,164350,165750,165800,166450,166500,166550,166600,167650,167700,168100,168150,169800,169850,169950,170000,172150,172200,174200,174250,174900,174950,175400,175450,175550,175600,176350,176400,176900,176950,177400,177450,179100,179150,182700,182750,184650,184700,184850,184900,185400,185450,186200,186250,186450,186500,186800,186850,187600,187650,187800,187850,189100,189150,190000,190050,190700,190750,191100,191150,192150,192200,194200,194250,194450,194500,195750,195800,195950,196000,196500,196550,196700,196800,197450,197500,198700,198750,198950,199050}'::int[])) F1)) F0 CROSS JOIN (
SELECT (0.200000 * F0."AGGR_0") AS "avgl", F0."GROUP_0" AS "l_partkey"
FROM (SELECT * FROM _temp_view_1) F0) F1)) F0
WHERE (((((F0."p_partkey" = F0."l_partkey") and (F0."p_brand" = 'Brand#31')) and (F0."p_container" = 'SM PKG')) and (F0."l_partkey1" = F0."p_partkey")) and (F0."l_quantity" < F0."avgl")))
SELECT (F0."AGGR_0" / 7.000000) AS "avg_yearly"
FROM (SELECT * FROM _temp_view_0) F0;