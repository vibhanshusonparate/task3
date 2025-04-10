SELECT * FROM salesdatabase.supermarket_sales;

SELECT branch, SUM(total) AS branch_total_sales
FROM Supermarket_Sales
GROUP BY branch
ORDER BY branch_total_sales DESC;

SELECT TIME(time) AS sale_time, COUNT(*) AS transaction_count
FROM Supermarket_Sales
GROUP BY TIME(time)
ORDER BY transaction_count DESC
LIMIT 5;





SELECT Branch, SUM(Total) AS Total_Sales
FROM Supermarket_Sales
WHERE Total > (SELECT AVG(Total) FROM Supermarket_Sales)
GROUP BY Branch
ORDER BY Total_Sales DESC;


SELECT Payment, SUM(`Tax 5%`) AS Total_Tax
FROM Supermarket_Sales
WHERE `Tax 5%` > (SELECT AVG(`Tax 5%`) FROM Supermarket_Sales)
GROUP BY Payment
ORDER BY Total_Tax DESC;


SELECT Branch, SUM(Total) AS Total_Sales
FROM Supermarket_Sales
GROUP BY Branch
ORDER BY Total_Sales DESC;


SELECT Gender, AVG(Total) AS Average_Spending
FROM Supermarket_Sales
GROUP BY Gender
ORDER BY Average_Spending DESC;

SELECT Branch, AVG(`Gross Margin Percentage`) AS Average_Profit_Margin
FROM Supermarket_Sales
GROUP BY Branch
ORDER BY Average_Profit_Margin DESC;


