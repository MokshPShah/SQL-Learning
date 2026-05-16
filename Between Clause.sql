-- Between Clause: BETWEEN 1 AND 10

use Microsoft;

select * from employee where Age between 20 and 30;

select * from empl where Name between 'A%' and 'O%';
select * from empl order by Name;