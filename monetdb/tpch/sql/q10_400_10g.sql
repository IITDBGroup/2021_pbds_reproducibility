SELECT * FROM (SELECT * FROM (SELECT c_custkey, c_name, sum(l_extendedprice * (1 - l_discount)) as revenue, c_acctbal, n_name, c_address, c_phone, c_comment FROM (select * from customer where 
(("c_custkey" >= 14709) AND ("c_custkey" < 18761)) OR (("c_custkey" >= 122760) AND ("c_custkey" < 126182)) OR (("c_custkey" >= 200021) AND ("c_custkey" < 203422)) OR (("c_custkey" >= 356086) AND ("c_custkey" < 359809)) OR (("c_custkey" >= 371312) AND ("c_custkey" < 375301)) OR (("c_custkey" >= 434920) AND ("c_custkey" < 438683)) OR (("c_custkey" >= 449859) AND ("c_custkey" < 453375)) OR (("c_custkey" >= 558731) AND ("c_custkey" < 562371)) OR (("c_custkey" >= 766291) AND ("c_custkey" < 770291)) OR (("c_custkey" >= 834330) AND ("c_custkey" < 838268)) OR (("c_custkey" >= 916978) AND ("c_custkey" < 920998)) OR (("c_custkey" >= 1093015) AND ("c_custkey" < 1096718)) OR (("c_custkey" >= 1145926) AND ("c_custkey" < 1153895)) OR (("c_custkey" >= 1229378) AND ("c_custkey" < 1232911)) OR (("c_custkey" >= 1248338) AND ("c_custkey" < 1252489)) OR (("c_custkey" >= 1343044) AND ("c_custkey" < 1346585)) OR (("c_custkey" >= 1357621) AND ("c_custkey" < 1361222)) OR (("c_custkey" >= 1375942) AND ("c_custkey" < 1379698)) OR (("c_custkey" >= 1417201) AND ("c_custkey" < 1421028))
) cc, (select * from orders where (("o_orderkey" >= 616037) AND ("o_orderkey" < 772578)) OR (("o_orderkey" >= 2702215) AND ("o_orderkey" < 2861984)) OR (("o_orderkey" >= 3029989) AND ("o_orderkey" < 3176290)) OR (("o_orderkey" >= 3483559) AND ("o_orderkey" < 3634817)) OR (("o_orderkey" >= 6168039) AND ("o_orderkey" < 6457826)) OR (("o_orderkey" >= 7783460) AND ("o_orderkey" < 7929216)) OR (("o_orderkey" >= 8074273) AND ("o_orderkey" < 8203106)) OR (("o_orderkey" >= 8377766) AND ("o_orderkey" < 8663205)) OR (("o_orderkey" >= 9110469) AND ("o_orderkey" < 9269602)) OR (("o_orderkey" >= 10394756) AND ("o_orderkey" < 10548037)) OR (("o_orderkey" >= 10701953) AND ("o_orderkey" < 10849027)) OR (("o_orderkey" >= 11595968) AND ("o_orderkey" < 11746086)) OR (("o_orderkey" >= 12041989) AND ("o_orderkey" < 12196930)) OR (("o_orderkey" >= 12338533) AND ("o_orderkey" < 12500613)) OR (("o_orderkey" >= 13547366) AND ("o_orderkey" < 13684162)) OR (("o_orderkey" >= 15006849) AND ("o_orderkey" < 15151841)) OR (("o_orderkey" >= 17273671) AND ("o_orderkey" < 17410309)) OR (("o_orderkey" >= 17560323) AND ("o_orderkey" < 17844230)) OR (("o_orderkey" >= 18292961) AND ("o_orderkey" < 18447653)) OR (("o_orderkey" >= 18762054) AND ("o_orderkey" < 18908869)) OR (("o_orderkey" >= 19386913) AND ("o_orderkey" < 19529504)) OR (("o_orderkey" >= 20290880) AND ("o_orderkey" < 20597155)) OR (("o_orderkey" >= 21638566) AND ("o_orderkey" < 21781220)) OR (("o_orderkey" >= 22215813) AND ("o_orderkey" < 22368422)) OR (("o_orderkey" >= 22816389) AND ("o_orderkey" < 22960325)) OR (("o_orderkey" >= 23275489) AND ("o_orderkey" < 23418432)) OR (("o_orderkey" >= 23724231) AND ("o_orderkey" < 23866405)) OR (("o_orderkey" >= 25983653) AND ("o_orderkey" < 26156870)) OR (("o_orderkey" >= 26277409) AND ("o_orderkey" < 26438758)) OR (("o_orderkey" >= 26576839) AND ("o_orderkey" < 26745862)) OR (("o_orderkey" >= 27359269) AND ("o_orderkey" < 27526565)) OR (("o_orderkey" >= 28852801) AND ("o_orderkey" < 28998023)) OR (("o_orderkey" >= 29881702) AND ("o_orderkey" < 30038535)) OR (("o_orderkey" >= 30202468) AND ("o_orderkey" < 30350562)) OR (("o_orderkey" >= 32442182) AND ("o_orderkey" < 32590022)) OR (("o_orderkey" >= 33295781) AND ("o_orderkey" < 33732130)) OR (("o_orderkey" >= 34682754) AND ("o_orderkey" < 34838599)) OR (("o_orderkey" >= 35318818) AND ("o_orderkey" < 35465282)) OR (("o_orderkey" >= 36094112) AND ("o_orderkey" < 36246497)) OR (("o_orderkey" >= 37316224) AND ("o_orderkey" < 37456260)) OR (("o_orderkey" >= 37749184) AND ("o_orderkey" < 38052610)) OR (("o_orderkey" >= 38648165) AND ("o_orderkey" < 38817313)) OR (("o_orderkey" >= 39425798) AND ("o_orderkey" < 39581059)) OR (("o_orderkey" >= 39725251) AND ("o_orderkey" < 39872803)) OR (("o_orderkey" >= 43545029) AND ("o_orderkey" < 43701954)) OR (("o_orderkey" >= 44138212) AND ("o_orderkey" < 44276738)) OR (("o_orderkey" >= 45647555) AND ("o_orderkey" < 45797731)) OR (("o_orderkey" >= 45954279) AND ("o_orderkey" < 46094146)) OR (("o_orderkey" >= 46249573) AND ("o_orderkey" < 46398339)) OR (("o_orderkey" >= 47480070) AND ("o_orderkey" < 47618693)) OR (("o_orderkey" >= 49611301) AND ("o_orderkey" < 49743911)) OR (("o_orderkey" >= 50208166) AND ("o_orderkey" < 50496289)) OR (("o_orderkey" >= 50642022) AND ("o_orderkey" < 50967780)) OR (("o_orderkey" >= 51099430) AND ("o_orderkey" < 51242439)) OR (("o_orderkey" >= 51674727) AND ("o_orderkey" < 51817158)) OR (("o_orderkey" >= 52256514) AND ("o_orderkey" < 52408642)) OR (("o_orderkey" >= 53324455) AND ("o_orderkey" < 53647044)) OR (("o_orderkey" >= 54130279) AND ("o_orderkey" < 54591621)) OR (("o_orderkey" >= 55004551) AND ("o_orderkey" < 55301575)) OR (("o_orderkey" >= 55909509) AND ("o_orderkey" < 56214914)) OR (("o_orderkey" >= 56494978) AND ("o_orderkey" < 56664164)) OR (("o_orderkey" >= 56809987) AND ("o_orderkey" < 56962435)) OR (("o_orderkey" >= 58726017) AND ("o_orderkey" < 58861383)) ) oo, (select * from lineitem where (("l_orderkey" >= 469600) AND ("l_orderkey" < 624737)) OR (("l_orderkey" >= 2625699) AND ("l_orderkey" < 3139237)) OR (("l_orderkey" >= 3446919) AND ("l_orderkey" < 3607812)) OR (("l_orderkey" >= 6076935) AND ("l_orderkey" < 6225350)) OR (("l_orderkey" >= 6363009) AND ("l_orderkey" < 6511074)) OR (("l_orderkey" >= 7808099) AND ("l_orderkey" < 8113216)) OR (("l_orderkey" >= 8406340) AND ("l_orderkey" < 8552706)) OR (("l_orderkey" >= 9120481) AND ("l_orderkey" < 9256135)) OR (("l_orderkey" >= 10411430) AND ("l_orderkey" < 10552934)) OR (("l_orderkey" >= 10700676) AND ("l_orderkey" < 10849382)) OR (("l_orderkey" >= 11588802) AND ("l_orderkey" < 11719745)) OR (("l_orderkey" >= 12174694) AND ("l_orderkey" < 12476801)) OR (("l_orderkey" >= 13553829) AND ("l_orderkey" < 13706944)) OR (("l_orderkey" >= 14908737) AND ("l_orderkey" < 15195907)) OR (("l_orderkey" >= 17207008) AND ("l_orderkey" < 17362661)) OR (("l_orderkey" >= 17500097) AND ("l_orderkey" < 17641926)) OR (("l_orderkey" >= 17787013) AND ("l_orderkey" < 17924644)) OR (("l_orderkey" >= 18341413) AND ("l_orderkey" < 18467235)) OR (("l_orderkey" >= 18757863) AND ("l_orderkey" < 18918528)) OR (("l_orderkey" >= 19371239) AND ("l_orderkey" < 19541092)) OR (("l_orderkey" >= 20296390) AND ("l_orderkey" < 20460640)) OR (("l_orderkey" >= 21631584) AND ("l_orderkey" < 21789222)) OR (("l_orderkey" >= 22223366) AND ("l_orderkey" < 22385153)) OR (("l_orderkey" >= 22838722) AND ("l_orderkey" < 22979137)) OR (("l_orderkey" >= 23312966) AND ("l_orderkey" < 23444097)) OR (("l_orderkey" >= 23598535) AND ("l_orderkey" < 23757029)) OR (("l_orderkey" >= 25857826) AND ("l_orderkey" < 26013639)) OR (("l_orderkey" >= 26318242) AND ("l_orderkey" < 26488261)) OR (("l_orderkey" >= 26634918) AND ("l_orderkey" < 26787268)) OR (("l_orderkey" >= 27373539) AND ("l_orderkey" < 27528545)) OR (("l_orderkey" >= 28900003) AND ("l_orderkey" < 29064579)) OR (("l_orderkey" >= 29914212) AND ("l_orderkey" < 30068228)) OR (("l_orderkey" >= 30242882) AND ("l_orderkey" < 30379429)) OR (("l_orderkey" >= 32460998) AND ("l_orderkey" < 32622948)) OR (("l_orderkey" >= 33362500) AND ("l_orderkey" < 33492166)) OR (("l_orderkey" >= 33623527) AND ("l_orderkey" < 33806055)) OR (("l_orderkey" >= 34550822) AND ("l_orderkey" < 34896704)) OR (("l_orderkey" >= 35328451) AND ("l_orderkey" < 35482595)) OR (("l_orderkey" >= 36058279) AND ("l_orderkey" < 36207746)) OR (("l_orderkey" >= 37335079) AND ("l_orderkey" < 37482593)) OR (("l_orderkey" >= 37768836) AND ("l_orderkey" < 38076066)) OR (("l_orderkey" >= 38686823) AND ("l_orderkey" < 38847172)) OR (("l_orderkey" >= 39502915) AND ("l_orderkey" < 39790337)) OR (("l_orderkey" >= 43549349) AND ("l_orderkey" < 43726309)) OR (("l_orderkey" >= 44180807) AND ("l_orderkey" < 44331653)) OR (("l_orderkey" >= 45687491) AND ("l_orderkey" < 45851110)) OR (("l_orderkey" >= 46022240) AND ("l_orderkey" < 46146272)) OR (("l_orderkey" >= 46291108) AND ("l_orderkey" < 46444994)) OR (("l_orderkey" >= 47452832) AND ("l_orderkey" < 47607938)) OR (("l_orderkey" >= 49722500) AND ("l_orderkey" < 49864133)) OR (("l_orderkey" >= 50275553) AND ("l_orderkey" < 50433537)) OR (("l_orderkey" >= 50585379) AND ("l_orderkey" < 50903328)) OR (("l_orderkey" >= 51055079) AND ("l_orderkey" < 51190053)) OR (("l_orderkey" >= 51746371) AND ("l_orderkey" < 51898017)) OR (("l_orderkey" >= 52210563) AND ("l_orderkey" < 52363207)) OR (("l_orderkey" >= 53275621) AND ("l_orderkey" < 53417187)) OR (("l_orderkey" >= 53543556) AND ("l_orderkey" < 53678691)) OR (("l_orderkey" >= 54108866) AND ("l_orderkey" < 54549862)) OR (("l_orderkey" >= 54983393) AND ("l_orderkey" < 55307586)) OR (("l_orderkey" >= 55819911) AND ("l_orderkey" < 56108039)) OR (("l_orderkey" >= 56559782) AND ("l_orderkey" < 56703234)) OR (("l_orderkey" >= 56838592) AND ("l_orderkey" < 56989479)) OR (("l_orderkey" >= 58809250) AND ("l_orderkey" < 58966720)) ) ll, nation WHERE c_custkey = o_custkey and l_orderkey = o_orderkey and o_orderdate >= '1994-12-01' and o_orderdate < '1995-03-01'and l_returnflag = 'R' and c_nationkey = n_nationkey GROUP BY c_custkey, c_name, c_acctbal, c_phone, n_name, c_address, c_comment) o1 ORDER BY revenue desc) o2 limit 20;
