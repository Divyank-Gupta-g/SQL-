USE classicmodels;

-- HAVING clause

-- Offices having more than 4 employees.

SELECT officeCode, COUNT(employeeNumber) AS employeeCount, city, state 
	FROM employees JOIN offices USING (officeCode) 
    GROUP BY officeCode
    HAVING employeeCount > 4;
    
-- count country wise order where ordercnt>20

SELECT country, COUNT(*) AS totalOrders FROM orders JOIN customers USING (customerNumber) GROUP BY country HAVING totalOrders>20;