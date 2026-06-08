-- Transctions in SQL

use Microsoft;

select * from employee;

update employee set Location = 'Pune' where id = 1;
update employee set Department = 'AI Prompt Enginner' where fullName = 'Moksh';
update employee set age = 22 where fullName = 'Vaishali';
update employee set Salary = 40000/0 where fullName = 'Krish';

select * from employee;

begin try
begin transaction
update employee set Location = 'Surat' where id = 1;
update employee set Department = 'MERN Developer' where fullName = 'Moksh';
update employee set age = 25 where fullName = 'Vaishali';
update employee set Salary = 40000/0 where fullName = 'Krish';
print 'Transaction Commited';
end
try begin catch 
rollback transaction
print 'Transaction Rollback';
end catch;

select * from employee;

begin try
begin transaction
update employee set Location = 'Mumbai' where id = 12;
update employee set Department = 'Accountant' where fullName = 'Pooja';
update employee set country = 'India' where fullName = 'Nishant';
update employee set salary = 75000 where fullName = 'Aryan';
print 'Transaction Commited';
end
try begin catch
rollback transaction
print 'Transaction Rollback';
end catch;

select * from employee;