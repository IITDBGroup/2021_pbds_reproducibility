SELECT count(*)
FROM (
SELECT F0."tagid" AS "tagid", F0."userid" AS "userid", F0."movieid" AS "movieid", F0."tag" AS "tag", F0."timestamp" AS "timestamp", F0."tdate" AS "tdate", F0."tyear" AS "tyear", F0."tmonth" AS "tmonth", F0."tday" AS "tday", F0."PROV_tag1" AS "PROV_tag1"
FROM (
SELECT F0."tagid" AS "tagid", F0."userid" AS "userid", F0."movieid" AS "movieid", F0."tag" AS "tag", F0."timestamp" AS "timestamp", F0."tdate" AS "tdate", F0."tyear" AS "tyear", F0."tmonth" AS "tmonth", F0."tday" AS "tday", set_bit(0::bit(256), binary_search_array_pos(ARRAY [1,1926,3722,5506,7470,9271,11035,12862,14659,16506,18409,20302,22045,23981,25706,27343,29283,31035,32838,34699,36392,38219,40119,41981,43930,45706,47581,49563,51402,53474,55308,57118,58931,60839,62592,64518,66361,68119,69773,71591,73329,75144,77025,78891,80831,82783,84614,86480,88285,90244,91927,93645,95402,97376,99208,101113,102867,104626,106437,108433,110217,111966,113800,115678,117454,119166,121120,122934,124836,126644,128390,130085,132056,133816,135710,137467,139314,141072,142785,144587,146592,148427,150263,152228,154182,155959,157790,159690,161508,163419,165418,167052,168879,170691,172499,174362,176099,177840,179555,181396,183144,185143,186817,188772,190489,192293,193994,195797,197573,199392,201154,203004,204837,206642,208497,210356,212220,213968,215866,217651,219547,221242,223175,224786,226650,228363,230066,231873,233566,235482,237456,239275,240967,242886,244648,246292,248127,249909,251750,253529,255551,257325,259004,260871,262714,264559,266392,268164,269965,271935,273746,275647,277409,279189,280909,282658,284457,286248,288002,289749,291535,293273,295226,296899,298505,300297,302283,304062,305867,307601,309491,311227,312952,314799,316681,318583,320400,322246,324168,326061,327786,329588,331293,333081,334842,336786,338548,340273,341962,343626,345451,347249,349097,350950,352805,354587,356463,358200,360046,361938,363710,365513,367386,369185,370879,372731,374649,376292,378023,379939,381683,383436,385471,387306,388971,390756,392602,394274,396022,397841,399635,401367,403148,405001,406956,408787,410640,412527,414282,416031,418016,420039,421911,423880,425743,427585,429627,431492,433263,435076,436920,438543,440506,442277,444224,446080,447837,449828,451590,453480,455346,456971,458746,460475,462182,463819,465565], tagid) - 1,1 ) AS "PROV_tag1"
FROM "tag" AS F0) F0
) F0;