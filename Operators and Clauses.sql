/* Operators and Clauses: SELECT, FROM, WHERE, AND, OR, NOT, IN, LIKE, BETWEEN, IS NULL, IS NOT NULL, Intersect, Union, Union All, Greater than, Greater than equal to, Less than, Less than equal to
*/

use Microsoft;

-- And Operator
select * from Employee where AGE > 30 and Salary > 50000;

select * from Employee where Department = 'MERN' and Location = 'Surat';

select * from Employee where Gender = 'male' and Location = 'Surat';

select * from Employee where Gender = 'male' and Location = 'Surat' and Department = 'Developer';

-- OR Operator

select * from Employee where AGE > 30 or Salary > 50000;

select * from Employee where Department = 'MERN' or Location = 'Surat';

-- NOT Operator

select * from employee where not Department = 'MERN';

select * from Employee where not (Department = 'MERN' or Location = 'PAL');

select * from Employee where Country != 'India';

select * from Employee where Gender <> 'Female';

-- Greater than and Greater than equal to

select * from Employee where salary > 400000;

select * from Employee where age >= 40;

-- Less than and Less than equal to

select * from Employee where salary < 400000;

select * from Employee where age <= 40;

-- Intersect

select * from Employee where gender = 'male'
Intersect
select * from Employee where Department = 'Developer'
Intersect
select * from Employee where Age > 18;
