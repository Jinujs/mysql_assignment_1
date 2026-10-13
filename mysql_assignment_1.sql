create database employee;
use employee;

create table Departments (
   department_id int,
   department_name varchar(100)
);

create table Location (
    locaton_id int,
    location varchar(30)
);

create table employees (
    employee_id int,
    employee_name varchar(50),
    gender enum('M','F'),
    age int,
    hire_date date,
    desgnation varchar(100),
    department_id int,
    location_id int,
    salary decimal(10,2)
);

-- ALTER
alter table employees add email varchar(50);   
alter table employees modify desgnation varchar(200);
alter table employees drop column age;
alter table employees rename column hire_date to date_of_joining;

-- RENAME
rename table Departments to Departments_Info;
rename table Location to Locations;

-- TRUNCAT, DROP
truncate table employees;
drop table employees;
drop database employee;

-- RECREATE DATABASE
create database employee;
use employee;

create table Departments (
   department_id int unique,
   department_name varchar(100) unique not null
);

create table Location (
    locaton_id int primary key unique auto_increment,
    location varchar(30) not null
);

create table employees (
    employee_id int primary key auto_increment,
    employee_name varchar(50) not null,
    gender char(1) check(gender in ('M', 'F')),
    age int check(age >=18),
    hire_date date default(current_date()),
    desgnation varchar(100),
    salary decimal(10,2),
    department_id int,
    location_id int,
    foreign key(department_id) references Departments(department_id),
    foreign key(location_id) references Location(locaton_id)
);


