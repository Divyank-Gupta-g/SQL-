USE classicmodels;

-- Products costlier than all trucks.

SELECT * FROM products WHERE MSRP > (SELECT MAX(MSRP) FROM products WHERE productLine REGEXP "Truck");

-- Using ALL keyword.
SELECT * FROM products WHERE MSRP > ALL(SELECT MSRP FROM products WHERE productLine REGEXP "Truck");
