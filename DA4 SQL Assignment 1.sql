-- ASSIGNMENT 1 
-- Total marks = 35
-- Please use your employees_assignment table (see below) for this assignment.
-- Please write your code under each question and submit this .sql file. Don't submit anything else.
-- Not everything you are required to do in the assignment was covered in the classes. Please google what you don't know.


-- before starting, create a table called employees_assignment for the sake of the assignment and insert data into it by running the following statements:

create table practice.employees_assignment (

employee_id int primary key,
job_id char(4),
first_name varchar(20),
last_name varchar(20),
age int default 0,
phone_number varchar(20),
salary int,
hire_date text

);

insert into practice.employees_assignment
			(employee_id, job_id, first_name, last_name, age, phone_number, salary, hire_date)
values 
(1, "E101", 'John', 'Doe', 28, '555-1234', 45000, '1/15/2020'),
(2, "E102", 'Jane', 'Smith', 34, '555-5678', 52000, '3/22/2019'),
(3, "E103", 'Michael', 'Johnson', 45, '555-8765', 61000, '7/30/2018'),
(4, "E101", 'Emily', 'Davis', 26, '555-4321', 75000, '5/11/2021'),
(5, "E105", 'David', 'Brown', 50, '555-1357', 35000, '2/14/2017'),
(6, "E104", 'Sarah', 'Williams', 31, '555-2468', 85000, '4/4/2022'),
(7, "E107", 'Daniel', 'Jones', 29, '555-7890', 43000, '8/20/2020'),
(8, "E108", 'Sophia', 'Garcia', 38, '555-3141', 80000, '2/17/2019'),
(9, "E106", 'Matthew', 'Martinez', 43, '555-2718', 72000, '9/15/2019'),
(10, "E102", 'Olivia', 'Hernandez', 24, '555-1589', 59000, '11/1/2021'),
(11, "E107", 'James', 'Lopez', 37, '555-4567', 63000, '12/5/2018'),
(12, "E105", 'James', 'Wilson', 29, '555-2710', 90000, '10/10/2017');


select * from employees_assignment;


-- -----------------------------------------------------------------------------------
-- ADDING COLUMNS (4 + 6)
-- -----------------------------------------------------------------------------------

-- add a column called bonus_pct to the employees_assignment table after the salary column. its datatype should be float. 






/*
A GENERATED column is a column that is automatically generated from a formula. We don't provide values to it ourselves.
I need to add a column for total_bonus
Since I know that total_bonus = bonus_pct * salary, I can turn total_bonus into a generated column. 
Then, while adding a new row, I don't have to give a value for total_bonus. 
Its value will automatically be generated using the formula (bonus_pct * salary)
*/

-- add a generated column called total_bonus to the employees_assignment table. (A link to help you do this: https://www.mysqltutorial.org/mysql-basics/mysql-generated-columns/)
-- the generated column should be stored and its datatype should be float 
-- its position should be after the bonus_pct column (note: this part will come at the end of the alter statement, after specifying col name, datatype, and how it is to be generated)






-- -----------------------------------------------------------------------------------
-- MODIFICATIONS (3 + 2 + 3 + 2)
-- -----------------------------------------------------------------------------------

/*
AUTOINCREMENT (only works for integer-based primary key columns):
changing a simple, integer-based primary key to auto_increment means that any time you add a new row and you don't give a value for the key,
it will automatically increment the previously inserted key by 1 and assign that value to the new row. You can also set the starting point for auto_increment columns.
*/

-- modify the employee_id column in the employees_assignment table to add the auto_increment attribute to it





-- now, write a statement to set the auto_increment value to start from 13 (this is also shown in the session 3 manual)





-- modify the bonus_pct column to add a default of 0.5 to it





-- insert the following three new rows into your table. the values are for the following columns:
-- job_id, first_name, last_name, age, phone_number, salary, hire_date
-- I have deliberately left out the values for employee_id, bonus_pct, and total_bonus.
-- If the modifications above have been carried out right, these values should generate automatically.
-- run a select statement to check your insertions


("E101", 'Bill', 'Rogers', 36, '555-3232', 53000, '11/25/2020'),
("E108", 'Micheal', 'Williams',22, '555-4444', 12000, '12/1/2019'),
("E105", 'Dave', 'Johnson', 60, '555-9011', 89000, '7/21/2018');

    
-- -----------------------------------------------------------------------------------
-- UPDATING DATA (5)
-- -----------------------------------------------------------------------------------

-- before updating a table, safe updates need to turned off. run the following command:

set sql_safe_updates = 0;


-- Update the bonus_pct column to be = 0.5 everywhere (i.e. for all rows)
-- link to help you do this: https://www.w3schools.com/mysql/mysql_update.asp





-- -----------------------------------------------------------------------------------
-- QUERIES (3 + 2 + 5)
-- -----------------------------------------------------------------------------------

-- select employee_id, job_id, full_name (first_name and last_name together) and age
-- for all those employees that have a salary below 50000. The results should show in descending order according to age




-- change the query above to only show the oldest employee earning below 50000. Columns are the same as above.





-- show the first_name, last_name and phone_number for the bottom-most earning employee between the ages of 25 and 35 (inclusive)





