SELECT rating, COUNT(*) as f_count
FROM film
GROUP BY rating
ORDER BY f_count;