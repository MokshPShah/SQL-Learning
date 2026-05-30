-- Rank and dense_rank functions are used to assign a rank to each row in a result set based on the values of one or more columns. The difference between the two functions is how they handle ties (rows with the same values in the ranking columns).

-- This are the window functions, they are used to perform calculations across a set of rows that are related to the current row. They are often used in conjunction with the OVER() clause to specify the window of rows to be considered for the calculation.

-- Rank function
select *, rank() over (order by salary desc) as salary_rank from employee;

select id, fullName, Location, rank() over (order by salary desc) as salary_rank from employee;

select id, fullName, Location, rank() over (order by Location) as Location_rank from employee;

-- Dense Rank function
select *, dense_rank() over (order by age desc) as age_rank from employee;

select id, fullName, Location, dense_rank() over (order by age desc) as age_rank from employee;

select id, fullName, Location, dense_rank() over (order by fullName desc) as fullName_rank from employee;

select id, fullName, Location, dense_rank() over (order by Location) as Location_rank from employee;

select id, fullName, rank() over (order by salary desc) as sal_rank, DENSE_RANK() over (order by salary desc) as sal_dense_rank from employee;