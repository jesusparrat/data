SELECT name, eye_color, birth_year, 

case 
    when birth_year = 'NA' then 'No concluyente'
	WHEN birth_year > 80 then 'Vive mucho'
    WHEN birth_year <= 80 then 'Vive poco'

end as VIDA

from star_wars_characters_2

WHERE eye_color = 'blue'
AND name LIKE '%s'
AND VIDA != 'No concluyente'
ORDER by name DESC