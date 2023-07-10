USE classicmodels;

-- Natural join does not require any condition, it automatically selects the common column and join both tables.
SELECT orderNumber, customerNumber, customerName
		FROM orders NATURAL JOIN customers;