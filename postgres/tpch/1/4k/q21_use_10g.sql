select
	s_name,
	count(*) as numwait
from
	(select * from supplier
    WHERE (s_suppkey <@ '{950,975,2825,2875,4725,4750,5700,5725,6000,6025,6700,6725,6750,6775,7300,7325,7750,7775,9800,9825,9925,9950,11300,11325,12425,12450,13000,13025,16675,16700,16975,17000,17425,17450,17525,17550,17750,17775,19000,19025,20075,20100,20175,20200,21425,21450,22775,22800,24175,24200,26750,26775,27425,27450,28175,28200,28225,28250,29225,29250,29300,29325,29675,29700,31700,31725,31925,31950,32275,32300,32325,32350,32850,32875,33150,33175,33850,33875,34000,34025,35725,35750,36300,36325,36800,36825,39850,39875,40425,40450,40975,41000,43800,43825,44225,44250,44350,44375,47600,47625,47875,47900,48000,48025,48425,48450,48500,48525,49125,49150,49450,49475,49950,49975,53125,53150,54125,54150,55450,55475,55725,55750,55900,55925,56225,56250,56525,56550,56700,56725,57525,57550,58500,58525,58600,58625,61150,61175,63450,63475,65625,65650,65775,65800,67050,67075,67825,67850,68450,68475,69700,69725,70025,70050,71900,71925,73075,73100,77300,77325,78675,78700,78875,78900,79325,79350,79700,79725,80025,80050,80450,80475,80875,80900,81600,81625,82675,82700,82725,82750,89050,89075,90475,90500,92550,92575,94550,94575,95325,95350,95525,95550,96000,96025,96075,96100,96325,96350}'::int[])) s,
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
