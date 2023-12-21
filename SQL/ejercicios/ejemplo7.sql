SELECT 
case 
	when artist like '%God%' then 'GOD'
    when artist like '%Death%' then 'DEATH'
    when artist like '%Black%' then 'BLACK'
    else 'NO'
end as artist_religion, COUNT(DISTINCT artist) as artistas_distintos
from rolling_top_albums_1
WHERE artist_religion != 'NO'
group by 1
ORDER by 2 DESC