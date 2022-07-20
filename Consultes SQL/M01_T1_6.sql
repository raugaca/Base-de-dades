# Añadido ON DELETE CASCADE en la fk movie_id en la tabla tb_movie_person, para poder 
# borrar de todas las tablas la información relacionada con la película indicada

DELETE FROM movies.tb_movie 
WHERE movie_title='La Gran Familia Española';

SELECT *
FROM movies.tb_movie;