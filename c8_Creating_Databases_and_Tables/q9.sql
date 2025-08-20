CREATE TABLE employees(
    emp_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    birthdate DATE CHECK (birthdate > '1900-01-01'),
    hire_date DATE CHECK (hire_date > birthdate),
    salary INTEGER CHECK (salary > 0)
);

INSERT INTO employees (first_name, last_name, birthdate, hire_date, salary)
VALUES ('John', 'Doe', '1980-01-15', '2020-06-01', 60000)
RETURNING *;

-- This insert will fail due to the CHECK constraint on birthdate
INSERT INTO employees (first_name, last_name, birthdate, hire_date, salary)
VALUES ('John', 'Doe', '1800-01-15', '2020-06-01', 60000)
RETURNING *;