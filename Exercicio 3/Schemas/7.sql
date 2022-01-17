SELECT DISTINCT g.name
FROM genres g JOIN movies m ON m.genre_id = g.id;