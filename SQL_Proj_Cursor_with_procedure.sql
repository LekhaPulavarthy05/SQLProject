-- check the availability status, variants, price, etc details of provided model using stored procedure and cursor


delimiter //

create procedure check_details(in model_id varchar(255))
begin
    declare done int default 0;
    declare c_variant_id varchar(255);
    declare c_ram varchar(20);
    declare c_rom varchar(20);
    declare c_price decimal(20,4);
    declare c_discount int;
    declare c_qt int;
    declare c_store_name varchar(100);
    declare c_store_url varchar(255);


    declare model_cursor cursor for
    select v.v_id, v.ram, v.rom,v.m_id, a.price, a.discount,a.qt, s.s_name, s.s_url
    from variants v
	join avl_table a on v.v_id = a.v_id
    join store s on a.s_id = s.s_id
    where v.m_id = model_id;

 
    declare continue handler for not found set done = 1;

   
    open model_cursor;

    fetch_loop: loop
        fetch model_cursor into c_variant_id, c_ram, c_rom,c_price, c_discount, c_qt, c_store_name, c_store_url;

        if done then
            leave fetch_loop;
        end if;

        
        select c_variant_id as "variant id", c_ram as "ram", c_rom as "rom", 
               c_price as "price", c_discount as "discount", c_qt as "quantity",
               c_store_name as "store name", c_store_url as "store url";
    end loop;

   
    close model_cursor;
end //

delimiter ;
--

--
CALL check_details('RN6'); 
CALL check_details('VX80'); 

--

drop procedure check_details;

desc avl_table;

select * from variants;



select v.v_id, v.ram, v.rom,v.m_id, a.price, a.discount,a.qt, s.s_name, s.s_url
    from variants v
	join avl_table a on v.v_id = a.v_id
    join store s on a.s_id = s.s_id
    where v.m_id = 'VX80';
    
    update avl_table set discount=2 where v_id='VX80_1';