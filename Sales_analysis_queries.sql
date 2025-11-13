CREATE DATABASE sales_analysis;
USE sales_analysis;

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(100),
  city VARCHAR(50),
  state VARCHAR(50)
);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category VARCHAR(50),
  unit_price DECIMAL(10,2)
);

CREATE TABLE sales (
  sale_id INT PRIMARY KEY,
  sale_date DATE,
  product_id INT,
  customer_id INT,
  quantity INT,
  total_amount DECIMAL(10,2),
  payment_mode VARCHAR(20),
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


#Question 1:-
#Total Sales Revenue 

SELECT ROUND(SUM(total_amount), 2) AS total_revenue
FROM sales;

#Question 2
#Total No. of Orders 

SELECT COUNT(sale_id) AS total_orders
FROM sales;

#Question 3 
#Total Quantity Sold 

SELECT SUM(quantity) AS total_items_sold
FROM sales;

#Question 4 
#Which 5 products generated the highest total sales revenue?

SELECT p.product_name, ROUND(SUM(s.total_amount), 2) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC
LIMIT 5;

#Question 5
#Which product category contributed the most to total revenue?

SELECT p.category, ROUND(SUM(s.total_amount), 2) AS category_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;

#Question 6 
#Show total sales for each month.

SELECT DATE_FORMAT(sale_date, '%Y-%m') AS month,
ROUND(SUM(total_amount), 2) AS total_revenue
FROM sales
GROUP BY month
ORDER BY month;

#Question 7
#What is the total revenue per year?

SELECT YEAR(sale_date) AS year, ROUND(SUM(total_amount), 2) AS total_revenue
FROM sales
GROUP BY year
ORDER BY year;

#Question 8
#Which customers have spent the most money overall?

SELECT c.customer_name, ROUND(SUM(s.total_amount), 2) AS total_spent
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 5;

#Question 9 
#What is the total sales revenue by payment mode?

SELECT payment_mode, ROUND(SUM(total_amount), 2) AS total_revenue
FROM sales
GROUP BY payment_mode
ORDER BY total_revenue DESC;

#Question 10 
#What is the average value per order?

SELECT ROUND(SUM(total_amount) / COUNT(sale_id), 2) AS average_order_value
FROM sales;

#Question 11
#What is the maximum quantity sold in a single order?

SELECT MAX(quantity) AS max_quantity
FROM sales;

#Question 12 
#How many times has each customer made a purchase?

SELECT c.customer_name, COUNT(s.sale_id) AS total_orders
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_orders DESC;

#Question 13 
#What is the total sales amount by city?

SELECT c.city, ROUND(SUM(s.total_amount), 2) AS city_sales
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.city
ORDER BY city_sales DESC;

#Question 14 
#Which product category has the highest total quantity sold?

SELECT p.category, SUM(s.quantity) AS total_quantity_sold
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY total_quantity_sold DESC;

#Question 15 
#Which products generated less than ₹10,000 in total revenue?

SELECT p.product_name, ROUND(SUM(s.total_amount), 2) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
HAVING total_revenue < 10000
ORDER BY total_revenue ASC;


