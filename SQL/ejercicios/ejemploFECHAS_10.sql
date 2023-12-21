SELECT channelgrouping,
STRFTIME('%m', date) as mes,
--STRFTIME('%Y', date) as año, 
sum(sessions) as total_sessions, 
sum(case when devicecategory = 'mobile' then sessions end) as mobile_sessions,
sum(case when devicecategory = 'tablet' then sessions end) as tablet_sessions,
sum(case when devicecategory = 'desktop' then sessions end) as desktop_sessions
FROM google_analytics_formatdate
WHERE mes = '10'
group by channelgrouping
order by total_sessions desc