-- 2. How many films begin with the letter J? The answer should be 20.

SELECT COUNT(*) FROM film
WHERE title ILIKE 'J%'
;