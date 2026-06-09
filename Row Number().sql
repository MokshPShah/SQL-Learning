-- Row Number() is also a window function that assigns a unique sequential integer to rows within a partition of a result set, starting at 1 for the first row in each partition. It is often used for pagination or to generate unique identifiers for rows in a result set.

use Microsoft;

select * from employee;

select *, row_number() over (order by fullName) as Name_Number from employee;

select *, ROW_NUMBER() over (order by Age) as Age_Number from employee;

SELECT *, ROW_NUMBER() OVER (ORDER BY Department) AS Dept_Number FROM employee;

SELECT *, ROW_NUMBER() OVER (ORDER BY Location) AS Location_Number FROM employee;

-- Partitioning the data by Department and ordering by Age within each department

SELECT *, ROW_NUMBER() OVER (PARTITION BY Department ORDER BY Age) AS Dept_Age_Number FROM employee;

select *, ROW_NUMBER() over (partition by Gender order by fullName) as roll_no from employee;