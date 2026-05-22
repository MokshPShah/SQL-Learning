-- User Defined Functions

use Microsoft;
GO

-- Multiply three numbers
CREATE FUNCTION dbo.MultiplyThreeNumbers
(
	@Num1 INT,
	@Num2 INT,
	@Num3 INT
)
RETURNS INT
AS 
BEGIN 
	RETURN @Num1 * @Num2 * @Num3
END;
GO

SELECT id, Salary, Age, dbo.MultiplyThreeNumbers(id, Salary, Age) AS Result FROM employee;


/* 
create a function to find simple interest
formula: P*R*T/100
*/
GO
CREATE FUNCTION dbo.SI
(
	@P FLOAT, @R FLOAT, @T FLOAT
)
RETURNS FLOAT
AS
BEGIN
	RETURN (@P * @R * @T)/100
END;
GO

SELECT fullName, salary AS Principle, age AS ROI, id AS Time, dbo.SI(salary, age, id) AS Interest FROM employee;

SELECT fullName, salary AS Principle, age AS ROI, id AS Time, dbo.SI(salary, age, id) AS Interest, (Salary + dbo.SI(salary, age, id) ) AS Amount FROM employee;