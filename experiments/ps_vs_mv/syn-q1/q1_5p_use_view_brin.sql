-- 375
select * from (select * from v1_brin_suma_gaa where (aa <@ '{37999182,38004517,38004517,38009852,38009852,38015187,38015187,38020522,38020522,38025857,38025857,38031192,38031192,38036527,38036527,38041862,38041862,38047197,38047197,38052532,38052532,38057867,38057867,38063202,38063202,38068537,38068537,38073872,38073872,38079207,38079207,38084542,38084542,38089877,38089877,38095212,38095212,38100547,38100547,38105882,38105882,38111217,38111217,38116552,38116552,38121887,38121887,38127222,38127222,38132557,38132557,38137892,38137892,38143227,38143227,38148562,38148562,38153897,38153897,38159232,38159232,38164567,38164567,38169902,38169902,38175237,38175237,38180572,38180572,38185907,38185907,38191242,38191242,38196577,38196577,38201912,38201912,38207247,38207247,38212582,38212582,38217917,38217917,38223252,38223252,38228587,38228587,38233922,38233922,38239257,38239257,38244592,38244592,38249927,38249927,38255262,38255262,38260597,38260597,38265932,38265932,38271267,38271267,38276602,38276602,38281937,38281937,38287272,38287272,38292607,38292607,38297942,38297942,38303277,38303277,38308612,38308612,38313947,38313947,38319282,38319282,38324617,38324617,38329952,38329952,38335287,38335287,38340622,38340622,38345957,38345957,38351292,38351292,38356627,38356627,38361962,38361962,38367297,38367297,38372632,38372632,38377967,38377967,38383302,38383302,38388637,38388637,38393972,38393972,38399307,38399307,38404642,38404642,38409977,38409977,38415312,38415312,38420647,38420647,38425982,38425982,38431317,38431317,38436652,38436652,38441987,38441987,38447322,38447322,38452657,38452657,38457992,38457992,38463327,38463327,38468662,38468662,38473997,38473997,38479332,38479332,38484667,38484667,38490002,38490002,38495337,38495337,38500672,38500672,38506007,38506007,38511342,38511342,38516677,38516677,38522012,38522012,38527347,38527347,38532682,38532682,38538017,38538017,38543352,38543352,38548687,38548687,38554022,38554022,38559357,38559357,38564692,38564692,38570027,38570027,38575362,38575362,38580697,38580697,38586032,38586032,38591367,38591367,38596702,38596702,38602037,38602037,38607372,38607372,38612707,38612707,38618042,38618042,38623377,38623377,38628712,38628712,38634047,38634047,38639382,38639382,38644717,38644717,38650052,38650052,38655387,38655387,38660722,38660722,38666057,38666057,38671392,38671392,38676727,38676727,38682062,38682062,38687397,38687397,38692732,38692732,38698067,38698067,38703402,38703402,38708737,38708737,38714072,38714072,38719407,38719407,38724742,38724742,38730077,38730077,38735412,38735412,38740747,38740747,38746082,38746082,38751417,38751417,38756752,38756752,38762087,38762087,38767422,38767422,38772757,38772757,38778092,38778092,38783427,38783427,38788762,38788762,38794097,38794097,38799432,38799432,38804767,38804767,38810102,38810102,38815437,38815437,38820772,38820772,38826107,38826107,38831442,38831442,38836777,38836777,38842112,38842112,38847447,38847447,38852782,38852782,38858117,38858117,38863452,38863452,38868787,38868787,38874122,38874122,38879457,38879457,38884792,38884792,38890127,38890127,38895462,38895462,38900797,38900797,38906132,38906132,38911467,38911467,38916802,38916802,38922137,38922137,38927472,38927472,38932807,38932807,38938142,38938142,38943477,38943477,38948812,38948812,38954147,38954147,38959482,38959482,38964817,38964817,38970152,38970152,38975487,38975487,38980822,38980822,38986157,38986157,38991492,38991492,38996827,38996827,39002162,39002162,39007497,39007497,39012832,39012832,39018167,39018167,39023502,39023502,39028837,39028837,39034172,39034172,39039507,39039507,39044842,39044842,39050177,39050177,39055512,39055512,39060847,39060847,39066182,39066182,39071517,39071517,39076852,39076852,39082187,39082187,39087522,39087522,39092857,39092857,39098192,39098192,39103527,39103527,39108862,39108862,39114197,39114197,39119532,39119532,39124867,39124867,39130202,39130202,39135537,39135537,39140872,39140872,39146207,39146207,39151542,39151542,39156877,39156877,39162212,39162212,39167547,39167547,39172882,39172882,39178217,39178217,39183552,39183552,39188887,39188887,39194222,39194222,39199557,39199557,39204892,39204892,39210227,39210227,39215562,39215562,39220897,39220897,39226232,39226232,39231567,39231567,39236902,39236902,39242237,39242237,39247572,39247572,39252907,39252907,39258242,39258242,39263577,39263577,39268912,39268912,39274247,39274247,39279582,39279582,39284917,39284917,39290252,39290252,39295587,39295587,39300922,39300922,39306257,39306257,39311592,39311592,39316927,39316927,39322262,39322262,39327597,39327597,39332932,39332932,39338267,39338267,39343602,39343602,39348937,39348937,39354272,39354272,39359607,39359607,39364942,39364942,39370277,39370277,39375612,39375612,39380947,39380947,39386282,39386282,39391617,39391617,39396952,39396952,39402287,39402287,39407622,39407622,39412957,39412957,39418292,39418292,39423627,39423627,39428962,39428962,39434297,39434297,39439632,39439632,39444967,39444967,39450302,39450302,39455637,39455637,39460972,39460972,39466307,39466307,39471642,39471642,39476977,39476977,39482312,39482312,39487647,39487647,39492982,39492982,39498317,39498317,39503652,39503652,39508987,39508987,39514322,39514322,39519657,39519657,39524992,39524992,39530327,39530327,39535662,39535662,39540997,39540997,39546332,39546332,39551667,39551667,39557002,39557002,39562337,39562337,39567672,39567672,39573007,39573007,39578342,39578342,39583677,39583677,39589012,39589012,39594347,39594347,39599682,39599682,39605017,39605017,39610352,39610352,39615687,39615687,39621022,39621022,39626357,39626357,39631692,39631692,39637027,39637027,39642362,39642362,39647697,39647697,39653032,39653032,39658367,39658367,39663702,39663702,39669037,39669037,39674372,39674372,39679707,39679707,39685042,39685042,39690377,39690377,39695712,39695712,39701047,39701047,39706382,39706382,39711717,39711717,39717052,39717052,39722387,39722387,39727722,39727722,39733057,39733057,39738392,39738392,39743727,39743727,39749062,39749062,39754397,39754397,39759732,39759732,39765067,39765067,39770402,39770402,39775737,39775737,39781072,39781072,39786407,39786407,39791742,39791742,39797077,39797077,39802412,39802412,39807747,39807747,39813082,39813082,39818417,39818417,39823752,39823752,39829087,39829087,39834422,39834422,39839757,39839757,39845092,39845092,39850427,39850427,39855762,39855762,39861097,39861097,39866432,39866432,39871767,39871767,39877102,39877102,39882437,39882437,39887772,39887772,39893107,39893107,39898442,39898442,39903777,39903777,39909112,39909112,39914447,39914447,39919782,39919782,39925117,39925117,39930452,39930452,39935787,39935787,39941122,39941122,39946457,39946457,39951792,39951792,39957127,39957127,39962462,39962462,39967797,39967797,39973132,39973132,39978467,39978467,39983802,39983802,39989137,39989137,39994472,39994472,39999807,39999807,40000001}'::int[])) x where suma > 38000000;
