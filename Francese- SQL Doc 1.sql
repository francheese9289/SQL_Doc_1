--Liz Francese SQL Document 1
--A lot of my answers are different and I think its because the tables have changed since the assignment was made. 
--At the very least the database needs cleaning up. It's hard to determine which table to use (and feels neglected).

--Question 1
select actor_id, last_name 
from actor
where last_name= 'Wahlberg'; -- using a - worked for filters before but now its only taking =
--answer is 2

--Question 2
select * 
from payment -- either I'm using wrong table or this one got messed up, the answer is 0
where amount BETWEEN 3.99 and 5.99; 

--Question 3 
select film_id, count(film_id) as "film_count"
from inventory
group by film_id
order by film_count desc; -- my answer is a tie for several with an 8 count

--Question 4
select first_name, last_name
from customer
where last_name = 'William'; --answer: 0

--Question 5
select * from sales; -- this is blank
select staff_id, count(sale_id) as "num_sales"
from sales
group by staff_id
order by num_sales desc;

--Question 6 
select count(distinct(district))
from address; -- 378

--Question 7
select film_id, count(film_actor) as "actors"
from film_actor
group by film_id
order by actors desc; -- film_id 508, 15

--Question 8
select first_name, last_name
from customer
where last_name like '%es'; -- 21

--Question 9 
select amount, count(amount) as "amt"
from payment
group by amount
order by amt desc; 
-- -421.01, 3410

--Question 10
select rating, count(distinct film_id) as "num_titles"
from film 
group by rating
order by num_titles desc; -- 5, PG13, 224