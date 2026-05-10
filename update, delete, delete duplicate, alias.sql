-- update, delete, delete duplicate, alias

use Microsoft;

-- 1. Update 

update Employee set salary = 50000 where Department = 'CMA';

insert Employee (name, gender) values ('Hemesh', 'Male'), 
('Suresh', 'Male'), 
('Rames', 'Female')

update Employee set city = 'Mumbai' where city is null;

update Employee set Salary = 350000 where Salary is null;
update Employee set Department = 'Sales' where Department is null;

select * from Employee;

-- 2. Delete

delete from emp where name = 'Hemesh';

delete from emp where id is null;

select * from emp;

delete from Employee where name = 'Hemesh';

delete from Employee where id is null;

select * from Employee;

-- 3. Delete Duplicate

select * from emp where name = 'sahil';

delete top(2) from emp where name = 'sahil';

select * from Employee where name = 'sahil';

delete top(2) from Employee where name = 'sahil';