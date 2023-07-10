USE classicmodels;

-- SELF JOIN

SELECT* FROM employees;

SELECT * FROM employees emp JOIN employees mgr ON emp.reportsTo = mgr.employeeNumber;