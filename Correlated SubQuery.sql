USE classicmodels;

-- Products whose price are higher than average MSRP in their corresponding productLine.

SELECT * FROM products p WHERE MSRP > (SELECT AVG(MSRP) FROM products WHERE productLine = p.productLine);

-- This is an example of Correlated Subquery as the inner query depends on outer query.