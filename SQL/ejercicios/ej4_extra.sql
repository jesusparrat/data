SELECT name, eye_color,
CASE
    WHEN eye_color like ('%,%') THEN 'Si'
    when eye_color = 'unknown' THEN 'Desconocido'
    ELSE 'No'
    end as heterocromia
FROM star_wars_characters_2
WHERE name != 'BB8'
order by name
