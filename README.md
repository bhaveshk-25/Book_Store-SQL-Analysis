# Book_Store-SQL-Analysis
SQL-based analysis of a bookstore dataset using PostgreSQL, focusing on sales, customers, and inventory insights.

## 📌 Project Overview
This project focuses on analyzing a bookstore database using **PostgreSQL** to answer real-world business questions related to book sales, customers, and inventory management. The analysis demonstrates strong SQL fundamentals and analytical thinking by translating business requirements into efficient SQL queries.

---

## 🗄️ Dataset
- **Source:** Open-source bookstore dataset obtained from GitHub (CSV files)
- **Nature of Data:** Sample / synthetic data used for learning and analysis
- **Tables Used:**
  - `Books` – book details such as title, author, genre, price, and stock
  - `Customers` – customer information including name, city, and country
  - `Orders` – order transactions including quantity, total amount, and order date

---

## 🛠️ Tools & Technologies
- **Database:** PostgreSQL  
- **Client Tool:** pgAdmin  
- **Language:** SQL  

---

## 🧱 Database Schema
- Implemented **relational schema** with:
  - Primary Keys
  - Foreign Key relationships between Books, Customers, and Orders
- Data imported using **CSV files**

---

## 🔍 Business Questions Answered

### 🔹 Basic Queries
- Retrieve all books in the *Fiction* genre
- Find books published after a specific year
- List customers from a particular country
- Show orders placed in a given month
- Retrieve the total stock of books available
- Find the most expensive book
- Identify customers who ordered more than one quantity
- Retrieve orders where total amount exceeds a threshold
- List all available genres
- Find the book with the lowest stock
- Calculate total revenue generated from all orders

### 🔹 Advanced Queries
- Total number of books sold for each genre
- Average price of books in the *Fantasy* genre
- Customers who placed at least two orders
- Most frequently ordered book
- Top 3 most expensive books in the *Fantasy* genre
- Total quantity of books sold by each author
- Cities where customers who spent over a certain amount are located
- Customer who spent the most on orders
- Remaining stock after fulfilling all orders

---

## 🧠 SQL Concepts Used
- `SELECT`, `WHERE`, `ORDER BY`
- Aggregate functions: `SUM`, `AVG`, `COUNT`
- `GROUP BY` and `HAVING`
- `INNER JOIN`
- Subqueries
- Window functions (`ROW_NUMBER`)
- Data validation using aggregate reconciliation

---

## ✅ Key Outcomes
- Gained hands-on experience with **relational database analysis**
- Demonstrated ability to answer **business-driven questions using SQL**
- Ensured accuracy by validating totals across multiple queries
- Built a clean, reproducible SQL project suitable for portfolio and interviews

---

## 📂 Repository Structure


Window functions (ROW_NUMBER)

✅ Outcome

The project demonstrates strong SQL fundamentals, analytical thinking, and the ability to translate business questions into efficient SQL queries.
