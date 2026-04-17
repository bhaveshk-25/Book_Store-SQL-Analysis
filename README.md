# Book_Store-SQL-Analysis
SQL-based analysis of a bookstore dataset using PostgreSQL, focusing on sales, customers, and inventory insights.

## 📖 Project Description
This project involves analyzing a **Bookstore database** using **PostgreSQL** to extract meaningful business insights related to **books, customers, and orders**. The objective is to demonstrate strong SQL skills by solving both **basic and advanced analytical queries** on a relational dataset.

---

## 🎯 Project Objectives
- Analyze book sales and customer purchasing behavior
- Perform genre-wise and author-wise sales analysis
- Identify top customers and high-performing books
- Practice real-world SQL concepts on relational data

---

## 🗄️ Data Source
- **Source:** Open-source bookstore dataset obtained from GitHub  
- **Data Type:** Sample / synthetic data for learning purposes  
- **Format:** CSV files  
- **Import Tool:** pgAdmin (PostgreSQL)

> The dataset is commonly used for SQL practice and simulates real-world bookstore operations.

---

## 🧱 Database Tables
The project consists of the following tables:

### 📚 Books

| Column Name    | Data Type     | Description                     |
| -------------- | ------------- | ------------------------------- |
| book_id        | INT           | Unique identifier for each book |
| title          | VARCHAR       | Title of the book               |
| author         | VARCHAR       | Author name                     |
| genre          | VARCHAR       | Genre/category of the book      |
| price          | NUMERIC(10,2) | Price of the book               |
| stock          | INT           | Number of copies available      |
| published_year | INT           | Year the book was published     |

- Primary Key: `book_id`

### 👥 Customers

| Column Name   | Data Type     | Description                         |
| ------------- | ------------- | ----------------------------------- |
| customer_id   | INT           | Unique identifier for each customer |
| customer_name | VARCHAR       | Full name of the customer           |
| email         | VARCHAR       | mail id of customer                 |
| phone         | NUMERIC(10,0) | phone number of customer            |
| city          | VARCHAR       | City of residence                   |
| country       | VARCHAR       | Country of residence                |

- Primary Key: `cust_id`

### 🧾 Orders

| Column Name  | Data Type     | Description                           |
| ------------ | ------------- | ------------------------------------- |
| order_id     | INT           | Unique order identifier               |
| customer_id  | INT           | References customer placing the order |
| book_id      | INT           | References ordered book               |
| order_date   | DATE          | Date of order                         |
| quantity     | INT           | Number of books ordered               |
| total_amount | NUMERIC(10,2) | Total cost of the order               |

- Primary Key:  `order_id`
- Foreign Keys: `book_id` → `Books(book_id)` , 
              `cust_id` → `Customers(cust_id)`
 
All tables are connected using **primary and foreign key relationships**.

---

## 🛠️ Tools & Technologies Used
- **Database:** PostgreSQL  
- **Client Tool:** pgAdmin  
- **Language:** SQL  

---

## 🔍 Business Questions & Analysis

### 🟢 Basic Queries
- Retrieve all books in the *Fiction* genre  
- Find books published after a specific year  
- List customers from a particular country  
- Show orders placed in a specific month  
- Retrieve total stock of books available  
- Find the most expensive book  
- Identify customers who ordered more than one quantity  
- Retrieve orders where total amount exceeds a threshold  
- List all genres available in the bookstore  
- Find the book with the lowest stock  
- Calculate the total revenue generated from all orders

---

### 🔵 Advanced Queries
- Retrieve the total number of books sold for each genre  
- Find the average price of books in the *Fantasy* genre  
- List customers who have placed at least two orders  
- Identify the most frequently ordered book  
- Show the top 3 most expensive books in the *Fantasy* genre  
- Retrieve the total quantity of books sold by each author  
- List cities where customers who spent over a certain amount are located  
- Find the customer who spent the most on orders  
- Calculate remaining stock after fulfilling all orders
- Find duplicate orders (same customer and book)

---

## 🧠 SQL Concepts Demonstrated
- `SELECT`, `WHERE`, `ORDER BY`
- Aggregate functions: `SUM`, `AVG`, `COUNT`
- `GROUP BY` and `HAVING`
- `INNER JOIN`
- Subqueries
- Window functions (`ROW_NUMBER`)
- Data validation and reconciliation of aggregates

---

## 📊 Key Insights
- Identified top-selling genres and authors
- Determined high-value customers based on spending
- Analyzed inventory levels and remaining stock
- Ensured accuracy by cross-verifying total sales metrics

---

## 📁 Project Structure
```
bookstore-sql-analysis/
├── README.md           
├── schema.sql             
├── queries.sql            
├── data/
   ├── books.csv
   ├── customers.csv
   └── orders.csv
         
```

## 🚀 How to Run the Project
1. Create the database tables using `schema.sql`
2. Import CSV files from the `data/` folder into PostgreSQL
3. Execute queries from `queries.sql` using pgAdmin
4. Analyze outputs and insights

---

## ✅ Learning Outcomes
- Hands-on experience with relational databases
- Ability to translate business questions into SQL queries
- Strong understanding of joins, aggregations, and window functions
- Experience working with CSV-based datasets in PostgreSQL

---

## 🔒 Privacy
Note: Email and mobile number are collected only for verification and engagement purposes. They are never shown on the public pledge wall or shared.

## 📌 Note
This project is created for learning and portfolio purposes using publicly available data.


