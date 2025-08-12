-- Challange 1
SELECT payment_id FROM payment
-- WHERE amount > 0
ORDER BY payment_date ASC
LIMIT 10;

-- Challange 2
SELECT title, length FROM film
ORDER BY  length ASC,length(title) ASC
LIMIT 5;


-- Challange 3
SELECT COUNT(*) FROM film
WHERE length <= 50;