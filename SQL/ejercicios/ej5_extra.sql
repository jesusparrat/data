SELECT film, 
(box_office/budget) as proporcion, 
CASE
	WHEN box_office/budget > 5 THEN 'muy exitosas'
    when box_office/budget < 5 then 'casi llegamos'
END as proporcion_taquillas_presu
FROM jamesbond
