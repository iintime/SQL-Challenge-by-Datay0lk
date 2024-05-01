--Q3: Get the total number of orders for each customer

SELECT customer_id, 
       COUNT(order_id)
FROM Orders 
GROUP BY customer_id;
