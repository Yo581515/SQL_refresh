-- Challenge 1
SELECT customer.customer_id, first_name, last_name, email, address.district
FROM customer
INNER JOIN address ON customer.address_id = address.address_id
WHERE address.district = 'California'
ORDER BY customer.customer_id;


-- Challenge 2
SELECT film.film_id, film.title, actor.first_name, actor.last_name FROM actor
INNER JOIN film_actor 
ON actor.actor_id = film_actor.actor_id
INNER JOIN film 
ON film_actor.film_id = film.film_id
WHERE actor.first_name = 'Nick' AND actor.last_name = 'Wahlberg';
