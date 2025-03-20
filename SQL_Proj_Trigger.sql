-- Trigger After
-- This will trigger whenever there is discount greater tha 10% 

create table discount_log(
log_id INT AUTO_INCREMENT PRIMARY KEY,
v_id VARCHAR(255),
old_discount INT,
new_discount INT,
changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--

delimiter //
create trigger Discount_more_than_10_trigger
after update on avl_table
for each row 
begin
if new.discount>10 then
insert into discount_log (v_id,old_discount,new_discount,changed_at) values (new.v_id,old.discount,new.discount,now());
end if ;
end //
delimiter ;

select * from avl_table;
select * from discount_log;
update avl_table set discount=11 where a_id='12';


drop trigger Discount_more_than_10_trigger;