select category from products 
select distinct category from products 
select 
	name,category,price  
from products
order by price asc

select 
	name,category,price  
from products
order by price desc
limit 5

select 
	name,category,price  
from products
order by category,price desc

-- SQl functions
-- Maths/stats

select count(distinct category) from products
select count(name) from products
select count(price) from products
select count(*) from products
select count(rating) from products
select * from products
-- select sum(*) from products
select sum(price) from products
select avg(rating) from products
select max(rating) from products
select round(avg(rating)) from products
select round(avg(rating),3) from products
select rating,ceil(rating) rounded_off from products
select rating,floor(rating) from products
select floor(-3.5)
select ceil(-3.5)
-- select * from information_schema."columns" where table_schema='public'

-- text/string 
select 
	name,upper(name),
	-- lower(name), length(name),
	replace(name,'a','eee')
from products

select 
	name,
	upper(name),
	position('ar' in name),
	left(name,4),
	right(name,5),
	length(trim('   this   '))
from products

-- Logical functions
-- COALESCE(x1,x1,x3,x4)=> x3 if x3 is the first non-null value
select coalesce(20,null)
select coalesce(null,40,null,null,100)
select coalesce(null,null)

select avg(rating),avg(coalesce(rating,0)) from products
-- nullif 
-- nullif(x1,x2)==> x1 if x1!=x2 else null
select nullif(20,40)
select nullif(null,40)
select nullif(40,40)
select nullif(null,null)

select 
category,
nullif(category,'Stationery'),
coalesce(nullif(category,'Stationery'),'Stationeries')
from products











