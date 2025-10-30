-- select * from orders
-- -- 1. list all orders having amount greater than  the average amount of all orders
-- -- select * from orders
-- -- where total_amount>avg(total_amount)

-- select avg(total_amount) from orders;

-- select * from orders
-- where total_amount>(select avg(total_amount) from orders);

-- select 
-- 	*,
-- 	case
-- 		when total_amount > (select avg(total_amount) from orders) then 'Greater than'
-- 		else 'Less than'
-- 	end order_category

-- from orders

-- 2. Find all customers who have placed at least one order.
select * from orders;

select customer_id,count(customer_id) from orders
group by customer_id 

select customer_id from (select customer_id,count(customer_id) from orders
							group by customer_id );
							
select * from customers where customer_id in (select customer_id 
												from (select 
														customer_id,count(customer_id)
													   from orders
											   group by customer_id ))
-- or

select distinct customer_id from orders

select * from customers 
where customer_id in (select distinct customer_id from orders)

-- or : Join
select * from customers natural join orders
select c.* from customers c natural join orders o
select distinct c.* from customers c natural join orders o

-- 3. Find customers who have NOT placed any orders yet.
select * from customers 
where customer_id not in (select distinct customer_id from orders)

-- or : join
select distinct c.* from customers c natural left join orders o
where o.order_id is null

--4. Display the names of customers who have ordered items worth more than ₦15,000.
select order_id from order_items
where unit_price >15000

select customer_id from orders
where order_id in (select order_id from order_items
where unit_price >15000)

select customer_name from customers 
where customer_id in (select customer_id from orders
where order_id in (select order_id from order_items
where unit_price >15000))

-- or 
select customer_id from orders natural join order_items 
where unit_price>15000

select customer_name from customers 
where customer_id in (select customer_id from orders natural join order_items 
where unit_price>15000)

--or 

select distinct customer_name from customers c join (select customer_id 
													 from orders 
													 natural join order_items 
													 where unit_price>15000) as t 
on c.customer_id =t.customer_id









