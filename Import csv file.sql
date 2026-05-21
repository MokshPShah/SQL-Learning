-- Import csv file

use microsoft;

create table Users(
id int,
firstName varchar(50),
middleName varchar(50),
lastName varchar(50),
suffix varchar(5)
);

bulk insert dbo.Users
From 'D:\SQL Learning\synthetic_users.csv'
with
(
format = 'CSV',
Firstrow = 2
)

select * from Users;

select suffix + ' ' + firstName + ' ' + middleName + ' ' + lastName as FullName from Users where suffix is not null;