CREATE TABLE Books(
	Book_id     INT PRIMARY KEY,
	Title       VARCHAR(100),
	Author      VARCHAR(50),
	Genre       VARCHAR(100),
	Published   INT,
	Price       NUMERIC(5,2),
	Stock       INT
);

CREATE TABLE Customers(
	cust_id   INT PRIMARY KEY,
	name      VARCHAR(50),
	email     VARCHAR(50),
	phone     NUMERIC(10,0),
	city      VARCHAR(50),
	country   VARCHAR(100)
);

CREATE TABLE Orders(
    order_id     INT PRIMARY KEY,
	cust_id      INT REFERENCES Customers(cust_id),
	book_id      INT REFERENCES Books(book_id),
	order_date   DATE,
	quantity     INT,
	total_amount NUMERIC(5)
);
