USE classicmodels;

-- Print payment table with the average payment and the difference of payment from average.

SELECT *, (SELECT AVG(amount) FROM payments) AS averageAmount, (amount - (SELECT averageAmount)) AS Difference FROM payments ;

-- Print payment table with the average payment and the difference of payment from average where difference>0.

SELECT *, (SELECT AVG(amount) FROM payments) AS averageAmount, (amount - (SELECT averageAmount)) AS Difference FROM payments HAVING Difference>0;

SELECT * FROM 
	(SELECT *, (SELECT AVG(amount) FROM payments) AS averageAmount, (amount - (SELECT averageAmount)) AS Difference FROM payments) AS summary	-- creating view table
    WHERE Difference>0;