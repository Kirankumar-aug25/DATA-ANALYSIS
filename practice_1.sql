CREATE table worker(
worker_id int,
first_name varchar(100), 
last_name varchar(100),
salary int,
joining_date datetime,
department varchar(10));
CREATE table bonus(
worker_ref_id int,
bonus_date datetime,
bonus_amt int);
CREATE table title(
worker_ref_id int,
worker_title varchar(100), 
affected_from datetime);
INSERT INTO worker values (001, "Monika", "Arora", 100000, '2014-02-20 09:00:00', "HR");
INSERT INTO worker values (002, "Niharika", "Verma", 80000, '2014-06-11 09:00:00', "Admin");
INSERT INTO worker values (003, "Vishal", "Singhal", 300000, '2014-02-20 09:00:00', "HR");
INSERT INTO worker values (004, "Amitabh", "Singh", 500000, '2014-02-20 09:00:00', "Admin");
INSERT INTO worker values (005, "Vivek", "Bhati", 500000, '2014-06-11 09:00:00', "Admin");
INSERT INTO worker values (006, "Vipul", "Diwan", 200000, '2014-06-11 09:00:00', "Account");
INSERT INTO worker values (007, "Satish", "Kumar", 75000, '2014-01-20 09:00:00', "Account");
INSERT INTO worker values (008, "Geetika Chauhan", "Arora", 90000, '2014-04-11 09:00:00', "Admin");
INSERT INTO bonus values (1,'2016-02-20 00:00:00',5000);
INSERT INTO bonus values (2,'2016-06-11 00:00:00',3000);
INSERT INTO bonus values (3,'2016-02-20 00:00:00',4000);
INSERT INTO bonus values (1,'2016-02-20 00:00:00',4500);
INSERT INTO bonus values (2,'2016-06-11 00:00:00',3500);
INSERT INTO title values (1,'Manager','2016-02-20 00:00:00');
INSERT INTO title values (2,'Executive','2016-06-11 00:00:00');
INSERT INTO title values (8,'Executive','2016-06-11 00:00:00');
INSERT INTO title values (5,'Manager','2016-06-11 00:00:00');
INSERT INTO title values (4,'Asst. Manager','2016-06-11 00:00:00');
INSERT INTO title values (7,'Executive','2016-06-11 00:00:00');
INSERT INTO title values (6,'Lead','2016-06-11 00:00:00');
INSERT INTO title values (3,'Lead','2016-06-11 00:00:00');


#========================ucase,lcase=======================================================#
select ucase(first_name),lcase (last_name) from worker ;
#=========================distinct========================================================#
select department from worker group by department;
select distinct department from worker department;
#===========================substr========================================================#
select substr(first_name ,1,3) from worker  ;
#===========================postion=======================================================#
select first_name,instr(first_name ,binary'A') from worker  ;
#=========================================================================================#
select distinct length(department) from worker;
#=========================================================================================#
select * from worker where first_name like '%m%';
#=========================================================================================#
select * from worker where first_name like '%m%'and length(first_name)=6;
#=========================================================================================#
select department, count(department) from worker group by department order by department desc;
#=========================================================================================#
select * from worker join title on worker.worker_id = title.worker_ref_id where worker_title='Manager'or'Asst. Manager';
#=========================================================================================#
Select * from worker where  Mod(worker_id,2)<>0;#odd
#Select * from worker where  Mod(worker_id,2)=0; #even
#=========================================================================================#
select curdate();
select now();
#===============================top n records=============================================#
select salary from worker order by salary desc limit 3,1;
#=========================================================================================#
select * from worker where salary = (select  max(salary) from worker);
#=========================================================================================#
select * from worker where worker_id<=(select count(worker_id)/2 from worker);
select * from worker where worker_id>(select count(worker_id)/2 from worker);
#=========================================================================================#
# query to fetch departments having less than five people in it
select department ,count(department) from worker group by department having count(department)<4  ; 
#=========================================================================================#
# query to print name of employees having the highest_salary in each department
CREATE TABLE max_salary as select  max(salary) as highest_salary,department from worker group by department;
select * from worker join max_salary on worker.department = max_salary.department and worker.salary =max_salary.highest_salary;
