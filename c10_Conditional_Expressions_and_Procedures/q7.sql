-- IMPORT AND EXPORT FROM A CSV FILE

CREATE TABLE csv_person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    city VARCHAR(100)
);

SELECT * FROM csv_person;