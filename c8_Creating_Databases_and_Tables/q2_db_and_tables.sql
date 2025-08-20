-- https://www.postgresql.org/docs/current/sql-createtable.html

-- List all databases
SELECT datname FROM pg_database;


-- List all tables in the current database
SELECT tablename FROM pg_tables WHERE schemaname = 'public';