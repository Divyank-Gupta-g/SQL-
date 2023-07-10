USE classicmodels;

-- Select customers who have made any payment

SELECT * FROM customers WHERE customerNumber IN (SELECT customerNumber FROM payments);
SELECT * FROM customers WHERE customerNumber IN (SELECT DISTINCT customerNumber FROM payments);

-- Using EXISTS keyword

SELECT * FROM customers c WHERE EXISTS (SELECT customerNumber FROM payments WHERE customerNumber = c.customerNumber);