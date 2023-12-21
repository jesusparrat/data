SELECT homeworld, eye_color,
COUNT(eye_color) as cuantos_mismo_color_ojos
from star_wars_characters_2
where homeworld not in ('unknown', 'NA')
and eye_color not in ('unknown', 'NA')
GROUP by homeworld, eye_color
HAVING cuantos_mismo_color_ojos > 1