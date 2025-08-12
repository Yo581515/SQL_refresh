SELECT customer_id, SUM(amount) as total_paid FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100
ORDER BY total_paid DESC
LIMIT 5;



-- OWN Try Outs
SELECT COUNT(*)
FROM (
    SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING SUM(amount) > 100
) AS filtered_customers;

WITH filtered_customers AS (
    SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING SUM(amount) > 100
)
SELECT COUNT(*)
FROM filtered_customers;