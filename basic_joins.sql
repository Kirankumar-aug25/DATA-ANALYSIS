create table sales_man(
sale_man_id int,
s_name varchar(40),
city varchar(40),
commision float
);

create table customer(
customer_id int,
cust_name varchar(50),
city varchar(50),
grade int,
salesman_id int
);

insert into sales_man values
(5001, 'James Hoog','New York' ,0.15),
(5002,'Nail Knite','Paris',0.13),
(5005 , 'Pit Alex','London',0.11),
(5006,'Mc Lyon','Paris',0.14),
(5007,'Paul Adam','Rome',0.13),
(5003,'Lauson Hen','San Jose',0.12);

insert into customer values
(3002 , 'Nick Rimando', 'New York' ,100 , 5001),
(3007 , 'Brad Davis', 'New York' , 200 , 5001),
(3005 , 'Graham Zusi', 'California' , 200 , 5002),
(3008 , 'Julian Green' , 'London', 300 , 5002),
(3004 , 'Fabian Johnson', 'Paris'  , 300 , 5006),
(3009 , 'Geoff Cameron', 'Berlin', 100 , 5003),
(3003 , 'Jozy Altidor', 'Moscow', 200 , 5007),
(3001 , 'Brad Guzan','London', 0, 5005);
#select * from sales_man;
#select * from customer;


#select sales_man.name ,customer.cust_name from sales_man join customer where sales_man.city=customer.city;
#select sales_man.name,customer.cust_name  from customer join sales_man on sales_man.sale_man_id=customer.salesman_id;
#select name from sales_man where commision = 0.12 ;
select sales_man.s_name,customer.cust_name ,customer.city from sales_man join customer on sales_man.sale_man_id = customer.salesman_id
AND sales_man.city<>customer.city;