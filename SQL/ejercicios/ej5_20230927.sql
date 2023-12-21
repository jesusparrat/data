SELECT name, homeworld, species
FROM star_wars_characters_2
WHERE homeworld LIKE 'T%' and homeworld not LIKE '%d' 
AND height > 199
and species != 'Droid'