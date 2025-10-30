-- 1. Display a complete list of all orders showing the customer name, 
-- restaurant name, and rider name for each order.

select * from customers
-- update orders set customer_id =60 where order_id =8
-- delete from customers where customer_id =2

select 
	* 
from 
	orders o
join 
	customers c
on 
	o.customer_id= c.customer_id


-- select * from customers
-- select * from orders

select 
	* 
from 
	orders o
natural join 
	customers c

select 
	o.*,
	c.customer_name,
	r.restaurant_name,
	rd.rider_name
from 
	orders o
natural join 
	customers c
join 
	restaurants r
on 
	o.restaurant_id = r.restaurant_id
join 
	riders rd
on 
	rd.rider_id=o.rider_id

select 
	o.*,
	c.customer_name,
	r.restaurant_name,
	rd.rider_name
from 
	orders o
natural left join 
	customers c
join 
	restaurants r
on 
	o.restaurant_id = r.restaurant_id
join 
	riders rd
on 
	rd.rider_id=o.rider_id

-- 2. How many orders has each customer placed? Include 
--    customers who have registered but haven't placed any orders yet.

select * from customers 
natural  left join orders
-- INSERT INTO customers (customer_name, email, phone, registration_date, area) VALUES
-- ('Dafe Efe', 'dafe@email.com', '08012345603', '2024-01-15', 'Ikeja'),
-- ('Clinton BigDaddy', 'bigdaddy.o@email.com', '08012345501', '2024-01-15', 'Ikeja')
-- select * from customers 
-- natural  left join orders
-- where orders.order_id is null

select c.customer_id,c.customer_name, count(o.order_id) from customers c
natural  left join orders o
group by c.customer_id

select c.customer_id,c.customer_name, count(o.order_id) from customers c
natural  left join orders o
group by c.customer_id

select c.customer_id,c.customer_name, count(o.order_id) from customers c
natural  left join orders o
group by c.customer_id
having count(o.order_id)=0;

select avg(total_amount) from orders

select total_amount from orders 
where total_amount >(select avg(total_amount) from orders)










