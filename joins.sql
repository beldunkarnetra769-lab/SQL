create database joins;
use joins;
create table employee
(empid varchar(10) unique,
empname  varchar(20),
salary int, 
deptid varchar(10) primary key);

insert into employee values 
('E1','jhon',45000,'D1'),
('E2','mary',73000,'D2'),
('E3','steve',86000,'D3'),
('E4','helen',60000,'D4'),
('E5','joe',35000,'D7');
select * from employee;

-- create dep table
create table department
(depid varchar(10) primary key,
deptname varchar(10),
dept_head varchar(50));

insert into department values 
('D1','HR','joyal'),
('D2','admin','jayant'),
('D3','sales','radha'),
('D4','IT','roshan'),
('D5','HR','samule');
select * from department;

-- inner join
select e.empid,e.empname,e.salary,d.depid,d.deptname
from employee as e
inner join department as d
on e.deptid=d.depid;

-- 


