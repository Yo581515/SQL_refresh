UPDATE account
SET last_login = created_at
WHERE user_id = 1;
SELECT * FROM account;


SELECT * FROM account_job;

UPDATE account_job
SET hire_date = account.created_at
FROM account
WHERE account.user_id = account_job.user_id;

SELECT * FROM account_job;


UPDATE account
SET last_login = NOW()
WHERE user_id = 1;
SELECT * FROM account;



UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email, created_at, last_login;