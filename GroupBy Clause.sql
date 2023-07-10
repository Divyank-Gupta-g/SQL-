USE classicmodels;

-- Syntax of GROUP BY clause.

-- SELECT c1, c2 ____ cn, Aggregate_Function(ci) FROM table 
--	WHERE condition				(optional)
--   GROUP BY c1, c2, _____ cn;

-- count of employees that work in same office and display their office code, city and state.

SELECT * FROM employees;

SELECT officeCode, COUNT(employeeNumber) AS employeeCount FROM employees GROUP BY officeCode;

SELECT officeCode, COUNT(employeeNumber) AS employeeCount, city, state FROM employees JOIN offices USING (officeCode) GROUP BY officeCode;
