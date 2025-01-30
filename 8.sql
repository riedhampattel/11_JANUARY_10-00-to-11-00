create table student
(
id int not null unique,
name varchar(25) not null,
maths int default 20,
english int default 20,
science int default 20,
total int
);

create trigger add_data
before insert on 11_january.student
for each row
set new.total = new.maths + new.english + new.science;

select * from student;

insert into student(id,name) values(101,'Rohan');

insert into student(id,name,maths,science) values(102,'Rohan',55,54);

select * from student;

create table orignal_data
(
id int not null unique,
name varchar(25) not null
);

create table copy_data
(
name varchar(25) not null,
copy_time time
);

create trigger copy
after insert on orignal_data
for each row
insert into copy_data values(new.name,curtime());

select * from orignal_data;
select * from copy_data;

insert into orignal_data values(101,'Rohan');
insert into orignal_data values(102,'Rahul');
insert into orignal_data values(103,'Suresh');
insert into orignal_data values(104,'Mahesh');
insert into orignal_data values(105,'Dinesh');