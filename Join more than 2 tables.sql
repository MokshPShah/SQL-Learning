-- Join more than 2 tables 

use Microsoft;

select * from employee;

select * from Project;

select * from Company;

select * from employee e inner join Project p on e.id = p.pid inner join Company c on p.pid = c.cid;

select e.id, e.fullName, e.Department, e.Gender, e.Location, p.project_name, p.technology, p.postal, c.company_name, c.location, c.count from employee e inner join Project p on e.id = p.pid inner join Company c on p.pid = c.cid;

/* Generate Username and Password from three tables employee e , project p & company c in below format
Username ( First three letter of name in capital + first three letter of city in lower + first two letters of project_name in capital + first letter of company_name in capital )
Password ( First letter of name in lower + age + first two letters of department in capital + first two letters of technology in lower + first three letter of location in capital + count ) */

select e.id, e.fullName, CONCAT( UPPER(SUBSTRING(e.fullName, 1, 3)), LOWER(SUBSTRING(e.Location, 1, 3)), UPPER(SUBSTRING(p.project_name, 1, 2)), UPPER(SUBSTRING(c.company_name, 1, 1))  ) as USERNAME, CONCAT( LOWER(SUBSTRING(e.fullName, 1, 3)), e.Age, UPPER(SUBSTRING(e.Department, 1, 2)), LOWER(SUBSTRING(p.technology, 1, 2)), UPPER(SUBSTRING(c.location, 1, 3)), c.count  ) as PASSWORD from employee e inner join Project p on e.id = p.pid inner join Company c on p.pid = c.cid;