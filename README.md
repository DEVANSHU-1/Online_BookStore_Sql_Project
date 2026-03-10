# Online_BookStore_Sql_Project
Project Overview

This project simulates a simple Online Book Store database system built using SQL.
The goal of the project is to design a relational database and perform data analysis using SQL queries.

The database manages information about:

Books available in the store

Customers purchasing books

Orders placed by customers

The project demonstrates the use of database design, joins, aggregation functions, filtering, and data analysis queries.

🗂 Database Schema

The database consists of three main tables:

1️⃣ Books

Stores information about books available in the store.

Column	Description
Book_ID	Unique identifier for each book
Title	Book title
Author	Author of the book
Genre	Book category
Published_year	Year the book was published
Price	Price of the book
Stock	Number of books available

2️⃣ Customers

Stores information about customers.

Column	Description
Customer_ID	Unique customer identifier
Name	Customer name
Email	Customer email
Phone	Contact number
City	Customer city
Country	Customer country

3️⃣ Orders

Stores order transactions made by customers.

Column	Description
Order_ID	Unique order identifier
Customer_ID	Customer placing the order
Book_ID	Book ordered
Order_Date	Date of the order
Quantity	Number of books ordered
Total_Amount	Total amount paid
🔗 Relationships

Customers → Orders
One customer can place multiple orders.

Books → Orders
One book can appear in multiple orders.

Orders table acts as a transaction table connecting customers and books.

📊 SQL Analysis Performed

The project includes 20 analytical SQL queries, such as:

📖 Book Analysis

Retrieve books by genre

Find books published after a certain year

Identify the most expensive book

Find books with the lowest stock

Calculate average book price by genre

👥 Customer Analysis

Retrieve customers by country

Identify customers who placed multiple orders

Find customers who spent the most money

🛒 Order Analysis

Retrieve orders from a specific month

Calculate total revenue from orders

Find the most frequently ordered book

Calculate total books sold by author

📦 Inventory Analysis

Calculate remaining stock after fulfilling orders

Retrieve total stock available
