SELECT actor, director, COUNT(*) as num_peliculas, sum(budget) as presu
from jamesbond	
where actor = 'Timothy Dalton'
and director = 'John Glen'