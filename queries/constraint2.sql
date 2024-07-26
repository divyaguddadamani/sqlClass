use details;
create table show_room(id int not null, show_room_name varchar(20),no_of_vehical int,  brand_name varchar(50) not null,
no_of_employee int,type_of_vehical varchar(50) unique,cost_of_vehical bigint unique,employee_salary int,
insurance bigint,service_charge bigint,constraint insurance_chk check(insurance>1000),constraint service_charge_chk check(service_charge>200)); 

insert into show_room values(1,'laxmi showroom', 200,'ford',10,'convertible',20000,15000,2000,300);
insert into show_room values(2,'divya showroom', 150,'honda',5,'microcar',25000,10000,1500,250);
insert into show_room values(3,'bhavya showroom', 50,'toyata',15,'coupe',30000,20000,2500,400);
insert into show_room values(4,'swati showroom', 100,'audi',20,'hatchback',35000,25000,3000,450);
insert into show_room values(5,'anu showroom', 170,'bmw',10,'station wagon',22000,30000,3500,310);
insert into show_room values(6,'samarth showroom', 180,'cadilac',5,'jeep',40000,35000,2000,320);
insert into show_room values(7,'chanagond showroom', 150,'chevralet',15,'suv',45000,40000,2200,330);
insert into show_room values(8,'lalitha showroom', 80,'ferrari',20,'crossover',24000,15000,2300,340);
insert into show_room values(9,'soni showroom', 210,'hyundai',30,'minivan',26000,10000,2400,350);
insert into show_room values(10,'aly showroom', 220,'renaulta',35,'sports car',31000,20000,2600,360);
insert into show_room values(11,'rahul showroom', 230,'abarth',25,'bus',36000,25000,2700,370);
insert into show_room values(12,'karan showroom', 240,'alfa romeo',20,'pickup truck',41000,30000,2800,1000);
insert into show_room values(13,'arjun showroom', 250,'bentley',25,'aircraft',10000,35000,2900,500);
insert into show_room values(14,'nia showroom', 260,'chrysler',15,'bicycle',15000,40000,3100,600);
insert into show_room values(15,'khavya showroom', 270,'kia',5,'van',23000,45000,3200,700);
insert into show_room values(16,'sumita showroom', 280,'dacia',35,'autocycle',50000,50000,3300,800);
insert into show_room values(17,'revati showroom', 250,'gmc',40,'boat',37000,15000,3400,900);
insert into show_room values(18,'pushpa showroom', 90,'jaguar',20,'truck',32000,20000,3500,950);
insert into show_room values(19,'kiran showroom', 100,'skoda',30,'carriage',48000,25000,3600,850);
insert into show_room values(20,'tafseen showroom', 150,'buick',10,'ambulance',51000,30000,3700,750);

alter table show_room add column show_room_name varchar(20) not null;
alter table show_room add constraint brand_name_uni unique(brand_name);
alter table show_room add constraint no_of_employee_chk check (no_of_employee>4); 
alter table show_room add constraint employee_salary_chk check (employee_salary>1000);