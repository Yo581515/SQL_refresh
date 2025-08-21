SELECT customer_id,
CASE
    WHEN (customer_id <= 100) THEN 'Premium'
    WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus'
    ELSE 'Normal'
END AS customer_class
FROM customer
ORDER BY customer_id;


SELECT customer_id,
CASE customer_id
    WHEN 2 THEN 'Winner'
    WHEN 5 THEN 'Second Place'
    ELSE 'Normal'
END AS ruffle_results
FROM customer
ORDER BY customer_id;

SELECT rental_rate,
CASE rental_rate
    WHEN 0.99 THEN 1
    ELSE 0
END
FROM film;


-- experimenting
SELECT
CASE rental_rate
    WHEN 0.99 THEN 1
    ELSE 0
END AS rental_rate_category,
COUNT(*) AS count
FROM film
GROUP BY rental_rate_category
ORDER BY rental_rate_category;


SELECT
SUM(CASE rental_rate
    WHEN 0.99 THEN 1
    ELSE 0
END) AS bargains,
SUM(CASE rental_rate
    WHEN 2.99 THEN 1
    ELSE 0
END) AS regular,
SUM(CASE rental_rate
    WHEN 4.99 THEN 1
    ELSE 0
END) AS premium
FROM film;

-- experimenting
SELECT
rental_rate,
CASE rental_rate
    WHEN 0.99 THEN 1
    ELSE 0
END AS bargains,
CASE rental_rate
    WHEN 2.99 THEN 1
    ELSE 0
END AS regular,
CASE rental_rate
    WHEN 4.99 THEN 1
    ELSE 0
END AS premium
FROM film;