-- Challenge 1

SELECT DISTINCT rating
FROM film;

SELECT
    rating,
    CASE rating
        WHEN 'G' THEN 1
        ELSE 0
    END AS g,
    CASE rating
        WHEN 'PG' THEN 1
        ELSE 0
    END AS pg,
    CASE rating
        WHEN 'PG-13' THEN 1
        ELSE 0
    END AS pg13,
    CASE rating
        WHEN 'R' THEN 1
        ELSE 0
    END AS r,
    CASE rating
        WHEN 'NC-17' THEN 1
        ELSE 0
    END AS nc17
FROM film;


SELECT
    SUM(CASE rating
        WHEN 'G' THEN 1
        ELSE 0
    END) AS g,
    SUM(CASE rating
        WHEN 'PG' THEN 1
        ELSE 0
    END) AS pg,
    SUM(CASE rating
        WHEN 'PG-13' THEN 1
        ELSE 0
    END) AS pg13,
    SUM(CASE rating
        WHEN 'R' THEN 1
        ELSE 0
    END) AS r,
    SUM(CASE rating
        WHEN 'NC-17' THEN 1
        ELSE 0
    END) AS nc17
FROM film;