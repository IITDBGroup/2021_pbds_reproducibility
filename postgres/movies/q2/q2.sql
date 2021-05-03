SELECT COUNT(*) AS cnt FROM (SELECT title, m.movieid , count(rating) as num_ratings FROM movies m, ratings r WHERE m.movieid=r.movieid  GROUP BY m.movieid, title) c1 where num_ratings >=63300;
