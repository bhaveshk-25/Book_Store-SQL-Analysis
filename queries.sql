SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;

------- All books in the 'Fiction' genre --------
SELECT * FROM Books
WHERE genre = 'Fiction';

------- Books publishedin the year 1950 ---------
SELECT * FROM Books
WHERE published > 1950;

------- All customers from Canada --------------
SELECT * FROM Customers
WHERE country = 'Canada';

------- Orders placed in November 2023 ---------
SELECT * FROM Orders
WHERE EXTRACT(YEAR FROM order_date) = 2023 AND EXTRACT(MONTH FROM order_date) = 11;

------- Total stock of books available ---------
SELECT SUM(stock) AS Total_stock
FROM Books;

------- Most expensive book ---------------
SELECT * FROM Books
WHERE price IN (SELECT MAX(price) FROM Books);

------- All customers who ordered more than 1 book ------
SELECT c.* , o.quantity, o.total_amount
FROM Customers c
JOIN Orders o
ON c.cust_id = o.cust_id
WHERE o.quantity>1;

------- Orders where amount is more than $20 ----------
SELECT * FROM Orders 
WHERE total_amount>20;

------- Book with lowest stock ------------------
SELECT * FROM Books
WHERE stock IN (SELECT MIN(stock) FROM Books);

------- Total revenue generated form all orders ---------
SELECT SUM(total_amount) AS Revenue
FROM Orders;


------------------Advanced-----------------------------

----------- Total books sold per genre ---------
SELECT b.genre,SUM(o.quantity) AS books_sold
FROM Books b
JOIN Orders o
USING (book_id)
GROUP BY b.genre;

----------- Average price of books in Fantasy genre -------
SELECT genre,AVG(price) AS avg_price
FROM Books
WHERE genre = 'Fantasy'
GROUP BY genre;

----------- Customers, placed more than 2 orders --------
SELECT c.cust_id,c.name,COUNT(o.cust_id) AS orders
FROM Customers c
JOIN Orders o
ON c.cust_id = o.cust_id
GROUP BY c.cust_id
HAVING COUNT(o.cust_id)>2;

----------- Most frequently ordered book -----------
SELECT b.*,COUNT(o.book_id) AS times_orderd
FROM Books b
JOIN Orders o
ON b.book_id = o.book_id
GROUP BY b.book_id
ORDER BY COUNT(o.book_id) DESC
LIMIT 1;

----------- Top 3 expensive Fantasy books -----------
SELECT * FROM Books
WHERE genre = 'Fantasy'
ORDER BY price DESC LIMIT 3;

----------- Author wise book sales -----------
SELECT b.author,SUM(o.quantity) AS sold_books
FROM Books b
JOIN Orders o
ON b.book_id = o.book_id
GROUP BY b.author
ORDER BY SUM(o.quantity) DESC;

----------- Cities with customers, spent more than $30 -----------
SELECT DISTINCT c.city
FROM Customers c
JOIN Orders o
ON c.cust_id = o.cust_id
WHERE o.total_amount>30;

----------- Customer who spent the most ----------------------
SELECT c.name,SUM(o.total_amount) AS Total_spent
FROM Customers c
JOIN Orders o
USING (cust_id)
GROUP BY c.name
ORDER BY Total_spent DESC 
LIMIT 1;

----------- Remaining stock after fulfilling all orders -----------
SELECT b.book_id,b.title,b.stock,COALESCE(SUM(o.quantity),0) AS books_sold, 
       (b.stock - COALESCE(SUM(o.quantity),0)) AS stock_left
FROM Books b
LEFT JOIN Orders o
ON b.book_id = o.book_id
GROUP BY b.book_id;

------------ Duplicate orders (same customer and book) -------------
SELECT *
FROM (
    SELECT o.*, ROW_NUMBER() OVER (PARTITION BY cust_id, book_id
                                   ORDER BY order_date) AS rn
    FROM Orders o
    ) duplicates
WHERE rn > 1;
