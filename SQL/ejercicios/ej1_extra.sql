SELECT *, 
CASE
	WHEN bond_actor_salary > 1.5 THEN 'Salario superado'
    ELSE 'Salario no superado'
END AS Salario
FROM jamesbond
where director = 'Terence Young' AND actor = 'Sean Connery'
and budget > 10 AND year BETWEEN 1960 AND 2000
