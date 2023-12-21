SELECT continent,
round(avg(gross_income_per_capita),2) as africa_avg_GDP,
sum(population_in_thousands) as total_population, 
count(country) as count_count_ries

from world_health_org
where continent != 'Africa'
group by 1
--HAVING continent != 'Africa'
ORDER by count_count_ries DESC