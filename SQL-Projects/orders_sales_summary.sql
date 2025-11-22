-- SQL Mini Project: Sales Summary Dashboard
-- Dataset: orders table

CREATE TABLE orders (
    order_id INT,
    customer VARCHAR(50),
    product VARCHAR(50),
    quantity INT,
    price INT
);

INSERT INTO orders VALUES (1, 'Rahul', 'Laptop', 1, 50000);
INSERT INTO orders VALUES (2, 'Asha', 'Phone', 2, 30000);
INSERT INTO orders VALUES (3, 'Rahul', 'Mouse', 3, 500);
INSERT INTO orders VALUES (4, 'Priya', 'Phone', 1, 30000);
INSERT INTO orders VALUES (5, 'Asha', 'Laptop', 1, 50000);

-- Task 1 — Total Revenue
SELECT SUM(quantity * price) AS total_revenue FROM orders;

-- Task 2 — Revenue by Customer
SELECT customer, SUM(quantity * price) AS revenue
FROM orders
GROUP BY customer
ORDER BY revenue DESC;

-- Task 3 — Top Product by Sales Amount (SQL Server)
SELECT TOP 1 product, SUM(quantity * price) AS total_sales
FROM orders
GROUP BY product
ORDER BY total_sales DESC;

-- Task 4 — Customers Who Spent More Than 50,000
SELECT customer, SUM(quantity * price) AS total_spent
FROM orders
GROUP BY customer
HAVING SUM(quantity * price) > 50000;

-- Task 5 — Product Quantity Summary
SELECT product, SUM(quantity) AS total_quantity
FROM orders
GROUP BY product;
