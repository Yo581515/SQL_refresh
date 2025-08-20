INSERT INTO job (job_name)
VALUES ('Teacher'), ('Doctor')
RETURNING *;

SELECT * FROM job; 

DELETE FROM job WHERE job_name = 'Doctor'
RETURNING *;
