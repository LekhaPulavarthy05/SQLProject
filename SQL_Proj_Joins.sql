

-- inner join / join
-- Get models with their respective brand names
select m.m_name,b.b_name
from model m
join brands b
on m.b_id=b.b_id; 

-- INNER JOIN – Get smartphone model along with their variants, price and availability
select m.m_name , v.ram,v.rom, a.price, a.a_status, s.s_name
from model m
join variants v on m.m_id=v.m_id
join avl_table a on v.v_id = a.v_id
join store s on a.s_id=s.s_id
order by m.m_name ;




-- left JOIN – get all the user even if they have not liked any item 
select u.u_name,l.v_id, l.like_id
from user_details u 
left join liked_items l on u.u_id=l.u_id;

-- left join - get list of all the models of all the brands
select b.b_name, m.m_name
from brands b
right join model m on b.b_id=m.b_id
order by  b_name;

-- right join - Get all stores, even if they have no availability
select s.s_name , a.a_status
from avl_table a 
right join store s
on s.s_id=a.s_id;

-- right join list of aal the variants even if they are not liked by the users
SELECT u.u_id,u.u_name, v.v_id, v.ram, v.rom
FROM user_details u
RIGHT JOIN liked_items l ON u.u_id = l.u_id
RIGHT JOIN variants v ON l.v_id = v.v_id;


-- SELF JOIN – Get models with another model having the same launch year
SELECT m1.m_name AS model1, m2.m_name AS model2, YEAR(m1.m_launch_date) AS launch_year
FROM model m1
JOIN model m2 ON YEAR(m1.m_launch_date) = YEAR(m2.m_launch_date) AND m1.m_id <> m2.m_id; -- <> not equals 


-- CROSS JOIN – Get all possible combinations of stores and models of brand vivo
SELECT s.s_name, m.m_name 
FROM store s
CROSS JOIN model m
where m.b_id='VO'
order by m.m_name;

-- full join
-- list of all user even if they have not liked any item
SELECT u.u_id,u.u_name, v.v_id, v.ram, v.rom
FROM user_details u
LEFT JOIN liked_items l ON u.u_id = l.u_id
LEFT JOIN variants v ON l.v_id = v.v_id
UNION ALL
-- list of item which are not liked by any user
SELECT u.u_id,u.u_name, v.v_id, v.ram, v.rom
FROM user_details u
RIGHT JOIN liked_items l ON u.u_id = l.u_id
RIGHT JOIN variants v ON l.v_id = v.v_id
order by u_id desc;
