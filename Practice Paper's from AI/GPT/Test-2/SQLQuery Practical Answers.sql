use PracticeHubDB;

-- CREATE TABLE Students
-- (student_id INT, name VARCHAR(50), city VARCHAR(30), age INT, course_id INT, marks INT);

-- CREATE TABLE Courses
-- (course_id INT, course_name VARCHAR(50), fees INT)

-- CREATE TABLE Teachers 
-- (teacher_id INT, teacher_name VARCHAR(50), subject VARCHAR(50), salary INT)

insert into Students values (1, 'Amit', 'Mumbai', 25, 1001, 56),
(2, 'Khushi', 'Delhi', 29, 1002, 65),
(3, 'Smit', 'Vadodra', 21, 1003, 60),
(4, 'Smita', 'Pune', 23, 1001, 86),
(5, 'Vicky', 'Mumbai', 25, 1004, 72),
(6, 'Riya', 'Ahmedabad', 35, 1005, 89)

insert into Students (student_id, name, city) values (7, 'Mahesh', 'Ahmedabad'),
(8, 'Krupa', 'Banglore');

select * from Students;

alter table Students alter column student_id int not null;

alter table Students add constraint PK_Students Primary Key (student_id);

alter table courses alter column course_id int not null;

alter table courses add constraint PK_Courses Primary Key (course_id);

alter table Students add constraint FK_Students_Courses foreign key (course_id) references Courses(course_id);

insert into Courses values (1001, 'Cyber Security', 39999),
(1002, 'Artificial Intellegence', 89999),
(1003, 'Data Science', 69999),
(1004, 'Ethical Hacking', 99999),
(1005, 'Full Stack', 49999);

select * from Courses;

insert into Teachers values (101, 'Umesh', 'Cyber Security', 25000),
(102, 'Reshma', 'Artificial Intellegence', 20000),
(103, 'Shweta', 'Data Science', 15000),
(104, 'Pravin', 'Ethical Hacking', 30000),
(105, 'Ragini', 'Full Stack', 18000)

select * from Teachers;

-- Display all students whose marks are greater than 75. 
select * from students where marks > 75;

-- Show only unique city names from the Students table.
select distinct city from Students;

-- Find students whose names start with 'A'. 
select * from students where name like 'A%';

-- Display students whose marks are between 60 and 90. 
select * from Students where marks between 60 and 90;

-- Show all students sorted by marks in descending order. 
select * from Students order by marks desc;

-- Count how many students belong to each city.
select city, count(*) as StudentCount from Students group by city;

-- Display the highest marks from the Students table. 
select max(marks) as HighestMarks from Students;

-- Find the average marks of students course-wise. 
select course_id, avg(marks) as AverageMarks from Students group by course_id;

-- Show only those cities where more than 1 student exists.
select city from Students group by city having count(*) > 1;

-- Find students whose marks are NULL. 
select * from students where marks is null;

-- Display student names along with their course names. 
select s.name, c.course_name from Students s join Courses c on s.course_id = c.course_id;

-- Show students who enrolled in courses with fees greater than 60,000. 
select s.name, c.course_name, c.fees from Students s join Courses c on s.course_id = c.course_id where c.fees > 60000;

-- Display all students and their course names even if course is not assigned. 
select s.name, c.course_name from Students s join Courses c on s.course_id = c.course_id;

-- Find the second highest marks from the Students table.
select max(marks) as HighestMarks from Students where marks < (select max(marks) from Students)

-- Display the city having the highest number of students.
select top(1) city, count(*) as StudentCount from Students group by city order by StudentCount desc;

-- Find students whose marks are above the average marks.
select AVG(marks) as AverageMarks from Students;
select * from Students where marks > (select AVG(marks) from Students);

-- Display top 3 students based on marks.
select top(3) * from students order by marks desc;

-- Show duplicate city names only once with their counts.
select city, count(*) as StudentCount from Students group by city having count(*) > 1;

-- Find students who scored the same marks.
select marks, count(*) as StudentCount from Students group by marks having count(*) > 1;

-- Display all students along with their course names, even if the course is not assigned.
select s.*, c.course_name from students s join Courses c on s.course_id = c.course_id;