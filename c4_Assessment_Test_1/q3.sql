-- 3. What customer has the highest cus tomer ID number whose name starts with an 'E' and has an address ID lower than 500?
-- The answer is Eddie Tomlin

SELECT CONCAT(first_name, ' ', last_name) as full_name FROM customer
WHERE first_name ILIKE 'E%'
AND address_id < 500
ORDER BY customer_id DESC
LIMIT 1
;
