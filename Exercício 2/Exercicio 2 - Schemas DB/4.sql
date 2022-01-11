SELECT g.name, COUNT(m.genre_id) as total
FROM genres g
INNER JOIN movies m ON (m.genre_id = g.id)
GROUP BY g.name
HAVING total >= 3;