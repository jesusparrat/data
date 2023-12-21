SELECT homeworld,

COUNT(name) as count_characters

from star_wars_characters_2
WHERE homeworld != 'NA'
group by 1
ORDER by count_characters DESC