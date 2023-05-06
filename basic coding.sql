# for creating a database!
create database myDB;
Use myDB;
#This command is used to view already created data base 

#better we save the script 'startSql'
create table mytable (Id integer, Firstname varchar(100),lastname varchar(50));
# integers use for null values and numbers
#varchar use for inserting alphabets

 
insert into mytable values(01,'mohit','rohilla');
insert into mytable values(02,'rohit','rohilla');
insert into mytable values(03,'rahul','rohilla');
select*from mytable;
# To Display Table contents

update mytable
set lastname = 'mishra'
where Id = 02;
#To update the data

update mytable
set lastname = 'malik'
where Id =01;

select *from mytable where id = 01;
#to retrive the data

select *from mytable where id = 02 ;
show table status;

show databases;


create table pgdm(id  integer, firstname varchar (1000));
show databases;
insert into pgdm values(01,mohit);
insert into pgdm values (02,manish);
create table pgdm2(rollnumber integer,firstname varchar(1000),lastname varchar (2000));
insert into pgdm2 values(01,'mohit','rohilla'),
(02,'manish','malik');
select*from pgdm2;
#for null values write int
select*from pgdm2;
alter table pgdm2 add subject character(100);
update pgdm2 set subject = 'Business analytics' where rollnumber =01;
update pgdm2 set subject='Business analytics'where rollnumber =02; 
insert into pgdm2 values (03,'chirag','malik','Business analytics');
select firstname,subject from pgdm2;
alter table pgdm2 add marks int;
update pgdm2 set marks= '35'where rollnumber =01;
update pgdm2 set marks =30 where rollnumber =02;
update pgdm2 set marks =25 where rollnumber =03;
select firstname ,marks from pgdm2;
create table grades (id int,
firstname character(100),
lastname varchar(100),
Gender enum('m','f'),
quiz int,
final int ,
passfail character (100)); 
use mydb;
select*from grades;