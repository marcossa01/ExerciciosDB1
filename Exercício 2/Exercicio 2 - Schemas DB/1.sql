SELECT s.title, g.name 
FROM series s
INNER JOIN genres g ON s.genre_id = g.id;