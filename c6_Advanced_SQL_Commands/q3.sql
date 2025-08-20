-- Challenge 1: Extracting Month from Payment Date
SELECT DISTINCT(TO_CHAR(payment_date, 'MONTH')) as payment_month from payment;

-- Challenge 2: How many payments occured on a monday?
SELECT COUNT(*) as monday_payments FROM payment WHERE EXTRACT(DOW FROM payment_date) = 1;