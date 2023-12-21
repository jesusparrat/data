SELECT country, continent, gross_income_per_capita from world_health_org
where continent = 'Africa'
order by gross_income_per_capita DESC
LIMIT 5