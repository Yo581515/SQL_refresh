INSERT INTO account (username, password, email, created_at)
VALUES ('john_doe', 'securepassword', 'john@example.com', NOW());

INSERT INTO job (job_name)
VALUES ('Data Analyst');

INSERT INTO account_job (user_id, job_id, hire_date)
VALUES (1, 1, CURRENT_TIMESTAMP);

INSERT INTO account_job (user_id, job_id, hire_date)
VALUES (100, 100, CURRENT_TIMESTAMP);

SELECT * FROM account;
SELECT * FROM job;
SELECT * FROM account_job;