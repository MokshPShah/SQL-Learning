-- Default Constraints

use Microsoft;

select * from employee;

insert into employee (id, fullName, Age, Gender, Salary, Department, Location) values (16, 'Sam', 32, 'Male', 55000, 'IT', 'Delhi');

alter table employee add constraint DF_Country default 'India' for country;

insert into employee (id, fullName, Age, Gender, Salary, Department, Location) values (17, 'Sunny', 42, 'Male', 85000, 'Tally Accounting', 'Mumbai');

sp_help 'employee';