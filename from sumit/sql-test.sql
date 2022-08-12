create database sql_test;
use sql_test;
show tables;

create table orders(
order_id int,
order_date date,
customer_id int
);

insert into orders values
(1,'2022-07-19',1),
(2,'2022-07-20',2),
(3,'2022-07-21',1),
(4,'2022-07-22',3),
(5,'2022-07-23',4),
(6,'2022-07-24',2),
(7,'2022-07-25',3),
(8,'2022-07-26',4),
(9,'2022-07-27',1);

select * from orders;

create table orders_products(
order_id int,
product_id int,
category_name varchar(20)
);

insert into orders_products values
(1,24,'Milk'),
(2,25,'Fresh'),
(3,12,'Chocolate'),
(4,50,'Fresh'),
(5,36,'Fresh'),
(6,60,'Milk'),
(7,67,'Chocolate'),
(8,87,'Fruits'),
(9,40,'Fruits'),
(1,51,'Vegetables'),
(1,26,'Milk'),
(6,26,'Milk');

select * from orders_products;

create table customer_orders(
customer_name varchar(20),
`status` varchar(20),
order_id int
);

insert into customer_orders values
('Rahul','Delivered',1),
('Rahul','Delivered',2),
('Samyak','Delivered',3),
('Samyak','Created',4),
('Rohan','Submitted',5),
('Rohan','Created',6),
('Rohan','Submitted',7),
('Prateek','Delivered',8),
('Prateek','Delivered',9);

select * from customer_orders;

select *
from customer_orders as c1 
join customer_orders as c2 
on c1.customer_name=c2.customer_name 
group by c1.customer_name;