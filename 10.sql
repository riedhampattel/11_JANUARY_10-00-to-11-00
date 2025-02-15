select * from employees;

create view personal_info as select employee_id,first_name,last_name,salary from employees;

select * from personal_info;

drop view personal_info;

create view personal_info as select employee_id,first_name,last_name,salary from employees where (salary*12) > 200000;

select * from personal_info;

describe personal_info;

insert into personal_info values(301,'Lana','King',21000);

select * from employees;

select * from EMP;

describe emp;

select * from emp;