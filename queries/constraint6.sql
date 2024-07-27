use sys;
create table product( id int unique , p_name varchar(30),p_cost bigint, quantity int,quality varchar(30));

alter table product add constraint quantity_chk check (quantity>0);
alter table product add column price bigint not null;
alter table product add constraint quality_uni unique (quality);

alter table product drop constraint id;
select * from product;
desc product;

insert into product values (1,'facewash',100,250,'good',150);
insert into product values (2,'maggie',20,250,'notgood',25);
insert into product values (3,'chips',30,200,'nice',300);
insert into product values (4,'fruits',120,12,'healty',120);
insert into product values (5,'cake',400,1,'delicious',380);

alter table product add constraint id_pk  primary key(id);
alter table product add constraint  p_name_uni unique (p_name) ;

alter table  product drop constraint quality_uni;
