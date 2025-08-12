SELECT 
MAX(replacement_cost), 
MIN(replacement_cost), 
ROUND(AVG(replacement_cost), 2), 
COUNT(*), 
SUM(replacement_cost) 
FROM film;
