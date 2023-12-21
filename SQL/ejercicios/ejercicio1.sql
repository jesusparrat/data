with  tabla_directores_repes as (SELECT director, count(film) as cuantas_pelis from jamesbond group by 1) 
SELECT avg(cuantas_pelis) as media_pelis_x_director from tabla_directores_repes