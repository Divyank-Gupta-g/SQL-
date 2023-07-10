USE classicmodels;
----------------------
-- Summarizing Data
----------------------
-- Aggregate Function
-- We can use Aggregate functions on both type of data:- Numeric and Non-Numeric.
----------------------

SELECT * FROM payments;
SELECT MAX(amount) FROM payments;
SELECT MAX(amount) AS highestPayment FROM payments;

SELECT MIN(amount) AS lowestPayment FROM payments;

SELECT MAX(amount) AS highestPayment, MIN(amount) AS lowestPayment FROM payments;

SELECT AVG(amount) AS averagePayment FROM payments;

SELECT SUM(amount) AS sumOfPayment FROM payments;

SELECT COUNT(amount) AS totalNumber FROM payments;				-- Count the total number of non-null values in specified column
SELECT COUNT(*) AS totalEntries FROM payments;					-- Total numer of rows in table.

----------------------------------------
-- The number of orders which are in process.
-------------------

SELECT * FROM orders;

SELECT COUNT(*) AS "Under Processing" FROM orders WHERE status = "In Process";

------------------------------------
-- Most recent order and old order.
-------------------------------------

SELECT MAX(paymentDate), MIN(paymentDate) FROM payments;

------------------------------------------------------------------
-- Count the total number of each type of product.
--------------------------------------------------------------------------

SELECT * FROM products;

SELECT DISTINCT productLine FROM products;				-- remove redundancy from a particular column.

SELECT productLine, COUNT(*) AS productCount FROM products GROUP BY productLine;