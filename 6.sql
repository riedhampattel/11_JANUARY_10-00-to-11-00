select * from employees;

delete from employees where EMPLOYEE_ID = 202;
delete from employees where EMPLOYEE_ID = 205;
delete from employees where EMPLOYEE_ID = 206;

select * from employees;

rollback;

select * from employees;

delete from employees where EMPLOYEE_ID = 202;
delete from employees where EMPLOYEE_ID = 205;
delete from employees where EMPLOYEE_ID = 206;

select * from employees;

commit;

delete from employees where EMPLOYEE_ID = 200;
delete from employees where EMPLOYEE_ID = 201;

rollback;

select * from employees;

update employees set salary = salary + 10000;

select * from employees;

rollback;

select * from employees;

savepoint s1;
delete from employees where EMPLOYEE_ID = 201;
savepoint s2;
delete from employees where EMPLOYEE_ID = 200;
savepoint s3;
delete from employees where EMPLOYEE_ID = 178;

rollback;

select * from employees;

rollback to s2;

select * from employees;