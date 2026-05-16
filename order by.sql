-- Order By

use Microsoft;

select * from employee;

-- order by clause is used to sort the result set in either ascending or descending order. By default, it sorts in ascending order.

select * from employee order by fullName;

select * from employee order by fullName desc;

select * from employee order by age;

select * from employee order by age desc;

select * from employee order by Department;

select * from employee order by Department desc;

select * from employee order by salary;

select * from employee order by salary desc;

select * from employee where age > 40 order by salary desc;

select * from employee where age > 30 order by Department, Salary desc;

select * from employee where age > 30 order by Department desc, Salary desc;

select * from employee order by gender, age;