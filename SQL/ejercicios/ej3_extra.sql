SELECT
CASE
    WHEN height <= 200 AND hair_color = 'blond' AND eye_color = 'blue' THEN 'Lado luminoso'
    WHEN height > 200 and hair_color = 'none' AND eye_color = 'yellow' THEN 'Lado Oscuro'
end AS Lado_De_La_Fuerza, name
FROM star_wars_characters_2
WHERE birth_year = 42 and species = 'Human'