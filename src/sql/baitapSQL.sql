# Mức 1:
# 1.	In ra các sản phẩm có số lượng từ 30 trở lên.
use demo20062;
select *
from product
where quantity >= 30;
# 2.	In ra các sản phẩm có số lượng từ 30 trở lên và có giá trong khoảng 100 đến 200.
select *
from product
where quantity >= 30
  and price between 100 and 200;
# 3.	In ra thông tin khách hàng tuổi lớn hơn 18
select *
from customer
where age > 18;
# 4.	In ra thông tin khách hàng họ Nguyễn và lớn hơn 20 tuổi
select *
from customer
where age > 20
  and name like 'Nguyễn%';
# 5.	In ra sản phẩm tên bắt đầu bằng chữ M
select *
from product
where name like 'm%';
# 6.	In ra sản phẩm kết thức bằng chữ E
select *
from product
where name like '%e';
# 7.	In ra danh sách sản phẩm số lượng tăng dần
select *
from product
order by quantity;
# 8.	In ra danh sách sản phẩm giá giảm dần
select *
from product
order by price desc;
# Mức 2:
# 1.	In ra tổng số lượng sản phẩm giá nhỏ hơn 300
select sum(quantity)
from product
where price < 300;
# 2.	In tổng số sản phẩm theo từng giá
select count(price), price
from product
group by price;
# 3.	In ra sản phẩm có giá cao nhất
select *
from product
order by price desc
limit 1;
# cach 2
select *
from product
group by id
having max(price) >= all (select price from product);
# 4.	In ra giá trung bình của tất cả các sản phẩm
select avg(price)
from product;
# 5.	In ra tổng số tiền nếu bán hết tất cả sản phẩm.
select sum(quantity * price)
from product;
# 6.	Tính tổng số sản phẩm giá <300.
select sum(quantity)
from product
where price < 300;
# 7.	Tìm giá bán cao nhất của các sản phẩm bắt đầu bằng chữ M.
select max(price)
from product
where name like 'm%';
# 8.	Thấp nhất của các sản phẩm bắt đầu bằng chữ M.
select min(price)
from product
where name like 'm%';
# 9.	Trung bình của các sản phẩm bắt đầu bằng chữ M.
select avg(price)
from product
where name like 'm%';
# Mức 3:
# 1.	In ra tên khách hàng và thời gian mua hàng.
select customer.name, time
from customer
         join `order` on customer.id = `order`.customerId;
# 2.	In ra tên khách hàng và tên sản phẩm đã mã
select customer.name, product.name
from customer
         join `order` on customer.id = `order`.customerId
         join orderdetail on `order`.id = orderdetail.orderId
         join product on product.id = orderdetail.productId;
# 3.	In ra mã hoá đơn và giá trị hoá đơn
select `order`.Id, sum(orderdetail.quantity * product.price)
from `order`
         join orderdetail on `order`.id = orderdetail.orderId
         join product on orderdetail.productId = product.id
group by `order`.Id;
# 4.	In ra mã hoá đơn và giá trị hoá đơn giảm dần
select `order`.Id, sum(orderdetail.quantity * product.price)
from `order`
         join orderdetail on `order`.id = orderdetail.orderId
         join product on orderdetail.productId = product.id
group by `order`.Id
order by sum(orderdetail.quantity * product.price) desc ;
# Mức 4-10 :
# 1.	In ra các mã hóa đơn, trị giá hóa đơn bán ra trong ngày 19/6/2006 và ngày 20/6/2006.
# 2.	In ra các mã hóa đơn, trị giá hóa đơn trong tháng 6/2006, sắp xếp theo ngày (tăng dần) và trị giá của hóa đơn (giảm dần).
# 3.	In ra danh sách các khách hàng (MAKH, HOTEN) đã mua hàng trong ngày 19/06/2007.
# 4.	In ra danh sách các sản phẩm (MASP, TENSP) được khách hàng có tên “Nguyen Van A” mua trong tháng 10/2006.
# 5.	Tìm các số hóa đơn đã mua sản phẩm “Máy giặt” hoặc “Tủ lạnh”.
# 6.	In ra danh sách các sản phẩm (MASP, TENSP) không bán được.
# 7.	In ra danh sách các sản phẩm (MASP, TENSP) không bán được trong năm 2006.
# 8.	In ra danh sách các sản phẩm (MASP, TENSP) có giá >300 sản xuất bán được trong năm 2006.
# 9.	Có bao nhiêu sản phẩm khác nhau được bán ra trong năm 2006.
# 10.	Tìm các số hóa đơn đã mua sản phẩm “Máy giặt” hoặc “Tủ lạnh”, mỗi sản phẩm mua với số lượng từ 10 đến 20.
# 11.	Tìm các số hóa đơn mua cùng lúc 2 sản phẩm “Máy giặt” và “Tủ lạnh”, mỗi sản phẩm mua với số lượng từ 10 đến 20.
# 12.	Tìm số hóa đơn đã mua tất cả các sản phẩm có giá >200.
# 13.	Tìm số hóa đơn trong năm 2006 đã mua tất cả các sản phẩm có giá <300.
# 14.	Có bao nhiêu sản phẩm khác nhau được bán ra trong năm 2006.
# 15.	Cho biết trị giá hóa đơn cao nhất, thấp nhất là bao nhiêu?
# 16.	Trị giá trung bình của tất cả các hóa đơn được bán ra trong năm 2006 là bao nhiêu?
# 17.	Tính doanh thu bán hàng trong năm 2006.
# 18.	Tìm số hóa đơn có trị giá cao nhất trong năm 2006.
# 19.	Tìm họ tên khách hàng đã mua hóa đơn có trị giá cao nhất trong năm 2006.
# 20.	In ra danh sách 3 khách hàng (MAKH, HOTEN) mua nhiều hàng nhất (tính theo số lượng).
# 21.	In ra danh sách các sản phẩm (MASP, TENSP) có giá bán bằng 1 trong 3 mức giá cao nhất.
# 22.	In ra danh sách các sản phẩm (MASP, TENSP) có tên bắt đầu bằng chữ M, có giá bằng 1 trong 3 mức giá cao nhất (của tất cả các sản phẩm).
# 23.	Tính doanh thu bán hàng mỗi ngày.
# 24.	Tính tổng số lượng của từng sản phẩm bán ra trong tháng 10/2006.
# 25.	Tính doanh thu bán hàng của từng tháng trong năm 2006.
# 26.	Tìm hóa đơn có mua ít nhất 4 sản phẩm khác nhau.
# 27.	Tìm hóa đơn có mua 3 sản phẩm có giá <300 (3 sản phẩm khác nhau).
# 28.	Tìm khách hàng (MAKH, HOTEN) có số lần mua hàng nhiều nhất.
# 29.	Tháng mấy trong năm 2006, doanh số bán hàng cao nhất?
# 30.	Tìm sản phẩm (MASP, TENSP) có tổng số lượng bán ra thấp nhất trong năm 2006.
# 31.	Trong 10 khách hàng có doanh số cao nhất, tìm khách hàng có số lần mua hàng nhiều nhất.
