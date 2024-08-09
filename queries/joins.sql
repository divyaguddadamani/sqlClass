create database joins;
use joins;

create table book(b_id int primary key,b_name varchar(30),publish_year year,price bigint);
alter table book add column isbn_code varchar(50);
insert into book values(1,'tokillthemockingbird',1960,300,'2ag2021');
insert into book values(2,'1984',1970,400,'2ag2031');
insert into book values(3,'prideandprejudice',1980,500,'afst21');
insert into book values(4,'thegreatgatsby',1990,600,'2jsgh52');
insert into book values(5,'moby-dick',1995,700,'2jsh56');
insert into book values(6,'warandpeace',1985,800,'2vi26');
insert into book values(7,'thecatcherintherye',1975,900,'2div28');
insert into book values(8,'thelordoftherings',1965,1000,'2vis265');
insert into book values(9,'thehobbit',2000,1200,'3ndhg31');
insert into book values(10,'crimeandpunishment',2005,100,'2sfd35');
insert into book values(11,'thegraoesofworth',2010,200,'juwh39');
insert into book values(12,'janeeyre',2015,300,'dbjji2064');
insert into book values(13,'theroad',2018,400,'dnuhddu4875');
insert into book values(14,'braveneworld',2008,500,'dumofd540');
insert into book values(15,'thepictureofdoriangray',1999,600,'wkh95842');

create table authors(a_id int,a_name varchar(40),bod date,b_id int,foreign key (b_id)references books(b_id));
select* from authors;
INSERT INTO Authors (a_id,a_name, bod, b_id)
VALUES (201,'F. Scott Fitzgerald', '1896-09-24', 1),(202,'George Orwell', '1903-06-25', 2),(203,'Harper Lee', '1926-04-28', 3),(204,'Jane Austen', '1775-12-16', 4),
(205,'J.D. Salinger', '1919-01-01', 5),(206,'Mark Twain', '1835-11-30', 6),(207,'Charles Dickens', '1812-02-07', 7),(208,'Ernest Hemingway', '1899-07-21', 8),
(209,'Leo Tolstoy', '1828-09-09', 9),(210,'Herman Melville', '1819-08-01', 10),(211,'William Faulkner', '1897-09-25', 11),(212,'Virginia Woolf', '1882-01-25', 12),
(213,'Fyodor Dostoevsky', '1821-11-11', 13),(214,'Gabriel Garcia Marquez', '1927-03-06', 14),(215,'Emily Bronte', '1818-07-30', 15);


CREATE TABLE Librarian (L_ID INT PRIMARY KEY ,FirstName VARCHAR(50),LastName VARCHAR(50),Email VARCHAR(100) UNIQUE,PhoneNumber VARCHAR(15));
select* from Librarian;
INSERT INTO Librarian (L_ID,FirstName, LastName, Email, PhoneNumber)VALUES
    (301,'divya', 'sg', 'divya@gmail.com',  '555-1234'),
    (302,'darshan', 'sg', 'dar@gmail.com', '555-5678'),
    (303,'deepak', 'sg', 'dee@gmail.com', '555-8765'),
    (304,'kalpana', 'sg', 'kal@gmail.com', '555-4321'),
    (305,'shrikant', 'vg', 'shri@gmail.com',  '555-2345'),
    (306,'vikas', 'sr', 'vikas@gmail.com',  '555-6789'),
    (307,'khushi', 'naik', 'khushi@gmail.com',  '555-9876'),
    (308,'rishi', 'more', 'rishi@gmail.com',  '555-5432'),
    (309,'vihan', 'vishwanath', 'vihan@gmail.com', '555-3456'),
    (310,'pajju', 'add', 'pajju@gmail.com',  '555-7890'),
    (311,'niranjan', 'Thomas', 'niru@gmail.com', '555-0987'),
    (312,'pragathi', 'Jackson', 'paggu@gmail.com', '555-6543'),
    (313,'vani', 'White', 'vanidivya@gmail.com',  '555-1230'),
    (314,'varun', 'jisoos', 'varun@gmail.com',  '555-8760'),
    (315,'rani', 'jimin', 'rani@gmail.com',  '555-4320');

CREATE TABLE BankLoan (LoanID INT PRIMARY KEY AUTO_INCREMENT,CustomerName VARCHAR(100),LoanAmount bigint,InterestRate int,LoanStartDate DATE,LoanType VARCHAR(50));

INSERT INTO BankLoan (CustomerName, LoanAmount, InterestRate, LoanStartDate, LoanType)VALUES
    ('divya', 250000, 4, '2023-01-15', 'Home Loan'),
    ('deepak', 15000, 5, '2023-02-20', 'Car Loan'),
    ('darshan', 5000, 6, '2023-03-10', 'Personal Loan'),
    ('geeta', 300000, 3, '2023-04-05', 'Home Loan'),
    ('manas', 10000, 4, '2023-05-12', 'Car Loan'),
    ('bhavya', 20000, 7, '2023-06-01', 'Personal Loan'),
    ('kavya', 50000, 5, '2023-07-17', 'Education Loan'),
    ('neha', 75000, 4, '2023-08-09', 'Business Loan'),
    ('navya', 12000, 4, '2023-09-03', 'Car Loan'),
    ('tafseen', 180000, 3, '2023-10-22', 'Home Loan'),
    ('laxmi', 3500, 6, '2023-11-15', 'Personal Loan'),
    ('mahesh', 25000, 4, '2023-12-01', 'Car Loan'),
    ('kiran', 500000, 3, '2024-01-18', 'Home Loan'),
    ('vijay', 8000, 6, '2024-02-10', 'Personal Loan'),
    ('dhruva', 40000, 5, '2024-03-14', 'Business Loan');

select *from BankLoan;
select* from Librarian;
select* from authors;
select * from book;

select * from book b inner join authors a on b.b_id=a.a_id;
select *from authors a inner join book b on a.b_id=b.b_id;

select* from book b left join Librarian l on l.l_id=b.b_id;
select* from BankLoan b left join Librarian l on b.loanid=l.l_id;

select * from book b inner join authors a on b.b_id=a.a_id left join Librarian l on l.l_id=b.b_id;
select * from  book b  left join Librarian l on b.b_id=l.l_id right join  BankLoan bl on bl.loanid=l.l_id;
select * from book b inner join authors a on b.b_id=a.a_id right join Librarian l on l.l_id=b.b_id;
select * from authors a inner join bankloan bl on a.a_id=bl.loanid left join book b on b.b_id=bl.loanid;
