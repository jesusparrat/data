SELECT title_year, movie_title, actor_1_me, actor_1_facebook_likes, imdb_score
FROM imdb_movies
where gender like 'Action%'
and actor_1_facebook_likes > 10000
and title_year < 2013
and imdb_score >= 8