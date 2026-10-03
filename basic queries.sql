create database college;

use college;

CREATE TABLE organization_staff (
    emp_id INT PRIMARY KEY,
    emp_code VARCHAR(10) NOT NULL UNIQUE,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(10) NOT NULL,
    email VARCHAR(20) UNIQUE,
    age INT CHECK(age >= 18),
    salary DECIMAL(10,2) DEFAULT 30000.00,
    department VARCHAR(30) NOT NULL DEFAULT 'general',
    gender CHAR(1) CHECK (gender IN ('M','F','O'))
);

select * from organization_staff ;

INSERT into organization_staff (emp_id, emp_code, first_name, last_name, email, age, salary, department, gender) 
VALUES 
(1, 6001, 'Aarav', 'Shinde', 'aarav@gmail.com', 25, 32000.00, 'IT', 'M'),
(2, 6002, 'Ananya', 'Deshmukh', 'ananya@gmail.com', 23, 38000.00, 'HR', 'F'),
(3, 6003, 'Vihaan', 'Joshi', 'vihaan@gmail.com', 27, 45000.00, 'Finance', 'M'), 
(4, 6004, 'Ishita', 'Kulkarni', 'ishita@gmail.com', 22, 30000.00, 'Marketing', 'F'), 
(5, 6005, 'Aditya', 'Patil', 'aditya@gmail.com', 29, 52000.00, 'Sales', 'M');
select *from organization_staff  ;
-- update
update organization_staff set first_name="bhavana", gender="F",last_name="shapurkar",department="manager" where emp_id=1;

-- delete
delete from organization_staff  where emp_id=5;
delete from organization_staff where emp_id in (4,3);
delete from organization_staff where emp_id=1 or  emp_id=2;

INSERT into organization_staff (emp_id, emp_code, first_name, last_name, email, age, salary, department, gender) 
VALUES 
(04, 6012, 'Ananya', 'Deshmukh', 'priya@gmail.com', 23, 38000.00, 'HR', 'F'),
(10, 6014, 'Ishita', 'Kulkarni', 'ishit12@gmail.com', 22, 30000.00, 'Marketing', 'F'), 
(51, 6015, 'Aditya', 'Patil', 'aditya45@gmail.com', 29, 52000.00, 'Sales', 'M');

-- alter
alter table organization_staff add phone_number int unique;
-- drop
alter table  organization_staff drop phone_number;

-- modify
alter table organization_staff modify email varchar(20) not null;
-- rename column
alter table  organization_staff rename column first_name to new_name;

-- truncate 
truncate table organization_staff;
-- drop table
drop table organization_staff;
CREATE TABLE organization_staff (
    emp_id INT PRIMARY KEY,
    emp_code VARCHAR(10) NOT NULL UNIQUE,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(10) NOT NULL,
    email VARCHAR(20) UNIQUE,
    age INT CHECK(age >= 18),
    salary DECIMAL(10,2) DEFAULT 30000.00,
    department VARCHAR(30) NOT NULL DEFAULT 'general',
    gender CHAR(1) CHECK (gender IN ('M','F','O'))
);
drop table organization_staff;
CREATE TABLE organization_staff (
    emp_id INT PRIMARY KEY,
    emp_code VARCHAR(10) NOT NULL UNIQUE,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(10) NOT NULL,
    email VARCHAR(20) UNIQUE,
    age INT CHECK(age >= 18),
    salary DECIMAL(10,2) DEFAULT 30000.00,
    department VARCHAR(30) NOT NULL DEFAULT 'general',
    gender CHAR(1) CHECK (gender IN ('M','F','O'))
);
-- multiple value modify
alter table organization_staff modify email varchar(20) not null,modify first_name VARCHAR(25);
select * from orders ;
-- select column  
select orderid ,country from orders;
-- distinct
select distinct(region) from orders;
select distinct(segement) from orders;
select distinct(shipmode) from orders;

select distinct(region) as unique_regions from orders;
select distinct(shipmode) as unique_shipmode from orders;
select distinct(segement) as unique_segement from orders;

