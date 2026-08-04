-- Inventory & Business Insights


-- 3.1 Which books currently have the lowest stock levels?

SELECT 
    Book_ID,
    Title,
    Stock AS stock_level
FROM Books
WHERE Stock <= 5
ORDER BY Stock ASC;



-- 3.2 Which authors have generated the highest total revenue?


SELECT 
    b.Author,
    ROUND(SUM(o.Total_Amount), 2) AS total_revenue
FROM Books b
JOIN Orders o 
    ON b.Book_ID = o.Book_ID
GROUP BY 
    b.Author
ORDER BY 
    total_revenue DESC;
    
    
    
-- 3.3 Which books have never been ordered?

SELECT 
    b.Book_ID,
    b.Title
FROM Books b
LEFT JOIN Orders o 
    ON b.Book_ID = o.Book_ID
WHERE o.Book_ID IS NULL;



-- 3.4 Which genres have the largest number of books in the inventory?

SELECT 
	Genre, 
    COUNT(*) AS Stock
FROM Books 
GROUP BY 
	Genre
ORDER BY Stock DESC;



-- 3.5 Which books have high sales but currently have low inventory, indicating they should be restocked?


WITH book_sales AS (
    SELECT
        b.Book_ID,
        b.Title,
        b.Stock,
        SUM(o.Quantity) AS total_books_sold
    FROM Books b
    JOIN Orders o
        ON b.Book_ID = o.Book_ID
    GROUP BY
        b.Book_ID,
        b.Title,
        b.Stock
)
SELECT
    Title,
    total_books_sold,
    Stock
FROM book_sales
WHERE total_books_sold > ( SELECT AVG(total_books_sold) FROM book_sales)
AND Stock < ( SELECT AVG(Stock) FROM book_sales)
ORDER BY total_books_sold DESC;










