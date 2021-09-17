 Limit  (cost=131079.69..131079.70 rows=1 width=47) (actual time=35311.852..35311.855 rows=10 loops=1)
   ->  Sort  (cost=131079.69..131079.69 rows=1 width=47) (actual time=35270.507..35270.508 rows=10 loops=1)
         Sort Key: f0."GROUP_4" DESC, f0."GROUP_3"
         Sort Method: quicksort  Memory: 25kB
         ->  Subquery Scan on f0  (cost=131079.64..131079.68 rows=1 width=47) (actual time=35270.432..35270.453 rows=10 loops=1)
               ->  GroupAggregate  (cost=131079.64..131079.67 rows=1 width=47) (actual time=35270.429..35270.448 rows=10 loops=1)
                     Group Key: f0_1.c_custkey, f0_2.o_orderkey
                     ->  Sort  (cost=131079.64..131079.65 rows=1 width=47) (actual time=35270.399..35270.405 rows=70 loops=1)
                           Sort Key: f0_1.c_custkey, f0_2.o_orderkey
                           Sort Method: quicksort  Memory: 30kB
                           ->  Nested Loop  (cost=121645.72..131079.63 rows=1 width=47) (actual time=493.999..35270.246 rows=70 loops=1)
                                 Join Filter: (f0_2.o_orderkey = f0_4.l_orderkey)
                                 Rows Removed by Join Filter: 315
                                 ->  Nested Loop  (cost=1000.86..9562.28 rows=1 width=51) (actual time=7.302..10.197 rows=70 loops=1)
                                       ->  Gather  (cost=1000.43..9553.93 rows=1 width=39) (actual time=7.267..9.084 rows=11 loops=1)
                                             Workers Planned: 2
                                             Workers Launched: 2
                                             ->  Nested Loop  (cost=0.43..8553.83 rows=1 width=39) (actual time=17.189..43.519 rows=4 loops=
3)
                                                   ->  Parallel Seq Scan on customer f0_1  (cost=0.00..4404.25 rows=63 width=23) (actual tim
e=16.245..36.658 rows=50 loops=3)
                                                         Filter: (c_custkey <@ '{15615,15630,36615,36630,66780,66795,117915,117930,119985,12
0000,126855,126870,128115,128130,144615,144630,147195,147210,148875,148890}'::integer[])
                                                         Rows Removed by Filter: 49950
                                                   ->  Index Scan using fkey_7 on orders f0_2  (cost=0.43..65.86 rows=1 width=20) (actual ti
me=0.126..0.136 rows=0 loops=150)
                                                         Index Cond: (o_custkey = f0_1.c_custkey)
                                                         Filter: (o_orderkey <@ '{1262982,1263588,1544388,1544994,2199588,2200194,2868582,28
69188,2942400,2942982,3043200,3043782,3766788,3767394,4702182,4702788,4721988,4722594,4806594,4807200}'::integer[])
                                                         Rows Removed by Filter: 10
                                       ->  Index Scan using fkey_2 on lineitem f0_3  (cost=0.43..8.34 rows=1 width=12) (actual time=0.060..0
.097 rows=6 loops=11)
                                             Index Cond: (l_orderkey = f0_2.o_orderkey)
                                             Filter: (l_orderkey <@ '{1262631,1263234,1544100,1544676,2199712,2200327,2868645,2869218,294195
4,2942531,3042820,3043393,3766723,3767398,4702599,4703170,4721696,4722247,4806528,4807079}'::integer[])
                                             Rows Removed by Filter: 0
                                 ->  Finalize GroupAggregate  (cost=120644.86..121473.48 rows=1950 width=12) (actual time=491.283..491.783 r
ows=6 loops=70)
                                       Group Key: f0_4.l_orderkey
                                       Filter: (sum(f0_4.l_quantity) > '312'::double precision)
                                       Rows Removed by Filter: 753
                                       ->  Gather Merge  (cost=120644.86..121371.06 rows=5860 width=12) (actual time=491.194..491.840 rows=8
01 loops=70)
                                             Workers Planned: 5
                                             Workers Launched: 5
                                             ->  Partial GroupAggregate  (cost=119644.78..119665.29 rows=1172 width=12) (actual time=464.768
..465.005 rows=219 loops=420)
                                                   Group Key: f0_4.l_orderkey
                                                   ->  Sort  (cost=119644.78..119647.71 rows=1172 width=12) (actual time=464.731..464.797 ro
ws=834 loops=420)
                                                         Sort Key: f0_4.l_orderkey
                                                         Sort Method: quicksort  Memory: 97kB
                                                         Worker 0:  Sort Method: quicksort  Memory: 65kB
                                                         Worker 1:  Sort Method: quicksort  Memory: 98kB
                                                         Worker 2:  Sort Method: quicksort  Memory: 97kB
                                                         Worker 3:  Sort Method: quicksort  Memory: 98kB
                                                         Worker 4:  Sort Method: quicksort  Memory: 67kB
                                                         ->  Parallel Seq Scan on lineitem f0_4  (cost=0.00..119585.04 rows=1172 width=12) (
actual time=72.671..464.345 rows=986 loops=420)
                                                               Filter: (l_orderkey <@ '{1262631,1263234,1544100,1544676,2199712,2200327,2868
645,2869218,2941954,2942531,3042820,3043393,3766723,3767398,4702599,4703170,4721696,4722247,4806528,4807079}'::integer[])
                                                               Rows Removed by Filter: 999216
 Planning Time: 2.105 ms
 JIT:
   Functions: 127
   Options: Inlining false, Optimization false, Expressions true, Deforming true
   Timing: Generation 18.951 ms, Inlining 0.000 ms, Optimization 6.371 ms, Emission 115.784 ms, Total 141.106 ms
 Execution Time: 35920.138 ms
(55 rows)
