SELECT movie_title, duration
from imdb_movies
WHERE duration < 60
AND gender like '%Action%'

