SELECT

SUM(case 
	when sector = 'Media' then revenue 
end) as total_ingresos_media,

SUM(case 
	when sector = 'Technology' then revenue 
end) as total_ingresos_technology,

SUM(case 
	when sector = 'Financials' then revenue 
end) as total_ingresos_financias

from fortune
