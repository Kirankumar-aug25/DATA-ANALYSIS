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

#Q1. Write a query to fetch the EmpFname from the EmployeeInfo#
#table in upper case and use the ALIAS name as EmpName#
# ans : select upper(EmpFname)  as empname from emp_info;

#Q2. Write a query to fetch the number of employees working in the department ‘HR’.
# ans :select count(Department),Department from emp_info where Department = 'HR';

#Q3. Write a query to get the current date.
#SELECT GETDATE();
#Q4. Write a query to retrieve the first four characters of
# EmpLname from the EmployeeInfo table.
# ans :SELECT SUBSTRING(EmpLname, 1, 4)  from emp_info ;

#Q5. Write a query to fetch only the place name(string before brackets) 
#from the Address column of EmployeeInfo table.
#SELECT MID(Address, 0, LOCATE('(',Address)) FROM emp_info;

#Q6. Write a query to create a new table which consists of 
#data and structure copied from the other table.
# ans create table emp_info_2 as select * from  emp_info;
# ans select * from  emp_info_2;

#Q7. Write q query to find all the employees whose salary is between 50000 to 100000.
#select salary from emp_pos where salary between 	50000 and 100000;		

#Q8. Write a query to find the names of employees that begin with ‘S’
# ans:select EmpFname  from emp_info where EmpFname like 's%';

#Q9. Write a query to fetch top N records.
# ans: SELECT * FROM emp_pos ORDER BY Salary desc limit 3 ;

#Q10. Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”.
#The first name and the last name must be separated with space.
# ans: SELECT concat(EmpFname,EmpLname) as FullName from emp_info;

#Q11. Write a query find number of employees whose 
#DOB is between 02/05/1970 to 31/12/1975 and are grouped according to gender?
# ans:select count(*),gender from emp_info 
#where dob between '1990-05-02' And '1999-12-31'GROUP BY Gender;

#Q12. Write a query to fetch all the records 
#from the EmployeeInfo table ordered by EmpLname in descending order and 
#Department in the ascending order.
#select * from emp_info order by Department desc;

#Q13. Write a query to fetch details of employe%es whose 
#EmpLname ends with an alphabet ‘A’ and contains five alphabets.
# ans : select * from emp_info where EmpLname like "____a";

#Q14. Write a query to fetch details of all employees excluding the 
#employees with first names, “Sanjay” and “Sonia” from the EmployeeInfo table.
#ans : select * from emp_info where EmpFname not in ('Sanjay','Sonia');

#Q15. Write a query to fetch details of employees with the address as “DELHI(DEL)”.
#ans : select * from emp_info where Address like 'DELHI(DEL)';

#Q17. Write a query to fetch the 
#department-wise count of employees sorted by department’s count in ascending order.
#ans: select count(*),department from emp_info GROUP BY department ORDER BY count(EmpID) ASC ;










