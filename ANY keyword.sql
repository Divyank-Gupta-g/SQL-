USE classicmodels;

-- Select clients who have made atleast two payments

SELECT customerNumber, COUNT(*) FROM payments GROUP BY (customerNumber) HAVING COUNT(*) > 1;

SELECT * FROM customers WHERE customerNumber IN 
	(SELECT customerNumber FROM payments GROUP BY (customerNumber) HAVING COUNT(*) > 1);
    
-- Using ANY keyword

SELECT * FROM customers WHERE customerNumber = ANY 
	(SELECT customerNumber FROM payments GROUP BY (customerNumber) HAVING COUNT(*) > 1);