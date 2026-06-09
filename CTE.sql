-- CTE (Common Table Expression) is a temporary result set that you can reference within a SELECT, INSERT, UPDATE, or DELETE statement. It is defined using the WITH keyword and can be used to simplify complex queries, improve readability, and enable recursive queries.

use Microsoft;

select * from employee; 

INSERT INTO employee (id, fullName, Age, Gender, Salary, Department, Location, country) VALUES 
(23, 'John Smith', 30, 'Male', 65000, 'IT', 'New York', 'USA'),
(24, 'Emma Johnson', 28, 'Female', 72000, 'HR', 'London', 'UK'),
(25, 'Michael Brown', 35, 'Male', 80000, 'Finance', 'Toronto', 'Canada'),
(26, 'Sophia Davis', 27, 'Female', 68000, 'IT', NULL, NULL),
(27, 'James Wilson', 32, 'Male', 75000, 'Marketing', NULL, NULL),
(28, 'Olivia Taylor', 29, 'Female', 71000, 'HR', NULL, NULL),
(29, 'William Anderson', 40, 'Male', 95000, 'Finance', NULL, NULL),
(30, 'Ava Thomas', 26, 'Female', 62000, 'IT', NULL, NULL);

select * from employee;

select *, ROW_NUMBER() over (partition by id order by id) as row_num from employee;


-- CTE to delete duplicate records based on the 'id' column
with Lion as (
	select *, ROW_NUMBER() over (partition by id order by id) as id_no from employee
)
delete from Lion where id_no > 1

select * from employee;