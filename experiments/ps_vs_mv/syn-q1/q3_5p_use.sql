WITH temp_view_0 AS (
SELECT /*+ materialize */ sum(F0_0."a") AS "AGGR_0", F0_0."cc" AS "GROUP_0"
FROM "v1" F0_0
WHERE (F0_0."c" <@ '{9499796,9505174,9505174,9510552,9510552,9515930,9515930,9521308,9521308,9526686,9526686,9532064,9532064,9537442,9537442,9542820,9542820,9548198,9548198,9553576,9553576,9558954,9558954,9564332,9564332,9569710,9569710,9575088,9575088,9580466,9580466,9585844,9585844,9591222,9591222,9596600,9596600,9601978,9601978,9607356,9607356,9612734,9612734,9618112,9618112,9623490,9623490,9628868,9628868,9634246,9634246,9639624,9639624,9645002,9645002,9650380,9650380,9655758,9655758,9661136,9661136,9666514,9666514,9671892,9671892,9677270,9677270,9682648,9682648,9688026,9688026,9693404,9693404,9698782,9698782,9704160,9704160,9709538,9709538,9714916,9714916,9720294,9720294,9725672,9725672,9731050,9731050,9736428,9736428,9741806,9741806,9747184,9747184,9752562,9752562,9757940,9757940,9763318,9763318,9768696,9768696,9774074,9774074,9779452,9779452,9784830,9784830,9790208,9790208,9795586,9795586,9800964,9800964,9806342,9806342,9811720,9811720,9817098,9817098,9822476,9822476,9827854,9827854,9833232,9833232,9838610,9838610,9843988,9843988,9849366,9849366,9854744,9854744,9860122,9860122,9865500,9865500,9870878,9870878,9876256,9876256,9881634,9881634,9887012,9887012,9892390,9892390,9897768,9897768,9903146,9903146,9908524,9908524,9913902,9913902,9919280,9919280,9924658,9924658,9930036,9930036,9935414,9935414,9940792,9940792,9946170,9946170,9951548,9951548,9956926,9956926,9962304,9962304,9967682,9967682,9973060,9973060,9978438,9978438,9983816,9983816,9989194,9989194,9994572,9994572,9999950,9999950,10000001}'::int[])
GROUP BY F0_0."cc")
SELECT F0_0."suma" AS "suma", F0_0."cc" AS "cc"
FROM (
SELECT F0_0."AGGR_0" AS "suma", F0_0."GROUP_0" AS "cc"
FROM (SELECT * FROM temp_view_0) F0_0) F0_0
WHERE (F0_0."suma" > 152000000);