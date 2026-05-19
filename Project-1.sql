use Microsoft;

create table Project
(pid int, project_name varchar(255), technology varchar(255), postal int);

insert into Project values (1, 'Kite', 'Java', 2334),
(2, 'Lime', 'SQL', 3222),
(3, 'Rabbit', 'Azure', 4223),
(4, 'Telenor', 'MySQL', 4345),
(5, 'Kalmar', 'Oracle', 4345),
(6, 'Verison', 'AWS', 5242),
(7, 'BBG', 'Testing', 5453),
(8, 'Airtel', 'Automation', 3555),
(9, 'Johnson', 'Python', 3455),
(10, 'Dabur', 'Data Science', 6432),
(11, 'Amul', 'Azure', 2345),
(12, 'VedioN', 'MySQL', 6432),
(13, 'Mikeey', 'Oracle', 3456),
(14, 'Best Buy', 'AWS', 4332),
(15, 'Trimp', 'Testing', 4566)

select * from Project;