SELECT ep.title, ac.first_name, ac.last_name
FROM episodes ep
INNER JOIN actor_episode aep ON (aep.episode_id = ep.id)
RIGHT JOIN actors ac ON (aep.actor_id = ac.id)
WHERE ep.title IS NOT null;
