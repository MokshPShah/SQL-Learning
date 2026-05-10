/* Operators and Clauses: SELECT, FROM, WHERE, AND, OR, NOT, IN, LIKE, BETWEEN, IS NULL, IS NOT NULL, Intersect, Union, Union All, Greater than, Greater than equal to, Less than, Less than equal to
*/

use Microsoft;

-- And Operator
SELECT * from employee where AGE > 30 and Salary > 50000;

SELECT * from employee where Department = 'MERN' and Location = 'Surat';

SELECT * from employee where Gender = 'male' and Location = 'Surat';

SELECT * from employee where Gender = 'male' and Location = 'Surat' and Department = 'Developer';

-- OR Operator

SELECT * from employee where AGE > 30 or Salary > 50000;

SELECT * from employee where Department = 'MERN' or Location = 'Surat';

-- NOT Operator

SELECT * from employee where not Department = 'MERN';

SELECT * from employee where not (Department = 'MERN' or Location = 'PAL');

SELECT * from employee where Country != 'India';

SELECT * from employee where Gender <> 'Female';

-- Greater than and Greater than equal to

SELECT * from employee where salary > 400000;

SELECT * from employee where age >= 40;

-- Less than and Less than equal to

SELECT * from employee where salary < 400000;

SELECT * from employee where age <= 40;

-- Intersect

SELECT * from employee where gender = 'male'
Intersect
SELECT * from employee where Department = 'Developer'
Intersect
SELECT * from employee where Age > 18;

-- UNION - It combines the result of two or more SELECT statements into a single result set. It eliminates duplicate rows from the result set.

SELECT * from employee where Department = 'MERN'
UNION
SELECT * from employee where Gender = 'male'
UNION
SELECT * from employee where Location = 'Surat'

-- UNION ALL - It combines the result of two or more SELECT statements into a single result set. It does not eliminate duplicate rows from the result set.

SELECT * from employee where Department = 'MERN'
UNION ALL
SELECT * from employee where Gender = 'male'
UNION ALL
SELECT * from employee where Location = 'Surat'

-- EXCEPT - It returns the rows from the first SELECT statement that are not present in the second SELECT statement.

SELECT * FROM employee WHERE Gender = 'Male'
EXCEPT
SELECT * FROM employee WHERE Department = 'MERN'

-- LIKE - It is used to search for a specified pattern in a column.

SELECT * FROM employee WHERE fullName LIKE 'A%'; -- Names starting with A

SELECT * FROM employee WHERE fullName LIKE '%A'; -- Names ending with A

SELECT * FROM employee WHERE age LIKE '2%';

SELECT * FROM employee WHERE fullName LIKE '_a%'

SELECT * FROM employee WHERE fullName LIKE '%a_'

SELECT * FROM employee WHERE fullName LIKE '__m%'

SELECT * FROM employee WHERE fullName LIKE '%a__'

SELECT * FROM employee WHERE fullName LIKE '%a%'

SELECT * FROM employee WHERE fullName LIKE 'as%'

-- IN - It is used to specify multiple values in a WHERE clause.

SELECT * FROM employee WHERE Department IN ('MERN', 'CMA');

SELECT * FROM employee WHERE Location IN ('Surat', 'PAL');

SELECT * FROM employee WHERE id IN (1, 2, 3, 4, 9) AND salary > 70000;