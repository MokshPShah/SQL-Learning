-- Import some data from the large file

use Microsoft;

create table User2
(id int, firstName varchar(50), middleName varchar(50), lastName varchar(50), suffix varchar(5))

bulk insert User2
from 'D:\SQL Learning\synthetic_users.csv'
with
(
format = 'CSV',
firstrow = 5,
lastrow = 25
)

select * from User2;