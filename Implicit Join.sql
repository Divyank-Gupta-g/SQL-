USE classicmodels;

-- Implicit Join (We use WHERE clause instead of JOIN keyword)

SELECT * FROM payments;
SELECT * FROM customers;
SELECT * FROM payments p, customers c WHERE p.customerNumber = c.customerNumber;