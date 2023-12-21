SELECT film, actor, director, box_office as Taquilla,

CASE 
	WHEN budget < 50.0 THEN 'Peli de presu bajo'
    WHEN budget < 70.0 THEN 'Peli de presu medio'
    WHEN budget > 70.0 THEN 'Peli de presu alto'
    
end as Presupuesto

FROM jamesbond

WHERE year > 1970
AND director != 'Roger Spottiswoode'
and actor != 'Sean Connery'

ORDER by box_office DESC 