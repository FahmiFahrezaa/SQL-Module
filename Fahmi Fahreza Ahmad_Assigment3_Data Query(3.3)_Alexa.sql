--1
select customers.customerid, customers.companyname from customers where customers.customerid not in ( select distinct orders.customerid from orders where orders.orderdate between '1997-04-01' and '1997-04-30');

--2
select distinct suppliers.supplierid, suppliers.companyname from suppliers join products on suppliers.supplierid = products.supplierid join order_details on products.productid = order_details.productid where order_details.quantity = 1;

--3
select distinct customers.customerid, customers.companyname from customers join orders on customers.customerid = orders.customerid join order_details on orders.orderid = order_details.orderid where order_details.quantity > ( select AVG(order_details.quantity) from order_details);

--4
select distinct suppliers.supplierid, suppliers.companyname, suppliers.city from suppliers join products on suppliers.supplierid = products.supplierid join order_details on products.productid = order_details.productid join orders on order_details.orderid = orders.orderid join customers on orders.customerid = customers.customerid where suppliers.city = customers.city;