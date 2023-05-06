create database saini;

use saini;

show databases;

create table 
worker( wid int, 
fname varchar(30), 
lname varchar (20), 
salary int,
jdate date, 
departmant varchar (20));

select *from worker;
insert into worker values (01,'monika','arora',100000,'2014-02-20','hr'),
(02,'niharika','verma',80000,'2014-06-11','admin'),
(03,'vishal','singhal',300000,'2014-02-20','hr'),
(04,'amitabh','singh',500000,'2013-02-20','admin'),
(05,'vivek','bhati',400000,'2015-06-11','account'),
(06,'vipul','diwan',200000,'2013-06-12','admin'),
(07,'satish','kumar',75000,'2014-01-20','account'),
(08,'geetika','chauhan',90000,'2015-05-11','admin');
truncate table worker;
alter table worker add column adress varchar (20);
alter table worker drop column adress;
alter table worker change jdate joindate date;
alter table worker modify fname varchar (50);
update worker set lname= 'saini' where wid=02;
select wid,fname,joindate from worker;
select wid,fname,joindate from worker where wid=05;
select wid,fname,joindate from worker where wid>02;
select*from worker where wid>03;
select *from worker group by departmant;
select wid,fname,lname from worker where wid>04 group by departmant;
select wid,fname,lname, departmant,count(*) from worker where wid>01 group by departmant having count(*) >02;
select salary,count(*) from worker  having count(*)>02;
select wid,fname,lname,salary, sum(salary) from worker where wid>01 group by departmant having sum(salary);
select wid,fname,lname,salary from worker where wid>01 group by departmant having lname='saini';
select *from worker order by fname;
select*from worker order by fname desc;
delete  from worker where wid=7;
select  sum(salary)  from worker;
select count(*) from worker;
select count(*) from worker where wid>03;
select count(wid) from worker ;
select count(wid) from worker group by departmant;
select wid,fname,salary, count(*) from worker group by departmant;
select wid,departmant, sum(salary)  from worker group by departmant;
select max(salary) from worker ;
select max(salary) from worker group by departmant;
select  salary  from worker order by salary desc limit 3;
select min(salary) from worker group by departmant;
select wid,fname,salary,min(salary) from worker group by departmant;
select wid,fname,salary,avg(salary) from worker group by departmant ;
select wid,fname, lname,avg (salary) from worker  where wid>02 group by departmant;
select wid,fname,lname,avg(salary) from worker group by departmant having avg(salary)>=50000;
create table bonus( wid int, bounsdate date, bamount int);
create view raj as select wid,fname,salary from worker where wid>02;
select*from raj;
#create view
select * from bonus;
drop table bonus;
insert into bonus values(01,'2016-02-20',5000),
(02,'2016-06-20',3000),
(03,'2016-04-20',4000),
(04,'2017-05-09',3000),
(05,'2016-04-25',2500),
(06,'2017-06-26',3800);
select worker.wid,worker.fname,worker.salary,bonus.bounsdate,bonus.bamount from worker inner join bonus on worker.wid=bonus.wid;
select worker.wid,worker.fname,worker.salary,bonus.bounsdate,bonus.bamount from worker left join bonus on worker.wid=bonus.wid;
select worker.wid,worker.fname,worker.salary,bonus.bounsdate,bonus.bamount from worker right join bonus on worker.wid=bonus.wid;
select worker.wid,worker.fname,worker.salary,bonus.bounsdate,bonus.bamount from worker full join bonus on worker.wid=bonus.wid;
select worker.wid,worker.fname,worker.salary,bonus.bounsdate,bonus.bamount from worker ,bonus where worker.wid=bonus.wid;
select worker.wid,worker.joindate,worker.salary from worker union select bonus.wid, bonus.bounsdate,bonus.bamount from bonus;
select worker.wid from worker union select bonus.wid from bonus;
select worker.wid,worker.joindate,worker.salary from worker intersect select bonus.wid,bonus.bounsdate,bonus.bamount from bonus;
select worker.wid,worker.joindate,worker.salary from worker MINUS select bonus.wid,bonus.bounsdate,bonus.bamount from bonus;
create view raju as select worker.wid,worker.fname,worker.salary,bonus.bounsdate,bonus.bamount from worker,bonus;
select*from raju;
create index vishal on  worker(wid,fname,lname,salary);
select wid,fname,salary,salary+30000 from worker;
select wid,fname,salary,salary+40000 as newsalary from worker;
select wid,fname,salary,salary-20000 as newsalary from worker where wid >03;
select wid,fname,salary,salary-30000 as newsalary from worker group by departmant;
select wid,fname,salary,salary*4 as wsalary from worker;
select wid,fname,salary,salary/2 as esalary from worker;
select wid,fname,salary,salary%3 as salary from worker;
delete from worker where wid=08;
commit;
update worker set fname='ram' where wid='02';rollback;
 commit;
 rollback;
select*from worker;
update worker set lname='saini' where wid=02;rollback;
update worker set fname='tarun' where wid=04; 
savepoint worker;
create table development( wid int, fname varchar(30),salary int);
select *from development;
drop table development;
insert into development values(01, 'aakash', 72000);
savepoint a;
insert into development values(02,'anjali',80000);
savepoint b;
insert into development values(03,'pranav',37000);
savepoint c;
insert into development values(04,'sunil',87000);
savepoint d;
insert into development values(05,'vivek',400000);
savepoint  e;
rollback to a;
delete from development where wid =02; rollback;
select wid,fname,salary from worker union select wid,fname,salary from development;

select wid,fname,salary from worker  where wid>02
intersect
select wid,fname,salary from development where wid>02;

select salary from worker 
minus 
select salary from development;

select wid,fname,salary from worker union all select wid,fname,salary from development;

create index meena on worker(wid,fname,lname,salary,departmant);

select*from  worker where mod (wid,2)=1;

select*from worker where mod (wid,2)=0;
create table mangment select *from worker;
select*from mangment;
select*from worker;
select top salary from( select distinct top salary from worker order by salary desc) order by salary asc;
select max(salary) from worker where salary not in (select max (salary) from worker);
select getdate(2015-06-12);
select upper (fname)from worker;
select distinct fname from worker;
select instr( fname,binary'v') from worker where fname='vipul';

