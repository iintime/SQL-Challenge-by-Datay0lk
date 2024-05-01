--1. หายอดขายรวมของแต่ละสินค้าแต่ละรายการ เรียงตามลำดับไอดีของสินค้า

select ite.item_name,
       ite.price,
       sum(inv.quantity) as total_quantity,
       sum(inv.quantity * ite.price) as total_sales
from Items  as ite 
join Invoices as inv on ite.item_id = inv.item_id
group by ite.item_id;
