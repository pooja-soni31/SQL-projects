use sql_store;
select c.first_name, p.name
from customers c
cross join products p
order by c.first_name