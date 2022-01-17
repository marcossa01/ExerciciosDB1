SELECT a.first_name, a.last_name, m.title
FROM actors a JOIN movies m ON (m.id = a.favorite_movie_id)
WHERE m.awards > 3;