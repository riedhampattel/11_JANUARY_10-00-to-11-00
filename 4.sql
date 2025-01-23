select first_name,last_name from employees;

select concat(first_name,' ',last_name) from employees;

select concat(first_name,' ',last_name) as full_name from employees;

select * from employees;

select * from employees where department_id = 50;

select * from employees where department_id = 50 or department_id = 60;

select * from employees where salary>=10000 and salary<=20000;

select * from employees where department_id in (50,60,90);

select * from employees where department_id not in (50,60,90);

select * from employees where COMISSION_PCT is not null;

select * from employees where COMISSION_PCT is null;

select * from employees order by first_name;

select * from employees order by last_name;

select * from employees order by salary asc;

select * from employees order by salary desc;

select * from employees order by 5 desc;

select employee_id,first_name as name from employees order by name;

select * from employees where first_name like '%ee%';

select * from employees where first_name like '%e_';

select * from employees where first_name like '%e%e%';

select * from employees where hire_date like '%-j_n-%';

select * from employees where hire_date like '%-ju_-%';

select max(salary) from employees;

select min(salary) from employees;

select sum(salary) from employees;

select avg(salary) from employees;

select count(salary) from employees;

select count(comission_pct) from employees;

select count(manager_id) from employees;

select count(*) from employees;

select department_id,min(salary) from employees group by department_id;

select department_id,max(salary) from employees group by department_id;

select department_id,max(salary) from employees group by department_id having max(salary)>10000 order by 2;

select * from employees;

select * from employees order by salary desc limit 5;

select * from employees order by salary limit 5;

select * from employees order by salary limit 10 offset 5;

select employee_id,first_name,salary*12 as annual_salary from employees;

select * from employees;

select * from employees where (department_id,manager_id) not in ((60,103),(80,149),(110,101));

select concat(last_name,"'s salary is Rs.",salary) as details from employees;

select salary/30 as daily_salary from employees;

select concat(first_name,' ',last_name) as full_name from employees;