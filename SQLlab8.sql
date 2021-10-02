-- LAB SQL 8

select title, length, rank() over (order by length desc) as 'Rank' from sakila.film
where  length != '';

select rating, length, title, rank() over (order by length) as 'Rank' from sakila.film
where length!='' order by rating;

select * from sakila.film_category;
select * from sakila.category;
select *, count(*), rank() over (order by count(*) desc) from sakila.film_category fc
join sakila.category c on fc.category_id=c.category_id
group by name;


select *, count(*) total_films, rank() over (order by count(*) desc) 'rank' from sakila.film_actor fa
join sakila.film f on fa.film_id=f.film_id
join sakila.actor sa on fa.actor_id=sa.actor_id
group by fa.actor_id
limit 1;

select *, count(*) films_rented, rank() over(order by count(*) desc) 'rank' from sakila.customer sc
join sakila.rental sr on sc.customer_id=sr.customer_id
group by email;

select *, count(*) times_rented, rank() over (order by count(*) desc) 'rank' from sakila.rental sr
join sakila.


