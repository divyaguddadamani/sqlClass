use sys;
create table events(id int primary key,e_name varchar(30),e_date datetime,loc varchar(30),organizer varchar(30));

alter table events add constraint e_name_uni unique (e_name);
alter table events drop column id;

select * from events;
desc events;
alter table events add  id int  primary key;

insert into events values('tech event','2024-10-15 11:30:25' ,'rajajinagar','divya',1);
insert into events values('food event','2024-10-16 12:30:25' ,'rrnagar','darshan',2);
insert into events values('art exhibition','2024-10-17 01:30:25' ,'gokak','deepak',3);
insert into events values('music event','2024-10-18 02:30:25' ,'belagavi','kalpana',4);
insert into events values('sports event','2024-10-19 03:30:25' ,'vijaynagar','shrikant',5);

alter table events add constraint loc_uni unique(loc);
alter table events drop primary key ;

alter table events drop index e_name_uni;

alter table events add constraint  e_date_pk primary key(e_date);