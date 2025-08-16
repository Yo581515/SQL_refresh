SELECT customer_id, COUNT(*) as number_of_transactions, SUM(amount) as total_amount
FROM payment
GROUP BY customer_id
ORDER BY total_amount DESC; 


SELECT customer_id, staff_id, SUM(amount) as total_amount FROM payment
GROUP BY customer_id, staff_id
ORDER BY customer_id, staff_id;

SELECT DATE(payment_date) as payment_date, SUM(amount) as total_amount
FROM payment
GROUP BY payment_date
ORDER BY total_amount DESC;