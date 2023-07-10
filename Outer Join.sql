USE classicmodels;

-- Inner Join

SELECT c.customerNumber, country, customerName, orderNumber FROM customers c JOIN orders o ON c.customerNumber = o.customerNumber;

-- Left Outer Join

SELECT c.customerNumber, country, customerName, orderNumber FROM customers c LEFT JOIN orders o ON c.customerNumber = o.customerNumber;

-- Right Outer Join

SELECT c.customerNumber, country, customerName, orderNumber FROM customers c RIGHT JOIN orders o ON c.customerNumber = o.customerNumber;

-- Self Outer Join

SELECT * FROM employees;

SELECT emp.employeeNumber, emp.firstName, emp.jobTitle, mgr.firstName AS "Manager Name", mgr.jobTitle AS "Mnager Title"
		FROM employees emp LEFT JOIN employees mgr ON emp.reportsTo = mgr.employeeNumber;