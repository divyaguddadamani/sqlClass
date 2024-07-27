use sys;
create table watch (id int unique ,w_name varchar(30), w_brand varchar(30),price bigint,stock int);

alter table watch add constraint price_chk check (price>100);
alter table watch drop constraint id;
alter table watch add constraint w_brand_uni unique (w_brand);

select* from watch;
desc watch;

insert into watch values(1,'rolex','submariner',8000,5);
insert into watch values(2,'omega','speedmaster',5500,6);
insert into watch values(3,'casio','g-shok',6500,12);
insert into watch values(4,'tag heuer','carrera',9520,26);
insert into watch values(5,'cartier','tank',5900,55);

alter table watch add constraint id_pk  primary key(id);

alter table watch add constraint w_name_uni unique (w_name);

alter table watch drop index w_brand_uni;


