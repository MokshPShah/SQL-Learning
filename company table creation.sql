-- 

create table company(
cid int, conpany_name varchar(255), location varchar(50), count int
)

bulk insert dbo.company 
from 'D:\SQL-Learning\company.csv'
with
(
	format = 'CSV',
	Firstrow = 2
)

select * from company;