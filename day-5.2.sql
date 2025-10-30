select * from categories
select * from products

-- list product name and their category name

select * from products join categories
on products.category_id = categories.id;


select products.name,categories.name from products join categories
on products.category_id = categories.id

select products.name as product_name,categories.name category_name 
from products join categories
on products.category_id = categories.id;

select p.name as product_name,c.name category_name 
from products p join categories c
on p.category_id = c.id

select p.* as product_name,c.name category_name 
from products p inner join categories c
on p.category_id = c.id

select p.* as product_name,c.name category_name 
from products p inner join categories c
on p.category_id = c.id

select p.* as product_name,c.name category_name 
from products p left join categories c
on p.category_id = c.id
where c.name is null
-- orphans 

select p.* as product_name,c.name category_name 
from products p right join categories c
on p.category_id = c.id
-- where c.name is null

select p.* as product_name,c.name category_name 
from products p right join categories c
on p.category_id = c.id
where p.name is null

