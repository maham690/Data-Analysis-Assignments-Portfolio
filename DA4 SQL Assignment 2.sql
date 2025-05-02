-- ASSIGNMENT 2
-- Total marks = 35
-- Please use your practice and DA4_database schemas for this assignment. The tables you will need are mentioned in the exercises
-- Please write your code under each question and submit this .sql file. Don't submit anything else.

-- -----------------------------------------------------------------------------------
-- DDL/DML [10 marks]
-- -----------------------------------------------------------------------------------

-- the str_to_date() function takes 2 inputs: an input date and a format string that lets it know what the format of the input date is.
-- using that format string, it extracts the day, month and year from the input date and outputs the date in the correct format (YYYY-MM-DD)
-- https://www.w3schools.com/sql/func_mysql_str_to_date.asp
-- Please do not confuse the format string as format for output date. It is to let the function know the format of your INPUT date. 


-- examples:
select str_to_date("24th Mar 2024", "%D %b %Y");
select str_to_date("24th/Mar/2024", "%D/%b/%Y");


-- [5 + 1 marks]
-- using str_to_date(), correct the dates in the hire_date column in your employees table in your practice schema






-- after correcting the dates, change the datatype of hire_date from text to date





-- [4 marks]
-- Write an update statement to remove the " st" from the street column in your customers table in DA4_database schema
-- i.e. instead of Main St, Elm St, the column should show Main, Elm etc
-- left, right, mid, length functions all exist in mysql. you can use those.
-- substring_index() is a helpful function too






-- -----------------------------------------------------------------------------------
-- Queries [25 marks]
-- (use your customers, orders and items tables in DA4_database schema)
-- -----------------------------------------------------------------------------------

-- [5 marks]
-- For only between the dates of "2022-05-15" and "2022-08-15", find out customer_ids and total no of orders for customers who have placed more than 2 orders 
-- return results sorted by count in descending order






-- [5 + 2 + 3 marks]
-- You wish to find out how many orders the company received in each season 

-- For each order invoice, find out if the order is a winter, spring, summer or fall order
-- if the order is placed in the months of Nov, Dec or Jan - winter order
-- if the order is placed in the months of Feb, Mar, or Apr - spring order
-- if the order is placed in the months of May, Jun or Jul - summer order
-- if the order is placed in the months of Aug, Sept or Oct - fall order

-- Show results sorted by order_date






-- Show only the summer orders






-- Show how many orders from each season





-- [5 marks]
-- Use a join to find out how many orders per city






-- [5 marks]
-- Use a join to find out item_id, item_name and item_type for all items that have not been ordered. 













