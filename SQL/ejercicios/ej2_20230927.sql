SELECT name, height,

CASe 
	WHEN height > 199 THEN 'altete'
    WHEN height < 199 THEN 'bajete'
end as Altura

from star_wars_characters_2

WHERE eye_color != 'red'
AND homeworld in ('Chandrila', 'Stewjon', 'Tatooine')
ORDER by height DESC