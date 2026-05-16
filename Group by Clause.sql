-- Group by Clause

use Microsoft;

select * from employee;

select sum(salary) as TotalSalary from employee;

select sum(salary) as TotalSalary, Department from employee group by Department;

select sum(salary) as TotalSalary, Department from employee group by Department having sum (salary) > 100000;

select department, gender, sum(salary) as TotalSalary from employee group by department, gender;