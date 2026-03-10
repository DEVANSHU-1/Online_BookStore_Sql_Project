CREATE TABLE Books(
Book_ID SERIAL PRIMARY KEY,
Title VARCHAR(100),
Author VARCHAR(100),
Genre VARCHAR(50),
Published_year INT,
Price Numeric(10,2),
STOCK INT
);
CREATE TABLE Customers(
Customer_ID SERIAL PRIMARY KEY,
Name VARCHAR(100),
Email VARCHAR(100),
Phone VARCHAR(15),
City Varchar(55),
Country Varchar(150)
);
CREATE TABLE Orders(
Order_id SERIAL PRIMARY KEY,
Customer_ID INT REFERENCES Customers(Customer_ID),
Book_ID INT REFERENCES Books(Book_ID),
Order_Date DATE,
Quantity INT,
Total_Amount Numeric(10,2)
);
SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;