use movie;
show tables;
select*from actor;
select distinct mov_title,mov_year
 from movie;
 select mov_year
 from movie
 where mov_title ='American Beauty';
 select mov_title 
 from movie
 where mov_year < 1999;

select  * FROM movie;
select * from reviewer;

select  distinct  mov_title,rev_name
from reviewer
join movie;
 
 select * from rating;
 select distinct  rev_name
 from rating
 join reviewer
 where rev_stars>=7 ;
 -- join reviewer

select  num_o_ratings,mov_title
from rating 
join movie
where num_o_ratings='null';

select * from movie 
join rating;

select mov_title
from movie
where mov_id in (
	select mov_id
    from rating
    where num_o_ratings is null
);
select * from rating where num_o_ratings is null;

/*select mov_title 
from movie
where num_o_ratings in 
(select num_o_ratings =0);  */              


select *
from movie 
join director 
where mov_title = 'Eyes Wide Shut';
