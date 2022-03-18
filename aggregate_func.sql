create table person(
Customer varchar(40),
Atm_Address	varchar(40),
Amount_withdrawn int ,
dow date);



insert into person value  ('Mr.A',	'Kondapur, Hyderabad',	5000,		'2022-01-01'),
	                        ('Mr.A',	'Kondapur, Hyderabad',	6000,		'2022-02-01'),
   			                  ('Mr.A',	'SR Nagar, Hyderabad',	1000,		'2022-02-15'),
			                    ('Mr.B',	'Kothapet, Hyderabad',	7000,		'2022-02-01'),
	                        ('Mr.B',	'Ameerpet, Hyderabad',	2000,		'2022-01-15'),
		                      ('Mr.C',	'Secunderabad',         3000,		'2022-02-28');
#===========================================================================================#	
#select count(Customer)from person;
#===========================================================================================#		
#select Customer,count(Customer) from person group by customer;
#===========================================================================================#	
##select Customer,count(Customer)from person group by customer order by count(Customer) limit 1; 
#===========================================================================================#	
#SELECT SUM(Amount_withdrawn) ,Customer FROM person WHERE Customer ='Mr.A' ;
#===========================================================================================#	
#SELECT max(Amount_withdrawn) ,Customer FROM person WHERE Customer ='Mr.A';
#===========================================================================================#	
#SELECT avg(Amount_withdrawn) ,Customer FROM person WHERE Customer ='Mr.A';
#===========================================================================================#	
#SELECT count(Amount_withdrawn) ,Customer FROM person WHERE Customer ='Mr.A';
#===========================================================================================#	
#SELECT sum(Amount_withdrawn) ,Customer FROM person group by Customer ;
#===========================================================================================#	
select Amount_withdrawn, Customer,dow from person where Customer = 'Mr.A';
#===========================================================================================#	
select sum(Amount_withdrawn) over(order by dow) , Customer,dow from person where Customer = 'Mr.A';
#===========================================================================================#	
