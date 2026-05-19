-- Foreign Key

use Microsoft;

select * from Project;

alter table Project add constraint FOR_KEY Foreign Key(pid) references Employee(id);

sp_help 'Project';

select * from Employee;

insert into Project values (21, 'Zomato', 'SQL', 3950);

insert into employee values (21, 'Amita', 45, 'Female', 850000,'HR', 'Udaipur', 'India');

select * from Project;

delete from employee where id = 21;

delete from Project where pid = 21;

sp_help 'employee';

alter table employee drop constraint PRI_KEY_ID;

alter table Project drop constraint FOR_KEY;