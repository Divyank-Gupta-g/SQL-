USE classicmodels;

-- Join multiple tables.

SELECT * FROM customers;
SELECT * FROM orders;
Select * FROM orderdetails;

SELECT c.customerNumber, customerName, city, orderNumber FROM customers c JOIN orders o ON c.customerNumber=o.customerNumber;
SELECT c.customerNumber, customerName, city, o.orderNumber, productCode FROM customers c 
			JOIN orders o ON c.customerNumber=o.customerNumber 
			JOIN orderdetails od ON o.orderNumber=od.orderNumber;