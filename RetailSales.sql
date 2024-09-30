/*select * from Customers
where Order_Status = 'Completed' and Payment_Method = 'Credit Card' and Loyalty_Member = 'Yes';
-- All customer info who completed orders using a credit card and have a loyaly member*/

/*select Customer_ID, round(avg(unit_price), 2) as 'Avg_unit_price' from Customers
group by Customer_ID;*/ 
-- Average unit price per customer 

select * from Customers
where (month(Purchase_Date) >= 5) and Shipping_Type = 'Express';