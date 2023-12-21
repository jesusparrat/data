SELECT 
STRFTIME('%m', date) as mes,
STRFTIME('%Y', date) as año, 
round(avg(open),1) as media_open,
round(avg(volume_usd),1) AS media_volumen
from bitcoin_daily_rates_formatdate
where año > '2015'
GROUP by 2,1 
--HAVING año > '2015'