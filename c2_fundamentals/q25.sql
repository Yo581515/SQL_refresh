-- Challenge 1
SELECT COUNT(*) FROM payment
WHERE amount > 5;

-- Challenge 2
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';

-- Challenge 3.1
SELECT COUNT(DISTINCT district) FROM address
WHERE district != '' OR district IS NOT NULL;

-- Challenge 3.2
SELECT COUNT(DISTINCT district) FROM address;

-- Challenge 4
SELECT DISTINCT district FROM address;

-- Challenge 5
SELECT COUNT(*) FROM film
WHERE rating = 'R' 
AND replacement_cost BETWEEN 5 AND 15;

-- Challenge 6
SELECT COUNT(title) FROM film
WHERE title LIKE '%Truman%';



