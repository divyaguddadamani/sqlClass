use info;
create table orders (id int auto_increment ,order_name varchar(30), cost bigint,order_id int primary key, created_at timestamp,created_by varchar(30),
modified_at timestamp,modified_by varchar(30));

select *from orders;
insert into orders (order_name,cost ,order_id,created_at,created_by,modified_at,modified_by) values ('pizza',300,201,'2024-07-29 09:45:20',
'divya',now(),'laxmi');
insert into orders (order_name,cost ,order_id,created_at,created_by,modified_at,modified_by) values ('pasta',400,202,'2024-08-29 10:45:20',
'darshan',now(),'deepak');
insert into orders (order_name,cost ,order_id,created_at,created_by,modified_at,modified_by) values ('roti',100,203,'2024-07-30 09:20:20',
'kalpana',now(),'shrikant');
insert into orders (order_name,cost ,order_id,created_at,created_by,modified_at,modified_by) values ('dosa',150,204,'2024-09-29 08:45:20',
'aurn',now(),'kiran');
insert into orders (order_name,cost ,order_id,created_at,created_by,modified_at,modified_by) values ('rice',201,205,'2024-09-29 08:45:20',
'aurn',now(),'kiran');
insert into orders (order_name,cost ,order_id,created_at,created_by,modified_at,modified_by) values ('juice',150,206,'2024-09-29 08:45:20',
'aurn',now(),'kiran');

create table payment(id int ,price bigint,payment_id int primary key, order_id  int ,payment_status enum('online','offline'),
created_at timestamp,created_by varchar(30),modified_at timestamp,modified_by varchar(30),
foreign key (order_id)references orders(order_id));

select*from payment;

insert into payment values(1,200,301,201,1,'2024-08-25 06:45:33','madhu','2024-03-22 06:35:33','vihan');
insert into payment values(2,300,302,202,2,'2023-08-25 06:45:33','bhagya','2023-08-29 06:35:33','kushi');
insert into payment values(3,400,303,203,1,'2022-08-25 06:45:33','vidya','2022-05-21 06:35:33','rishi');
insert into payment values(4,500,304,204,2,'2021-08-25 06:45:33','vinayak','2021-06-25 06:35:33','sanjan');
insert into payment values(5,600,305,205,2,'2020-08-25 06:45:33','akash','2020-09-26 06:35:33','surya');
insert into payment values(6,700,306,206,1,'2024-08-25 06:45:33','madhu','2024-03-22 06:35:33','vihan');

create table restaurant ( id int ,r_name varchar(30),r_id int primary key,loc varchar(40),order_id int,rattings int,payment_id int,
created_at timestamp,created_by varchar(30),modified_at timestamp,modified_by varchar(30),
foreign key (order_id)references orders(order_id),foreign key (payment_id)references payment(payment_id));

insert into restaurant values(1,'porna',401,'rrnagar',201,1,301,'2024-08-25 06:45:33','madhu','2024-03-22 06:35:33','vihan');
insert into restaurant values(2,'deepa',402,'rrnagar',202,2,302,'2023-08-25 06:45:33','bhagya','2023-08-29 06:35:33','kushi');
insert into restaurant values(3,'niyaz',403,'rrnagar',203,3,303,'2022-08-25 06:45:33','vidya','2022-05-21 06:35:33','rishi');
insert into restaurant values(4,'panjurli',408,'rrnagar',204,4,304,'2021-08-25 06:45:33','vinayak','2021-06-25 06:35:33','sanjan');
insert into restaurant values(5,'malnad',404,'rrnagar',205,5,305,'2020-08-25 06:45:33','akash','2020-09-26 06:35:33','surya');
insert into restaurant values(6,'goa',405,'rrnagar',206,6,306,'2024-08-25 06:45:33','madhu','2024-03-22 06:35:33','vihan');

select*from restaurant;


create table delivery (id int, p_name varchar(30),mode_of_pay  enum('online','offline'),r_id int,order_id int,
created_at timestamp,created_by varchar(30),modified_at timestamp,modified_by varchar(30),
foreign key (order_id)references orders(order_id),foreign key (r_id)references restaurant(r_id));


select*from delivery;

insert into delivery values(1,'soap',1,401,201,'2024-08-25 06:35:32','abc','2024-03-22 06:35:33','vihan');
insert into delivery values(2,'sugar',2,402,202,'2023-08-25 06:05:33','divya','2023-03-22 06:35:33','khushi');
insert into delivery values(3,'dress',1,403,203,'2022-08-25 06:45:33','madhu','2022-03-22 06:35:33','rishi');
insert into delivery values(4,'brush',2,404,204,'2021-08-25 06:45:33','heena','2021-03-22 06:35:33','vina');
insert into delivery values(5,'rice',1,405,205,'2020-08-25 06:45:33','hima','2020-03-22 06:35:33','veda');
insert into delivery values(6,'glue',2,408,206,'2024-08-25 06:45:33','pinky','2024-03-22 06:35:33','varun');


