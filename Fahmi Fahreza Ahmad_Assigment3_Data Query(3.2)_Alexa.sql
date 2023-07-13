select distinct country from (select country from customers union select country from suppliers) as AllCountries order by country asc;
select country, 'customer' as Ytpe from customers union select country, 'supplier' as type from suppliers order by country asc;
select count(*) as Numpairs from (select distinct customers.country, suppliers.country from customers join suppliers on customers.country = suppliers.country) as CountryPairs;
select distinct suppliers.city from suppliers left join customers on suppliers.city = customers.city where customers.city is null;
select count(*) as NumCustomers from customers left join suppliers on customers.city = suppliers.city where suppliers.city is null;