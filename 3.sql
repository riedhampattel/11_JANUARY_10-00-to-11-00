describe employees;

insert into employees values(100,'Steven','King','1987-02-17',24000,NULL,NULL,90);

select employee_id,first_name from employees;

select * from employees;

alter table employees modify hire_date varchar(25) not null;

select * from employees;

update employees set hire_date = date_format(hire_date,'%d-%b-%y');

drop table employees;

select * from employees;