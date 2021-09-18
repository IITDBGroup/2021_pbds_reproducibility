#!/bin/bash


# q4 - 100,000 mv size
# q5 - 1,000,000 mv size
# q3 - 10,000,000 mv size

# applying provenance sketch (ps)
for i in 0001 001 01 1 5 10 20
do
    for j in q4 q5 q3
    do
    ./time_query.sh stackOverflow q${j}_${i}p_ps.sql 20 3 >> ./result/cost_q${j}_${i}p_ps.txt
    done
done

# applying materialized view (mv)
for i in 0001 001 01 1 5 10 20
do
    for j in q4 q5 q3
    do
    ./time_query.sh stackOverflow q${j}_${i}p_view.sql 20 3 >> ./result/cost_q${j}_${i}p_view.txt
    done
done

# just query
for i in 0001 001 01 1 5 10 20
do
    for j in q4 q5 q3
    do
    ./time_query.sh stackOverflow q${j}_${i}p.sql 20 3 >> ./result/cost_q${j}_${i}p.txt
    done
done


# ps on mv (brin index)
for i in 0001 001 01 1 5 10 20
do
    for j in q4 q5 q3
    do
    ./time_query.sh stackOverflow q${j}_${i}p_ps_on_view_brin.sql 20 3 >> ./result/cost_q${j}_${i}p_ps_on_view_brin.txt
    done
done


# ps on mv (index)
for i in 0001 001 01 1 5 10 20
do
    for j in q4 q5 q3
    do
    ./time_query.sh stackOverflow q${j}_${i}p_ps_on_view_idx.sql 20 3 >> ./result/cost_q${j}_${i}p_ps_on_view_idx.txt
    done
done
