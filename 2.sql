create schema 11_january;

create table demo
(id int not null unique,
name varchar(25) not null,
cgpa float not null
);

select id,name,cgpa from demo;

select * from demo;

insert into demo values (101,'Mehul',9.8);
insert into demo values (102,'Mehul',9.8);
insert into demo values (103,'Mukesh',8.5);
insert into demo values (104,'Mahesh',4.5);
insert into demo values (105,'Keyur',7.3);

select * from demo;

update demo set name = 'Rahul' where id=102; 

select * from demo;

delete from demo where id = 105;

select * from demo where id=101 or id=102 or id=103;