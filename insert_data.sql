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