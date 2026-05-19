-- Primary Key

use Microsoft;

select * from employee;

alter table employee drop constraint UN_ID;

alter table employee alter column id int not null;

select * from employee where id is null;

update employee set id = 20 where id is null;

alter table employee alter column id int not null;

-- sp_help employee;

alter table employee add constraint PRI_KEY_ID PRIMARY KEY (id);

select * from employee;

insert into employee values (20, 'Meera', 23, 'Female', 90000, 'CMA', 'Surat', 'India');

insert into employee values (21, 'Meera', 23, 'Female', 90000, 'CMA', 'Surat', 'India');

-- Add Primary key to name

select * from employee;

--alter table employee drop constraint PRI_KEY_ID;

--alter table employee alter column fullName varchar(50) not null;

--alter table employee add constraint PRI_NAME PRIMARY KEY (fullName);

--select * from employee;

-- We rollback by setting back id to PRIMARY KEY