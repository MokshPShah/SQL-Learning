--Write the SQL queries to create a new database named TechCorp_DB and select it for use. (2 Marks)

CREATE DATABASE TechCorp_DB;

USE TechCorp_DB;

-- Write a query to create a table named Staff with the following columns: id (int), FullName (varchar), Age (int), Gender (varchar), Salary (int), Department (varchar), City (varchar). (3 Marks)
CREATE TABLE Staff(
	id INT PRIMARY KEY,
	fullName VARCHAR(255) NOT NULL,
	age INT,
	gender VARCHAR(50),
	salary INT,
	department VARCHAR(255) NOT NULL,
	city VARCHAR(255) NOT NULL
)

-- Data Setup:
-- After creating the table, please insert the following data into the Staff table so you can test the queries for the rest of the test:
INSERT INTO Staff VALUES (1, 'Moksh', 19, 'Male', 75000, 'IT', 'Surat'),
(2, 'Pooja', 21, 'Female', 45000, 'HR', 'Surat'),
(3, 'Rahul', 28, 'Male', 80000, 'IT', 'Mumbai'),
(4, 'Meera', 24, 'Female', 60000, 'Finance', 'Surat'),
(5, 'Karan', 30, 'Male', 90000, 'Finance', 'Delhi'),
(6, 'Sneha', 26, 'Female', 55000, 'HR', 'Surat')

-- Write a query to add a new column named Email with the data type varchar(255) to the Staff table.
ALTER TABLE Staff ADD email VARCHAR(255)

-- Write a query to change the data type of the id column in the Staff table from int to varchar(255). (2 Marks)

ALTER TABLE Staff ALTER COLUMN id VARCHAR(255);
sp_help 'Staff';

-- Write a query to find all staff members whose City is 'Surat' and Salary is greater than 50000. (2 Marks)

SELECT * FROM Staff WHERE city = 'Surat' AND salary > 50000;

-- Write a query to display the total (sum) salary of staff members, grouped by their Department. (2 Marks)

SELECT department, SUM(salary) as TotalSalary FROM Staff GROUP BY department;

-- Write a query to display the top 3 highest-paid staff members in descending order of their salary. (2 Marks)

SELECT TOP(3) * FROM Staff ORDER BY salary DESC; 

-- Write a query to find all staff members whose FullName starts with the letter 'M'. (2 Marks)

SELECT * FROM Staff WHERE fullName LIKE 'M%';

-- Write a query to clone (copy) all data from the Staff table into a new backup table named Backup_Staff. (3 Marks)

SELECT * INTO Backup_Staff FROM Staff;

SELECT * FROM Backup_Staff;