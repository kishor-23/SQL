-- create database
create database test_db_1;
use test_db_1;
drop table employees;
-- create table  
create table employees (
 eid int primary key auto_increment,
 name  varchar(50) not null,
 age int,
 dob date,
 gender varchar(10)  check  (gender in ('Female','male')),
 salary decimal(10,2),
 phoneno varchar(10),
 joining_date date,
 dept_id int,
 dept_name varchar(10)
);
-- alter table
alter table employees drop column dept_name;

-- select only 5 data using limit
select * from employees limit 5;
INSERT INTO employees (name, age, dob, gender, salary, phoneno, joining_date, dept_id)
VALUES
('kishor', 21, '2003-05-23', 'male', 90000, '1234567890', '2024-03-28', 1);
INSERT INTO employees (name, age, dob, gender, salary, phoneno, joining_date, dept_id)
VALUES
    ('arun', 28, '1996-08-20', 'male', 60000.00, '9876543210', '2019-11-10', 2),
    ('samantha', 35, '1989-03-10', 'Female', 75000.00, '4567890123', '2021-02-28', 1),
    ('jaweed', 45, '1979-11-25', 'male', 80000.00, '7890123456', '2018-07-12', 3),
    ('ramani', 32, '1992-06-30', 'male', 55000.00, '2345678901', '2020-05-20', 2),
    ('kaviya', 40, '1984-09-05', 'Female', 70000.00, '8901234567', '2017-03-15', 1),
    ('abinesh', 38, '1986-12-18', 'male', 65000.00, '3456789012', '2019-09-10', 3),
    ('uma', 29, '1995-04-22', 'Female', 62000.00, '9012345678', '2020-10-01', 4),
    ('surya', 42, '1982-11-08', 'male', 78000.00, '5678901234', '2016-08-25', 1),
    ('sneha', 33, '1989-07-12', 'Female', 68000.00, '0123456789', '2018-04-30', 3);
     
     select * from employees where salary>60000;
     -- sort data using order by  
     select * from employees order by salary  desc limit 3;
    select dept_id, count(*) as emp_count_by_Id from employees 
    group by dept_id ;
    alter table employees ;
    
    create table department(
     id int primary key auto_increment,
     name varchar(30) not null
     );
-- adding foreign key 
    ALTER TABLE employees
ADD CONSTRAINT FK_depart
FOREIGN KEY (dept_id) REFERENCES department(id);
    insert into department(id,name) values (1,"development"),(2,"testing"),(3,"hr"),(4,'data security');
    
-- joining table
select e.eid,e.name,e.salary,e.dept_id,d.name as department_name from employees e join department d on  e.dept_id=d.id; 


-- java class related table
create database core_java_db;
use core_java_db;
drop table cab;
create table cab(
 cab_id int primary key auto_increment,
 cab_type varchar(20) not null,
 cab_price  decimal(10,2) not null
);
insert into cab(cab_type,cab_price) values ('Micro',10),('mini', 15),('Prime',20);
insert into cab(cab_type,cab_price) values ('ultra',10);
insert into cab(cab_type,cab_price) values ('pro',30);
select * from cab;
drop table movie;
create table movie(
    id int primary key auto_increment, 
	 name varchar(20) not null,
    review text,
    rating decimal(9,2)
);

create table bank(
id int primary key auto_increment,
    bankName varchar(20),
     branch   varchar(20),
    ifsc varchar(20)
);
create table bank_account(
   name varchar(30),
	    accountNumber int primary key auto_increment,
		phoneno varchar(12),
	savings decimal(9,2)
);
select * from movie;



INSERT INTO movie (name, review, rating) VALUES
('Inception', 'A mind-bending thriller that keeps you on the edge of your seat.', 8.7),
('Shawshank Redemption', 'A timeless classic with exceptional storytelling.', 9.3),
('The Godfather', 'An epic mafia drama that set the standard for the genre.', 9.2);

INSERT INTO bank (bankName, branch, ifsc) VALUES
('ABC Bank', 'Main Street', 'ABC123'),
('XYZ Bank', 'Downtown', 'XYZ456'),
('PQR Bank', 'Park Avenue', 'PQR789');

INSERT INTO bank_account (name, phoneno, savings) VALUES
('John Doe', '123-456-7890', 5000.00),
('Jane Smith', '987-654-3210', 8000.00),
('Alice Johnson', '555-555-5555', 10000.00);


insert into movie(name,review,rating) values('iron man','good movie',5);
insert into movie(name,review,rating) values('spider man','good movie',2);
