SELECT sub_metal_genre, count(sub_metal_genre) as cuantos_x_subgenero

from rolling_top_albums_1
GROUP by 1
HAVING cuantos_x_subgenero > 9
order by 2 DESC