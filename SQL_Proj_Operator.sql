-- Arithmatic Operators
select * from avl_table; 

select a_id, price, discount,price-(price*discount/100) as Final_Price from avl_table;

-- comparator operator
-- selects all the variants having discount of 4%
select * from avl_table where discount=4;


-- select variants whose price is less than or equal 25,000
select * from avl_table where price<=25000;




-- logical 
-- and operater is used to select all the variants available between price range of 20,000 and 60,000
select * from avl_table where price >=20000 and price<=60000;

-- or select discount is either 4% or 10%
select * from avl_table where discount=4 or discount=10;

-- not selects where variants does'nt have discount
select * from avl_table where not discount is not null;


-- range 
-- selects all the items with quantity excluding range 5 to 10 
select * from avl_table where qt not between 5 and 10;

-- like 
-- wxcludes all the items mentioned in the in operator
select * from avl_table where a_id not in (1,2,3,4,5);

-- order by , distinct, limit
Select a_id, price from avl_table order by  price desc limit 5 offset 2;

-- distinct
select * from model;
-- selects all the distinct brand in model table 
select distinct b_id from model;

-- case 
-- shows the name of the store wher the item is available
select a_id,v_id,s_id,
case  
when s_id=1 then 'Amazon'
when s_id=2 then 'Croma'
when s_id=3 then 'Apple Store'
when s_id=4 then 'Flipkart'
end as 'Store Name'
from avl_table;

-- like 
select * from variants;
-- selects all the variants where ram ends with 6GB
select * from variants where ram like '%6GB';
-- select all the variants with ram having tens as wll as units place 
select * from variants where ram like '__GB';


-- string functions 
--  concates and lowercases multiple strings together
select s_id, upper(s_name), concat('www.',lower(s_name),'.com') as store_url, length(s_name) as name_length  from store;

-- math function 
select * from model;
-- 
select m_spec_score,abs(m_spec_score) , floor(m_spec_score), ceil(m_spec_score), power(m_spec_score,2) from model;

-- date functions basicdate functions
select now(), current_date(), current_time(), current_timestamp();
-- adds 21 years to my birth date
select date_add('2003-12-05', interval 21 year);
select * from model;
-- shows the days gap between launch of OnePlus 12 from OnePlus 11
select timestampdiff(day,(select m_launch_date from model where m_id='OP11'),(select m_launch_date from model where m_id='OP12')) as Time_Diff;


-- performing aggregate functions along with group by , having clause
select * from avl_table;
-- returns stores having count of total available phones greater than 2
select s_id, count(s_id) as available_overall_phones_qt_gt 
from avl_table 
group by s_id 
having available_overall_phones_qt_gt>2;

-- max/min select max/min value amongst the entire column while sums add up the entire column
select  max(qt),min(qt),sum(qt) from avl_table;


