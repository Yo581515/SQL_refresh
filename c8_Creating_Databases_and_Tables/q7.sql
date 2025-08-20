-- ALTER TABLE job
-- ADD COLUMN column_name;
-- DROP COLUMN column_name;

CREATE TABLE information (
    info_id SERIAL PRIMARY KEY,
    title VARCHAR(500) NOT NULL,
    person VARCHAR(50) NOT NULL UNIQUE
);

SELECT * FROM information;

ALTER TABLE information
RENAME TO new_info;

SELECT * FROM new_info;


ALTER TABLE new_info
RENAME COLUMN person TO people;
SELECT * FROM new_info;


INSERT INTO new_info (title)
VALUES ('Sample Title');

ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL;

INSERT INTO new_info (title)
VALUES ('Sample Title');
SELECT * FROM new_info;