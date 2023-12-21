SELECT movie_title,

CASE
	when movie_facebook_likes < 5000 THEN 'Regular'
    when movie_facebook_likes < 10000 THEN 'Buena'
    when movie_facebook_likes > 10000 THEN 'Very Buena'
    
end as Calificacion_FB

FROM imdb_movies

WHERE color = 'Color'
AND country = 'USA'
and title_year BETWEEN 2000 AND 2010
and Calificacion_FB != 'NULL'
LIMIT 50