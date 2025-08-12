-- Challenge 1
SELECT customer_id, COUNT(*) AS num_transactions FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= 40;

-- Challenge 2
SELECT customer_id,  SUM(amount) AS total_sales FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100
ORDER BY total_sales DESC