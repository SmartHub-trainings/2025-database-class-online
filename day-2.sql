select * from users

-- opertators
-- 1. Arithmetic operators
-- 2. Relational ''
-- 3. Logical     ''
-- 4. Membership   ''
-- 5. Pattern       ''

select * from users where role ='staff'

select * from users where role ='admin'

select * from users where role ='admin' or role ='staff'

select * from users where role !='student'
select * from users where role <>'student'

select * from users where role ='admin' or role ='staff' or level=400

select * from users where role in ('admin','staff') or level=400

select * from users where level >=4 and role not in ('admin','student')

select * from users where  first_name like 'J%'
select * from users where  last_name like '%e'
select * from users where  last_name like '%c%'
select * from users where  first_name like '%c%'
select * from users where  first_name like '%co%'
select * from users where  last_name ilike '%CO%'
select * from users where  first_name like '_____'
select * from users where  first_name like '______%'

