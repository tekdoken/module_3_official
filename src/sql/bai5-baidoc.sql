use quanlybanhang;
# select customer.cName,
#        customer.cid,
#        count(oid)
# from customer
#          left join `order` o on customer.cID = o.cID
# create view cho as
# select customer.cID,oID,cname from `order`,customer

# create unique index sa on `order`(oDate);
# alter table customer add unique sa (cname)

# Thêm index cho bảng, với index mang tính duy nhất và không thể null

# ALTER TABLE tbl_name ADD PRIMARY KEY (column 1, column 2,..)
# #     Thêm index cho bảng, với index mang tính duy nhất nhưng có thể null
#
# ALTER TABLE tbl_name ADD UNIQUE index_name (column 1, column 2,..)
# #     Thêm index cho bảng, có thể trùng lặp
#
# ALTER TABLE tbl_name ADD INDEX index_name (column 1, column 2,..)
# #     Thêm index đặc biệt thường cho tìm kiếm văn bản
#
# ALTER TABLE tbl_name ADD FULLTEXT index_name (column 1, column 2,..)
#
explain select oid from `order`;
#         where cName like'%a';
