SELECT movie_title as peli_mas_vista_x_genero,
CASE 
	when gender like 'Action%' then 'Action'
    when gender like 'Crime%' then 'Crime'
    when gender like 'Comedy%' then 'Comedy'
    when gender like 'Drama%' then 'Drama'
    when gender like 'Romance%' then 'Romance'
end as gender1, 
count(movie_title) as cuantas_pelis

from imdb_movies
WHERE gender like 'Action%'
OR gender like 'Crime%'
OR gender like 'Comedy%'
OR gender like 'Drama%'
or gender like 'Romance%'
GROUP by 2
ORDER by max(num_voted_users) desc