CREATE DATABASE OnlineBookStore;

USE OnlineBookStore;

DROP TABLE IF EXISTS Books;
CREATE TABLE Books(
	Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10,2),
    Stock INT
    );

DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers(
	Customer_ID SERIAL PRIMARY KEY,
	Name VARCHAR(100),
	Email VARCHAR(100),
	Phone VARCHAR(100),
	City VARCHAR(50),
	Country VARCHAR(150)
);

DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
	Order_ID SERIAL PRIMARY KEY,
	Customer_ID INT REFERENCES Customers(Custemer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10,2)
);
 

SELECT * FROM Orders;
SELECT * FROM Books;
SELECT * FROM Customers;


SHOW GLOBAL VARIABLES LIKE 'local_infile';

SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE '/Users/ameyakhopekar/Documents/DocumentsOG /Documents /SQL /SQL_Project1/Books.csv'
INTO TABLE Books
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Book_ID, Title, Author, Genre, Published_Year, Price, Stock);

LOAD DATA LOCAL INFILE '/Users/ameyakhopekar/Documents/DocumentsOG /Documents /SQL /SQL_Project1/Orders.csv'
INTO TABLE Orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Order_ID,Customer_ID,Book_ID,Order_Date,Quantity,Total_Amount);

LOAD DATA LOCAL INFILE '/Users/ameyakhopekar/Documents/DocumentsOG /Documents /SQL /SQL_Project1/Customers.csv'
INTO TABLE Customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Customer_ID,Name,Email,Phone,City,Country);


















