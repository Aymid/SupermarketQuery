CREATE DATABASE retaildbs;

SELECT *
FROM supermarket_sales

-- How many invoices are there in the dataset?
SELECT COUNT(invoice_Id) AS total_number_of_invoice
FROM supermarket_sales;

 -- What is the total quantity of products sold?
 SELECT SUM(quantity) AS total_quantity_sold
 FROM supermarket_sales;

 -- What is the average unit price of products sold?
 SELECT CAST(AVG(unit_price) AS DECIMAL(10,2)) AS averagr_unit_sold
 FROM supermarket_sales;

-- What is the total gross income?
SELECT CAST(SUM(gross_income) AS DECIMAL(10,2)) AS total_gross_income
FROM supermarket_sales;

--What is the highest unit price among the products?

SELECT CAST(MAX(unit_price) AS DECIMAL(10,2)) AS highest_unit_price
FROM supermarket_sales;

--What is the lowest unit price among the products?
SELECT CAST(MIN(unit_price) AS DECIMAL(10,2)) AS lowest_unit_price
FROM supermarket_sales;

-- What is the average gross margin percentage?
SELECT AVG(gross_margin_percentage) AS Ave_gross_margin_percentage
FROM supermarket_sales;

-- What is the total gross margin percentage for each customer type?
SELECT SUM(gross_margin_percentage) AS Total_gross_margin_percentage
FROM supermarket_sales;

-- What is the total tax amount for each branch?
SELECT branch, SUM(tax_5) AS Total_tax
FROM supermarket_sales
GROUP BY branch
order by branch;

-- What is the average rating for each product line?
SELECT product_line, AVG(rating) AS Average_rating
FROM supermarket_sales
GROUP BY Product_line;

--What is the total revenue for each product line, considering both unit price and quantity?
SELECT product_line, unit_price*quantity AS total_revenue
FROM supermarket_sales;

--What is the average quantity sold for each branch?
SELECT branch, AVG(quantity) AS Average_quantity
FROM supermarket_sales
GROUP BY branch;

--For each gender, what is the total gross income and total tax amount?
SELECT gender, SUM(gross_income) AS total_gross_income, SUM(Tax_5) AS total_tax_amount
FROM supermarket_sales
GROUP BY gender;

--What is the average unit price and average quantity sold for each product line?
SELECT	product_line, AVG(unit_price) AS Average_Unit_price, AVG(quantity) AS Average_Quantity
FROM supermarket_sales
GROUP BY product_line;

-- What is the total gross income for each payment method and customer type combination?
SELECT payment, SUM(gross_income) AS Total_Gross_Income, COUNT(customer_type) AS customer_type
FROM supermarket_sales
GROUP BY Payment;

