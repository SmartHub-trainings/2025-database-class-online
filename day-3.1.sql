-- select * from users

-- -- 1. List students and their propse level by next year
-- -- SELECT 
-- -- 	user_id,
-- -- 	first_name,
-- -- 	level+100 as next_level 
-- -- FROM 
-- -- 	users 
-- -- WHERE 
-- -- 	role ='student'

-- SELECT 
-- 	user_id AS "User Id",
-- 	first_name "First Name",
-- 	level+100 AS next_level 
-- FROM 
-- 	users 
-- WHERE 
-- 	role ='student'

-- /* 1. List students and their propse level by next year.
--   If the proposed level is 500 then the student is 'extra year'
--   otherwise 'in right session'
-- */
 
-- SELECT 
-- 	user_id AS "User Id",
-- 	first_name "First Name",
-- 	level+100 AS next_level,
-- 	CASE 
-- 		WHEN 
-- 			level+100=500 THEN 'Extra Year'
-- 		ELSE 
-- 			'In Right Session'
-- 	END "Remark"
-- FROM 
-- 	users 
-- WHERE 
-- 	role ='student'

 