create table emp_info
(EmpID int
,EmpFname varchar(40)
,EmpLname varchar(40)
,Department varchar(40)
,Project varchar(40)
,Address varchar(40)
 ,DOB date
,Gender varchar(40)
);

create table emp_pos(
EmpID int
,EmpPosition varchar(40)	
,DateOfJoining date	
,Salary int
);
insert into emp_info values(1,'Sanjay','Mehra','HR','P1','Hyderabad(HYD)','1976-01-12','M'),
(2,'Ananya','Mishra','Admin','P2','Delhi(DEL)','1968-05-02','F'),
(3,'Rohan','Diwan','Account','P3','Mumbai(BOM)','1980-05-01','M'),
(4,'Sonia','Kulkarni','HR','P1','Hyderabad(HYD)','1992-05-02','F'),
(5,'Ankit','Kapoor','Admin','P2','Delhi(DEL)','1994-07-03','M');
#remember data format must be '1976-01-12' 

insert into emp_pos values(1,'Manager','2022-01-05',500000),
(2,'Executive','2022-02-05',75000),
(3,'Manager','2022-01-05',90000),
(2,'Lead','2022-02-05',85000),
(1,'Executive','2022-01-05',300000);
#============================group by========================================#
select Address from emp_info ;

select Address  from emp_info group by Address;

select count(Address) from emp_info group by Address;

select count(Address),Address  from emp_info group by Address;

select count(Address),Address  from emp_info group by Address order by count(Address) ;

#================how do u find out duplicate values using groupby============================#

select count(EmpFname),EmpFname from emp_info group by EmpFname  having count(EmpFname)>1;

select EmpID , count(EmpID) from emp_info  group by EmpID having count(EmpID)>1;