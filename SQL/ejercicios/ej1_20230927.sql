SELECT name, year

from videogames_games

WHERE year > 1994
and publisher = 'Nintendo'
AND name <> 'Donkey Konga 2'
and eu_sales BETWEEN 0 AND 0.32
and na_sales BETWEEN 0 AND 0.31
and other_sales BETWEEN 0 AND 0.3

ORDER by year