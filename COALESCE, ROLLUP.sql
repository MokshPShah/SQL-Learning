-- COALESCE() is a function in SQL that returns the first non-null value from a list of expressions. It is often used to handle null values in queries. The syntax for COALESCE() is as follows:

USE Microsoft;

SELECT COALESCE(NULL, NULL, NULL, 'SQL', NULL, NULL, 'PYTHON') AS Result;