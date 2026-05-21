-- System Functions - String

use Microsoft;

select * from employee;

-- LOWER

select LOWER(fullName) from employee;

select LOWER(Location) from employee;

-- UPPER

select UPPER(fullName) from employee;

-- REVERSE

select REVERSE(fullName) from employee;

select fullName , LOWER(fullName) as lower_case, UPPER(fullName) as upper_case, REVERSE(fullName) as rev_name, LOWER(REVERSE(fullName)) as lower_rev, UPPER(REVERSE(fullName)) as upper_rev from employee;

-- CONCAT

select concat(id, fullName, age, salary, Department, Location) from employee;

select concat(id, '  ', fullName, '  ', age, '  ', salary, '   ', Department, '  ', Location) from employee;

select concat(id, '  ', fullName, ' @ ', age, ' / ', salary, '   ', Department, '  ', Location) as Joined_Query from employee;

-- Moksh id is 1, age is 19, gender is male, is earning Rs. 75000000, is working in Developer Department, and residing in Surat city

select CONCAT(fullName, ' id is ', id, ', age is ', age, ', gender is ', Gender, ', is earning Rs. ', Salary, ', is working in ', Department, ' department, and residing in ', Location, '.') as Information from employee;

select CONCAT(fullName, ' id is ', id, ', age is ', age, ', gender is ', Gender, ', is earning Rs. ', Salary, ', is working in ', Department, ' department, and residing in ', Location, '.') as Information from employee where Gender = 'Male';

select CONCAT(UPPER(fullName), ' id is ', id, ', age is ', age, ', gender is ', LOWER(Gender), ', is earning Rs. ', Salary, ', is working in ', UPPER(Department), ' department, and residing in ', UPPER(Location), '.') as Information from employee where Gender = 'Male';

select CONCAT(UPPER(fullName), ' id is ', id, ', age is ', age, ', gender is ', LOWER(Gender), ', is earning Rs. ', Salary, ', is working in ', UPPER(Department), ' department, and residing in ', UPPER(Location), '.') as Information from employee;

-- REPLACE

select REPLACE('IPL WINNER KKR', 'KKR', 'GT') as Replace_Example;

select *from employee;

select *, REPLACE(location, 'surat', 'Ahmedabad') as New_Location from employee;

-- LENGTH

select fullName, LEN(fullName) as Length_of_Name from employee;

select fullName, LEN(fullName) as Length_of_Name, Department, LEN(Department) as Length_of_Department, Location, LEN(Location) as Length_of_Location from employee;

-- SUBSTRING

select substring('This is SQL class', 1, 4)

select substring('This is SQL class', 9, 3)

select substring('This is SQL class', 13, 5)

Select substring('Capital city of India is New Delhi', 1, 7 )

Select substring('Capital city of India is New Delhi', 17, 5)

Select substring('Capital city of India is New Delhi', 1, 1)