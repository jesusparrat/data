SELECT director, sum(box_office) as facturacion_tot

from jamesbond 
GROUP by 1
HAVING facturacion_tot > 1500
order by 2 DESC