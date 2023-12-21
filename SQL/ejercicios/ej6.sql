SELECT movie_title, director_me, imdb_score, country, title_year from imdb_movies
WHERE country <> 'USA'
and title_year >= 1980
order by imdb_score DESC