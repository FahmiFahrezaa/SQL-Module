--1

--2


--3
delete from orders where orderid = 11078;

--4
select * into orders_1997 from orders where orderdate between '1997-01-01' and '1997-12-31';

--5
create table orders_dec_2016 (orderid int primary key, customerid varchar(5), employeeid int, orderdate DATE, requireddate date, shippeddate date, shipvia int, shipname varchar(40), shipaddress varchar(60), shipcity varchar(15), shipregion varchar(15), shippostalcode varchar(10), shipcountry varchar(50));
