use quanlybanhang;
select cname,
       pName
from customer
         join `order` on customer.cID = `order`.cID
         join orderdetai on `order`.oID = orderdetai.oID
         join product on product.pID = orderdetai.pID
group by cname, pName

select cname
from customer,
     `order`
where customer.cid not in (select `order`.cID from `order`)
group by cname

select orderdetai.oID, oDate, (pPrice * odQTY)
from orderdetai,
     `order`,
     product
where orderdetai.oid = `order`.oid
  and orderdetai.pID = product.pID #
select customer.cName,
       customer.cid,
       count(oid)
from customer
         left join `order` o on customer.cID = o.cID
group by customer.cID

select orderdetai.oid,
       sum(orderdetai.odqty)
from orderdetai
group by oid

select cname
from customer,
     `order`
where customer.cid not in (select `order`.cID from `order`)
group by cname
