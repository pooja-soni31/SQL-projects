use sql_store;

-- left outer join--
select p.product_id, p.name,oi.order_id
from products p
left join order_items oi
on p.product_id=oi.product_id

-- group by clause ko use krkrk number of orders for a particular product count krna
select p.product_id, p.name,count(oi.order_id) as total_orders
from products p
left join order_items oi
on p.product_id=oi.product_id
group by product_id

select c.customer_id ,c.first_name,o.order_id,s.shipper_id ,s.name as shipper_name
from customers c
left join  orders o
on c.customer_id=o.customer_id
left join shippers s
on o.shipper_id=s.shipper_id
order by c.customer_idorder_statuses
