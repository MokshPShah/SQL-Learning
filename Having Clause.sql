-- Having Clause: Works with GROUP BY to filter groups based on aggregate conditions.

use Microsoft;

select * from employee;

select department, sum(salary) as TotalSalary from employee group by Department having Department IN ('Developer', 'MERN');

select Department, Location, sum(salary) as TotalSalary from employee group by Department, Location having Location = 'Surat';

select Department, Gender, sum(salary) as TotalSalary from employee where Department IN ('Developer', 'MERN') group by Department

select Department, Gender, sum(salary) as TotalSalary from employee where Gender = 'Male' group by Department, Gender having sum(Salary) > 50000 Order By Department desc;