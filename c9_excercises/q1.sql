-- Assessment Test 3
-- Welcome to your final assessment test! This will test your knowledge of the previous section, focused on creating databases and table operations. This test will actually consist of a more open-ended assignment below:

-- Complete the following task:

-- Create a new database called "School" this database should have two tables: teachers and students.

-- The students table should have columns for student_id, first_name,last_name, homeroom_number, phone,email, and graduation year.

-- The teachers table should have columns for teacher_id, first_name, last_name,

-- homeroom_number, department, email, and phone.

-- The constraints are mostly up to you, but your table constraints do have to consider the following:

--  We must have a phone number to contact students in case of an emergency.

--  We must have ids as the primary key of the tables

-- Phone numbers and emails must be unique to the individual.

-- Once you've made the tables, insert a student named Mark Watney (student_id=1) who has a phone number of 777-555-1234 and doesn't have an email. He graduates in 2035 and has 5 as a homeroom number.

-- Then insert a teacher names Jonas Salk (teacher_id = 1) who as a homeroom number of 5 and is from the Biology department. His contact info is: jsalk@school.org and a phone number of 777-555-4321.

-- Keep in mind that these insert tasks may affect your constraints!

-- Best of luck and example scripts are available in the next lecture.
-- List all databases
SELECT datname FROM pg_database;
-- List all tables in the current database
SELECT tablename FROM pg_tables WHERE schemaname = 'public';

-- CREATE DATABASE School;


DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS persons;

CREATE TABLE persons (
    person_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(100) UNIQUE
);

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    person_id INT NOT NULL,
    homeroom_number INT NOT NULL,
    graduation_year INT NOT NULL,
    FOREIGN KEY (person_id) REFERENCES persons(person_id)
    ON DELETE CASCADE
);

CREATE TABLE teachers (
    teacher_id SERIAL PRIMARY KEY,
    person_id INT NOT NULL,
    homeroom_number INT NOT NULL,
    department VARCHAR(50) NOT NULL,
    FOREIGN KEY (person_id) REFERENCES persons(person_id)
    ON DELETE CASCADE
);

INSERT INTO persons (first_name, last_name, phone, email)
VALUES ('Mark', 'Watney', '777-555-1234', NULL);

INSERT INTO persons (first_name, last_name, phone, email)
VALUES ('Jonas', 'Salk', '777-555-4321', 'jsalk@school.org');

INSERT INTO students (person_id, homeroom_number, graduation_year)
VALUES (1, 5, 2025);

INSERT INTO teachers (person_id, homeroom_number, department)
VALUES (2, 5, 'Biology');


SELECT * FROM persons;
SELECT * FROM students;
SELECT * FROM teachers;