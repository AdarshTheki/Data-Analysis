create database `join`;
USE `join`;
CREATE TABLE employee(
  `id` int not null,
  `name` varchar(45) null,
  `age` varchar(45) null,
  `city` varchar(45) null,
  `salary` varchar(45) null,
  primary key (`id`));
INSERT INTO employee (id,name,age,city,salary) VALUES 
(101,'rahul',25,'hyderabad',30000),
(102,'kiran',26,'hyderabad',20000),
(103,'neha',24,'chennai',35000),
(104,'pranay',28,'bangalore',40000),
(105,'anusha',24,'mumbai',40000),
(106,'varsha',25,'hyderabad',23000),
(107,'prem',27,'bangalore',40000),
(108,'pavan',24,'mumbai',35000),
(109,'rohit',28,'bangalore',50000),
(110,'chinmaye',25,'hyderabad',52000),
(111,'rahul',25,'hyderabad',30000),
(112,'kiran',26,'hyderabad',20000),
(113,'neha',24,'chennai',35000),
(114,'pranay',28,'bangalore',40000),
(115,'anusha',24,'mumbai',40000),
(116,'varsha',25,'hyderabad',23000),
(117,'prem',27,'bangalore',40000),
(118,'pavan',24,'mumbai',35000),
(119,'rohit',28,'bangalore',50000),
(120,'chinmaye',25,'hyderabad',52000);

CREATE TABLE student(
  `id` int not null,
  `name` varchar(45) null,
  `no` varchar(45) null,
  `locatiion` varchar(45) null,
  `salary` varchar(45) null,
  primary key (`id`));
INSERT INTO student (id,name,no,locatiion,salary) VALUES 
(101,'rahul',25,'hyderabad',30000),
(010,'kiranl',20,'hydera',20000),
(13,'nea',24,'chennai',35000),
(104,'pranay',28,'bangalore',40000),
(15,'asha',24,'mumbai',40000),
(16,'varsha',25,'hyderabad',23000),
(107,'prem',27,'bangalore',40000),
(108,'pavan',24,'mumbai',35000),
(19,'rohit',28,'bangalore',50000),
(110,'chinmaye',25,'hyderabad',52000),
(11,'rahul',25,'hyderabad',30000),
(132,'kiran',26,'hyderabad',20000),
(130,'neha',24,'chennai',35000),
(114,'pranay',28,'bangalore',40000),
(125,'anusha',24,'mumbai',40000),
(126,'varsha',25,'hyderabad',23000),
(117,'prem',27,'bangalore',40000),
(118,'pavan',24,'mumbai',35000),
(119,'rohit',28,'bangalore',50000),
(120,'chinmaye',25,'hyderabad',52000);
SELECT * FROM employee;
SELECT * FROM student;