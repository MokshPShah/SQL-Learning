-- Temp Tables

use Microsoft;

create table #School 
(sid int, name varchar(255), Marks int, sports varchar(255));

select * from #School;

insert into #School values (1, 'John', 90, 'Football'), (2, 'Moksh', 95, 'Cricket'), (3, 'Sita', 85, 'Basketball'), (4, 'Ravi', 80, 'Tennis');

/* All the tables starting with # symbol are temp tables.
These tables are stored in System databases in Tempdb in Temporary Tables folder.
These tables are automatically dropped if we close the session. */