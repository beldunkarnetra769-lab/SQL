create database college;

use college;

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