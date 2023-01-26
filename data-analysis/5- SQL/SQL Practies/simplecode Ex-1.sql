CREATE DATABASE project;
USE project;

create table employee select * from `simplecode`.`employee`;
select * from employee;
create table student select * from `simplecode`.`student`;
select * from student;


select distinct salary from employee;					/* Unique values show */
select count(distinct city) from employee;				/* count no. of unique_city */
select count(*) from employee;							/* count no. of rows */
select count(*) from employee where salary = '40000';	/* count no. of 40000 */
select * from employee limit 3;							/* show first 3 employee */
select * from employee order by id, age desc, salary desc; 
select * from employee order by salary desc limit 3;	/* show decending order by last 3 employee*/
select * from employee order by rand() limit 4;			/* Random limit all table 4 */
select * from employee where id in (100, 099, 098);		/* Multiple selection */
select * from employee where id between '104' and '108';
select sum(salary) from employee where city = 'mumbai';
SELECT * FROM student where DOB IS NULL;

/*		Timer 2:32:33 Video 	*/
select salary as 'total_salary' from employee;
update employee set salary = 25000 where id = '101';
select * from employee where name like 'p%' ;
select * from employee order by name asc;
select * from employee where age > 26 order by age desc;
select * from employee order by rand();
select * from employee order by salary desc limit 5;
select * from employee order by name asc, salary desc;

USE simplecode;
SELECT count(*) FROM employee;
SELECT count(*) FROM student;
/*		Timer 2:56:33 Video 	*/
update employee set age='30', name='gopal' where id='102';
delete from employee where DOB='';
delete from new_studet;

