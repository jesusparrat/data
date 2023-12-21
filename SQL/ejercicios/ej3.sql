SELECT film, director, year, actor FROM jamesbond
WHERE year < 2000
AND
actor <> 'Roger Moore'
AND
director in ('Lewis Gilbert', 'Martin Campbell')