./timeQuery_1g.sh ./400/q17_use_1g.sql 10 2 > ./result/q17_use_400_1g.txt
./timeQuery_1g.sh ./64/q17_use_1g.sql 10 2 > ./result/q17_use_64_1g.txt

./timeQuery_1g.sh ./400/q2_cap_1g.sql 10 2 > ./result/q2_cap_400_1g.txt

./timeQuery_1g.sh ./10k/q2_cap_1g.sql 10 2 > ./result/q2_cap_10k_1g.txt
./timeQuery_10g.sh ./10k/q2_cap_10g.sql 5 2 > ./result/q2_cap_10k_10g.txt

./timeQuery_1g.sh ./10k/q8_cap_1g.sql 10 2 > ./result/q8_cap_10k_1g.txt
./timeQuery_1g.sh ./10k/q21_cap_1g.sql 10 2 > ./result/q21_cap_10k_1g.txt

./timeQuery_1g.sh ./10k/q20_cap_10g.sql 5 2 > ./result/q20_cap_10k_10g.txt
./timeQuery_1g.sh ./10k/q21_cap_10g.sql 5 2 > ./result/q21_cap_10k_10g.txt
