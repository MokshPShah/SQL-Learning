-- Indexes: An INDEX can be defined as a mechanism for providing fast access to table rows and for enforcing constraints.

use Microsoft;

-- NON CLUSTER INDEX: We may have multiple non-clustered indexes on a table. A non-clustered index is a structure separate from the data rows. It contains the indexed columns and a pointer to the data rows.

create index in_city on employee(Location);

select * from employee where Location = 'Mumbai';

create nonclustered index idx_age on employee(age);

select * from employee where age = 29;

drop index employee.idx_age;

drop index employee.in_city;

-- sp_help employee;

-- CLUSTERED INDEX: We only have one clustered index on a table. A clustered index determines the physical order of the data rows in the table. The leaf nodes of a clustered index contain the actual data rows.

create clustered index idx_id on employee(id);

select * from employee;

drop index employee.idx_id;

-- Another way to create clustered index is by using primary key constraint. When we define a primary key on a table, SQL Server automatically creates a clustered index on the primary key column(s) unless a clustered index already exists or we specify otherwise.

alter table employee alter column id int not null;

alter table employee add constraint PRI_ID primary key clustered(id);

alter table employee drop constraint PRI_ID;

drop index employee.PRI_ID;