for i in 0001 001 01 1 5 10 20
do
    ./time_query.sh stackOverflow t2_${i}p.sql 20 3 > ./result/cost_t2_${i}p.txt
    ./time_query.sh stackOverflow t2_${i}p_ps.sql 20 3 > ./result/cost_t2_${i}p_ps.txt
    ./time_query.sh stackOverflow t2_${i}p_view.sql 20 3 > ./result/cost_t2_${i}p_view.txt
    ./time_query.sh stackOverflow t2_${i}p_ps_on_view.sql 20 3 > ./result/cost_t2_${i}p_ps_on_view.txt
    ./time_query.sh stackOverflow t2_${i}p_ps_on_view_and_ps.sql 20 3 > ./result/cost_t2_${i}p_ps_on_view_and_ps.txt
done
