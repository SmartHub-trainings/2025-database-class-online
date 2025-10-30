select * from products

-- Date and time functions
select CURRENT_DATE
select CURRENT_TIMESTAMP
select CURRENT_TIME
select extract(month from CURRENT_TIMESTAMP)
select extract(day from CURRENT_TIMESTAMP)
select extract(year from CURRENT_TIMESTAMP)

-- find all products released in 2022
select * from products
where extract(year from release_date)=2022

select * from products
where extract(month from release_date)=3

select now(), CURRENT_TIMESTAMP, LOCALTIMESTAMP,LOCALTIME
select to_char(CURRENT_DATE,'dd-mm-yyyy')
select to_char(CURRENT_DATE,'dd/mm/yyyy')
select to_char(CURRENT_DATE,'dd/mm/yy')
select release_date,to_char(release_date,'d') from products
select release_date,to_char(release_date,'s') from products
select to_char(now(),'m')
select release_date,now()-release_date from products
select  release_date,age(now(),release_date),now()-release_date from products
select to_char(make_date(2026,9,12),'dd-mm-yyyy')
select to_date('2025-12-10','yyyy-mm-dd')

-- Grouping
select * from products
select count(name) from products;
select count(name) from products
group by category;

select category,count(name) from products
group by category;

select category,avg(price) average from products
group by category
order by average desc
limit 2

select category,round(avg(price),2) average ,min(price),max(price)  from products
group by category
order by average desc
limit 2

-- select category, avg(price) from products
-- group by category
-- where avg(price)>50

select category, avg(price) from products
group by category
having avg(price)>50

-- select category, avg(price) average from products
-- group by category
-- having avg(price)>50




