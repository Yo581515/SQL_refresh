SELECT * FROM inventory
LEFT JOIN film
ON inventory.film_id = film.film_id
WHERE film.film_id IS NULL;

-- if film is in inventory db, it means it is in film db