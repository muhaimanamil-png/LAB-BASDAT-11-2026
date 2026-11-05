SELECT * FROM film;
SELECT * FROM inventory;

SELECT f.film_id, f.title, f.rating, f.rental_rate, f.replacement_cost
FROM film f
LEFT JOIN inventory i ON i.film_id = f.film_id
WHERE i.inventory_id IS NULL 
AND f.rental_rate > (
	SELECT AVG(fi.rental_rate) FROM film fi
) 
ORDER BY f.replacement_cost DESC
LIMIT 10;
