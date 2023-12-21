SELECT country, continent, adult_literacy_rate, population_in_urban_areas from world_health_org
where adult_literacy_rate BETWEEN 25.0 and 75.0 
	and continent = 'Africa'
	OR continent = 'Europe'
	AND population_in_urban_areas < 50
    