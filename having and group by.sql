
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    Product VARCHAR(50),
    Category VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10,2),
    SaleDate DATE
);

INSERT INTO Sales (SaleID, Product, Category, Quantity, Price, SaleDate) VALUES
(1, 'Laptop', 'Electronics', 3, 50000, '2025-08-01'),
(2, 'Mouse', 'Electronics', 10, 500, '2025-08-02'),
(3, 'Keyboard', 'Electronics', 6, 1500, '2025-08-03'),
(4, 'T-shirt', 'Clothing', 20, 700, '2025-08-04'),
(5, 'Jeans', 'Clothing', 15, 1200, '2025-08-05'),
(6, 'Shoes', 'Clothing', 8, 2500, '2025-08-06'),
(7, 'Book', 'Stationery', 25, 200, '2025-08-07'),
(8, 'Pen', 'Stationery', 100, 20, '2025-08-08'),
(9, 'Notebook', 'Stationery', 40, 50, '2025-08-09'),
(10, 'Tablet', 'Electronics', 4, 30000, '2025-08-10');

SELECT * FROM Sales;

---1. Show total sales quantity per category.
SELECT Category, SUM(Quantity) AS Total_Quantity
FROM Sales
GROUP BY Category;

---	2. Find the average price of products per category.
SELECT category, avg(price) 
AS avg_price
FROM sales 
GROUP BY category;

----3. Show categories where total sales quantity is more than 30.
SELECT category, SUM(quantity)
AS total_quantity FROM sales
GROUP BY category
HAVING SUM(quantity) > 30;

----4. Find products sold more than 5 times.
SELECT category, SUM(quantity) AS total_sales
FROM sales GROUP BY category
HAVING SUM(quantity) > 30;

---5. Show the highest-priced item in each category.
SELECT category,MAX(price) AS total_price
FROM sales GROUP BY category;
----6.	6. Show the lowest-priced item in each category.
SELECT category,MIN(price) AS total_price
FROM sales GROUP BY category

---7. Find the total revenue (Quantity * Price) per category.
SELECT Category, SUM(Quantity * Price) AS Total_Revenue
FROM Sales
GROUP BY Category;

----8. Show products that generated revenue more than 20,000.
SELECT Product, SUM(Quantity * Price) AS Revenue
FROM Sales
GROUP BY Product
HAVING SUM(Quantity * Price) > 20000;

----9. Count how many products are there in each category.
SELECT Category, COUNT(DISTINCT Product) AS Product_Count
FROM Sales
GROUP BY Category;

---10. Find categories having more than 2 different products.
SELECT Category, COUNT(DISTINCT Product) AS Product_Count
FROM Sales
GROUP BY Category
HAVING COUNT(DISTINCT Product) > 2;



