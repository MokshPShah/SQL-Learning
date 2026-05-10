use Microsoft;

select * from Employee;

-- Alter

alter table Employee add country varchar(255);

select * from Employee;

alter table Employee add state varchar(255), email varchar(255), phone bigInt;

alter table Employee drop column state, email, phone;

update Employee set country = 'India';

select * from Employee;