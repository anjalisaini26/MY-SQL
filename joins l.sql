create database joins;
use joins;
create table employee (EMPNO int , ENAME character(100),JOB varchar(100),MGR INT , DEPTNO INT );
INSERT employee values (111,'Ramesh','Analyst',444,10),
(222,'khilan','clerk',333,20),
(333,'Kaushik','Manager',111,10),
(444,'Chaitali','Engineer',222,40);
drop table department;
create table department (DEPTNO INT,DNAME varchar (100),LOC varchar (100)); 
insert department values (10,'inventory','HYDERABAD'),
(20,'FINANCE','BANGALORE'),
(30,'HR','MUMBAI');
SELECT EMPLOYEE.ename,employee.job,department.dname,department.loc from employee
inner join
department on employee.deptno=department.deptno;
#inner join code 


#left outer join 
SELECT EMPLOYEE.ename,employee.job,department.dname,department.loc from employee
LEFT JOIN
department on EMPLOYEE.deptno=department.deptno;

#right join 
SELECT EMPLOYEE.ename,employee.job,department.dname,department.loc from employee
right JOIN
department on EMPLOYEE.deptno=department.deptno;

SELECT EMPLOYEE.EMPNO,employee.job,department.dname,department.loc from employee
full JOIN
department on EMPLOYEE.deptno=department.deptno;

select emoloyee.emane,employee.job,department.dename,department.loc from employee,department
 where employee.deptno=department.deptno;
SELECT * FROM EMPLOYEE;
