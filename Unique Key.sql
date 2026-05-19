-- Unique Key

use Microsoft;

select * from employee;

insert into employee values (18, 'Mukul', 25, 'Male', 800000, 'Software Engineer', 'Banglore', 'India')

alter table employee add constraint UN_ID UNIQUE (id);

update employee set id = 19 where fullName = 'Seema';

alter table employee add constraint UN_ID UNIQUE (id);

-- sp_help 'employee';