select
	s_name,
	count(*) as numwait
from
	(select * from supplier where
  ((s_suppkey >= 950 and s_suppkey< 975) or (s_suppkey >= 2825 and s_suppkey< 2875) or (s_suppkey >= 4725 and s_suppkey< 4750) or (s_suppkey >= 5700 and s_suppkey< 5725) or (s_suppkey >= 6000 and s_suppkey< 6025) or (s_suppkey >= 6700 and s_suppkey< 6725) or (s_suppkey >= 6750 and s_suppkey< 6775) or (s_suppkey >= 7300 and s_suppkey< 7325) or (s_suppkey >= 7750 and s_suppkey< 7775) or (s_suppkey >= 9800 and s_suppkey< 9825) or (s_suppkey >= 9925 and s_suppkey< 9950) or (s_suppkey >= 11300 and s_suppkey< 11325) or (s_suppkey >= 12425 and s_suppkey< 12450) or (s_suppkey >= 13000 and s_suppkey< 13025) or (s_suppkey >= 16675 and s_suppkey< 16700) or (s_suppkey >= 16975 and s_suppkey< 17000) or (s_suppkey >= 17425 and s_suppkey< 17450) or (s_suppkey >= 17525 and s_suppkey< 17550) or (s_suppkey >= 17750 and s_suppkey< 17775) or (s_suppkey >= 19000 and s_suppkey< 19025) or (s_suppkey >= 20075 and s_suppkey< 20100) or (s_suppkey >= 20175 and s_suppkey< 20200) or (s_suppkey >= 21425 and s_suppkey< 21450) or (s_suppkey >= 22775 and s_suppkey< 22800) or (s_suppkey >= 24175 and s_suppkey< 24200) or (s_suppkey >= 26750 and s_suppkey< 26775) or (s_suppkey >= 27425 and s_suppkey< 27450) or (s_suppkey >= 28175 and s_suppkey< 28200) or (s_suppkey >= 28225 and s_suppkey< 28250) or (s_suppkey >= 29225 and s_suppkey< 29250) or (s_suppkey >= 29300 and s_suppkey< 29325) or (s_suppkey >= 29675 and s_suppkey< 29700) or (s_suppkey >= 31700 and s_suppkey< 31725) or (s_suppkey >= 31925 and s_suppkey< 31950) or (s_suppkey >= 32275 and s_suppkey< 32300) or (s_suppkey >= 32325 and s_suppkey< 32350) or (s_suppkey >= 32850 and s_suppkey< 32875) or (s_suppkey >= 33150 and s_suppkey< 33175) or (s_suppkey >= 33850 and s_suppkey< 33875) or (s_suppkey >= 34000 and s_suppkey< 34025) or (s_suppkey >= 35725 and s_suppkey< 35750) or (s_suppkey >= 36300 and s_suppkey< 36325) or (s_suppkey >= 36800 and s_suppkey< 36825) or (s_suppkey >= 39850 and s_suppkey< 39875) or (s_suppkey >= 40425 and s_suppkey< 40450) or (s_suppkey >= 40975 and s_suppkey< 41000) or (s_suppkey >= 43800 and s_suppkey< 43825) or (s_suppkey >= 44225 and s_suppkey< 44250) or (s_suppkey >= 44350 and s_suppkey< 44375) or (s_suppkey >= 47600 and s_suppkey< 47625) or (s_suppkey >= 47875 and s_suppkey< 47900) or (s_suppkey >= 48000 and s_suppkey< 48025) or (s_suppkey >= 48425 and s_suppkey< 48450) or (s_suppkey >= 48500 and s_suppkey< 48525) or (s_suppkey >= 49125 and s_suppkey< 49150) or (s_suppkey >= 49450 and s_suppkey< 49475) or (s_suppkey >= 49950 and s_suppkey< 49975) or (s_suppkey >= 53125 and s_suppkey< 53150) or (s_suppkey >= 54125 and s_suppkey< 54150) or (s_suppkey >= 55450 and s_suppkey< 55475) or (s_suppkey >= 55725 and s_suppkey< 55750) or (s_suppkey >= 55900 and s_suppkey< 55925) or (s_suppkey >= 56225 and s_suppkey< 56250) or (s_suppkey >= 56525 and s_suppkey< 56550) or (s_suppkey >= 56700 and s_suppkey< 56725) or (s_suppkey >= 57525 and s_suppkey< 57550) or (s_suppkey >= 58500 and s_suppkey< 58525) or (s_suppkey >= 58600 and s_suppkey< 58625) or (s_suppkey >= 61150 and s_suppkey< 61175) or (s_suppkey >= 63450 and s_suppkey< 63475) or (s_suppkey >= 65625 and s_suppkey< 65650) or (s_suppkey >= 65775 and s_suppkey< 65800) or (s_suppkey >= 67050 and s_suppkey< 67075) or (s_suppkey >= 67825 and s_suppkey< 67850) or (s_suppkey >= 68450 and s_suppkey< 68475) or (s_suppkey >= 69700 and s_suppkey< 69725) or (s_suppkey >= 70025 and s_suppkey< 70050) or (s_suppkey >= 71900 and s_suppkey< 71925) or (s_suppkey >= 73075 and s_suppkey< 73100) or (s_suppkey >= 77300 and s_suppkey< 77325) or (s_suppkey >= 78675 and s_suppkey< 78700) or (s_suppkey >= 78875 and s_suppkey< 78900) or (s_suppkey >= 79325 and s_suppkey< 79350) or (s_suppkey >= 79700 and s_suppkey< 79725) or (s_suppkey >= 80025 and s_suppkey< 80050) or (s_suppkey >= 80450 and s_suppkey< 80475) or (s_suppkey >= 80875 and s_suppkey< 80900) or (s_suppkey >= 81600 and s_suppkey< 81625) or (s_suppkey >= 82675 and s_suppkey< 82700) or (s_suppkey >= 82725 and s_suppkey< 82750) or (s_suppkey >= 89050 and s_suppkey< 89075) or (s_suppkey >= 90475 and s_suppkey< 90500) or (s_suppkey >= 92550 and s_suppkey< 92575) or (s_suppkey >= 94550 and s_suppkey< 94575) or (s_suppkey >= 95325 and s_suppkey< 95350) or (s_suppkey >= 95525 and s_suppkey< 95550) or (s_suppkey >= 96000 and s_suppkey< 96025) or (s_suppkey >= 96075 and s_suppkey< 96100) or (s_suppkey >= 96325 and s_suppkey< 96350))
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
