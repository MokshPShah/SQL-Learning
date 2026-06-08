-- Stuff functions: this are more of replace + substring

use Microsoft;

select * from employee;

select stuff('This is the python tutorial', 13, 6, 'SQL');

select stuff('This is the month of June', 22, 4, 'Nothing');

select replace('Mumbai is called Mumbai first', 'Mumbai', 'Navi Mumbai');

select stuff('Mumbai is called Mumbai first', 1, 6, 'Navi Mumbai');

select *, stuff(fullName, 2, 2, '**') as MaskedName from employee;