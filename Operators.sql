SHOW databases;
USE classicmodels;
SELECT * FROM payments;
SELECT * FROM payments Where amount<=50000;
SELECT * FROM payments WHERE amount<=50000 AND amount>=40000;
SELECT * FROM payments WHERE amount<=50000 OR amount>=40000;
SELECT * FROM payments WHERE NOT (amount<=50000 AND amount>=40000);
SELECT * FROM payments ANY;

SELECT * FROM payments WHERE amount BETWEEN 40000 AND 50000;
SELECT * FROM payments WHERE amount BETWEEN 40000 AND 50000 ORDER BY amount;

SELECT * FROM employees;
SELECT * FROM employees WHERE officeCode IN (1, 5, 7);
SELECT * FROM employees WHERE officeCode IN (1, 5, 7) ORDER BY officeCode;
SELECT * FROM employees WHERE officeCode IN (1, 5, 7) ORDER BY officeCode DESC;
SELECT * FROM employees WHERE jobTitle LIKE "%Sales%";
SELECT * FROM employees WHERE firstName LIKE "%e";
SELECT * FROM employees WHERE firstName LIKE "__s%";			-- TWO CHARACTER BEFORE s AND any number of words after s.

SELECT * FROM employees WHERE jobTitle REGEXP "Sales";
SELECT * FROM employees WHERE jobTitle REGEXP "^Sales";			-- SALES AT BEGINING.
SELECT * FROM employees WHERE jobTitle REGEXP "rep$";			-- rep at the end.
SELECT * FROM employees WHERE firstName REGEXP "^[f,g]";		-- f or g at the begining.
SELECT * FROM employees WHERE firstName REGEXP "^[a-f]";		-- a to f at the begining.
SELECT * FROM employees LIMIT 10;								-- FIRST 10 RECORDS
SELECT * FROM employees LIMIT 9, 11;							-- SKIP FIRST 9 RECORDS AND PRINT NEXT 11 RECORDS.

SELECT * FROM orders;
SELECT * FROM orders WHERE comments IS NULL;
SELECT * FROM orders WHERE comments IS NOT NULL;
