-- JOINS

USE Microsoft;
GO

SELECT * FROM employee;

SELECT * FROM Project;

INSERT INTO Project VALUES (30, 'Reliance', 'MSSQL', 4599), (31, 'Tata', 'MySQL', 2559), (32, 'VI', 'Networking', 1425), (33, 'Apex', 'Marketing', 3645);

-- INNER JOIN: Common records in both tables

select * from employee inner join Project on employee.id = Project.pid;

select * from employee e inner join Project p on e.id = p.pid;

select e.id, e.fullName, e.salary, e.department, e.Location, p.project_name, p.technology, p.postal from employee e inner join Project p on e.id = p.pid;

select e.id, e.fullName, e.salary, e.department, e.Location, p.project_name, p.technology, p.postal from employee e inner join Project p on e.id = p.pid where e.Gender = 'male';

select e.id, e.fullName, e.salary, e.department, e.Location, p.project_name, p.technology, p.postal from employee e inner join Project p on e.id = p.pid where e.Gender = 'male' order by p.project_name;

select p.technology, sum(e.salary) as total_salary from employee e inner join Project p on e.id = p.pid where p.technology LIKE 'A%' group by p.technology;

-- clonning this table 

select e.id, e.fullName, e.Salary, e.department,e.Country, p.project_name, p.technology, p.postal from employee e inner join Project p on e.id = p.pid;

select e.id, e.fullName, e.Salary, e.department,e.Country, p.project_name, p.technology, p.postal into empj from employee e inner join Project p on e.id = p.pid;

select * from empj;