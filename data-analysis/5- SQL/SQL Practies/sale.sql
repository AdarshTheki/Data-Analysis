USE `project`;
select * from sales;

/*  Data Definition Language (DDL)  */
CREATE TABLE XXZ;
DROP TABLE XXZ;
ALTER TABLE sales ADD COLUMN date_of_sale DATE;
ALTER TABLE sales drop date_of_sale;
ALTER TABLE sales ADD username varchar(100);
ALTER TABLE sale rename to sales;
TRUNCATE TABLE sales;

/* Data Manipulation Language (DML)  */
SELECT * FROM sales;  
INSERT INTO sales (SPID, amount) VALUES ('A00', 1001);
INSERT INTO sales VALUES ('000','Curtice Advani','Australia','Smooth Sliky Salty','2681','54');
UPDATE sales SET person = 'Adarsh' WHERE SPID = 'A00';
DELETE FROM sales WHERE SPID = 'XX';

/*  Data Control Language (DCL)  */
GRANT type_of_permission ON project.test TO ‘username’@’localhost’;
GRANT select ON project.test TO ‘adarsh’@’localhost’;
GRANT ALL ON project.* TO ‘adarsh’@’localhost’;
REVOKE type_of_permission ON project.test FROM ‘username’@’localhost’;

/*  Transaction Control Language (TCL)  */
UPDATE sales SET Geo = 'Nagpur' WHERE SPID = 'A00';
COMMIT;
ROLLBACK;

/*		Wildcard Characters
"%" LIKE (‘Mar%’) = Mark, Martin, Margaret
	- a substitute for a sequence of characters
"_" LIKE (‘Mar_’) = Mark, Marv, Marl
	- helps you match a single character
*/
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '2000-01-01';
SELECT * FROM employees WHERE hire_date NOT BETWEEN '1990-01-01' AND '2000-01-01';
SELECT col_1, col_2,… col_n FROM tabl_name WHERE col_name IS NULL;
SELECT col_1, col_2,… col_n FROM tabl_name WHERE col_name IS NOT NULL;

SELECT col_name(s) FROM tabl_name WHERE conditions GROUP BY col_name(s) ORDER BY col_name(s);
/*		WHERE vs. HAVING
- after HAVING, you can have a condition with an aggregate function,
- while WHERE cannot use aggregate functions within its conditions	*/
SELECT col_name(s) FROM tabl_name WHERE conditions GROUP BY col_name(s) HAVING conditions ORDER BY col_name(s);

SELECT col_name(s) FROM tabl_name WHERE conditions GROUP BY col_name(s) HAVING conditions ORDER BY col_name(s) LIMIT numbers;
INSERT INTO table_name (column_1, column_2, …, column_n) VALUES (value_1, value_2, …, value_n);
UPDATE tabl_name SET col_1 = value_1, col_2 = value_2, … WHERE conditions;
ALTER TABLE departments_dup CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;
INSERT INTO departments_dup(dept_no) VALUES ('d010'), ('d011');

IFNULL() works with precisely two arguments, 
COALESCE() can have one, two, or more arguments

SELECT N_columns FROM table_1 UNION ALL SELECT N_columns FROM table_2;

CREATE VIEW view_name AS SELECT column_1, column_2,… column_n FROM tabl_name;

DELIMITER $$ 
CREATE PROCEDURE procedure_name() BEGIN SELECT * FROM employees LIMIT 1000;
END$$

/*	Variables */
DELIMITER $$
CREATE PROCEDURE procedure_name (in (parameter) , out (parameter))

/* User-Defined Functions	*/
DELIMITER $$
CREATE FUNCTION function_name(parameter data_type) RETURNS data_type
DECLARE variable_name data_type
BEGIN
	SELECT …
RETURN variable_name
END$$
DELIMITER ;

/*	Indexes	*/	
CREATE INDEX index_name ON tabl_name (column_1, column_2, …); 

/*	THE CASE STATEMENT	*/
SELECT
	colum_name(s)
	CASE condition_field
		WHEN condition_field_value_1 THEN result_1
		WHEN condition_field_value_2 THEN result_2
		…
		ELSE
	END AS
FROM tabl_name;

