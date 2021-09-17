EXPLAIN ANALYZE
SELECT title, movieid, num_ratings FROM ( 
SELECT title, m.movieid , count(rating) as num_ratings
FROM movies m, ratings r 
WHERE m.movieid=r.movieid 
GROUP BY m.movieid, title) n
ORDER BY num_ratings DESC 
LIMIT 10;
