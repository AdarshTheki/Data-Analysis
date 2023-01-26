USE `simplecode`;
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

CREATE TABLE `simplecode`.`student` (
  `roll_no` int not null,
  `name` varchar(45) null,
  `age` varchar(45) null,
  `city` varchar(45) null,
  `DOB` date null,
  `stream` varchar(45) null,
  `total_marks` varchar(45) null,
  primary key (`roll_no`));
INSERT INTO `simplecode`.`student` (roll_no,name,age,city,DOB,stream,total_marks) VALUES 
( 01,'rohan',21,'bangalore','1996-06-26','cse',977 ),
( 02,'aman',22,'pune','1995-05-14','eee',922 ),
( 03,'rahul',24,'karnatak','1996-06-26','cbe',877 ),
( 04,'ganvir',20,'india','1998-06-06','cse',900 ),
( 05,'ankita',21,'bangalore','1990-12-01','cbe',077 ),
( 06,'gopal',24,'nagpur','1998-06-15','sbd',1000 ),
( 07,'rohan',21,'bangalore','1996-06-26','cse',977 ),
( 08,'aman',22,'pune','1995-05-14','eee',922 ),
( 09,'rahul',24,'karnatak','1996-06-26','cbe',877 ),
( 10,'ganvir',20,'india','1998-06-06','cse',900 ),
( 11,'ankita',21,'bangalore','1990-12-01','cbe',077 ),
( 12,'gopal',24,'nagpur','1998-06-15','sbd',1000 );
SELECT * FROM employee;
SELECT * FROM student;


