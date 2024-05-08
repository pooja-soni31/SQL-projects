use sql_store;
-- example of union
select  order_id ,order_date, 'Active' as status
from orders 
where order_date >='2019-01-01'
union 
select  order_id ,order_date, 'Archive' as status
from orders 
where order_date <'2019-01-01';

-- shippers and products union  we will get multiple rows union is used to combine rows 
-- whereas joins are used to combine columns based on a common column
select name from shippers
union
select name from products


-- providing type bronze, silver ,gold to cutomer based on their points and then combining the rows using UNION

select 
      customer_id ,first_name, last_name,
      'Bronze' as type
 from customers
 where points < 2000
 union
 select 
      customer_id ,first_name, last_name,
      'silver' as type
 from customers
 where points between 2000 and 3000
 union 
 select 
      customer_id ,first_name, last_name,
      'silver' as type
 from customers
 where points > 3000
 order by first_name















