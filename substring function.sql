-- Substring Functions

use Microsoft;

/* Generate username and password for for the employees from employee table in below format
Username(First three letters of name in capital + first letter of gender in lower +
first two letter of department in capital + first three letters of city in capital)
Password (First two letters of name in lower + age + first three letters of gender in lower +
first letter of department in capital + first two letters of city in lower )*/

SELECT id, fullName, CONCAT(UPPER(SUBSTRING(fullName, 1, 3)), LOWER(SUBSTRING(gender, 1,1)), UPPER(SUBSTRING(Department, 1, 2)), UPPER(SUBSTRING(Location, 1,3)) ) AS USERNAME, CONCAT( LOWER(SUBSTRING(fullName, 1, 2)), LOWER(SUBSTRING(Gender, 1, 3)), UPPER(SUBSTRING(Department, 1, 1)), LOWER(SUBSTRING(Location, 1, 2)) ) AS Password FROM employee;