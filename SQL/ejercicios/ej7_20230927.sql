SELECT movie_title, duration, 

CASE 
	WHEN duration BETWEEN 120 and 201 THEN 'SON MUY LARGAS'
    WHEN duration < 120 THEN 'son cortas'
END as Duracion

FROM imdb_movies

WHERE country = 'USA'
AND Duracion != 'NULL'

ORDER by duration DESC