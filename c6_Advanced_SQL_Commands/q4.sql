-- https://www.postgresql.org/docs/9.5/functions-math.html

SELECT ROUND(rental_rate/replacement_cost, 4) * 100 FROM film;