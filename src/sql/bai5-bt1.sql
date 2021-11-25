use bai5bt1;
delimiter $$
create procedure product_view()
begin
    select *
    from products;
end $$
delimiter ;
call product_view();

delimiter $$
drop procedure if exists product_add;
create procedure product_add(in id int,in productcode int,in productname varchar(20),in productprice float,in productamount int,in productdescription text,in productstatus bit)
begin

    INSERT INTO bai5bt1.products (id, productcode, productname, productprice, productamount, productdescription,
                                  productstatus)
    VALUES (id, productcode, productname, productprice, productamount, productdescription,
            productstatus);
end $$
delimiter ;
call product_add(2, 124, 'cut', 100, 10, 'aaaa', 1);

delimiter $$
drop procedure if exists product_edit;
create procedure product_edit(in id int,in newproductcode int,in newproductname varchar(20),in newproductprice float,in newproductamount int,in newproductdescription text,in newproductstatus bit)
begin
UPDATE bai5bt1.products
SET
   products.productcode = newproductcode
  , products.productname = newproductname  , products.productprice = newproductprice , products.productamount = newproductamount ,
        products.productdescription = newproductdescription  , products.productstatus = newproductstatus
WHERE products.id = id;
end $$
delimiter ;
call product_edit(1, 125, 'dadad', 2, 22, 'wwww', 1)