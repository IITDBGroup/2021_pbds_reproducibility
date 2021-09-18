./time_query.sh stackOverflow q9_ps_on_view.sql 20 3 > q9_ps_on_view.txt
./time_query.sh stackOverflow q9.sql 20 3 > q9_result.txt
./time_query.sh stackOverflow q9_ps.sql 20 3 > q9_ps.txt
./time_query.sh stackOverflow q9_view.sql 20 3 > q9_view.txt
./time_query.sh stackOverflow q9_ps_view_brin.sql 20 3 > q9_ps_view_brin.txt
./time_query.sh stackOverflow q9_ps_view_idx.sql 20 3 > q9_ps_view_idx.txt
./time_query.sh stackOverflow q9_view_ps.sql 20 3 > q9_view_ps.txt