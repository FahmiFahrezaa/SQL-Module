select * from sales.salesorderdetail where productid = 799 order by salesorderdetail.orderqty desc;
select max(discountpct) from sales.specialoffer;
select sum(scrappedqty) from production.workorder where productid = 529;
select distinct name from purchasing.vendor where vendor.name like 'G%';
select * from person.person where firstname like '_t%';
select * from person.emailaddress order by modifieddate limit 20;
select count(*) from person.person where additionalcontactinfo is not null;