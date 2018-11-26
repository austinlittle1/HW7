USE sakila;

-- 1.a


-- SELECT * FROM actor

-- ------------------------------------------

-- 1.b 

-- select concat(first_name, ' ', last_name) as actor_name
-- from actor;

-- ------------------------------------------

-- 2.a
-- select * from actor where first_name = 'Joe'

-- ----------------------------------------------------

-- 2.b

-- select * from actor where last_name like '%GEN%'

-- ----------------------------------------------------

-- 2.c

-- select * from actor where last_name like '%LI%'
-- 	order by last_name, first_name

-- ----------------------------------------------------

-- 2.d

-- select country_id, country from country where country in ('Afghanistan','Bangladesh','China')

-- ----------------------------------------------------

-- 3.a

-- In order to place the middle_name between first and last, I would have had to create an entire new table
-- then copy the contents over to the new table. This simply did not seem worth the trouble. Apparently, it is
-- also best practice not to worry about ordinance of columns.

-- alter table actor add middle_name varchar(255);

-- ----------------------------------------------------
-- 3.b

-- alter table actor
-- alter column middle_name blob

-- ----------------------------------------------------

-- 3.c

-- alter table actor
-- drop column middle_name

-- ----------------------------------------------------

-- 4.a 

-- select last_name, count(*) from actor
-- group by last_name

-- ----------------------------------------------------

-- 4.b

-- select last_name, count(*) from actor
-- group by last_name
-- having count(*) > 1

-- 4.c

-- update actor
-- set first_name ='HARPO'
-- where actor_id = 172

-- 4.d

-- update actor 
-- set first_name = 'GROUCHO'
-- where actor_id = 172

-- 5.a

-- How do you create a schema for a specific table versus an entire database?

-- 6.a 

-- select staff.last_name, staff.first_name, address.address
-- from staff
-- inner join address on staff.address_id = address.address_id

-- 6.b

select payment.amount, staff.staff_id, sum(payment.amount)
from staff
inner join payment on staff.staff_id=payment.staff_id
group by staff.staff_id






