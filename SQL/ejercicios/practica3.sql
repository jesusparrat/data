SELECT date, min(high) as minimo_high, 
round((open+high+low+close)/4,0) media_diaria_high
from bitcoin_daily_rates_formatdate
where date like '2018%'