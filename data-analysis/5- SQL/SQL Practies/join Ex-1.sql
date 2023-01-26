use `join`;
/* -> inner join / Simple join */
SELECT employee.id, employee.name, employee.age, student.id, student.name,student.no
FROM employee INNER JOIN student ON employee.id = student.id;

/* -> left join / left outer join */
SELECT employee.id, employee.name, employee.age, student.id, student.name,student.no
FROM employee LEFT JOIN student ON employee.id = student.id;

/* -> right join / right outer join */
SELECT employee.id, employee.name, employee.age, student.id, student.name,student.no
FROM employee RIGHT JOIN student ON employee.id = student.id;

/* -> cross join */
SELECT employee.id, employee.name, employee.age, student.id, student.name,student.no
FROM employee CROSS JOIN student ON employee.id = student.id;

/* -> full outer join */
SELECT employee.id, employee.name, employee.age, student.id, student.name,student.no
FROM employee full join student ON employee.id = student.id;

/* Type of Aggregate Function: */
use `awesome chocolates`;
select * from sale;
select count(*) from sale;
select count(distinct Amount) from sale;
select SPID, count(*) from sale group by SPID;

select SPID, count(*) from sale group by SPID order by SPID desc;
select * from sale where boxes > 100 group by SPID order by SPID;
select SPID, GeoID, Saledate, boxes from sale where SPID='SP20';

select SPID, GeoID, Saledate, boxes from sale where boxes = (select min(boxes) from sales);
select SPID, GeoID, Saledate, boxes from sale where boxes = (select max(boxes) from sales);

SELECT SUM(boxes * Amount) total FROM sales;
SELECT AVG(boxes * Amount) total FROM sales;

SELECT SPID, saledate, amount FROM sales WHERE amount > (SELECT AVG(amount) avage FROM sale);
SELECT AVG(amount) average FROM sale;

/* Type of scalar Function: */
use simplecode;
select ucase(name) from student;
select name, ucase(name) uppername from student;
select name, lcase(name) lowername from student;
select city, length(city) lengthcity from student;
/* mid(name, start_position,length)  */
select name, mid(name,1,4) midname from student;
select name, mid(name,3,2) midname from student; 
select total_marks, round(total_marks, 1) from student;
select name, now() time_stud from student;

