SELECT s.title, COUNT(t.serie_id) as total
FROM series s
INNER JOIN seasons t ON (t.serie_id = s.id)
GROUP BY s.title;