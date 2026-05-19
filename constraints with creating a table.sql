-- constraints with creating a table

use Microsoft;

create table College 
(sid int not null, Name varchar(50), Sports varchar(50), Marks int, Branch varchar(50), Hostel varchar(50), constraint Chk_Marks CHECK (Marks between 0 and 100))

select * from College;

-- insert into College values(1, 'Karan', 'Cricket', 105, 'CSE', 'Block A');

insert into College values(1, 'Karan', 'Cricket', 85, 'CSE', 'Block A');