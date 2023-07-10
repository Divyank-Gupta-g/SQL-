USE classicmodels;

-- Customers who have ordered the product with product code "S18_1749"

SELECT * FROM customers 
	WHERE customerNumber IN (SELECT customerNumber FROM orderdetails JOIN orders USING (orderNumber) WHERE productCode = "S18_1749");
    
SELECT * FROM customers JOIN orders USING (customerNumber) JOIN orderdetails USING (orderNumber) WHERE productCode = "S18_1749";
SELECT DISTINCT * FROM customers JOIN orders USING (customerNumber) JOIN orderdetails USING (orderNumber) WHERE productCode = "S18_1749";

