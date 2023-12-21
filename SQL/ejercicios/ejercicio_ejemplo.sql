/* JESUSITO EJERCICIO: en la BD de google_analytics_formatdate. Filtrar por octubre de 2019.
Crear columna de Fuente web en la cual '.com' es una fuente de 'dominio web internacional, '.es' es un 'dominio web ESPAÑOL' 
y cualquier otra fuente será descartada. Filtrar por canal, cualquiera que no sea refererido será descartado. Queremos buscar 
las páginas, sean .com o .es, las cuales son fuente de nuestra página, sea en usuarios con móvil o tablet, en las cuales tienen
las mismas sesiones iniciadas que usuarios. 
*/

SELECT *,

case 
	when source like '%.com' then 'dominio web internacional'
    when source like '%.es' then 'dominio web ESPAÑOL'
    else 'No necesario'
end as Fuente

FROM google_analytics_formatdate

where date like '2019-10%' 
and devicecategory in ('mobile', 'tablet')
and Fuente != 'No necesario' 
and source not like '%pinterest%'
and users = sessions
and channelgrouping = 'Referral'