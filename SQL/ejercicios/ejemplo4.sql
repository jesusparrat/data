SELECT  
case 
	WHEN gender like 'Action%' then 'Género acción'
    else 'Otro Género'
end as Género, 
count(movie_title) as cuantas_pelis_x_genero, 
round(avg(imdb_score),1) as media_rating

from imdb_movies
GROUP by 1
