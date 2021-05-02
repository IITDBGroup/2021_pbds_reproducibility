select bit_or_ints(prov_s) as prov_s,
bit_or_ints(prov_p) as prov_p,
 bit_or_ints(prov_ps1) as prov_ps1,
  bit_or_blob(prov_ps2) as prov_ps2  from (
select s_acctbal,s_name,n_name,p_partkey,p_mfgr,s_address,s_phone,s_comment, prov_s, prov_p, prov_ps1, prov_ps2
from (select p_partkey, p_type,p_size,p_mfgr, binsearch_ranges_pos(p_partkey, blob '0100000000000000350C0000000000006A180000000000009F24000000000000D430000000000000093D0000000000003E490000000000007355000000000000A861000000000000DD6D000000000000127A00000000000047860000000000007C92000000000000B19E000000000000E6AA0000000000001BB700000000000050C300000000000085CF000000000000BADB000000000000EFE700000000000024F400000000000059000100000000008E0C010000000000C318010000000000F8240100000000002D31010000000000623D0100000000009749010000000000CC550100000000000162010000000000366E0100000000006B7A010000000000A086010000000000D5920100000000000A9F0100000000003FAB01000000000074B7010000000000A9C3010000000000DECF01000000000013DC01000000000048E80100000000007DF4010000000000B200020000000000E70C0200000000001C1902000000000051250200000000008631020000000000BB3D020000000000F04902000000000025560200000000005A620200000000008F6E020000000000C47A020000000000F9860200000000002E93020000000000639F02000000000098AB020000000000CDB702000000000002C402000000000037D00200000000006CDC020000000000A1E8020000000000D6F40200000000000B01030000000000410D030000000000') AS prov_p from part) p1,
(select s_acctbal, s_name,s_suppkey, s_nationkey,s_address,s_phone,s_comment, binsearch_ranges_pos(s_suppkey, blob '01000000000000009C000000000000003801000000000000D40100000000000070020000000000000C03000000000000A8030000000000004404000000000000E0040000000000007C050000000000001806000000000000B4060000000000005007000000000000EC0700000000000088080000000000002409000000000000C0090000000000005C0A000000000000F80A000000000000940B000000000000300C000000000000CC0C000000000000680D000000000000040E000000000000A00E0000000000003C0F000000000000D80F00000000000074100000000000001011000000000000AC110000000000004812000000000000E41200000000000080130000000000001D14000000000000B9140000000000005615000000000000F2150000000000008F160000000000002B17000000000000C817000000000000641800000000000001190000000000009D190000000000003A1A000000000000D61A000000000000731B0000000000000F1C000000000000AC1C000000000000481D000000000000E51D000000000000811E0000000000001E1F000000000000BA1F0000000000005720000000000000F32000000000000090210000000000002C22000000000000C922000000000000652300000000000002240000000000009E240000000000003B25000000000000D72500000000000074260000000000001127000000000000') AS prov_s from supplier) s1,
(select ps_partkey, ps_suppkey, ps_supplycost, binsearch_ranges_pos(ps_partkey, blob '0100000000000000350C0000000000006A180000000000009F24000000000000D430000000000000093D0000000000003E490000000000007355000000000000A861000000000000DD6D000000000000127A00000000000047860000000000007C92000000000000B19E000000000000E6AA0000000000001BB700000000000050C300000000000085CF000000000000BADB000000000000EFE700000000000024F400000000000059000100000000008E0C010000000000C318010000000000F8240100000000002D31010000000000623D0100000000009749010000000000CC550100000000000162010000000000366E0100000000006B7A010000000000A086010000000000D5920100000000000A9F0100000000003FAB01000000000074B7010000000000A9C3010000000000DECF01000000000013DC01000000000048E80100000000007DF4010000000000B200020000000000E70C0200000000001C1902000000000051250200000000008631020000000000BB3D020000000000F04902000000000025560200000000005A620200000000008F6E020000000000C47A020000000000F9860200000000002E93020000000000639F02000000000098AB020000000000CDB702000000000002C402000000000037D00200000000006CDC020000000000A1E8020000000000D6F40200000000000B01030000000000410D030000000000') AS prov_ps1 from partsupp) ps,nation,region,
(select min(ps_supplycost) as min_supplycost, bit_or_ints(prov_ps2) as prov_ps2, ps_partkey from (select ps_partkey, ps_suppkey, ps_supplycost, binsearch_ranges_pos(ps_partkey, blob '0100000000000000350C0000000000006A180000000000009F24000000000000D430000000000000093D0000000000003E490000000000007355000000000000A861000000000000DD6D000000000000127A00000000000047860000000000007C92000000000000B19E000000000000E6AA0000000000001BB700000000000050C300000000000085CF000000000000BADB000000000000EFE700000000000024F400000000000059000100000000008E0C010000000000C318010000000000F8240100000000002D31010000000000623D0100000000009749010000000000CC550100000000000162010000000000366E0100000000006B7A010000000000A086010000000000D5920100000000000A9F0100000000003FAB01000000000074B7010000000000A9C3010000000000DECF01000000000013DC01000000000048E80100000000007DF4010000000000B200020000000000E70C0200000000001C1902000000000051250200000000008631020000000000BB3D020000000000F04902000000000025560200000000005A620200000000008F6E020000000000C47A020000000000F9860200000000002E93020000000000639F02000000000098AB020000000000CDB702000000000002C402000000000037D00200000000006CDC020000000000A1E8020000000000D6F40200000000000B01030000000000410D030000000000') AS prov_ps2 from partsupp) ps2, supplier, nation, region
where s_suppkey = ps_suppkey and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE' group by ps_partkey) m
where p_partkey = ps.ps_partkey and s_suppkey = ps.ps_suppkey and p_size = 15 and p_type like '%BRASS' and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = 'EUROPE'
and ps_supplycost = m.min_supplycost and p_partkey = m.ps_partkey
order by s_acctbal desc, n_name, s_name, p_partkey
LIMIT 100) bb;
