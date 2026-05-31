-- IIF Function

use Microsoft;

select * from employee;

select *, IIF(age < 40, 'Software Enginners', 'Management') as Designation from employee;

select *, IIF(salary < 60000, '10% Tax', '30% Tax') as Tax from employee;

select *, IIF(age < 25, 'Intern', IIF(age < 28, 'Software Enginner', IIF(age < 30, 'Senior Software Enginner', IIF(age < 45, 'Tech Lead', IIF(age < 47, 'Team Lead', IIF(age < 49, 'Manager', 'President')))))) as Designation from employee;

select *, IIF(fullName like 'M____', 'LEO', 'Check for your Zodiac Sign') as Zodiac from employee;

select *, IIF(gender = 'male', concat('Mr. ', fullName), concat('Mrs. ', fullName)) as Title from employee order by gender;