1)Retrieve all books in the "Fiction" genre:
SELECT * FROM Books
WHERE Genre='Fiction';
2) Find books published after the year 1950:
SELECT * FROM Books
WHERE Published_year >1950;
3) List all customers from the Canada
SELECT * FROM Customers
WHERE Country='Canada';
 4)Show orders placed in November 2023:
SELECT * FROM Orders
WHERE Order_Date BETWEEN '2023-11-01' and '2023-11-30'
 5) Retrieve the total stock of books available
SELECT SUM(STOCK) as total_stock FROM Books;
6) Find the details of the most expensive book:
SELECT * FROM Books
ORDER BY Price DESC
LIMIT 1;
7) Show all customers who ordered more than 1 quantity of a book
SELECT C.Customer_id,C.name,COUNT(O.Quantity) AS Qnt FROM Customers C
join Orders O on O.Customer_id=C.Customer_id
GROUP BY C.Customer_ID,C.name
HAVING COUNT(O.Quantity)>1;
8)Retrieve all orders where the total amount exceeds $20
SELECT * FROM Orders 
WHERE Total_Amount >20;
9)List all genres available in the Books table
SELECT Genre FROM Books;
10) Find the book with the lowest stock
SELECT * FROM Books
ORDER BY STOCK ASC
LIMIT 1;
 11) Calculate the total revenue generated from all orders
SELECT SUM(Total_Amount) AS Revenue FROM Orders; 

 12) Retrieve the total number of books sold for each genre
SELECT b.Genre,COUNT(O.Quantity) AS Total_C FROM Books b
JOIN Orders o ON o.Book_ID=b.Book_ID
GROUP BY Genre;
13) Find the average price of books in the "Fantasy" genre
SELECT AVG(Price) FROM Books
WHERE Genre='Fantasy';
14) List customers who have placed at least 2 orders
SELECT C.customer_ID,C.name,COUNT(O.Order_ID) FROM Customers C
JOIN Orders O ON O.Customer_id=C.customer_ID
GROUP BY C.Customer_ID,C.name
HAVING COUNT(O.Order_ID)>=2;
 15) Find the most frequently ordered book
SELECT b.Book_ID,b.Title,COUNT(O.Order_ID) AS mfb FROM Books b
join Orders o ON o.Book_ID=b.Book_ID
GROUP BY b.book_ID,b.Title
ORDER BY mfb DESC;
16) Show the top 3 most expensive books of 'Fantasy' Genre 
SELECT b.Genre,b.Price FROM Books b
WHERE b.Genre='Fantasy'
ORDER BY b.Price DESC
LIMIT 3;
17) Retrieve the total quantity of books sold by each author
SELECT b.Author,SUM(o.Quantity) AS SUM_Q FROM Books b
JOIN Orders o ON o.Book_ID=b.Book_ID
GROUP BY b.Author
ORDER BY SUM_Q;
18) List the cities where customers who spent over $30 are located
SELECT c.City,o.Total_Amount FROM Customers c
JOIN Orders o ON o.Customer_ID=c.Customer_ID
GROUP BY c.CITY,o.Total_Amount
HAVING Total_Amount>30;
19)Find the customer who spent the most on orders
SELECT c.Customer_ID,c.name,SUM(o.Total_Amount) AS most_spent FROM Customers c
JOIN Orders o ON o.Customer_ID=c.Customer_ID
GROUP BY c.Customer_ID,c.name,o.Total_Amount
ORDER BY most_spent DESC
LIMIT 1;
20) Calculate the stock remaining after fulfilling all orders
SELECT 
    b.book_id,
    b.title,
    b.stock,
    SUM(o.quantity) AS order_quantity,
    b.stock - SUM(o.quantity) AS remaining_quantity
FROM Books b
LEFT JOIN Orders o 
ON b.book_id = o.book_id
GROUP BY b.book_id, b.title, b.stock
ORDER BY b.book_id;