-- Student Management Database

create database college_db;

use college_db;

create table students (
	student_id int primary key,
	name varchar(50) not null,
	age int, 
	city varchar(50),
	marks int
);

insert into students values (01, 'Moksh', 19, 'Surat', 98),
(02, 'Rohit', 20, 'Ahmedabad', 38),
(03, 'Priya', 18, 'Vadodara', 92),
(04, 'Moksh', 21, 'Surat', 88),
(05, 'Sneha', 19, 'Ahmedabad', 40),
(06, 'Rahul', 22, 'Vadodara', 85),
(07, 'Anjali', 20, 'Surat', 91),
(08, 'Moksh', 21, 'Ahmedabad', 22),
(09, 'Pooja', 19, 'Vadodara', 93),
(10, 'Karan', 20, 'Surat', 14);

-- Show all data
select * from students;

-- Show only name and marks
select name, marks from students;

-- Show students with marks > 75
select * from students where marks > 75;

-- Show students from your city
select * from students where city = 'Surat';

-- Use alias for column names
select student_id as s_id, name as s_name, age as s_age, city as s_city, marks as s_marks from students;

-- Update marks of 1 student
update students set marks = 76 where name = 'Rahul';

select * from students;

-- Add a new column grade using ALTER
alter table students add grade VARCHAR(2);

select * from students;

-- Update grade
update students set grade= CASE 
	WHEN marks >= 80 THEN 'A'
	WHEN marks >= 60 THEN 'B'
	ELSE 'C'
END;

select * from students;

--Delete students with marks < 35
delete from students where marks < 35;

-- Rename table students → college_students

sp_rename 'students', 'college_students';

-- Rename column name → student_name

sp_rename 'college_students.name', 'student_name';

select * from college_students;

-- Clone the table into backup_students

select * into backup_students from college_students;

select * from backup_students;

-- Remove Duplicates based on same student_name same city
insert into backup_students values (11, 'Moksh', 22, 'Surat', 80, 'A');

delete top(6) from backup_students where student_name = 'Moksh' and city = 'Surat';

-- Students with marks between 60 and 90
select * from college_students where marks between 60 and 90;

-- Names starting with 'A'
select * from college_students where student_name like 'A%';

-- Students NOT from your city
select * from college_students where city != 'Surat';

-- Sort students by marks (DESC)
select * from college_students order by marks desc;

-- Count total students
select count(*) as total_students from college_students;

-- Find: Max marks, Min marks, Avg marks
select max(marks) as max_marks, min(marks) as min_marks, avg(marks) as avg_marks from college_students;

-- Delete all records but keep table, Truncate table
truncate table backup_students;