select bit_or_ints(prov_s1) as prov_s1, bit_or_blob(prov_l1) as prov_l1, bit_or_blob(prov_l2) as prov_l2 from (
select s_suppkey, s_name, s_address, s_phone, total_revenue, prov_s1, prov_l1, prov_l2
from
(select  s_suppkey, s_name, s_address, s_phone, binsearch_ranges_pos(s_suppkey, blob '01000000000000009C000000000000003801000000000000D40100000000000070020000000000000C03000000000000A8030000000000004404000000000000E0040000000000007C050000000000001806000000000000B4060000000000005007000000000000EC0700000000000088080000000000002409000000000000C0090000000000005C0A000000000000F80A000000000000940B000000000000300C000000000000CC0C000000000000680D000000000000040E000000000000A00E0000000000003C0F000000000000D80F00000000000074100000000000001011000000000000AC110000000000004812000000000000E41200000000000080130000000000001D14000000000000B9140000000000005615000000000000F2150000000000008F160000000000002B17000000000000C817000000000000641800000000000001190000000000009D190000000000003A1A000000000000D61A000000000000731B0000000000000F1C000000000000AC1C000000000000481D000000000000E51D000000000000811E0000000000001E1F000000000000BA1F0000000000005720000000000000F32000000000000090210000000000002C22000000000000C922000000000000652300000000000002240000000000009E240000000000003B25000000000000D72500000000000074260000000000001127000000000000') AS prov_s1 from supplier) ss1,
(select supplier_no, total_revenue, prov_l1, prov_l2 from (
    select l_suppkey as supplier_no, sum(l_extendedprice * (1 - l_discount)) as total_revenue, bit_or_ints(prov_l1) as prov_l1
    from (select l_discount,l_extendedprice,l_suppkey,l_shipdate, binsearch_ranges_pos(l_suppkey, blob '01000000000000009D000000000000003901000000000000D50100000000000073020000000000000E03000000000000AA030000000000004404000000000000E1040000000000007D050000000000001B06000000000000B7060000000000005307000000000000EF070000000000008C080000000000002709000000000000C309000000000000600A000000000000FC0A000000000000990B000000000000350C000000000000D10C0000000000006D0D0000000000000B0E000000000000A70E000000000000430F000000000000E00F0000000000007C100000000000001911000000000000B5110000000000005112000000000000EE1200000000000089130000000000002514000000000000C2140000000000005F15000000000000FB1500000000000097160000000000003317000000000000CF170000000000006C180000000000000719000000000000A3190000000000003F1A000000000000DC1A000000000000781B000000000000141C000000000000B01C0000000000004C1D000000000000E91D000000000000851E000000000000211F000000000000BD1F0000000000005A20000000000000F62000000000000092210000000000002E22000000000000CB2200000000000067230000000000000424000000000000A0240000000000003C25000000000000D82500000000000075260000000000001127000000000000') AS prov_l1
         from lineitem) ll1
    where l_shipdate >= '1996-12-01' and l_shipdate < '1997-03-01'
    group by l_suppkey) l1,
    (select max(total_revenue) as total_revenue2 , bit_or_blob(prov_l2) as prov_l2
    from (select l_suppkey as supplier_no, sum(l_extendedprice * (1 - l_discount)) as total_revenue, bit_or_ints(prov_l2) as prov_l2
          from (select l_discount,l_extendedprice,l_suppkey,l_shipdate,binsearch_ranges_pos(l_suppkey, blob '01000000000000009D000000000000003901000000000000D50100000000000073020000000000000E03000000000000AA030000000000004404000000000000E1040000000000007D050000000000001B06000000000000B7060000000000005307000000000000EF070000000000008C080000000000002709000000000000C309000000000000600A000000000000FC0A000000000000990B000000000000350C000000000000D10C0000000000006D0D0000000000000B0E000000000000A70E000000000000430F000000000000E00F0000000000007C100000000000001911000000000000B5110000000000005112000000000000EE1200000000000089130000000000002514000000000000C2140000000000005F15000000000000FB1500000000000097160000000000003317000000000000CF170000000000006C180000000000000719000000000000A3190000000000003F1A000000000000DC1A000000000000781B000000000000141C000000000000B01C0000000000004C1D000000000000E91D000000000000851E000000000000211F000000000000BD1F0000000000005A20000000000000F62000000000000092210000000000002E22000000000000CB2200000000000067230000000000000424000000000000A0240000000000003C25000000000000D82500000000000075260000000000001127000000000000') AS prov_l2
                from lineitem) ll2
                where l_shipdate >= '1996-12-01' and l_shipdate < '1997-03-01'
                group by l_suppkey) l2
      ) l3
where l1.total_revenue = l3.total_revenue2) l5
where s_suppkey = supplier_no order by s_suppkey) f;
