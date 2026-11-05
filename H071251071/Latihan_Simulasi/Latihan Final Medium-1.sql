-- MEDIUM SOAL 1
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM film_actor;

SELECT 
	a.actor_id, 
	LOWER(CONCAT(a.first_name,' ', a.last_name)),
	COUNT(f.film_id),
	ROUND(AVG(f.rental_rate),2),
	MIN(f.length)
FROM actor a
JOIN film_actor fa ON fa.actor_id = a.actor_id
JOIN film f ON f.film_id = fa.film_id
WHERE f.length >= 90
GROUP BY a.actor_id, a.first_name, a.last_name
HAVING COUNT(f.film_id) > 25
ORDER BY COUNT(f.film_id) DESC
LIMIT 5;