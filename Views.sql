-- Views: View is a virtual table based on the result of an SQL statement.

use Microsoft;
GO

CREATE VIEW vi_male_title AS
SELECT * FROM employee where gender = 'Male';
GO
 
select * from vi_male_title;

insert into vi_male_title values (21, 'Dhruv', 19, 'Male', 20000, 'Textile', 'Surat', 'India');

select * from employee;

insert into vi_male_title values (22, 'Dhruvi', 29, 'Female', 50000, 'Marketing', 'Telengana', 'India');