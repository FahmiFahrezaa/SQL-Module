-- 1
SELECT p1.businessentityid,
    p2.firstname,
    p2.middlename,
    p2.lastname,
    p3.phonenumber,
    p4.name 
FROM person.businessentity as p1
INNER JOIN person.person as p2
on p1.businessentityid = p2.businessentityid
inner join person.personphone as p3
on p2.businessentityid = p3.businessentityid
inner join person.phonenumbertype as p4
on p3.phonenumbertypeid = p4.phonenumbertypeid
order by p1.businessentityid desc;

-- 2
select p1.name,
p2.rating,
p2.comments
from production.product as p1
left join production.productreview as p2
on p1.productid = p2.productid
order by p2.rating asc;

--3
select p1.name,
sum(p2.orderqty) as orderqty,
sum(p2.scrappedqty) as scrappedqty
from production.product as p1
right join production.workorder as p2
on p1.productid = p2.productid
group by p1.name, p1.productid
order by p1.productid asc;