--Q2: Retrieve the latest order for each customer
select c.customer_name, 
       o.order_date
from Customers as c
left join Orders as o on c.customer_id = o.customer_id
group by c.customer_name
order by o.order_date desc;
