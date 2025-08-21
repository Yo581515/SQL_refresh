-- CAST
SELECT amount, CAST(amount AS INTEGER) AS amount_integer
FROM payment;


SELECT CAST('5' AS INTEGER) AS casted_value;

SELECT '10'::INTEGER AS casted_value2;


SELECT inventory_id, CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) FROM rental;