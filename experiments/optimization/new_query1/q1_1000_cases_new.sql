SELECT count(*)
FROM (
SELECT F0."tagid" AS "tagid", F0."userid" AS "userid", F0."movieid" AS "movieid", F0."tag" AS "tag", F0."timestamp" AS "timestamp", F0."tdate" AS "tdate", F0."tyear" AS "tyear", F0."tmonth" AS "tmonth", F0."tday" AS "tday", F0."PROV_tag1" AS "PROV_tag1"
FROM (
FROM "tag" AS F0) F0) F0;

