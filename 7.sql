create table users
(
user_id int primary key,
name varchar(25) not null,
age int not null
);

insert into users values(101,'Rahul',25);
insert into users values(102,'Rohan',35);
insert into users values(103,'Rakeh',45);
insert into users values(104,'Dhyana',20);
insert into users values(105,'Soham',23);

select * from users;

create table orders
(
order_id int not null unique,
order_num int not null unique,
user_id int not null,
foreign key orders(user_id) references users(user_id)
);

insert into orders values(147852,1,101);
insert into orders values(147854,2,101);
insert into orders values(147855,3,102);
insert into orders values(147856,4,105);
insert into orders values(147857,5,105);

select * from orders;
select * from users;

select * from users
natural join
orders;

select users.user_id,users.name,orders.order_id
from users inner join orders
on users.user_id=orders.user_id;

select users.user_id,users.name,orders.order_id
from users left join orders
on users.user_id=orders.user_id;

select users.user_id,users.name,orders.order_id
from users right join orders
on users.user_id=orders.user_id;

select * from users
union
select * from orders;

select * from users
union all
select * from orders;