SELECT film.film_id, title,  store_id, inventory_id
FROM film
LEFT JOIN inventory
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL
ORDER BY film.film_id, title, store_id, inventory_id
;

-- films that are not in inventory