-- Trigger - A trigger is a special kind of stored procedure that automatically executes when an event occurs in the database server. DML triggers execute when a user tries to modify data through a data manipulation language (DML) event. DML events are INSERT, UPDATE, or DELETE statements on a table or view

use Microsoft;

select * from employee;

-- after trigger - An after trigger is a type of trigger that executes after the triggering SQL statement has completed. It is commonly used to perform actions such as logging, auditing, or enforcing business rules after data modifications have been made.
GO
create trigger trg_up on employee
after update
as
begin
	print 'Data updated successfully'
end

update employee set Salary = Salary + 20000 where id = 1;

select * from employee;

GO
create trigger trg_insert on employee
after insert
as
begin 
	print'Data inserted successfully'
end

insert into employee values(23, 'Arnav', 25, 'Male', 75000, 'Marketing', 'Pune', 'India');

select * from employee;

drop trigger trg_up;
drop trigger trg_insert;

-- delete trigger - A delete trigger is a type of trigger that executes in response to a DELETE statement on a table or view. It allows you to define custom actions that should occur when a row is deleted from the specified table or view.

GO
create trigger trg_del on employee
after delete
as
begin
	print 'Data deleted successfully'
end

delete from employee where id = 23;

drop trigger trg_del;

-- instead of trigger - An instead of trigger is a type of trigger that executes in place of the triggering SQL statement. It allows you to define custom actions that should occur instead of the original operation, such as an INSERT, UPDATE, or DELETE statement on a table or view.

GO
create trigger trg_instead on employee
instead of update
as
begin 
	print 'You are not allowed to update any data.'
end

update employee set Location = 'Pune' where id = 1;

select * from employee;

alter table employee disable trigger trg_instead;

update employee set Location = 'Pune' where id = 1;

select * from employee;

alter table employee enable trigger trg_instead;

update employee set Location = 'Surat' where id = 1;

GO
create trigger trg_up_del on employee
instead of insert, delete
as
begin 
	print 'You are not allowed to update or delete any data.'
end

delete from employee where gender = 'Male';

insert into employee values(23, 'Arnav', 25, 'Male', 75000, 'Marketing', 'Pune', 'India');

select * from employee;

drop trigger trg_instead;
drop trigger trg_up_del;