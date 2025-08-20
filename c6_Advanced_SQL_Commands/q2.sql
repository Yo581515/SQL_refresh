SELECT EXTRACT(QUARTER FROM payment_date) as payment_quarter from payment
LIMIT 2;


SELECT AGE(payment_date) as payment_age from payment
LIMIT 2;

SELECT TO_CHAR(payment_date, 'YYYY-MM-DD') as payment_age from payment
LIMIT 2;