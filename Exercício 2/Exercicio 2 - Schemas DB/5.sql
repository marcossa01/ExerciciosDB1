SELECT ac.first_name, ac.last_name, m.title, m.id
FROM actors ac
INNER JOIN actor_movie am ON (am.actor_id = ac.id)
RIGHT JOIN movies m ON (m.id = am.movie_id)
HAVING (m.id = 3);