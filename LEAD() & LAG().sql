-- LEAD() & LAG() are window functions in SQL Server that allow you to access data from a subsequent or preceding row in the same result set without the need for a self-join.

USE Microsoft;

SELECT * FROM employee;

SELECT fullName, LEAD(fullName) OVER (ORDER BY fullName) AS LEAD_NAME FROM employee;

SELECT fullName, LAG(fullName) OVER (ORDER BY fullName) AS LAG_NAME FROM employee;