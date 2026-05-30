-- Subqueries

-- Find the 2nd highest salary in the Employee table.
select MAX(Salary) as '2nd Highest salary' from employee where Salary < (select MAX(Salary) from employee);

select MAX(Salary) from employee where Salary < (850000);


-- Find the 3rd highest salary in the Employee table.
select MAX(Salary) as '3rd Highest salary' from employee where
Salary < (select MAX(Salary) from employee
where Salary < (select MAX(Salary) from employee));

select * from employee where salary = (select MAX(Salary) as '3rd Highest salary' from employee where
Salary < (select MAX(Salary) from employee where
Salary < (select MAX(Salary) from employee)));

-- Find the 4th highest salary in the Employee table.
select MAX(Salary) as '4th Highest salary' from employee where
Salary < (select MAX(Salary) from employee where 
Salary < (select MAX(Salary) from employee where
Salary < (select MAX(Salary) from employee )));

-- Find the 8th highest salary in the Employee table.
select min(Salary) as '8th highest salary' from employee where Salary in
(select distinct top(8) Salary from employee order by Salary desc);

select * from employee where Salary = (select min(Salary) as '8th highest salary' from employee where Salary in
(select distinct top(8) Salary from employee order by Salary desc));