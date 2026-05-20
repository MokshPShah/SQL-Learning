create database PracticeDB;

use PracticeDB;

create table Department 
(DeptID int primary key, DeptName varchar(100) not null)

create table Employee
(EmpID int primary key, Name varchar(100) not null, Age int, Gender varchar(10), Salary int, City varchar(50) default 'Mumbai', DeptID int, constraint CHK_AGE check (Age between 18 and 60), constraint FOR_KEY foreign key (DeptID) references Department(DeptID) );

INSERT INTO Department (DeptID, DeptName) VALUES 
(1, 'IT'), 
(2, 'HR'), 
(3, 'Finance');

INSERT INTO Employee (EmpID, Name, Age, Gender, Salary, City, DeptID) VALUES
(1, 'Rahul', 25, 'Male', 60000, 'Pune', 1),
(2, 'Rahul', 25, 'Male', 60000, 'Pune', 1),
(3, 'Rahul', 25, 'Male', 60000, 'Pune', 1),
(4, 'Pooja', 28, 'Female', 45000, NULL, 2),
(5, 'Sneha', 29, 'Female', 80000, 'Surat', 2),
(6, 'Mohit', 55, 'Male', 120000, 'Mumbai', 1),
(7, 'Ashok', 60, 'Male', 110000, 'Delhi', 3),
(8, 'Karan', 35, 'Male', 90000, 'Mumbai', 3),
(9, 'Sam', 22, 'Male', 55000, NULL, 1);

-- Write a query to find all employees whose Name has exactly 5 characters and ends with the letter 'a'.

select * from Employee where len(name) = 5 and name like '%a';

-- Write a query to update the Salary of an employee. Increase their salary by 5000 ONLY IF their City is currently NULL and their Age is less than 30.

update Employee set Salary = Salary + 50000 where City is null and Age < 30;

-- Write a query to display the Name, Salary, and a new virtual column named Salary_Band.- If Salary >= 100,000, output 'High' - If Salary >= 50,000, output 'Medium' - Else, output 'Low'

select Name, Salary, case when Salary >= 100000 then 'High' when Salary >= 50000 then 'Medium' end as Salary_Band from Employee;

-- Write a query to find the DeptID and the Total Salary (sum) of employees in each department, but only include 'Male' employees in the calculation, and only show departments where that total salary is strictly greater than 150,000. Sort the final result by the total salary in descending order.

select DeptID, sum(Salary) as Total_Salary from Employee where Gender = 'Male' group by DeptID having sum(Salary) > 150000 order by Total_Salary desc;;

-- Write a query to clone all data from the Employee table into a new table called Archived_Employees where the Age is greater than 50.

select * into Archived_Employees from Employee where Age > 50;
select * from Archived_Employees;

-- Write a query using a set operator to display the EmpID and Name of employees who exist in the Employee table but DO NOT exist in the Archived_Employees table. 

select EmpID, Name from Employee EXCEPT select EmpID, Name from Archived_Employees;

select e.EmpID, e.Name from Employee e left join Archived_Employees a on e.EmpID = a.EmpID where a.EmpID is null;

select * from Archived_Employees;

select * from Employee;