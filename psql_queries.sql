-- Walmart sales analysis queries


SELECT * FROM walmart;

-- exploration

SELECT COUNT(*) FROM walmart;

-- finding the count of payment methods

SELECT payment_method,
COUNT (*)
FROM walmart
GROUP BY payment_method;

-- finding distinct branches

SELECT COUNT(DISTINCT branch)
FROM walmart;

SELECT MAX(quantity) FROM walmart;
SELECT MIN(quantity) FROM walmart;

-- Business problems

--Q.1 Find different payment method, number of transactions and number of quantity sold

SELECT payment_method,
COUNT (*) AS  no_transactions, 
SUM(quantity) AS no_qty_sold
FROM walmart
GROUP BY payment_method;

--Q.2 Identify the highest-rated category in each branch
--     displaying the branch, category 
--     AVG rating

SELECT * 
FROM 

(SELECT 
	branch,
	category,
	AVG(rating) as avg_rating, 
	RANK() OVER(PARTITION BY branch ORDER BY AVG(rating) DESC) as rank

FROM walmart
GROUP BY branch, category
)
WHERE rank = 1

--Q.3 Identify the busiest day for each branch based on the number of transactions

SELECT * FROM	
(SELECT 
	branch,
	TO_CHAR(TO_DATE(date, 'DD/MM/YY'), 'Day') as day_name,
	COUNT(*) as no_transactions,
	RANK() OVER(PARTITION BY branch ORDER BY COUNT(*) DESC) as rank
FROM walmart
GROUP BY branch, day_name)
WHERE rank = 1

-- Q. 4 
-- Calculate the total quantity of items sold per payment method. List payment_method and total_quantity.

SELECT 
	 payment_method,
	 SUM(quantity) as no_qty_sold
FROM walmart
GROUP BY payment_method

-- Q.5
-- Determine the average, minimum, and maximum rating of category for each city. 
-- List the city, average_rating, min_rating, and max_rating.

SELECT 
	city, 
	category,
	MIN(rating) as min_rating,
	MAX(rating) as max_rating,
	AVG(rating) as avg_rating
FROM walmart
GROUP BY city, category