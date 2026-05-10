use Microsoft;

select * from Employee;

-- Rename the column name

-- sp stands for stored procedure, and rename is the name of the stored procedure that we want to execute. The first parameter is the name of the table and column that we want to rename, and the second parameter is the new name for the column.

sp_rename 'Employee.Name', 'Full Name';

sp_rename 'Employee.city' , 'Location';

-- rename table

sp_rename 'emp', 'empl';

select * from empl;