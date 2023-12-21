SELECT *,

CASE 
	WHEN skin_color like '%blue%' and hair_color in ('NA', 'unknown') then 'Es azul pero NO avatar'
    WHEN eye_color LIKE '%g%' then 'Estos colores contienen la g, pero en inglés'
    else 'Los colores de piel, pelo y ojos no son los que me gustan'
end as COLOR

FROM star_wars_characters_2

WHERE homeworld in ('Ryloth', 'Champala')
AND COLOR = 'Es azul pero NO avatar'
ORDER by name