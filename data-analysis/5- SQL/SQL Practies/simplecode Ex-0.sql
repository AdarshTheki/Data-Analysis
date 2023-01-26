USE simplecode;
SELECT * FROM employee;

/* addition, subtraction, Multiplication, Division */
SELECT salary + 10000 as empnew_salary FROM employee;
SELECT id, name, salary, salary + 10000 as empnew_salary FROM employee;
SELECT id, name, salary, salary - 2000 as empnew_salary FROM employee;
SELECT id, name, salary, salary * 2 as empnew_salary FROM employee;
SELECT id, name, salary, salary / 2 as empnew_salary FROM employee;

/* =  !=  > < >= <= */
SELECT * FROM employee where salary = 40000;
SELECT * FROM employee where salary != 40000;
SELECT * FROM employee where id > 104;
SELECT * FROM employee where id < 105;
SELECT * FROM employee where salary >= 40000;
SELECT * FROM employee where salary <= 40000;

/* AND, OR, BETWEEN, NOT */
SELECT * FROM employee WHERE salary > 25000 AND city = 'hyderabad';
SELECT * FROM employee WHERE salary < 30000 OR city = 'bangalore';
SELECT * FROM employee WHERE salary between 25000 AND 35000 ;
SELECT * FROM employee WHERE NOT salary = 40000;

/* Boolean */
SELECT * FROM student WHERE city = 'pune';
SELECT * FROM student WHERE total_marks = '877';
/* Numeric operation */
SELECT * FROM student WHERE total_marks / 2 > 480;
SELECT AVG (total_marks) FROM student;
SELECT SUM(total_marks) FROM student;
/* Date */
SELECT * FROM student WHERE DOB > 1995-01-01;
SELECT current_timestamp();