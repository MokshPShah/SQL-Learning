-- Changing the Datatype

use microsoft

select * from employee

sp_help 'employee'

alter table employee alter column id varchar(255)

sp_help 'employee'

alter table employee alter column id int