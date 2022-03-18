create table emp(
id int ,
employee_name varchar(40),
department_id varchar(40)
);

insert into emp values(1,'Homer Simpson',	4),
(2,'Ned Flanders',	1),
(3,'Barney Gumble',	5),
(4,'Clancy Wiggum',	3),
(5,'Moe Syzslak',	8);

create table dept
(
id int ,
department_name varchar(40)
);
insert into dept values
(1,'Sales'),
(2,	'Engineering'),
(3,	'Human Resources'),
(4,	'Customer Service'),
(5,	'Research And Development'),
(6,	'data analyst');
#=====================================================================================#
#select employee_name,department_name from emp join dept on emp.department_id = dept.id;
#=====================================================================================#
select employee_name,department_name from emp left join dept on emp.department_id = dept.id;
#=====================================================================================#
#select employee_name,department_name from emp right join dept on emp.department_id = dept.id;
#=====================================================================================#
#select employee_name,department_name from emp  join dept on emp.department_id <> dept.id;
#=====================================================================================#
#select employee_name,department_name from emp  join dept on emp.department_id = dept.id;







