select
	s_name,
	count(*) as numwait
from
	(select * from supplier where 
    ((s_suppkey >= 960 and s_suppkey< 970) or (s_suppkey >= 2830 and s_suppkey< 2840) or (s_suppkey >= 2860 and s_suppkey< 2870) or (s_suppkey >= 4730 and s_suppkey< 4740) or (s_suppkey >= 5700 and s_suppkey< 5710) or (s_suppkey >= 6020 and s_suppkey< 6030) or (s_suppkey >= 6720 and s_suppkey< 6730) or (s_suppkey >= 6750 and s_suppkey< 6760) or (s_suppkey >= 7320 and s_suppkey< 7330) or (s_suppkey >= 7750 and s_suppkey< 7760) or (s_suppkey >= 9800 and s_suppkey< 9810) or (s_suppkey >= 9930 and s_suppkey< 9940) or (s_suppkey >= 11300 and s_suppkey< 11310) or (s_suppkey >= 12440 and s_suppkey< 12450) or (s_suppkey >= 13000 and s_suppkey< 13010) or (s_suppkey >= 16680 and s_suppkey< 16690) or (s_suppkey >= 16980 and s_suppkey< 16990) or (s_suppkey >= 17440 and s_suppkey< 17450) or (s_suppkey >= 17540 and s_suppkey< 17550) or (s_suppkey >= 17750 and s_suppkey< 17760) or (s_suppkey >= 19010 and s_suppkey< 19020) or (s_suppkey >= 20070 and s_suppkey< 20080) or (s_suppkey >= 20180 and s_suppkey< 20190) or (s_suppkey >= 21430 and s_suppkey< 21440) or (s_suppkey >= 22770 and s_suppkey< 22780) or (s_suppkey >= 24180 and s_suppkey< 24190) or (s_suppkey >= 26760 and s_suppkey< 26770) or (s_suppkey >= 27430 and s_suppkey< 27440) or (s_suppkey >= 28180 and s_suppkey< 28190) or (s_suppkey >= 28240 and s_suppkey< 28250) or (s_suppkey >= 29240 and s_suppkey< 29250) or (s_suppkey >= 29310 and s_suppkey< 29320) or (s_suppkey >= 29680 and s_suppkey< 29690) or (s_suppkey >= 31720 and s_suppkey< 31730) or (s_suppkey >= 31940 and s_suppkey< 31950) or (s_suppkey >= 32290 and s_suppkey< 32300) or (s_suppkey >= 32340 and s_suppkey< 32350) or (s_suppkey >= 32850 and s_suppkey< 32860) or (s_suppkey >= 33150 and s_suppkey< 33160) or (s_suppkey >= 33850 and s_suppkey< 33860) or (s_suppkey >= 34000 and s_suppkey< 34010) or (s_suppkey >= 35730 and s_suppkey< 35740) or (s_suppkey >= 36300 and s_suppkey< 36310) or (s_suppkey >= 36810 and s_suppkey< 36820) or (s_suppkey >= 39860 and s_suppkey< 39870) or (s_suppkey >= 40440 and s_suppkey< 40450) or (s_suppkey >= 40990 and s_suppkey< 41000) or (s_suppkey >= 43800 and s_suppkey< 43810) or (s_suppkey >= 44220 and s_suppkey< 44230) or (s_suppkey >= 44350 and s_suppkey< 44360) or (s_suppkey >= 47600 and s_suppkey< 47610) or (s_suppkey >= 47890 and s_suppkey< 47900) or (s_suppkey >= 48000 and s_suppkey< 48010) or (s_suppkey >= 48440 and s_suppkey< 48450) or (s_suppkey >= 48500 and s_suppkey< 48510) or (s_suppkey >= 49130 and s_suppkey< 49140) or (s_suppkey >= 49470 and s_suppkey< 49480) or (s_suppkey >= 49960 and s_suppkey< 49970) or (s_suppkey >= 53140 and s_suppkey< 53150) or (s_suppkey >= 54130 and s_suppkey< 54140) or (s_suppkey >= 55450 and s_suppkey< 55460) or (s_suppkey >= 55730 and s_suppkey< 55740) or (s_suppkey >= 55920 and s_suppkey< 55930) or (s_suppkey >= 56220 and s_suppkey< 56230) or (s_suppkey >= 56520 and s_suppkey< 56530) or (s_suppkey >= 56700 and s_suppkey< 56710) or (s_suppkey >= 57540 and s_suppkey< 57550) or (s_suppkey >= 58510 and s_suppkey< 58520) or (s_suppkey >= 58620 and s_suppkey< 58630) or (s_suppkey >= 61150 and s_suppkey< 61160) or (s_suppkey >= 63450 and s_suppkey< 63460) or (s_suppkey >= 65630 and s_suppkey< 65640) or (s_suppkey >= 65780 and s_suppkey< 65790) or (s_suppkey >= 67060 and s_suppkey< 67070) or (s_suppkey >= 67840 and s_suppkey< 67850) or (s_suppkey >= 68450 and s_suppkey< 68460) or (s_suppkey >= 69700 and s_suppkey< 69710) or (s_suppkey >= 70020 and s_suppkey< 70030) or (s_suppkey >= 71910 and s_suppkey< 71920) or (s_suppkey >= 73090 and s_suppkey< 73100) or (s_suppkey >= 77310 and s_suppkey< 77320) or (s_suppkey >= 78690 and s_suppkey< 78700) or (s_suppkey >= 78880 and s_suppkey< 78890) or (s_suppkey >= 79330 and s_suppkey< 79340) or (s_suppkey >= 79700 and s_suppkey< 79710) or (s_suppkey >= 80030 and s_suppkey< 80040) or (s_suppkey >= 80460 and s_suppkey< 80470) or (s_suppkey >= 80890 and s_suppkey< 80900) or (s_suppkey >= 81610 and s_suppkey< 81620) or (s_suppkey >= 82690 and s_suppkey< 82700) or (s_suppkey >= 82720 and s_suppkey< 82730) or (s_suppkey >= 89060 and s_suppkey< 89070) or (s_suppkey >= 90490 and s_suppkey< 90500) or (s_suppkey >= 92550 and s_suppkey< 92560) or (s_suppkey >= 94570 and s_suppkey< 94580) or (s_suppkey >= 95330 and s_suppkey< 95340) or (s_suppkey >= 95540 and s_suppkey< 95550) or (s_suppkey >= 96010 and s_suppkey< 96020) or (s_suppkey >= 96090 and s_suppkey< 96100) or (s_suppkey >= 96320 and s_suppkey< 96330))
    ) ss,
	lineitem l1,
	orders,
	nation
where
	s_suppkey = l1.l_suppkey
	and o_orderkey = l1.l_orderkey
	and o_orderstatus = 'F'
	and l1.l_receiptdate > l1.l_commitdate
	and exists (
		select
			*
		from
			lineitem l2
		where
			l2.l_orderkey = l1.l_orderkey
			and l2.l_suppkey <> l1.l_suppkey
	)
	and not exists (
		select
			*
		from
			lineitem l3
		where
			l3.l_orderkey = l1.l_orderkey
			and l3.l_suppkey <> l1.l_suppkey
			and l3.l_receiptdate > l3.l_commitdate
	)
	and s_nationkey = n_nationkey
	and n_name = 'CHINA'
group by
	s_name
order by
	numwait desc,
	s_name
LIMIT 100;
