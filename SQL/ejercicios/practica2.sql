SELECT gender, count(movie_title) as cuantas_pelis,
count(case when duration < 60 then gender end) as 'Menos de 60min'
from imdb_movies
WHERE duration != 'NULL'
AND gender like '%Action%'
group by gender like '%Action%'