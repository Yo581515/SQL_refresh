SELECT customer_id, SUM(amount) as net_revenue FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100
ORDER BY net_revenue DESC
LIMIT 5;