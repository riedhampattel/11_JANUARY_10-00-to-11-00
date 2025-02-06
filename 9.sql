delimiter &&
create procedure display()
select * from employees;
end &&

call display();

drop procedure display;

delimiter &&
create procedure display(in eid int)
begin
select * from employees where employee_id = eid;
end &&

call display(102);

drop procedure display;

delimiter &&
create procedure display(in eid int)
begin
select * from employees where employee_id != eid;
end &&

call display(102);

drop procedure display;

delimiter &&
create procedure display(in mgr int,dep int)
begin
select * from employees where manager_id = mgr and department_id = dep;
end &&

call display(102,60);

call display(103,60);

select * from demo;

delimiter &&
create procedure new_data(in i int,n varchar(25),c float)
begin
insert into demo values(i,n,c);
end &&

call new_data(101,'Rohan',4.5);
call new_data(102,'Dhyana',5.5);

select * from demo;