USE classicmodels;

-- Subquery

-- Find products that have same productline as of "1917 Grand Touring Sedan"

SELECT productLine FROM products WHERE productName = "1917 Grand Touring Sedan";

SELECT * FROM products WHERE productLine = "Vintage Cars";

-- Subquery form

SELECT * FROM products WHERE productLine = (SELECT productLine FROM products WHERE productName = "1917 Grand Touring Sedan");

-- cars that are costlier than "1936 Mercedes-Benz 500K Special Roadster".

SELECT * FROM products WHERE buyPrice > (SELECT buyPrice FROM products WHERE productName = "1936 Mercedes-Benz 500K Special Roadster");

SELECT * FROM products WHERE productLine REGEXP "cars" AND buyPrice > (SELECT buyPrice FROM products WHERE productName = "1936 Mercedes-Benz 500K Special Roadster");

-- cars costlier than the average cost of all cars.

SELECT * FROM products WHERE productLine REGEXP "cars" AND MSRP > ( SELECT AVG(MSRP) FROM products WHERE productLine REGEXP "cars");

-- customers who never placed an order.

SELECT * FROM customers WHERE customerNumber NOT IN (SELECT DISTINCT customerNumber FROM orders);
-- Using Join
SELECT * FROM customers LEFT JOIN orders USING (customerNumber) WHERE orderNumber IS NULL;

