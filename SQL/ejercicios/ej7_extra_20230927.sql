SELECT artist, album, rating,

CASE 
	WHEN rating >= 4 THEN 'molt bueno'
    WHEN rating < 4 THEN 'bueno'
        
END as Comentario

FROM rolling_top_albums_1

WHERE sub_metal_genre = 'Thrash Metal'
AND release_year BETWEEN 1980 AND 1990
ORDER by rating DESC