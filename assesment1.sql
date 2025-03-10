show tables;
show databases;

create table customer(
id int primary key,
name varchar(32),
age int,
city varchar(50));
CREATE TABLE product(
id INT NOT NULL,
name VARCHAR(32),
price DOUBLE,
quantity INT,
cust_id INT);
insert into customer values
(1,'Rohan', 24, 'Kolkata'),
(2,'Aman', 23, 'Patna'),
(3, 'Prakash', 22, 'Behala'),
(4, 'Tathagata', 23, 'Bankura'),
(5, 'Abir', 22, 'Kol'),
(6, 'John', 35, 'ABC');
INSERT INTO product values
(1001, 'Rice', 60, 2, 1),
(1002, 'Dal', 90, 1, 2),
(1003,'Besan', 30, 3, 3),
(1004,'Pen', 350, 5, 4),
(1005,'Water', 50, 1, 5),
(1006,'Water', 50, 1, 1),
(1007,'Pen', 350, 5, NULL),
(1008,'newitem', 450, 10, NULL);

select *
from customer as c inner join product as p
on c.id =  p.cust_id
order by p.price*p.quantity desc;

select *
from customer as c left join product as p
on c.id =  p.cust_id;

select *
from customer as c right join product as p
on c.id =  p.cust_id;

select *
from customer as c left join product as p
on c.id =  p.cust_id
union
select *
from customer as c right join product as p
on c.id =  p.cust_id;

create table employee(
emp_id INT, 
emp_name varchar(50), 
emp_sal double);

insert into employee
values
(1001, 'Raghu', 50000),
(1002, 'Ram', 35000),
(1003, 'Rajan', 60000),
(1004, 'Nitin', 85000),
(1005, 'Nisha', 80000),
(1006, 'Abhinav', 40000),
(1007, 'Rohan', 25000);

desc employee;

select * from employee;

select emp_sal as minimum_salary
from employee 
where emp_sal = (select min(emp_sal) from employee);

select emp_sal as maximum_salary
from employee 
where emp_sal = (select max(emp_sal) from employee);

select max(emp_sal) as second_highest_salary from employee where emp_sal<(select max(emp_sal) from employee);

select emp_sal as second_highest_salary from employee order by emp_sal desc limit 1, 1;

select *
from customer as c inner join product as p
on c.id =  p.cust_id
order by p.price*p.quantity desc;
select* from employee;
-- Q4. aggregate functions.
select sum(emp_sal) as sum, avg(emp_sal) as average_salary from employee group by salary;

-- Q5. String functions
select concat(emp_id, '_', emp_name) as unique_name,
substring(emp_name, 1, 3 ) as first_three,
trim('100' from emp_id) as trimmed_id
 from employee;

