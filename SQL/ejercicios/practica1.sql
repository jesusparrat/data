SELECT count(movie_title) as cuantas_pelis,
count(case when duration < 60 then movie_title end) as 'Menos de 60',
count(case when duration < 100 then movie_title end) as 'Entre 60-100',
count(case when duration > 100 then movie_title end) as 'Mas de 100'
from imdb_movies
WHERE duration != 'NULL'