-- Hands on exam of UDF

use Microsoft;
GO
/* Create a function as Volume to find the the volume of cylindrical object.
V= Pi * r * r * h : take pi = 3.14
after creating the function take r as age and H as id and get the result */

CREATE FUNCTION Volume
(@r FLOAT, @h FLOAT)
RETURNS FLOAT
AS BEGIN
	RETURN (3.14 * @r * @r * @h)
END
GO

SELECT dbo.Volume(2, 7);

SELECT fullName, age AS Radius, id AS Height, dbo.Volume(age, id) AS Volume FROM employee

-- 