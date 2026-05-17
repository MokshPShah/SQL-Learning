-- Create a database named PracticeHubDB
CREATE DATABASE PracticeHubDB;

USE PracticeHubDB;

CREATE TABLE Students (
	StudentID INT PRIMARY KEY,
	StudentName VARCHAR(100) NOT NULL,
	CITY VARCHAR(50) NOT NULL,
	MARKS INT
)

INSERT INTO Students VALUES (1, 'Mohit', 'Delhi', 45),
(2, 'Sujata', 'Amritsar', 88),
(3, 'Mehul', 'Udaipur', 56),
(4, 'Neha', 'Jaipur', 78),
(5, 'Jai', 'Surat', 79);

UPDATE Students SET CITY = 'DELHI' WHERE CITY = 'UDAIPUR';

-- 1. Display all student records.
SELECT * FROM Students;

-- 2. Display only distinct cities.
SELECT DISTINCT CITY FROM Students;

-- 3. Display students whose marks are greater than 70.
SELECT * FROM Students WHERE MARKS > 70;

-- 4. Sort students by marks in descending order.
SELECT * FROM Students ORDER BY MARKS DESC;

-- 5. Display top 3 students.
SELECT TOP(3) * FROM Students;