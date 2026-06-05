-- STORED PROCEDURE is a prepared SQL code which can be saved and reused.

use Microsoft;
GO

create procedure HIKE as select *, (salary * 1.1) as NEW_SALARY from employee;

exec HIKE;

GO
sp_helptext 'HIKE';
GO;

alter procedure HIKE as select *, (salary * 1.2) as NEW_SALARY from employee;

exec HIKE;

drop procedure HIKE;

-- create a salary slip with stored procedure:
GO
create procedure SALARY_SLIP as SELECT e.id, e.fullName, (e.Salary * 0.3) as SPE_ALLOWANCE, (e.Salary * 0.5) as HRA, (e.Salary * 0.4) as INCOME_TAX, (e.age * 25) as PROFESSIAL_TAX, (p.postal * 1.5) as LTA, (c.count * 5) as Bonus, (p.postal + c.count) as Food_allowance  from employee e inner join Project p on e.id = p.pid inner join company c on p.pid = c.cid;

exec SALARY_SLIP;

GO
sp_helptext 'SALARY_SLIP';
GO

create procedure SALARY_SLIP_DEP @a varchar(255) as SELECT e.id, e.fullName, (e.Salary * 0.3) as SPE_ALLOWANCE, (e.Salary * 0.5) as HRA, (e.Salary * 0.4) as INCOME_TAX, (e.age * 25) as PROFESSIAL_TAX, (p.postal * 1.5) as LTA, (c.count * 5) as Bonus, (p.postal + c.count) as Food_allowance  from employee e inner join Project p on e.id = p.pid inner join company c on p.pid = c.cid where @a = e.Department;

exec SALARY_SLIP_DEP @a = 'IT';

select * from employee;

exec SALARY_SLIP_DEP @a = 'MERN';

GO
create procedure salary_t 
@a varchar(255)
as
select department, sum(salary) as total_salary from employee group by Department having Department = @a;

exec salary_t @a = 'IT';