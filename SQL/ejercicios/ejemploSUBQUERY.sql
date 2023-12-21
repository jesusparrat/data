with tabla1 as (SELECT *, sum(revenue) as suma_ingresos FROM fortune
group by sector)
SELECT count(sector) as num_sectores, sum(suma_ingresos) as media_ingresos from tabla1 

