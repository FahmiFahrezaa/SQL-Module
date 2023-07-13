select * from staff;
select address, district from address;
select distinct last_name from customer;
select count(*) from film;
select count (distinct first_name) from actor;
SELECT rental_id, return_date - rental_date AS rental_duration FROM rental;