create table employees
(
employee_id int not null unique,
first_name varchar(25) not null,
last_name varchar(25) not null,
hire_date date not null, -- 1987-02-12
salary int not null,
commission_pct float,
manager_id varchar(12) not null unique,
department_id int
);

describe employees;

-- modify column
alter table employees modify manager_id int;

-- rename column
alter table employees rename column salary to income;

-- rename table
alter table employees rename to emp_data;

describe emp_data;

-- delete column
alter table emp_data drop column hire_date;

-- add column
alter table emp_data add column hire_date date not null;

drop table emp_data;
alter table emp_data drop column hire_date;

alter table emp_data add column hire_date date not null after income;

drop table emp_data;

drop schema 11_january;