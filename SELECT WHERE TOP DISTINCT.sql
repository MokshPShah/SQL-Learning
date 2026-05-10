use Microsoft

select * from Employee;

select name, salary from Employee;

-- Where Clause

select * from Employee where id = 3

select * from Employee where Department = 'Mern'

select id, name, salary, department from Employee where salary >= 5000000

-- Top Clause

select top(3) * from Employee

select top(3) name, salary, department from Employee

-- Distinct Clause

insert into Employee values (11, 'Sahil', 19, 'Male', 150000, 'Mern', 'Surat')

select * from Employee

select distinct * from Employee