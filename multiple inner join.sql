use sql_invoicing;
select * from clients;
select * from payment_methods;
select * from payments

select p.date, p.payment_id,p.client_id ,p.invoice_id, p.amount ,c.name as customer_name ,pm.name as payment_method
from payments p
join clients c
on p.client_id=c.client_Id
join payment_methods pm
on p.payment_method=pm.payment_method_id

use sql_store;
select * from order_items oi
join order_item_notes oin
on oi.order_id=oin.order_id
and oi.product_id=oin.product_id
