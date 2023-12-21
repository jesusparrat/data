SELECT municipio,
CASE 
	WHEN total_paro_registrado > 1000 then 'mucho parao'
    WHEN total_paro_registrado > 500 then 'medio parao'
    WHEN total_paro_registrado < 500 then 'poco parao'
END as Comparacion_de_paro
    
FROM gobierno_paro

WHERE codigo_mes = 201801
AND paro_hombre_edad_25__45 BETWEEN 20 AND 1100 and paro_hombre_edad___25 BETWEEN 20 AND 1100 
ORDER by total_paro_registrado DESC