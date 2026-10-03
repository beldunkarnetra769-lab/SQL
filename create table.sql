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