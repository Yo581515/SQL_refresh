SELECT payment_id, payment.customer_id, first_name, last_name
FROM payment
INNER JOIN customer 
ON payment.customer_id = customer.customer_id

-- OWN subquery
-- SELECT CONCAT(c.first_name, ' ', c.last_name) as full_name, SUM(p.amount) as total_spent
-- FROM customer as c
-- INNER JOIN payment as p 
-- ON c.customer_id = p.customer_id
-- GROUP BY c.customer_id
-- HAVING SUM(p.amount) > 100
-- ORDER BY total_spent DESC
-- LIMIT 5;