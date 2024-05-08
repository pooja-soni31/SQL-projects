-- copying a table data and creating a new table

create table new_order as
select * from orders;

select * from new_order;
-- deleting all rows using trucate
truncate new_order;

-- inserting data using subquery method
insert into new_order
select * from orders 
where order_date >='2018-01-01';

-- creating new table invoices_new from table invoices of sql invoicing database 

use sql_invoicing;

select * from invoices;

create table invoices_new as
select i.invoice_id,i.number,c.name,i.invoice_total,i.payment_total,i.invoice_date,i.due_date,i.payment_date
from invoices i
join clients c
using (client_id)
where payment_date is not null;













