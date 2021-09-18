for i in 1p 5p 10p 20p
do
    for j in q1 q2 q3
    do
        /home/oracle/datasets/scripts/time_query.sh stackOverflow ${j}_${i}_use_view.sql 20 3 >> ./result/cost_${j}_${i}_use_view.txt
    done
done
