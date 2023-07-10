USE classicmodels;

SELECT c.customerNumber, c.customerName, o.orderNumber 
		FROM customers c JOIN orders o ON c.customerNumber = o.customerNumber;
        
-- We can simplify it with the help of Using clause.

SELECT c.customerNumber, c.customerName, o.orderNumber 
		FROM customers c JOIN orders o USING (customerNumber);
        
-- Its limitation is column name should be same in both tables.