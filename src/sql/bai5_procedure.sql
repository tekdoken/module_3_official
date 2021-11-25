use bai5bt1;
# create table products(
#     id int,
#     productcode int,
#     productname varchar(20),
#     productprice float,
#     productamount int,
#     productdescription text,
#     productstatus bit
# );
# create unique index indexcode on products(productCode);
# alter table products add unique dsa (productcode);
# explain select productcode from products
# create procedure getinfoproduct (product)

use quanlydiemthi;
create or replace view hocsinh_view as
select NgaySinh
from hocsinh;
alter view hocsinh_view as select *
                           from hocsinh;
rename table hocsinh_view to hoc_sinh;
# drop view hoc_sinh


use demo20062;
delimiter $$
drop procedure if exists tinhTien;
create procedure tinhTien(in id int, out sum int)
begin
    select Price * product.quantity
    into sum
    from product
    where product.id = id;
end $$
delimiter ;

call tinhTien();


delimiter $$
drop procedure if exists getname;
create procedure getname(in id int, out outname varchar(30))
begin
    select customer.name
    into outname
    from customer
    where customer.id = id;
end $$
delimiter ;

call getname(2, @outname);
select @outname;

delimiter $$
drop procedure if exists checkPrice;
create procedure checkPrice(in id int, out result varchar(10))
begin
    declare getprice int;
    select product.price
    into getprice
    from product
    where product.id = id;
    if (getprice > 200) then
        set result = 'hight';
    else
        set result = 'low';
    end if;
end $$
delimiter ;

call checkPrice(3, @result);
select @result;

delimiter $$
create procedure sum1(in a int, in b int, out res int)
begin
set res = a + b;
end $$
delimiter ;
call sum1 (10,21,@res);
select @res;