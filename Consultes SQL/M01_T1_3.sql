SELECT movies.tb_genre.genre_name, COUNT(movies.tb_genre.genre_id)
FROM movies.tb_movie
LEFT JOIN movies.tb_genre ON movies.tb_movie.movie_genre_id=movies.tb_genre.genre_id
GROUP BY movies.tb_genre.genre_name
ORDER BY COUNT(movies.tb_genre.genre_id) DESC;