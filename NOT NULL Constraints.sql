-- Constraints: NOT NULL, UNIQUE, PRIMARY KEY, FOREIGN KEY, CHECK, DEFAULT

use Microsoft;

select * from employee;

insert into employee (fullName, Age, Gender, Department, Salary) values('Nishant', 25, 'Male', 'Software Engineer', 50000);

-- NOT NULL
alter table employee alter column id int not null;

update employee set id = 12 where fullName = 'Nishant';

-- sp_help employee;

-- Changing back to null

alter table employee alter column id int null;

insert into employee (fullName, Age, Gender, Department, Salary) values('Sandeep', 23, 'Male', 'Software Designer', 45000);

select * from employee;