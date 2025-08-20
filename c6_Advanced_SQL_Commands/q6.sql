SELECT title, rental_rate
FROM film
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);


SELECT title FROM film
WHERE film_id IN
(SELECT inventory.film_id
FROM rental
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
WHERE rental_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY title;


SELECT first_name, last_name 
FROM customer AS c
WHERE EXISTS 
(SELECT * FROM payment  p 
WHERE p.amount > 11 AND
p.customer_id = c.customer_id
);