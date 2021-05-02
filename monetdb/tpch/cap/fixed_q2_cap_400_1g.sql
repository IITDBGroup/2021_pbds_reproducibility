select bit_or_ints(prov_s) as prov_s,
bit_or_ints(prov_p) as prov_p,
 bit_or_ints(prov_ps1) as prov_ps1,
  bit_or_blob(prov_ps2) as prov_ps2  from (
select s_acctbal,s_name,n_name,p_partkey,p_mfgr,s_address,s_phone,s_comment, prov_s, prov_p, prov_ps1, prov_ps2
from (select p_partkey, p_type,p_size,p_mfgr, binsearch_ranges_pos(p_partkey, blob '0100000000000000F401000000000000E803000000000000DC05000000000000D007000000000000C409000000000000B80B000000000000AC0D000000000000A00F000000000000941100000000000088130000000000007C1500000000000070170000000000006419000000000000581B0000000000004C1D000000000000401F000000000000342100000000000028230000000000001C2500000000000010270000000000000429000000000000F82A000000000000EC2C000000000000E02E000000000000D430000000000000C832000000000000BC34000000000000B036000000000000A438000000000000983A0000000000008C3C000000000000803E000000000000744000000000000068420000000000005C4400000000000050460000000000004448000000000000384A0000000000002C4C000000000000204E00000000000014500000000000000852000000000000FC53000000000000F055000000000000E457000000000000D859000000000000CC5B000000000000C05D000000000000B45F000000000000A8610000000000009C630000000000009065000000000000846700000000000078690000000000006C6B000000000000606D000000000000546F00000000000048710000000000003C730000000000003075000000000000247700000000000018790000000000000C7B000000000000007D000000000000F47E000000000000E880000000000000DC82000000000000D084000000000000C486000000000000B888000000000000AC8A000000000000A08C000000000000948E00000000000088900000000000007C920000000000007094000000000000649600000000000058980000000000004C9A000000000000409C000000000000349E00000000000028A00000000000001CA200000000000010A400000000000004A6000000000000F8A7000000000000ECA9000000000000E0AB000000000000D4AD000000000000C8AF000000000000BCB1000000000000B0B3000000000000A4B500000000000098B70000000000008CB900000000000080BB00000000000074BD00000000000068BF0000000000005CC100000000000050C300000000000044C500000000000038C70000000000002CC900000000000020CB00000000000014CD00000000000008CF000000000000FCD0000000000000F0D2000000000000E4D4000000000000D8D6000000000000CCD8000000000000C0DA000000000000B4DC000000000000A8DE0000000000009CE000000000000090E200000000000084E400000000000078E60000000000006CE800000000000060EA00000000000054EC00000000000048EE0000000000003CF000000000000030F200000000000024F400000000000018F60000000000000CF800000000000000FA000000000000F4FB000000000000E8FD000000000000DCFF000000000000D001010000000000C403010000000000B805010000000000AC07010000000000A009010000000000940B010000000000880D0100000000007C0F0100000000007011010000000000641301000000000058150100000000004C170100000000004019010000000000341B010000000000281D0100000000001C1F01000000000010210100000000000423010000000000F824010000000000EC26010000000000E028010000000000D42A010000000000C82C010000000000BC2E010000000000B030010000000000A43201000000000098340100000000008C360100000000008038010000000000743A010000000000683C0100000000005C3E0100000000005040010000000000444201000000000038440100000000002C460100000000002048010000000000144A010000000000084C010000000000FC4D010000000000F04F010000000000E451010000000000D853010000000000CC55010000000000C057010000000000B459010000000000A85B0100000000009C5D010000000000905F010000000000846101000000000078630100000000006C6501000000000060670100000000005469010000000000486B0100000000003C6D010000000000306F010000000000247101000000000018730100000000000C750100000000000077010000000000F478010000000000E87A010000000000DC7C010000000000D07E010000000000C480010000000000B882010000000000AC84010000000000A0860100000000009488010000000000888A0100000000007C8C010000000000708E010000000000649001000000000058920100000000004C9401000000000040960100000000003498010000000000289A0100000000001C9C010000000000109E01000000000004A0010000000000F8A1010000000000ECA3010000000000E0A5010000000000D4A7010000000000C8A9010000000000BCAB010000000000B0AD010000000000A4AF01000000000098B10100000000008CB301000000000080B501000000000074B701000000000068B90100000000005CBB01000000000050BD01000000000044BF01000000000038C10100000000002CC301000000000020C501000000000014C701000000000008C9010000000000FCCA010000000000F0CC010000000000E4CE010000000000D8D0010000000000CCD2010000000000C0D4010000000000B4D6010000000000A8D80100000000009CDA01000000000090DC01000000000084DE01000000000078E00100000000006CE201000000000060E401000000000054E601000000000048E80100000000003CEA01000000000030EC01000000000024EE01000000000018F00100000000000CF201000000000000F4010000000000F4F5010000000000E8F7010000000000DCF9010000000000D0FB010000000000C4FD010000000000B8FF010000000000AC01020000000000A003020000000000940502000000000088070200000000007C09020000000000700B020000000000640D020000000000580F0200000000004C110200000000004013020000000000341502000000000028170200000000001C19020000000000101B020000000000041D020000000000F81E020000000000EC20020000000000E022020000000000D424020000000000C826020000000000BC28020000000000B02A020000000000A42C020000000000982E0200000000008C300200000000008032020000000000743402000000000068360200000000005C38020000000000503A020000000000443C020000000000383E0200000000002C40020000000000204202000000000014440200000000000846020000000000FC47020000000000F049020000000000E44B020000000000D84D020000000000CC4F020000000000C051020000000000B453020000000000A8550200000000009C570200000000009059020000000000845B020000000000785D0200000000006C5F0200000000006061020000000000546302000000000048650200000000003C670200000000003069020000000000246B020000000000186D0200000000000C6F0200000000000071020000000000F472020000000000E874020000000000DC76020000000000D078020000000000C47A020000000000B87C020000000000AC7E020000000000A080020000000000948202000000000088840200000000007C860200000000007088020000000000648A020000000000588C0200000000004C8E0200000000004090020000000000349202000000000028940200000000001C960200000000001098020000000000049A020000000000F89B020000000000EC9D020000000000E09F020000000000D4A1020000000000C8A3020000000000BCA5020000000000B0A7020000000000A4A902000000000098AB0200000000008CAD02000000000080AF02000000000074B102000000000068B30200000000005CB502000000000050B702000000000044B902000000000038BB0200000000002CBD02000000000020BF02000000000014C102000000000008C3020000000000FCC4020000000000F0C6020000000000E4C8020000000000D8CA020000000000CCCC020000000000C0CE020000000000B4D0020000000000A8D20200000000009CD402000000000090D602000000000084D802000000000078DA0200000000006CDC02000000000060DE02000000000054E002000000000048E20200000000003CE402000000000030E602000000000024E802000000000018EA0200000000000CEC02000000000000EE020000000000F4EF020000000000E8F1020000000000DCF3020000000000D0F5020000000000C4F7020000000000B8F9020000000000ACFB020000000000A0FD02000000000094FF02000000000088010300000000007C030300000000007005030000000000640703000000000058090300000000004C0B030000000000410D030000000000') AS prov_p from part) p1,
(select s_acctbal, s_name,s_suppkey, s_nationkey,s_address,s_phone,s_comment, binsearch_ranges_pos(s_suppkey, blob '0100000000000000190000000000000032000000000000004B0000000000000064000000000000007D000000000000009600000000000000AF00000000000000C800000000000000E100000000000000FA0000000000000013010000000000002C0100000000000045010000000000005E0100000000000077010000000000009001000000000000A901000000000000C201000000000000DB01000000000000F4010000000000000D0200000000000026020000000000003F02000000000000580200000000000071020000000000008A02000000000000A302000000000000BC02000000000000D502000000000000EE0200000000000007030000000000002003000000000000390300000000000052030000000000006B0300000000000084030000000000009D03000000000000B603000000000000CF03000000000000E80300000000000001040000000000001A0400000000000033040000000000004C0400000000000065040000000000007E040000000000009704000000000000B004000000000000C904000000000000E204000000000000FB0400000000000014050000000000002D0500000000000046050000000000005F0500000000000078050000000000009105000000000000AA05000000000000C305000000000000DC05000000000000F5050000000000000E0600000000000027060000000000004006000000000000590600000000000072060000000000008B06000000000000A406000000000000BD06000000000000D606000000000000EF06000000000000080700000000000021070000000000003A0700000000000053070000000000006C0700000000000085070000000000009E07000000000000B707000000000000D007000000000000E90700000000000002080000000000001B0800000000000034080000000000004D0800000000000066080000000000007F080000000000009808000000000000B108000000000000CA08000000000000E308000000000000FC0800000000000015090000000000002E090000000000004709000000000000600900000000000079090000000000009209000000000000AB09000000000000C409000000000000DD09000000000000F6090000000000000F0A000000000000280A000000000000410A0000000000005A0A000000000000730A0000000000008C0A000000000000A50A000000000000BE0A000000000000D70A000000000000F00A000000000000090B000000000000220B0000000000003B0B000000000000540B0000000000006D0B000000000000860B0000000000009F0B000000000000B80B000000000000D10B000000000000EA0B000000000000030C0000000000001C0C000000000000350C0000000000004E0C000000000000670C000000000000800C000000000000990C000000000000B20C000000000000CB0C000000000000E40C000000000000FD0C000000000000160D0000000000002F0D000000000000480D000000000000610D0000000000007A0D000000000000930D000000000000AC0D000000000000C50D000000000000DE0D000000000000F70D000000000000100E000000000000290E000000000000420E0000000000005B0E000000000000740E0000000000008D0E000000000000A60E000000000000BF0E000000000000D80E000000000000F10E0000000000000A0F000000000000230F0000000000003C0F000000000000550F0000000000006E0F000000000000870F000000000000A00F000000000000B90F000000000000D20F000000000000EB0F00000000000004100000000000001D1000000000000036100000000000004F10000000000000681000000000000081100000000000009A10000000000000B310000000000000CC10000000000000E510000000000000FE1000000000000017110000000000003011000000000000491100000000000062110000000000007B110000000000009411000000000000AD11000000000000C611000000000000DF11000000000000F81100000000000011120000000000002A1200000000000043120000000000005C1200000000000075120000000000008E12000000000000A712000000000000C012000000000000D912000000000000F2120000000000000B1300000000000024130000000000003D1300000000000056130000000000006F130000000000008813000000000000A113000000000000BA13000000000000D313000000000000EC1300000000000005140000000000001E1400000000000037140000000000005014000000000000691400000000000082140000000000009B14000000000000B414000000000000CD14000000000000E614000000000000FF14000000000000181500000000000031150000000000004A1500000000000063150000000000007C150000000000009515000000000000AE15000000000000C715000000000000E015000000000000F91500000000000012160000000000002B1600000000000044160000000000005D1600000000000076160000000000008F16000000000000A816000000000000C116000000000000DA16000000000000F3160000000000000C1700000000000025170000000000003E17000000000000571700000000000070170000000000008917000000000000A217000000000000BB17000000000000D417000000000000ED1700000000000006180000000000001F18000000000000381800000000000051180000000000006A1800000000000083180000000000009C18000000000000B518000000000000CE18000000000000E7180000000000000019000000000000191900000000000032190000000000004B1900000000000064190000000000007D190000000000009619000000000000AF19000000000000C819000000000000E119000000000000FA19000000000000131A0000000000002C1A000000000000451A0000000000005E1A000000000000771A000000000000901A000000000000A91A000000000000C21A000000000000DB1A000000000000F41A0000000000000D1B000000000000261B0000000000003F1B000000000000581B000000000000711B0000000000008A1B000000000000A31B000000000000BC1B000000000000D51B000000000000EE1B000000000000071C000000000000201C000000000000391C000000000000521C0000000000006B1C000000000000841C0000000000009D1C000000000000B61C000000000000CF1C000000000000E81C000000000000011D0000000000001A1D000000000000331D0000000000004C1D000000000000651D0000000000007E1D000000000000971D000000000000B01D000000000000C91D000000000000E21D000000000000FB1D000000000000141E0000000000002D1E000000000000461E0000000000005F1E000000000000781E000000000000911E000000000000AA1E000000000000C31E000000000000DC1E000000000000F51E0000000000000E1F000000000000271F000000000000401F000000000000591F000000000000721F0000000000008B1F000000000000A41F000000000000BD1F000000000000D61F000000000000EF1F000000000000082000000000000021200000000000003A2000000000000053200000000000006C2000000000000085200000000000009E20000000000000B720000000000000D020000000000000E92000000000000002210000000000001B2100000000000034210000000000004D2100000000000066210000000000007F210000000000009821000000000000B121000000000000CA21000000000000E321000000000000FC2100000000000015220000000000002E220000000000004722000000000000602200000000000079220000000000009222000000000000AB22000000000000C422000000000000DD22000000000000F6220000000000000F23000000000000282300000000000041230000000000005A2300000000000073230000000000008C23000000000000A523000000000000BE23000000000000D723000000000000F023000000000000092400000000000022240000000000003B2400000000000054240000000000006D2400000000000086240000000000009F24000000000000B824000000000000D124000000000000EA2400000000000003250000000000001C2500000000000035250000000000004E25000000000000672500000000000080250000000000009925000000000000B225000000000000CB25000000000000E425000000000000FD2500000000000016260000000000002F26000000000000482600000000000061260000000000007A260000000000009326000000000000AC26000000000000C526000000000000DE26000000000000F7260000000000001127000000000000') AS prov_s from supplier) s1,
(select ps_partkey, ps_suppkey, ps_supplycost, binsearch_ranges_pos(ps_partkey, blob '0100000000000000F401000000000000E803000000000000DC05000000000000D007000000000000C409000000000000B80B000000000000AC0D000000000000A00F000000000000941100000000000088130000000000007C1500000000000070170000000000006419000000000000581B0000000000004C1D000000000000401F000000000000342100000000000028230000000000001C2500000000000010270000000000000429000000000000F82A000000000000EC2C000000000000E02E000000000000D430000000000000C832000000000000BC34000000000000B036000000000000A438000000000000983A0000000000008C3C000000000000803E000000000000744000000000000068420000000000005C4400000000000050460000000000004448000000000000384A0000000000002C4C000000000000204E00000000000014500000000000000852000000000000FC53000000000000F055000000000000E457000000000000D859000000000000CC5B000000000000C05D000000000000B45F000000000000A8610000000000009C630000000000009065000000000000846700000000000078690000000000006C6B000000000000606D000000000000546F00000000000048710000000000003C730000000000003075000000000000247700000000000018790000000000000C7B000000000000007D000000000000F47E000000000000E880000000000000DC82000000000000D084000000000000C486000000000000B888000000000000AC8A000000000000A08C000000000000948E00000000000088900000000000007C920000000000007094000000000000649600000000000058980000000000004C9A000000000000409C000000000000349E00000000000028A00000000000001CA200000000000010A400000000000004A6000000000000F8A7000000000000ECA9000000000000E0AB000000000000D4AD000000000000C8AF000000000000BCB1000000000000B0B3000000000000A4B500000000000098B70000000000008CB900000000000080BB00000000000074BD00000000000068BF0000000000005CC100000000000050C300000000000044C500000000000038C70000000000002CC900000000000020CB00000000000014CD00000000000008CF000000000000FCD0000000000000F0D2000000000000E4D4000000000000D8D6000000000000CCD8000000000000C0DA000000000000B4DC000000000000A8DE0000000000009CE000000000000090E200000000000084E400000000000078E60000000000006CE800000000000060EA00000000000054EC00000000000048EE0000000000003CF000000000000030F200000000000024F400000000000018F60000000000000CF800000000000000FA000000000000F4FB000000000000E8FD000000000000DCFF000000000000D001010000000000C403010000000000B805010000000000AC07010000000000A009010000000000940B010000000000880D0100000000007C0F0100000000007011010000000000641301000000000058150100000000004C170100000000004019010000000000341B010000000000281D0100000000001C1F01000000000010210100000000000423010000000000F824010000000000EC26010000000000E028010000000000D42A010000000000C82C010000000000BC2E010000000000B030010000000000A43201000000000098340100000000008C360100000000008038010000000000743A010000000000683C0100000000005C3E0100000000005040010000000000444201000000000038440100000000002C460100000000002048010000000000144A010000000000084C010000000000FC4D010000000000F04F010000000000E451010000000000D853010000000000CC55010000000000C057010000000000B459010000000000A85B0100000000009C5D010000000000905F010000000000846101000000000078630100000000006C6501000000000060670100000000005469010000000000486B0100000000003C6D010000000000306F010000000000247101000000000018730100000000000C750100000000000077010000000000F478010000000000E87A010000000000DC7C010000000000D07E010000000000C480010000000000B882010000000000AC84010000000000A0860100000000009488010000000000888A0100000000007C8C010000000000708E010000000000649001000000000058920100000000004C9401000000000040960100000000003498010000000000289A0100000000001C9C010000000000109E01000000000004A0010000000000F8A1010000000000ECA3010000000000E0A5010000000000D4A7010000000000C8A9010000000000BCAB010000000000B0AD010000000000A4AF01000000000098B10100000000008CB301000000000080B501000000000074B701000000000068B90100000000005CBB01000000000050BD01000000000044BF01000000000038C10100000000002CC301000000000020C501000000000014C701000000000008C9010000000000FCCA010000000000F0CC010000000000E4CE010000000000D8D0010000000000CCD2010000000000C0D4010000000000B4D6010000000000A8D80100000000009CDA01000000000090DC01000000000084DE01000000000078E00100000000006CE201000000000060E401000000000054E601000000000048E80100000000003CEA01000000000030EC01000000000024EE01000000000018F00100000000000CF201000000000000F4010000000000F4F5010000000000E8F7010000000000DCF9010000000000D0FB010000000000C4FD010000000000B8FF010000000000AC01020000000000A003020000000000940502000000000088070200000000007C09020000000000700B020000000000640D020000000000580F0200000000004C110200000000004013020000000000341502000000000028170200000000001C19020000000000101B020000000000041D020000000000F81E020000000000EC20020000000000E022020000000000D424020000000000C826020000000000BC28020000000000B02A020000000000A42C020000000000982E0200000000008C300200000000008032020000000000743402000000000068360200000000005C38020000000000503A020000000000443C020000000000383E0200000000002C40020000000000204202000000000014440200000000000846020000000000FC47020000000000F049020000000000E44B020000000000D84D020000000000CC4F020000000000C051020000000000B453020000000000A8550200000000009C570200000000009059020000000000845B020000000000785D0200000000006C5F0200000000006061020000000000546302000000000048650200000000003C670200000000003069020000000000246B020000000000186D0200000000000C6F0200000000000071020000000000F472020000000000E874020000000000DC76020000000000D078020000000000C47A020000000000B87C020000000000AC7E020000000000A080020000000000948202000000000088840200000000007C860200000000007088020000000000648A020000000000588C0200000000004C8E0200000000004090020000000000349202000000000028940200000000001C960200000000001098020000000000049A020000000000F89B020000000000EC9D020000000000E09F020000000000D4A1020000000000C8A3020000000000BCA5020000000000B0A7020000000000A4A902000000000098AB0200000000008CAD02000000000080AF02000000000074B102000000000068B30200000000005CB502000000000050B702000000000044B902000000000038BB0200000000002CBD02000000000020BF02000000000014C102000000000008C3020000000000FCC4020000000000F0C6020000000000E4C8020000000000D8CA020000000000CCCC020000000000C0CE020000000000B4D0020000000000A8D20200000000009CD402000000000090D602000000000084D802000000000078DA0200000000006CDC02000000000060DE02000000000054E002000000000048E20200000000003CE402000000000030E602000000000024E802000000000018EA0200000000000CEC02000000000000EE020000000000F4EF020000000000E8F1020000000000DCF3020000000000D0F5020000000000C4F7020000000000B8F9020000000000ACFB020000000000A0FD02000000000094FF02000000000088010300000000007C030300000000007005030000000000640703000000000058090300000000004C0B030000000000410D030000000000') AS prov_ps1 from partsupp) ps,nation,region,
(select min(ps_supplycost) as min_supplycost, bit_or_ints(prov_ps2) as prov_ps2, ps_partkey from (select ps_partkey, ps_suppkey, ps_supplycost, binsearch_ranges_pos(ps_partkey, blob '0100000000000000F401000000000000E803000000000000DC05000000000000D007000000000000C409000000000000B80B000000000000AC0D000000000000A00F000000000000941100000000000088130000000000007C1500000000000070170000000000006419000000000000581B0000000000004C1D000000000000401F000000000000342100000000000028230000000000001C2500000000000010270000000000000429000000000000F82A000000000000EC2C000000000000E02E000000000000D430000000000000C832000000000000BC34000000000000B036000000000000A438000000000000983A0000000000008C3C000000000000803E000000000000744000000000000068420000000000005C4400000000000050460000000000004448000000000000384A0000000000002C4C000000000000204E00000000000014500000000000000852000000000000FC53000000000000F055000000000000E457000000000000D859000000000000CC5B000000000000C05D000000000000B45F000000000000A8610000000000009C630000000000009065000000000000846700000000000078690000000000006C6B000000000000606D000000000000546F00000000000048710000000000003C730000000000003075000000000000247700000000000018790000000000000C7B000000000000007D000000000000F47E000000000000E880000000000000DC82000000000000D084000000000000C486000000000000B888000000000000AC8A000000000000A08C000000000000948E00000000000088900000000000007C920000000000007094000000000000649600000000000058980000000000004C9A000000000000409C000000000000349E00000000000028A00000000000001CA200000000000010A400000000000004A6000000000000F8A7000000000000ECA9000000000000E0AB000000000000D4AD000000000000C8AF000000000000BCB1000000000000B0B3000000000000A4B500000000000098B70000000000008CB900000000000080BB00000000000074BD00000000000068BF0000000000005CC100000000000050C300000000000044C500000000000038C70000000000002CC900000000000020CB00000000000014CD00000000000008CF000000000000FCD0000000000000F0D2000000000000E4D4000000000000D8D6000000000000CCD8000000000000C0DA000000000000B4DC000000000000A8DE0000000000009CE000000000000090E200000000000084E400000000000078E60000000000006CE800000000000060EA00000000000054EC00000000000048EE0000000000003CF000000000000030F200000000000024F400000000000018F60000000000000CF800000000000000FA000000000000F4FB000000000000E8FD000000000000DCFF000000000000D001010000000000C403010000000000B805010000000000AC07010000000000A009010000000000940B010000000000880D0100000000007C0F0100000000007011010000000000641301000000000058150100000000004C170100000000004019010000000000341B010000000000281D0100000000001C1F01000000000010210100000000000423010000000000F824010000000000EC26010000000000E028010000000000D42A010000000000C82C010000000000BC2E010000000000B030010000000000A43201000000000098340100000000008C360100000000008038010000000000743A010000000000683C0100000000005C3E0100000000005040010000000000444201000000000038440100000000002C460100000000002048010000000000144A010000000000084C010000000000FC4D010000000000F04F010000000000E451010000000000D853010000000000CC55010000000000C057010000000000B459010000000000A85B0100000000009C5D010000000000905F010000000000846101000000000078630100000000006C6501000000000060670100000000005469010000000000486B0100000000003C6D010000000000306F010000000000247101000000000018730100000000000C750100000000000077010000000000F478010000000000E87A010000000000DC7C010000000000D07E010000000000C480010000000000B882010000000000AC84010000000000A0860100000000009488010000000000888A0100000000007C8C010000000000708E010000000000649001000000000058920100000000004C9401000000000040960100000000003498010000000000289A0100000000001C9C010000000000109E01000000000004A0010000000000F8A1010000000000ECA3010000000000E0A5010000000000D4A7010000000000C8A9010000000000BCAB010000000000B0AD010000000000A4AF01000000000098B10100000000008CB301000000000080B501000000000074B701000000000068B90100000000005CBB01000000000050BD01000000000044BF01000000000038C10100000000002CC301000000000020C501000000000014C701000000000008C9010000000000FCCA010000000000F0CC010000000000E4CE010000000000D8D0010000000000CCD2010000000000C0D4010000000000B4D6010000000000A8D80100000000009CDA01000000000090DC01000000000084DE01000000000078E00100000000006CE201000000000060E401000000000054E601000000000048E80100000000003CEA01000000000030EC01000000000024EE01000000000018F00100000000000CF201000000000000F4010000000000F4F5010000000000E8F7010000000000DCF9010000000000D0FB010000000000C4FD010000000000B8FF010000000000AC01020000000000A003020000000000940502000000000088070200000000007C09020000000000700B020000000000640D020000000000580F0200000000004C110200000000004013020000000000341502000000000028170200000000001C19020000000000101B020000000000041D020000000000F81E020000000000EC20020000000000E022020000000000D424020000000000C826020000000000BC28020000000000B02A020000000000A42C020000000000982E0200000000008C300200000000008032020000000000743402000000000068360200000000005C38020000000000503A020000000000443C020000000000383E0200000000002C40020000000000204202000000000014440200000000000846020000000000FC47020000000000F049020000000000E44B020000000000D84D020000000000CC4F020000000000C051020000000000B453020000000000A8550200000000009C570200000000009059020000000000845B020000000000785D0200000000006C5F0200000000006061020000000000546302000000000048650200000000003C670200000000003069020000000000246B020000000000186D0200000000000C6F0200000000000071020000000000F472020000000000E874020000000000DC76020000000000D078020000000000C47A020000000000B87C020000000000AC7E020000000000A080020000000000948202000000000088840200000000007C860200000000007088020000000000648A020000000000588C0200000000004C8E0200000000004090020000000000349202000000000028940200000000001C960200000000001098020000000000049A020000000000F89B020000000000EC9D020000000000E09F020000000000D4A1020000000000C8A3020000000000BCA5020000000000B0A7020000000000A4A902000000000098AB0200000000008CAD02000000000080AF02000000000074B102000000000068B30200000000005CB502000000000050B702000000000044B902000000000038BB0200000000002CBD02000000000020BF02000000000014C102000000000008C3020000000000FCC4020000000000F0C6020000000000E4C8020000000000D8CA020000000000CCCC020000000000C0CE020000000000B4D0020000000000A8D20200000000009CD402000000000090D602000000000084D802000000000078DA0200000000006CDC02000000000060DE02000000000054E002000000000048E20200000000003CE402000000000030E602000000000024E802000000000018EA0200000000000CEC02000000000000EE020000000000F4EF020000000000E8F1020000000000DCF3020000000000D0F5020000000000C4F7020000000000B8F9020000000000ACFB020000000000A0FD02000000000094FF02000000000088010300000000007C030300000000007005030000000000640703000000000058090300000000004C0B030000000000410D030000000000') AS prov_ps2 from partsupp) ps2, supplier, nation, region
where s_suppkey = ps_suppkey and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE' group by ps_partkey) m
where p_partkey = ps.ps_partkey and s_suppkey = ps.ps_suppkey and p_size = 15 and p_type like '%BRASS' and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE'
and ps_supplycost = m.min_supplycost and p_partkey = m.ps_partkey
order by s_acctbal desc, n_name, s_name, p_partkey
LIMIT 100) bb;
