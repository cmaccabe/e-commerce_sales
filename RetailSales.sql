SELECT
  *
FROM
  Customers
WHERE
  Order_Status = 'Completed'
  AND Payment_Method = 'Credit Card'
  AND Loyalty_Member = 'Yes';
-- All customer info who completed orders using a credit card and have a loyaly member
SELECT
  Customer_ID,
  ROUND(AVG(unit_price), 2) AS 'Avg_unit_price'
FROM
  Customers
GROUP BY
  Customer_ID;
-- Average unit price per customer 
SELECT
  *
FROM
  Customers
WHERE
  (MONTH(Purchase_Date) >= 5)
  AND Shipping_Type = 'Express'
ORDER BY
  total_price DESC;
-- Explored data where purchases were made through express shipping methods in May or later
SELECT
  COUNT(*)
FROM
  Customers
WHERE
  gender = 'Male';
-- Found number of male customers (10164)
SELECT
  COUNT(*)
FROM
  Customers
where
  gender = 'Female';
-- Female customers (9835)
SELECT
  DATE_FORMAT(purchase_date, '%Y-%M') AS sale_month,
  SUM(total_price) AS total_sales
FROM
  Customers
GROUP BY
  sale_month
ORDER BY
  total_sales DESC
LIMIT
  3;
-- Here, I provide the top 3 months where total price (sales) were highest
SELECT
  COUNT(*)
FROM
  Customers
WHERE
  order_status = 'Completed';
-- Found the total number of completed order
SELECT
  COUNT(*)
FROM
  Customers
WHERE
  Order_Status = 'Cancelled';
-- Found the total number of cancelled orders 
SELECT
  ROUND(AVG(add_on_total), 2)
FROM
  Customers;
-- Found the Avg value for add ons
SELECT
  COUNT(*)
FROM
  Customers
WHERE
  Order_Status = 'Completed'
  AND Gender = 'Male';
SELECT
  COUNT(*)
FROM
  Customers
WHERE
  Order_Status = 'Completed'
  AND Gender = 'Female';
-- Was looking to see if males or females were more likely to complete their orders
SELECT
  COUNT(*)
FROM
  Customers
WHERE
  Add_On_Total != 0
  AND gender = 'Male';
SELECT
  COUNT(*)
FROM
  Customers
WHERE
  Add_On_Total != 0
  AND gender = 'Female';
-- Looked to see if male or female had a higher number of add-ons purchased