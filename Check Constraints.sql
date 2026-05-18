use Microsoft;

select * from employee ORDER BY Salary;

insert into employee values (14, 'Smit', 7, 'Male', 75000, 'IT', 'Surat', 'Canada');

alter table employee add constraint Chk_age CHECK (Age between 18 and 60);

update employee set Age = 60 where fullName = 'Ashok';

sp_help employee;

-- insert into employee values (15, 'Vaishali', 8, 'Female', 80000, 'Accounts', 'Tokyo', 'Japan');

insert into employee values (15, 'Vaishali', 18, 'Female', 80000, 'Accounts', 'Tokyo', 'Japan');

alter table employee add constraint Chk_Salary CHECK (Salary between 5000 and 7500000);

-- insert into employee values (15, 'Seema', 18, 'Female', 4000, 'Banking', 'Rome', 'Italy');

insert into employee values (15, 'Seema', 18, 'Female', 5000, 'Banking', 'Rome', 'Italy');