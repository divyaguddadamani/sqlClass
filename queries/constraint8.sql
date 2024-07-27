use sys ;

create table user_info(id int,user_name varchar(40),email varchar(100),pass varchar(40),phone_no bigint,
primary key(id));

alter table user_info add  constraint eamail_uni unique (email);
alter table user_info add constraint pass_uni unique (pass);
alter table user_info drop index eamail_uni;
select* from user_info;
desc user_info;

insert into user_info values (1,'divya','divya@gmail.com','divya123',8123791097);
insert into user_info values (2,'darshan','darshan@gmail.com','dar123',8123708552);
insert into user_info values (3,'deepak','deepak@gmail.com','dee123',9620344630);
insert into user_info values (4,'kalpana','kalpana@gmail.com','kal123',8971587630);
insert into user_info values (5,'shrikant','shrikant@gmail.com','shr123',8867640457);

alter table user_info add constraint email_uni unique(email);

alter table user_info drop index pass_uni;