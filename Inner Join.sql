USE classicmodels;

-- Inner Join

SELECT * FROM payments;
SELECT * FROM customers;
SELECT * FROM payments INNER JOIN customers;
SELECT * FROM payments JOIN customers;
SELECT * FROM payments INNER JOIN customers ON payments.customerNumber = customers.customerNumber;
SELECT payments.customerNumber, customerName FROM payments INNER JOIN customers ON payments.customerNumber = customers.customerNumber;
SELECT p.customerNumber, customerName FROM payments p INNER JOIN customers c ON p.customerNumber = c.customerNumber;
