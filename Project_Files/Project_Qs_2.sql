-- Customer Analysis


-- 2.1 Which customers have spent the most money?

SELECT 
	c.Name, 
    SUM(o.Total_Amount) AS Money_Spent
FROM Customers c 
JOIN Orders o 
	ON c.Customer_ID = o.Customer_ID 
GROUP BY 
	c.Name
ORDER BY Money_Spent DESC
LIMIT 1;



-- 2.2 Which countries have generated the highest revenue?


SELECT 
	c.Country, 
    SUM(o.Total_Amount) AS Money_Spent
FROM Customers c 
JOIN Orders o 
	ON c.Customer_ID = o.Customer_ID 
GROUP BY 
	c.Country
ORDER BY Money_Spent DESC
LIMIT 1;



-- 2.3 Which customers have placed the highest number of orders?

SELECT
    c.Customer_ID,
    c.Name,
    COUNT(o.Order_ID) AS total_orders
FROM Customers c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
GROUP BY
    c.Customer_ID,
    c.Name
ORDER BY
    total_orders DESC;



-- 2.4 Which cities have the highest number of customers?

SELECT 
	City,
    COUNT(*) AS total_customers
FROM Customers
GROUP BY City
ORDER BY total_customers DESC;



-- 2.5 Which customers have purchased more books than the average customer?

WITH customer_book_totals AS (
SELECT 
	c.Customer_ID,
	c.Name AS customer_name,
	SUM(o.Quantity) AS total_books_purchased
FROM Customers c
JOIN Orders o
	ON c.Customer_ID = o.Customer_ID
GROUP BY 
	c.Customer_ID,
	c.Name
)

SELECT 
    Customer_ID,
    customer_name,
    total_books_purchased
FROM customer_book_totals
WHERE total_books_purchased > (SELECT AVG(total_books_purchased) FROM customer_book_totals)
ORDER BY total_books_purchased DESC;











