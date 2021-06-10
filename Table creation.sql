use movie_db;
create table actor(
 `act_id`  int(10) not null,
 `act_Fname` varchar(30) not null,
 `act_Lname` varchar(30) not null,
 `act_gender` varchar(1) not null,
 constraint actor_pk   Primary key (act_id)
);
create table director(
 `dir_id`  int(10) not null,
 `dir_Fname` varchar(30) not null,
 `dir_Lname` varchar(30) not null,
 constraint director_pk   Primary key (dir_id)
);
create table genre(
 `gen_id`  int(10) not null,
 `gen_title` varchar(30) not null,
 constraint genre_pk   Primary key (gen_id)
);

create table movie(
 `mov_id`  int(10) not null,
 `mov_title` varchar(30) not null,
 `mov_year` int(30) not null,
 `mov_time` int(10)not null,
 `mov_lang` varchar(50)not null,
 `mov dt_rel` date ,
 `mov_rel_country` varchar(5)not null,
 constraint movie_pk   Primary key (mov_id)
);

create table movie_cast(
 `act_id`  int(10) not null,
 `mov_id` int(30) not null,
 `mov_role` varchar(30) not null,
 constraint movie_cast_pk   Primary key (act_id)
);


create table movie_direction(
 `dir_id`  int(10) not null,
 `mov_id` int(30) not null,
 constraint movie_direction_pk   Primary key (dir_id)
);

create table rating(
 `mov_id`  int(10) not null,
 `rev_id` int(30) not null,
  `rev_star`  int(10) not null,
 `num_o_ratings` int(30) not null,
 constraint movie_direction_pk   Primary key (mov_id)
);

create table reviewer(
 `rev_id`  int(10) not null,
 `rev_name` varchar(30) not null,
 constraint reviewer_pk   Primary key (rev_id)
);