with tabla1 as (SELECT date, channelgrouping as canal, sum(sessions) as num_sesiones from google_analytics_formatdate
where date like '%-09-%'
GROUP by date, canal
order by date ASC)
SELECT date, canal, max(num_sesiones) as max_sesiones from tabla1
group by 1