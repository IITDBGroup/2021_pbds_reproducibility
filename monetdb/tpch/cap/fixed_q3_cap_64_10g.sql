select bit_or_blob(prov_c1) as prov_c1, bit_or_blob(prov_l1) as prov_l1, bit_or_blob(prov_o1) as prov_o1  from (
select * from (select * from (
select l_orderkey, sum(l_extendedprice*(1-l_discount)) as revenue, o_orderdate, o_shippriority, bit_or_ints(prov_c1) as prov_c1, bit_or_ints(prov_l1) as prov_l1, bit_or_ints(prov_o1) as prov_o1
from
(select l_orderkey, l_shipdate, l_extendedprice, l_discount, binsearch_ranges_pos(l_orderkey, blob '0100000000000000A74E0E0000000000A3D21D0000000000C52D2C000000000023BB390000000000428E480000000000E18C55000000000021D9620000000000C10670000000000066E67D0000000000C58A8C000000000060229A0000000000632EA80000000000610EB500000000000377C3000000000060DFCF000000000067E0DE0000000
000066BEE000000000081C1FC000000000020BD0B0100000000C26D1A010000000063352701000000006131350100000000427F43010000000067D4520100000000010D620100000000E23E70010000000025517C0100000000832A8C0100000000E2279A0100000000038CA801000000006435B60100000000E52CC50100000000C682D40100
0000004205E401000000002023F20100000000C2340202000000000666120200000000E6D021020000000025FB30020000000021D03F0200000000E6BC4C020000000044EF5A020000000066DF670200000000E418770200000000837383020000000007F090020000000084A69F0200000000206FAD02000000004204BC0200000000A575CA0
20000000043F5D802000000008031E7020000000046A9F40200000000E212030300000000A20111030000000027F81E030000000000A72E030000000040553D0300000000C19F4C030000000027985A0300000000E4D5670300000000C4F776030000000066008603000000000187930300000000') AS prov_l1 from lineitem) ll1,
(select o_shippriority,o_orderdate,o_orderkey,o_custkey, binsearch_ranges_pos(o_orderkey, blob '010000000000000044400F000000000021271D0000000000A5D72A0000000000C57F3800000000008291440000000000C5F1520000000000C792610000000000E5B36E0000000000A03F7D000000000027DB8A0000000000C4229A0000000000E031A80000000000C559B500000000008595C200000000004338D20000000000E688E10000000
00061D1F00000000000E248FD0000000000421A0B0100000000C10A190100000000A75D26010000000000C1360100000000E3B6440100000000C435530100000000E6C061010000000027856E0100000000465E7B0100000000A00C890100000000678A97010000000067E4A601000000006321B50100000000462CC3010000000005E9D00100
00000005C4DE01000000000314EC010000000026A0FB0100000000C13C0A020000000061CE18020000000024FC260200000000077635020000000004FF42020000000061AE51020000000064695E020000000063896E020000000004577D0200000000A7D58B0200000000C099980200000000626FA70200000000E742B6020000000007BCC40
2000000000005D3020000000023ECE10200000000A203F20200000000A4AB000300000000E17F100300000000A45D1F0300000000007B2E0300000000A6A73C0300000000C3154B0300000000609E590300000000227B680300000000C36576030000000047538403000000000187930300000000') AS prov_o1 from orders) o1,
(select c_custkey, c_mktsegment, binsearch_ranges_pos(c_custkey, blob '
0100000000000000525F000000000000DEC0000000000000421A010000000000167301000000000039C9010000000000692902000000000035840200000000007BE1020000000000693803000000000090910300000000007EE6030000000000734304000000000046A704000000000002FB040000000000074E05000000000029A7050000000
0009A010600000000005061060000000000B9B7060000000000E7050700000000000A6007000000000076C307000000000076210800000000007B8308000000000082E1080000000000DD3B0900000000006FA009000000000034FA0900000000000E580A0000000000A4B80A0000000000551E0B0000000000E97D0B000000000035D20B0000
000000022D0C0000000000C5800C0000000000F6E00C00000000009B3A0D000000000016950D000000000024FE0D000000000069520E0000000000A9B40E00000000004B0D0F000000000066660F00000000007EC30F00000000006B241000000000004F7E10000000000023DA10000000000073371100000000006A92110000000000BEEE110
000000000F34D12000000000080A81200000000006B07130000000000D862130000000000E6C3130000000000571C140000000000647814000000000092D214000000000031281500000000007781150000000000D7D5150000000000BA31160000000000468F16000000000061E3160000000000') AS prov_c1 from customer ) cc1
where c_mktsegment = 'BUILDING' and c_custkey = o_custkey and l_orderkey = o_orderkey and o_orderdate < '1995-03-15' and l_shipdate > '1995-03-15' group by l_orderkey, o_orderdate, o_shippriority) l2 order by revenue desc, o_orderdate) l1 limit 10
) f;

--  blob '0100000000000000A74E0E0000000000A3D21D0000000000C52D2C000000000023BB390000000000428E480000000000E18C55000000000021D9620000000000C10670000000000066E67D0000000000C58A8C000000000060229A0000000000632EA80000000000610EB500000000000377C3000000000060DFCF000000000067E0DE0000000000066BEE000000000081C1FC000000000020BD0B0100000000C26D1A010000000063352701000000006131350100000000427F43010000000067D4520100000000010D620100000000E23E70010000000025517C0100000000832A8C0100000000E2279A0100000000038CA801000000006435B60100000000E52CC50100000000C682D401000000004205E401000000002023F20100000000C2340202000000000666120200000000E6D021020000000025FB30020000000021D03F0200000000E6BC4C020000000044EF5A020000000066DF670200000000E418770200000000837383020000000007F090020000000084A69F0200000000206FAD02000000004204BC0200000000A575CA020000000043F5D802000000008031E7020000000046A9F40200000000E212030300000000A20111030000000027F81E030000000000A72E030000000040553D0300000000C19F4C030000000027985A0300000000E4D5670300000000C4F776030000000066008603000000000187930300000000'
-- blob '010000000000000044400F000000000021271D0000000000A5D72A0000000000C57F3800000000008291440000000000C5F1520000000000C792610000000000E5B36E0000000000A03F7D000000000027DB8A0000000000C4229A0000000000E031A80000000000C559B500000000008595C200000000004338D20000000000E688E1000000000061D1F00000000000E248FD0000000000421A0B0100000000C10A190100000000A75D26010000000000C1360100000000E3B6440100000000C435530100000000E6C061010000000027856E0100000000465E7B0100000000A00C890100000000678A97010000000067E4A601000000006321B50100000000462CC3010000000005E9D0010000000005C4DE01000000000314EC010000000026A0FB0100000000C13C0A020000000061CE18020000000024FC260200000000077635020000000004FF42020000000061AE51020000000064695E020000000063896E020000000004577D0200000000A7D58B0200000000C099980200000000626FA70200000000E742B6020000000007BCC402000000000005D3020000000023ECE10200000000A203F20200000000A4AB000300000000E17F100300000000A45D1F0300000000007B2E0300000000A6A73C0300000000C3154B0300000000609E590300000000227B680300000000C36576030000000047538403000000000187930300000000'
-- blob '0100000000000000525F000000000000DEC0000000000000421A010000000000167301000000000039C9010000000000692902000000000035840200000000007BE1020000000000693803000000000090910300000000007EE6030000000000734304000000000046A704000000000002FB040000000000074E05000000000029A70500000000009A010600000000005061060000000000B9B7060000000000E7050700000000000A6007000000000076C307000000000076210800000000007B8308000000000082E1080000000000DD3B0900000000006FA009000000000034FA0900000000000E580A0000000000A4B80A0000000000551E0B0000000000E97D0B000000000035D20B0000000000022D0C0000000000C5800C0000000000F6E00C00000000009B3A0D000000000016950D000000000024FE0D000000000069520E0000000000A9B40E00000000004B0D0F000000000066660F00000000007EC30F00000000006B241000000000004F7E10000000000023DA10000000000073371100000000006A92110000000000BEEE110000000000F34D12000000000080A81200000000006B07130000000000D862130000000000E6C3130000000000571C140000000000647814000000000092D214000000000031281500000000007781150000000000D7D5150000000000BA31160000000000468F16000000000061E3160000000000'
