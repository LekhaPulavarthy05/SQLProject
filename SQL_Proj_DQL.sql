show tables;

-- tables (DQL Statements)

select * from brands;
select * from user_details;
select * from liked_items;
select * from model;
select s_id, s_name from store;
select a_id, a_status, qt, price from avl_table where a_id in(2,4,6);
select * from variants;