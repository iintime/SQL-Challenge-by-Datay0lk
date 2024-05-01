--Q2: Find total spend of each customer, order by total spend descending.

select inv.customer_id,
       (sum(ite.price) * sum(inv.quantity)) as total_spend
from Invoices as inv
join Items as ite on ite.item_id = inv.item_id
group by inv.customer_id
order by total_spend desc;
