create database info;
use info;
create table movie_info(id int,movie_name varchar(20),actor_name varchar(20),theatre varchar(20),actoress_name 
varchar(20),interval_time_insec bigint,ticket_price bigint,members int,producer_name varchar(20),
feedback boolean);

ALTER TABLE movie_info ADD COLUMN production_name varchar(30);
ALTER TABLE movie_info ADD COLUMN music_director varchar(30);
ALTER TABLE movie_info ADD COLUMN no_of_side_actor int;
ALTER TABLE movie_info ADD COLUMN boxoffice_collectin bigint;
ALTER TABLE movie_info ADD COLUMN director_name varchar(30);

ALTER TABLE movie_info RENAME COLUMN movie_name TO name_film;
ALTER TABLE movie_info RENAME COLUMN theatre TO mall_name;
ALTER TABLE movie_info RENAME COLUMN interval_time_insec TO time_interval;
ALTER TABLE movie_info RENAME COLUMN feedback TO review;
ALTER TABLE movie_info RENAME COLUMN members TO no_of_person;

select*from movie_info;
insert into movie_info values(1,"appu","puneetha","lulu","rakhita",50,150,2,"pvr",true,"pvr","hari",50,50000,"shivu");
insert into movie_info values(2,"kalki","prabhas","laxmi","ramya",500,1550,21,"nag asheini",true,"pvr","dhruva",50,50000,"divya");
insert into movie_info values(3,"milana","appu","lulu","radika",580,1501,3,"pvr",true,"pvr","kavya",50,559000,"shivu");
insert into movie_info values(4,"dhruva","rr","globe","anushka",550,1850,2,"kjs",true,"pvr","hari",50,50000,"shivu");
insert into movie_info values(5,"rajkumar","puneetha","inox","alia",550,150,2,"pvr",true,"kjs","hari",50,290000,"deepak");
insert into movie_info values(6,"bahubali","prabhas","lulu","kat",550,150,9,"bolly",true,"pvr","divya",50,80000,"prabhu");
insert into movie_info values(7,"rajahuli","yash","inox","maduri",550,1550,2,"pvr",true,"govinda","hari",50,50000,"shivu");
insert into movie_info values(8,"basava","puneetha","globe","rachita",502,1550,2,"pvr",true,"pvr","darshana",50,62800,"shetty");
insert into movie_info values(9,"karna","puneetha","laxmi","ramya",505,50,6,"pvr",true,"pvr","hari",50,50000,"shivu");
insert into movie_info values(10,"krish","hrithik","ananda","priyank",50,150,2,"pvr",true,"pvr","hari",50,50000,"arun");

update 

