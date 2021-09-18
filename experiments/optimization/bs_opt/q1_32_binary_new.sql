SELECT count(*) 
FROM (
SELECT F0."tagid" AS "tagid", F0."userid" AS "userid", F0."movieid" AS "movieid", F0."tag" AS "tag", F0."timestamp" AS "timestamp", F0."tdate" AS "tdate", F0."tyear" AS "tyear", F0."tmonth" AS "tmonth", F0."tday" AS "tday", F0."PROV_tag1" AS "PROV_tag1"
FROM (
SELECT F0."tagid" AS "tagid", F0."userid" AS "userid", F0."movieid" AS "movieid", F0."tag" AS "tag", F0."timestamp" AS "timestamp", F0."tdate" AS "tdate", F0."tyear" AS "tyear", F0."tmonth" AS "tmonth", F0."tday" AS "tday", set_bit(0::bit(32), binary_search_array_pos(ARRAY [1,14707,29208,44284,58687,73716,87598,101631,116882,131558,146401,160592,175275,189307,203223,217824,232226,247389,261663,276598,291498,306037,321175,335577,350056,363979,378853,392811,408058,422156,437226,451511,465565], tagid) - 1,1 ) AS "PROV_tag1"
FROM "tag" AS F0) F0
) F0;
