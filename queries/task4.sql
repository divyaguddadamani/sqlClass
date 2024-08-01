use  xworkz;
create table education(id int unique auto_increment ,university_name varchar(40),clg_name varchar(30) not null,clg_id int primary key,
no_of_teachers int, constraint no_of_teachers_chk check (no_of_teachers>10));

select *from education;

insert into education values (1,'VTU','AITM',501,4200);
insert into education values (2,'UD','SSC',502,4300);
insert into education values (3,'UoM','LC',503,4400);
insert into education values (4,'MU','SXC',504,4500);
insert into education values (5,'CU','PU',505,4600);
insert into education values (6,'SSPU','FC',506,4700);
insert into education values (7,'DU','HC',507,4800);
insert into education values (8,'UoM','MCC',508,4900);
insert into education values (9,'DU','LSR',509,4100);
insert into education values (10,'BU','SJC',510,5000);


select *from  education where id between 5 and 10;

select *from education order by clg_name ;

select *from education where university_name like 's%';
select *from education where university_name like 'u_';

select upper(university_name)as to_upper from education;
select lower(clg_name)as to_lower from education;

select concat(clg_name,university_name)from education;

select length(clg_name),clg_name from education;

create index university_name_index on education(university_name);

show indexes from education;

select instr('aitm','t');
desc education;



create table  student(id  int unique,student_name varchar(30),clg_id int,student_id int primary key,age int,
foreign key (clg_id)references education(clg_id));

select*from student;

alter table student add constraint age_chk check (age>18);
insert into student values(1,'divya',501,601,21);
insert into student values(2,'darshan',502,602,22);
insert into student values(3,'deepak',503,603,23);
insert into student values(4,'kalpana',504,604,24);
insert into student values(5,'shrikant',505,605,25);
insert into student values(6,'madhu',506,606,21);
insert into student values(7,'bhagya',507,607,22);
insert into student values(8,'kushi',508,608,23);
insert into student values(9,'rishi',509,609,24);
insert into student values(10,'vihan',510,610,25);


select *from  student where id between 2 and 10;

select *from student order by student_name ;

select *from student where student_name like '%a';
select *from student where student_name like 'm_';

select upper(student_name)as to_upper from student;
select lower(student_name)as to_lower from student;

select concat(student_name,student_id)from student;

select length(student_name),student_name from student;

create index student_name_index on student(student_name);

show indexes from student;

select instr('divya','y');
desc education;
