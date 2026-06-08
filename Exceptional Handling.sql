-- Exceptional Handling: Always include error handling in your SQL code to manage potential issues gracefully. Use TRY...CATCH blocks to capture and handle errors effectively.

use Microsoft;

begin transaction Salary_emp
begin try
select salary/0 from employee
end try
begin catch
select error_message() as error
end catch

begin transaction Salary_emp_123
begin try
select *, salary * fullName as new_weekly from employee
end try
begin catch
select error_message() as error
end catch