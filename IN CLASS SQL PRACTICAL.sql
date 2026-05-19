-- IN CLASS SQL PRACTICAL 

use Microsoft;

create table Student
(sid int not null, name varchar(50), class int, marks int, sports varchar(50), constraint Ckh_Class CHECK (class between 1 and 12));

insert into Student values (1, 'Amit', 8, 45, 'Cricket'),
(2, 'Anil', 7, 65, 'Hockey'),
(3, 'Aditya', 6, 76, 'Basketball'),
(4, 'Neha', 8, 87, 'Hockey'),
(5, 'Seema', 9, 45, 'Tennis'),
(6, 'Anjaili', 10, 55, 'Basketball'),
(7, 'Vini', 11, 67, 'Hockey'),
(8, 'Saurav', 12, 56, 'Tennis')

select * from Student;