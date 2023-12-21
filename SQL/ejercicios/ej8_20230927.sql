SELECT  municipio, paro_mujer_edad___45

FROM gobierno_paro

WHERE paro_sin_empleo_anterior = 0
and codigo_mes = 201803
ORDER BY municipio ASC