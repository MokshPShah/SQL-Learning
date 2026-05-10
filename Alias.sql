use Microsoft;

select * from Employee;

-- ALIAS (display name) is used to give a temporary name to a table or column for the purpose of a specific SQL query. It does not change the actual name of the table or column in the database. The syntax for using an alias is as follows:

select id as emp_id, name as emp_name, age as DOB, gender as emp_gender, salary as earnings, department as dept from Employee;