-- select column south coloumn data
select * from orders where region="south";
select * from orders where segement="consumer";
select * from orders where shipmode="second class";
select * from orders where region="south";
select * from orders where quantity<3;
select * from orders where sales>200;
-- ignoring  duplicate values from the whole tabel
select distinct * from orders;
-- to check the  condition quantity is greater than 3 (AND or OR)
select * from orders where region="south" and quantity>3;

-- select * from orders where region="south" and region="east";

select * from orders where region="south" or region="east";
select * from orders where sales>200 and  shipmode="second class"; 
select * from orders;

--  where not
select * from orders where not category="technology";
select * from orders where not region="south";
select * from orders where not postal=94122;

-- column asc and dec
select * from orders order by profit;
select * from orders where region="south" order by sales desc;
select * from orders where segement="corporate" order by profit;
select *from orders where category="technology" order by sales;

-- limit first 5 rows
select * from orders limit 1,10;
select * from orders limit 1,100;
select * from orders  order by sales desc limit 10;
select *from orders where region="south" order by sales desc limit 10;
select *from orders where region="west" order by sales asc limit 10;
select * from orders  order by profit desc limit 1,10;

-- check null 
select * from  orders where  segement is null;
select * from  orders where  segement is  not null;

select * from  orders where postal is  null;
select * from  orders where shipmode is  null;

-- in  (multiples time select insted of or)
 select * from orders where subcategory in ("paper","storage","tables");
 
 -- between
 select * from orders where profit between 200 and 300;
 
 select * from orders where quantity between 3 and 7;
 select * from orders where discount between 0.2 and 0.8;
 select * from orders where sales >1000;
 
 -- like 
 -- W% STRTING
 -- %W ENDING 
 -- T %Y MIDDLE
 -- %NO %
 -- ART=A_ _ UNDERSCORE
 select * from orders where region like "w%";
select * from orders where subcategory like "p%";
select * from orders ;
select * from orders where   city like "%c";

select * from orders where   city like "t%c";
select * from orders where   cname like "%Gute%";
select * from orders where   region like "S___h";
select * from orders where   region like "W_s_";
-- count
select count(*) from orders;
select count(region="south") from orders;
select count(region) from orders where region="south";
select count(shipmode) from orders where shipmode="second class";
select count(postal) from orders where postal=42420;
select count(shipmode) from orders where shipmode="second class";
select count(segement) from orders where segement="consumer";

-- sum
select sum(sales) from orders ;
select sum(profit) from orders where region="south";
select sum(sales) from orders where subcategory="art";
select sum(sales) from orders where state="florida";
select sum(profit) from orders where category="furniture";

-- min
select min(sales) from orders ;
select min(profit) from orders where region="south";
select min(sales) from orders where subcategory="art";
select min(sales) from orders where state="florida";

-- max
select max(sales) from orders ;
select max(profit) from orders where region="south";
select max(sales) from orders where subcategory="art";
select max(sales) from orders where state="florida";

-- avg
select avg(sales) from orders ;
select avg(profit) from orders where region="south";
select avg(sales) from orders where subcategory="art";
select avg(sales) from orders where state="florida";
select avg(profit) from orders where category="furniture";

select * from orders ;

-- group by
select sum(sales),region from  orders  group by region;

select sum(profit),category from  orders  group by category;
select avg(discount),region from  orders  group by region order by  avg(discount)desc;
select sum(sales),subcategory from  orders  group by subcategory order by sum(sales);
select count(subcategory),subcategory from orders group by  subcategory order by count(subcategory) desc limit 0,3;

-- having (columns)
select sum(sales),region from  orders  group by region having sum(sales)>500000;
select sum(sales),subcategory from  orders  group by subcategory having sum(sales)>300000;
select count(region),region from  orders  group by region having count(region)>2000;
select avg(discount),region from  orders  group by region  having avg(discount)>0.2;

use college;

-- subquery
select * from orders where sales=(select min(sales) from orders);
select * from orders where quantity<(select avg(quantity) from orders);
select * from orders where sales>(select avg(sales) from orders);
select * from orders where discount>(select avg(discount) from orders);





