-- function that returns  price after applying discounted value of a variant

delimiter //
create function getPriceAfterDiscount(price decimal(20,4), discount int)
returns decimal(20,4)
deterministic
begin
declare Amount decimal(20,4);
set Amount= case getPriceAfterDiscount
when discount is not null then price-(price*(discount/100.0))
when discount is null then price
end ;
return Amount;
end //
delimiter ;

-- we call function using the syntax given below
select price,discount,getPriceAfterDiscount(price,discount) as Final_Price_After_Discount from avl_table;




drop function getPriceAfterDiscount;
select price from avl_table;
desc avl_table;

