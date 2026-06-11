-- FLOOR() & CEILING() functions are used to round numbers down and up, respectively.

USE Microsoft;

SELECT * FROM employee;

-- The FLOOR() function rounds a number down to the nearest integer. It takes a single argument, which can be a numeric expression or a column name. The syntax for FLOOR() is as follows:

SELECT FLOOR(25.25);

SELECT FLOOR(25.89);

SELECT FLOOR(0.01);

SELECT FLOOR(-10.11);

SELECT FLOOR(25/7);

-- The CEILING() function rounds a number up to the nearest integer. It takes a single argument, which can be a numeric expression or a column name. The syntax for CEILING() is as follows:

SELECT CEILING(25.25);

SELECT CEILING(25.89);

SELECT CEILING(0.01);

SELECT CEILING(-10.11);

SELECT CEILING(25/7);