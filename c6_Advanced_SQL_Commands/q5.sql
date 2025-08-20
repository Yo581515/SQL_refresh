-- https://www.postgresql.org/docs/9.1/functions-string.html

SELECT first_name, LENGTH(first_name) 
FROM customer;


SELECT UPPER(first_name) || ' ' || UPPER(last_name) AS full_name 
FROM customer;



SELECT LOWER(LEFT(first_name, 1)) || '_' || last_name || '@gmail.com' AS custom_email
FROM customer;