SELECT title , m.movieid , cnt 
FROM (
	SELECT cnt , movieid 
	FROM (
		SELECT count(distinct tag)+count(distinct rating) AS cnt,
		r.movieId
		FROM ratings r, tags t 
		WHERE r.movieid = t.movieId 
		GROUP BY r.movieid) c
	ORDER BY cnt DESC 
	LIMIT 10) tc, 
	movies m
WHERE tc.movieid =m.movieid;
