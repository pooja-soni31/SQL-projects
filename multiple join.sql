use sql_store
select * from customers
select * from order_item_notes
select * from order_items
select * from order_statuses
select * from products
select * from shippers
select * from orders
select orders.order_id,customers.first_name ,customers.last_name ,order_items.product_id ,products.name from orders 
join  customers on orders.customer_id=customers.customer_id 
join order_items on orders.order_id=order_items.order_id
join products on order_items.product_id=products.product_id 
 