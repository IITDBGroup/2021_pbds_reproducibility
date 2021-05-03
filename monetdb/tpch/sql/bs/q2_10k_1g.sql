select s_acctbal,s_name,n_name,p_partkey,p_mfgr,s_address,s_phone,s_comment
from (select * from part where 
binsearch_ranges_contains_val(p_partkey, blob 'F0000000000000000401000000000000E812000000000000FC1200000000000028140000000000003C1400000000000020170000000000003417000000000000A820000000000000BC20000000000000A02D000000000000B42D00000000000040330000000000005433000000000000D435000000000000E835000000000000743B000000000000883B0000000000006C430000000000008043000000000000C846000000000000DC46000000000000A447000000000000B847000000000000104A000000000000244A000000000000F04B000000000000044C000000000000344E000000000000484E000000000000E452000000000000F85200000000000068650000000000007C650000000000005C6700000000000070670000000000007C74000000000000907400000000000038810000000000004C81000000000000A884000000000000BC84000000000000FC850000000000001086000000000000A08C000000000000B48C0000000000009C90000000000000B090000000000000889A0000000000009C9A000000000000309D000000000000449D00000000000054AB00000000000068AB00000000000020AD00000000000034AD0000000000004CB800000000000060B800000000000080E800000000000094E800000000000084F300000000000098F3000000000000240301000000000038030100000000006C060100000000008006010000000000640E010000000000780E010000000000681E0100000000007C1E01000000000074260100000000008826010000000000E028010000000000F428010000000000342A010000000000482A01000000000040320100000000005432010000000000803D010000000000943D0100000000000C480100000000002048010000000000584C0100000000006C4C010000000000D44D010000000000E84D01000000000044510100000000005851010000000000E451010000000000F851010000000000B459010000000000C8590100000000009460010000000000A8600100000000006C830100000000008083010000000000A487010000000000B88701000000000070890100000000008489010000000000248F010000000000388F010000000000E898010000000000FC9801000000000050A401000000000064A401000000000084A701000000000098A7010000000000BCAB010000000000D0AB010000000000C4AD010000000000D8AD01000000000000CC01000000000014CC01000000000020CF01000000000034CF010000000000ACD4010000000000C0D40100000000007CD701000000000090D701000000000080E701000000000094E70100000000001CEC01000000000030EC010000000000A0EF010000000000B4EF010000000000F0F401000000000004F5010000000000ECFD01000000000000FE0100000000001412020000000000281202000000000064170200000000007817020000000000641C020000000000781C020000000000901D020000000000A41D02000000000018220200000000002C22020000000000F427020000000000082802000000000058320200000000006C32020000000000483D0200000000005C3D020000000000C04C020000000000D44C020000000000B04D020000000000C44D0200000000001453020000000000285302000000000050620200000000006462020000000000CC6D020000000000E06D020000000000407C020000000000547C0200000000008483020000000000988302000000000018900200000000002C90020000000000A099020000000000B499020000000000A89B020000000000BC9B02000000000098A6020000000000ACA6020000000000FCA602000000000010A702000000000088A70200000000009CA702000000000090AE020000000000A4AE0200000000003CBC02000000000050BC020000000000C8BC020000000000DCBC02000000000020C402000000000034C402000000000088CF0200000000009CCF020000000000FCD302000000000010D4020000000000C8E4020000000000DCE402000000000034E702000000000048E7020000000000F4EA02000000000008EB020000000000E4EB020000000000F8EB02000000000000EE02000000000014EE02000000000008F50200000000001CF502000000000024060300000000003806030000000000')
) pp, 
(select * from supplier where 
binsearch_ranges_contains_val(s_suppkey, blob '210000000000000022000000000000007300000000000000740000000000000022030000000000002303000000000000F503000000000000F603000000000000CA04000000000000CB040000000000000605000000000000070500000000000008050000000000000905000000000000EE05000000000000EF05000000000000D006000000000000D106000000000000180700000000000019070000000000001409000000000000150900000000000030090000000000003109000000000000E809000000000000E909000000000000730A000000000000740A000000000000AB0A000000000000AC0A000000000000680B000000000000690B000000000000310C000000000000320C000000000000460C000000000000470C0000000000009C0C0000000000009D0C000000000000AD0C000000000000AE0C000000000000FB0C000000000000FC0C000000000000130D000000000000140D000000000000380D000000000000390D0000000000006F0D000000000000700D000000000000CC0D000000000000CD0D000000000000E90E000000000000EA0E0000000000007F0F000000000000800F000000000000850F000000000000860F0000000000008B0F0000000000008C0F000000000000960F000000000000970F00000000000073100000000000007410000000000000D110000000000000D210000000000000D710000000000000D8100000000000004D110000000000004E11000000000000E611000000000000E711000000000000FB11000000000000FC110000000000005E120000000000005F12000000000000F812000000000000F9120000000000001C140000000000001D1400000000000082140000000000008314000000000000BA14000000000000BB14000000000000EF14000000000000F0140000000000001E150000000000001F15000000000000761600000000000077160000000000009F16000000000000A016000000000000E816000000000000E91600000000000030170000000000003117000000000000511700000000000052170000000000005717000000000000581700000000000073170000000000007417000000000000DC17000000000000DD170000000000002C180000000000002D18000000000000BA18000000000000BB18000000000000C918000000000000CA18000000000000E518000000000000E6180000000000001B1A0000000000001C1A000000000000AE1A000000000000AF1A000000000000831B000000000000841B0000000000001A1C0000000000001B1C000000000000261C000000000000271C000000000000651C000000000000661C000000000000AE1C000000000000AF1C000000000000591E0000000000005A1E0000000000005C1E0000000000005D1E0000000000007F1E000000000000801E0000000000001F1F000000000000201F0000000000002D1F0000000000002E1F000000000000A11F000000000000A21F000000000000A51F000000000000A61F000000000000D620000000000000D720000000000000462100000000000047210000000000004821000000000000492100000000000035220000000000003622000000000000422200000000000043220000000000004C220000000000004D2200000000000093220000000000009422000000000000962200000000000097220000000000000D230000000000000E2300000000000034230000000000003523000000000000E223000000000000E323000000000000BF24000000000000C024000000000000F024000000000000F12400000000000039250000000000003A2500000000000056250000000000005725000000000000BA25000000000000BB25000000000000DA25000000000000DB25000000000000402600000000000041260000000000005626000000000000572600000000000010270000000000001127000000000000')
) ss,
(select * from partsupp where 
binsearch_ranges_contains_val(ps_partkey, blob '01000000000000002327000000000000982D000000000000AB2D0000000000003C330000000000004F33000000000000D535000000000000E835000000000000793B0000000000008C3B0000000000006A430000000000007D43000000000000D446000000000000E746000000000000A547000000000000B847000000000000184A0000000000002B4A000000000000F34B000000000000064C000000000000404E000000000000534E000000000000DA52000000000000ED5200000000000068650000000000007B650000000000005667000000000000696700000000000079740000000000008C740000000000003D810000000000005081000000000000A784000000000000BA84000000000000FD850000000000001086000000000000AB8C000000000000BE8C0000000000009A90000000000000AD900000000000008C9A0000000000009F9A000000000000389D0000000000004B9D00000000000052AB00000000000065AB0000000000001AAD0000000000002DAD0000000000004FB800000000000062B80000000000007AE80000000000008DE800000000000089F30000000000009CF30000000000001F03010000000000320301000000000063060100000000007606010000000000670E0100000000007A0E0100000000005C1E0100000000006F1E01000000000086260100000000009926010000000000D328010000000000E628010000000000292A0100000000003C2A01000000000040320100000000005332010000000000753D010000000000883D01000000000012480100000000002548010000000000604C010000000000734C010000000000DC4D010000000000EF4D01000000000046510100000000005951010000000000DE51010000000000F151010000000000BC59010000000000CF59010000000000A360010000000000B6600100000000005F830100000000007283010000000000AD87010000000000C087010000000000758901000000000088890100000000002C8F0100000000003F8F010000000000E598010000000000F89801000000000053A401000000000066A401000000000084A701000000000097A7010000000000BFAB010000000000D2AB010000000000C0AD010000000000D3AD01000000000008CC0100000000001BCC01000000000026CF01000000000039CF010000000000B7D4010000000000CAD401000000000089D70100000000009CD70100000000007EE701000000000091E701000000000018EC0100000000002BEC010000000000A8EF010000000000BBEF010000000000EDF401000000000000F5010000000000FBFD0100000000000EFE01000000000018120200000000002B120200000000005D170200000000007017020000000000691C0200000000007C1C020000000000861D020000000000991D02000000000020220200000000003322020000000000EA27020000000000FD27020000000000613202000000000074320200000000004A3D0200000000005D3D020000000000BA4C020000000000CD4C020000000000B14D020000000000C44D0200000000001C530200000000002F5302000000000040620200000000005362020000000000C16D020000000000D46D0200000000003A7C0200000000004D7C0200000000009383020000000000A6830200000000001E9002000000000031900200000000009E99020000000000B1990200000000009F9B020000000000B29B0200000000009BA6020000000000AEA6020000000000FAA60200000000000DA70200000000007FA702000000000092A70200000000008CAE0200000000009FAE02000000000034BC02000000000047BC020000000000CCBC020000000000DFBC02000000000025C402000000000038C402000000000080CF02000000000093CF02000000000007D40200000000001AD4020000000000CDE4020000000000E0E40200000000002DE702000000000040E7020000000000F6EA02000000000009EB020000000000EDEB02000000000000EC020000000000EEED02000000000001EE0200000000000EF502000000000021F502000000000020060300000000003306030000000000')
) ps,nation,region, (select min(ps_supplycost) as min_supplycost, ps_partkey from partsupp, supplier, nation, region where s_suppkey = ps_suppkey and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE' group by ps_partkey) m
where p_partkey = ps.ps_partkey and s_suppkey = ps.ps_suppkey and p_size = 15 and p_type like '%BRASS' and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE'
and ps_supplycost = m.min_supplycost and p_partkey = m.ps_partkey
order by s_acctbal desc, n_name, s_name, p_partkey
LIMIT 100;