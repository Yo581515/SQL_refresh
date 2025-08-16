-- Challenge 1
SELECT staff_id, COUNT(*) as number_of_transactions FROM payment
GROUP BY staff_id
ORDER BY number_of_transactions DESC;

-- Challenge 2
SELECT rating, ROUND(AVG(replacement_cost), 2) as average_replacement_cost FROM film
GROUP BY rating
ORDER BY average_replacement_cost DESC;

-- Challenge 3
SELECT customer_id, SUM(amount) as paid_amount FROM payment
GROUP BY customer_id
ORDER BY paid_amount DESC
LIMIT 5;

-- OWN Challenges
SELECT p.customer_id, c.first_name, c.last_name, SUM(p.amount) as paid_amount
FROM payment as p LEFT OUTER JOIN customer as c 
ON p.customer_id = c.customer_id
GROUP BY p.customer_id, c.first_name, c.last_name
ORDER BY paid_amount ASC
LIMIT 5;