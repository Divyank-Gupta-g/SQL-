USE classicmodels;

-- Total Payments of each customer after a certain date

SELECT * FROM payments;

SELECT customerNumber, SUM(amount) AS "Total Payment" FROM payments GROUP BY (customerNumber);
SELECT customerNumber, customerName, SUM(amount) AS "Total Payment" FROM payments JOIN customers USING (customerNumber) GROUP BY customerNumber;
SELECT customerNumber, customerName, SUM(amount) AS "Total Payment" FROM payments 
	JOIN customers USING (customerNumber) 
    WHERE paymentDate > "2004-02-02"
    GROUP BY customerNumber;
    
-- Value of each unique order sorted by total order value also display customer name.

SELECT * FROM orderdetails;

SELECT orderNumber, SUM(quantityOrdered*priceEach) AS totalOrderValue FROM orderdetails GROUP BY orderNumber ORDER BY totalOrderValue;

SELECT customerNumber, orderNumber, SUM(quantityOrdered*priceEach) AS totalOrderValue FROM orderdetails
	JOIN orders USING (orderNumber)
    GROUP BY orderNumber ORDER BY totalOrderValue;
    
SELECT customerNumber, customerName, orderNumber, SUM(quantityOrdered*priceEach) AS totalOrderValue FROM orderdetails
	JOIN orders USING (orderNumber)
    JOIN customers USING (customerNumber)
    GROUP BY orderNumber ORDER BY totalOrderValue;
    
-- Value of each unique order sorted by total order value also display customer name and sales person name.
SELECT customerNumber, customerName, orderNumber, salesRepEmployeeNumber, e.firstName, e.lastName, SUM(quantityOrdered*priceEach) AS totalOrderValue FROM orderdetails
	JOIN orders USING (orderNumber)
    JOIN customers USING (customerNumber)
    JOIN employees e WHERE e.employeeNumber = customers.salesRepEmployeeNumber
    GROUP BY orderNumber ORDER BY totalOrderValue;
    
-- count the total number of orders placed by A customer and also display sales person name.alter

SELECT customerNumber, customerName, employeeNumber, e.firstName, SUM(quantityOrdered) AS totalOrder FROM orderdetails 
	JOIN orders USING (orderNumber)
    JOIN customers USING (customerNumber)
    JOIN employees e WHERE e.employeeNumber = customers.salesRepEmployeeNumber
    GROUP BY customerNumber;
    
SELECT customerNumber, customerName, employeeNumber, e.firstName, COUNT(*) AS totalOrderCount FROM orders 
    JOIN customers USING (customerNumber)
    JOIN employees e WHERE e.employeeNumber = customers.salesRepEmployeeNumber
    GROUP BY customerNumber;
    
-- Number of orders through each sales representative

SELECT employeeNumber, firstName, lastName, COUNT(*) AS totalOrders FROM customers
	JOIN employees e WHERE e.employeeNumber = customers.salesRepEmployeeNumber
    GROUP BY salesRepEmployeeNumber;
    
-- Number of orders through each country

SELECT country, COUNT(*) AS totalOrders FROM orders
	JOIN customers USING (customerNumber)
	GROUP BY country;
    
SELECT country, orderDate, COUNT(*) AS totalOrders FROM orders
	JOIN customers USING (customerNumber)
	GROUP BY country, orderDate;
    
-- customers whose total order value is greater than 80000.

SELECT customerNumber, customerName, SUM(quantityOrdered*priceEach) AS totalOrderValue FROM orderdetails
	JOIN orders USING (orderNumber)
    JOIN customers USING (customerNumber)
    GROUP BY customerNumber;
    
SELECT customerNumber, customerName, SUM(quantityOrdered*priceEach) AS totalOrderValue FROM orderdetails
	JOIN orders USING (orderNumber)
    JOIN customers USING (customerNumber)
    GROUP BY customerNumber
    HAVING totalOrderValue > 80000;
