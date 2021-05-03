for i in 2 3 5 7 8 10 15 17 18 19 20 21 21u
do
        ./timeQuery_1g.sh ./nor/q"$i".sql 10 2 > ./result_nor/q"$i"_1g.txt
done;


for i in 2 3 5 7 8 10 15 17 18 19 20 21 21u
do
        ./timeQuery_10g.sh ./nor/q"$i".sql 5 2 > ./result_nor/q"$i"_10g.txt
done;
