create database rto;
use rto;

create table llr_info( id int ,l_id int primary key,l_name varchar(30),dob date not null, address varchar(30)
,phno bigint ,email varchar(50),l_issuedate date ,exp_date date,issuedBy varchar(3));

select *from llr_info;
alter table llr_info add column gender varchar(10);
alter table llr_info modify column issuedby varchar(40);
insert into llr_info values(1,201,'divya','2001-11-25','gokak',8123791090,'divya@gmail.com','2020-3-21','2026-3-9','officer_vikas','f');
insert into llr_info values(2,202,'darshan','2002-11-25','bagalkote',8123791091,'dar@gmail.com','2021-3-26','2029-3-8','officer_vikas','m');
insert into llr_info values(3,203,'deepak','2003-11-25','athani',8123791092,'dee@gmail.com','2022-3-25','2026-3-6','officer_vikas','m');
insert into llr_info values(4,204,'kalpana','2001-10-25','chikodde',8123791093,'kal@gmail.com','2023-3-25','2041-3-2','officer_vikas','f');
insert into llr_info values(5,205,'shrikant','2002-10-25','nipani',8123791094,'shri@gmail.com','2024-3-28','2052-3-25','officer_vikas','m');
insert into llr_info values(6,206,'laxmi','2003-10-25','vijapura',8123791095,'lax@gmail.com','2025-3-25','2026-3-1','officer_vikas','f');
insert into llr_info values(7,207,'anu','2002-9-25','belagavi',8123791096,'anu@gmail.com','2026-3-25','2026-3-25','officer_vikas','f');
insert into llr_info values(8,208,'bhavya','2002-9-25','bangalore',8123791097,'bha@gmail.com','2027-3-30','2023-3-18','officer_vikas','f');
insert into llr_info values(9,209,'kavya','2002-9-25','mysore',8123791098,'kav@gmail.com','2001-3-25','2026-3-22','officer_vikas','f');
insert into llr_info values(10,210,'kiran','2003-8-25','mangalore',8123791099,'kir@gmail.com','2006-3-6','2026-8-22','officer_vikas','m');
insert into llr_info values(11,211,'sammu','2001-8-25','udapi',8123791010,'samm@gmail.com','2008-3-25','2025-3-6','officer_vikas','f');
insert into llr_info values(12,212,'vikas','2001-8-25','hasan',8123791011,'vikas@gmail.com','2009-3-25','2045-3-25','officer_vikas','m');
insert into llr_info values(13,213,'iranna','2001-7-25','mumbai',8123791012,'iranna@gmail.com','2008-3-25','2026-3-25','officer_vikas','m');
insert into llr_info values(14,214,'akash','2002-7-25','kolkatta',8123791013,'akash@gmail.com','2007-3-25','2030-3-28','officer_vikas','m');
insert into llr_info values(15,215,'mahesh','2001-7-25','hydrabad',8123791014,'mahesh@gmail.com','2006-3-8','2026-3-25','officer_vikas','m');
insert into llr_info values(16,216,'arun','2001-6-25','kengeri',8123791015,'arun@gmail.com','2006-3-25','2040-3-25','officer_vikas','m');
insert into llr_info values(17,217,'nidhi','2005-6-25','karwar',8123791016,'nidhi@gmail.com','2005-3-29','2026-3-17','officer_vikas','f');
insert into llr_info values(18,218,'bhavana','2001-6-25','hukkere',8123791017,'bhavana@gmail.com','2001-9-9','2048-3-19','officer_vikas','f');
insert into llr_info values(19,219,'falguni','2004-5-25','rrnagar',8123791018,'fal@gmail.com','2005-3-5','2026-3-25','officer_vikas','f');
insert into llr_info values(20,220,'pinky','2001-5-25','btm',81237910919,'pinky@gmail.com','2002-3-25','2020-3-31','officer_vikas','f');


CREATE TABLE LearnerLicenseTestInfo (TestID INT PRIMARY KEY ,l_id INT ,TestDate DATE NOT NULL,TestLocation VARCHAR(100) NOT NULL,
    WrittenTestScore INT,RoadTestScore INT,Passed BOOLEAN NOT NULL,InstructorName VARCHAR(100),TestType VARCHAR(50),Comments VARCHAR(255),
    FOREIGN KEY (l_id) REFERENCES llr_info(l_id));

select*from LearnerLicenseTestInfo;

INSERT INTO LearnerLicenseTestInfo VALUES(301,201, '2024-01-10', 'Downtown Testing Center', 85, 90, TRUE, ' divya', 'Full Test', 'Passed with flying colors');
INSERT INTO LearnerLicenseTestInfo VALUES(302,202,'2024-01-12', 'East Side Testing Center', 80, 85, TRUE, ' v', 'Full Test', 'Good performance');
INSERT INTO LearnerLicenseTestInfo VALUES(303,203, '2024-01-15', 'West Side Testing Center', 90, 88, TRUE, ' jk', 'Full Test', 'Solid effort');
INSERT INTO LearnerLicenseTestInfo VALUES(304,204, '2024-01-18', 'North Side Testing Center', 78, 75, FALSE, ' jhon', 'Full Test', 'Needs improvement');
INSERT INTO LearnerLicenseTestInfo VALUES(305,205,'2024-01-20', 'South Side Testing Center', 88, 82, TRUE, ' depika', 'Full Test', 'Well done');
INSERT INTO LearnerLicenseTestInfo VALUES(306,206, '2024-01-22', 'Downtown Testing Center', 84, 90, TRUE, ' alia', 'Full Test', 'Excellent work');
INSERT INTO LearnerLicenseTestInfo VALUES(307,207, '2024-01-25', 'East Side Testing Center', 79, 80, TRUE, ' jaky', 'Full Test', 'Satisfactory');
INSERT INTO LearnerLicenseTestInfo VALUES(308,208, '2024-01-28', 'West Side Testing Center', 85, 88, TRUE, ' Taylor', 'Full Test', 'Very good');
INSERT INTO LearnerLicenseTestInfo VALUES(309,209, '2024-01-30', 'North Side Testing Center', 77, 70, FALSE, ' Thomas', 'Full Test', 'Needs more practice');
INSERT INTO LearnerLicenseTestInfo VALUES(310,210, '2024-02-02', 'South Side Testing Center', 86, 89, TRUE, ' messi', 'Full Test', 'Impressive performance');
INSERT INTO LearnerLicenseTestInfo VALUES(311,211, '2024-02-05', 'Downtown Testing Center', 81, 85, TRUE, ' Jackson', 'Full Test', 'Good effort');
INSERT INTO LearnerLicenseTestInfo VALUES(312,212, '2024-02-07', 'East Side Testing Center', 83, 87, TRUE, ' bright', 'Full Test', 'Well prepared');
INSERT INTO LearnerLicenseTestInfo VALUES(313,213, '2024-02-10', 'West Side Testing Center', 89, 90, TRUE, ' win', 'Full Test', 'Outstanding');
INSERT INTO LearnerLicenseTestInfo VALUES(314,214, '2024-02-12', 'North Side Testing Center', 76, 78, FALSE, ' Martin', 'Full Test', 'Needs more work');
INSERT INTO LearnerLicenseTestInfo VALUES(315,215,'2024-02-15', 'South Side Testing Center', 87, 85, TRUE, ' kimwoobin', 'Full Test', 'Great job');
INSERT INTO LearnerLicenseTestInfo VALUES(316,216, '2024-02-18', 'Downtown Testing Center', 82, 84, TRUE, ' junksuk', 'Full Test', 'Well done');
INSERT INTO LearnerLicenseTestInfo VALUES(317,217, '2024-02-20', 'East Side Testing Center', 80, 86, TRUE, ' jhope', 'Full Test', 'Good performance');
INSERT INTO LearnerLicenseTestInfo VALUES(318,218, '2024-02-22', 'West Side Testing Center', 85, 89, TRUE, ' rm', 'Full Test', 'Very good');
INSERT INTO LearnerLicenseTestInfo VALUES(319,219, '2024-02-25', 'North Side Testing Center', 75, 72, FALSE, ' jimin', 'Full Test', 'Needs improvement');
INSERT INTO LearnerLicenseTestInfo VALUES(320,220, '2024-02-28', 'South Side Testing Center', 88, 91, TRUE, ' suga', 'Full Test', 'Excellent work');



CREATE TABLE DrivingLicenseInfo (d_id INT PRIMARY KEY AUTO_INCREMENT,l_id INT  ,FullName VARCHAR(100) ,DateOfBirth DATE ,
    LicenseNumber VARCHAR(20) ,IssueDate DATE  ,ExpiryDate DATE ,LicenseClass VARCHAR(10) ,IssuingAuthority VARCHAR(100) ,Address VARCHAR(255) 
    ,TestID INT ,FOREIGN KEY(TestID)references LearnerLicenseTestInfo(TestID),FOREIGN KEY (l_id) REFERENCES llr_info(l_id));
    SELECT *FROM DrivingLicenseInfo;

INSERT INTO DrivingLicenseInfo VALUES(401,201, 'DIVYA', '2000-01-15', 'DL123456789', '2024-03-01', '2034-03-01', 'A', 'DMV Downtown', ' gokak',301 );
INSERT INTO DrivingLicenseInfo VALUES(402,202, 'JAY ', '1999-05-20', 'DL123456788', '2024-03-02', '2034-03-02', 'B', 'DMV East Side', ' bgm', 302);
INSERT INTO DrivingLicenseInfo VALUES(403,203, ' Johnson', '2001-07-25', 'DL123456787', '2024-03-03', '2034-03-03', 'A', 'DMV West Side', 'attiguppr',303 );
INSERT INTO DrivingLicenseInfo VALUES(404,204, ' David', '2002-11-30', 'DL123456785', '2024-03-05', '2034-03-05', 'A', 'DMV South Side', 'btm', 305);
INSERT INTO DrivingLicenseInfo VALUES(405,205, 'lisa', '1997-08-05', 'DL123456784', '2024-03-06', '2034-03-06', 'B', 'DMV Downtown', 'bgk', 306);
INSERT INTO DrivingLicenseInfo VALUES(406,206, 'buiber', '2000-12-12', 'DL123456783', '2024-03-07', '2034-03-07', 'C', 'DMV East Side', 'naragunda',307 );
INSERT INTO DrivingLicenseInfo VALUES(407,207, 'James ', '1999-04-18', 'DL123456782', '2024-03-08', '2034-03-08', 'A', 'DMV West Side', 'badami', 308);
INSERT INTO DrivingLicenseInfo VALUES(408,208, ' Taylor', '2001-06-21', 'DL123456781', '2024-03-09', '2034-03-09', 'B', 'DMV North Side', 'gokarna', 309);
INSERT INTO DrivingLicenseInfo VALUES(409,209, ' Thomas', '1998-09-09', 'DL123456780', '2024-03-10', '2034-03-10', 'C', 'DMV South Side', 'nepal',310 );
INSERT INTO DrivingLicenseInfo VALUES(410,210, 'Karena', '2002-03-14', 'DL123456779', '2024-03-11', '2034-03-11', 'A', 'DMV Downtown', 'kar', 311);
INSERT INTO DrivingLicenseInfo VALUES(411,211, ' Jackson', '1997-10-22', 'DL123456778', '2024-03-12', '2034-03-12', 'B', 'DMV East Side', 'dubai',312 );
INSERT INTO DrivingLicenseInfo VALUES(412,212, ' White', '2000-11-05', 'DL123456777', '2024-03-13', '2034-03-13', 'A', 'DMV West Side', 'bali',313);
INSERT INTO DrivingLicenseInfo VALUES(413,213, ' Harris', '1999-01-17', 'DL123456776', '2024-03-14', '2034-03-14', 'C', 'DMV North Side', 'thailand', 314);
INSERT INTO DrivingLicenseInfo VALUES(414,215, ' rosa', '2001-03-29', 'DL123456775', '2024-03-15', '2034-03-15', 'A', 'DMV South Side', 'bankok', 315);
INSERT INTO DrivingLicenseInfo VALUES(415,216, ' jisoo', '1998-07-19', 'DL123456774', '2024-03-16', '2034-03-16', 'B', 'DMV Downtown', 'sagsr', 316);
INSERT INTO DrivingLicenseInfo VALUES(416,217, 'Nancy ', '2002-10-30', 'DL123456773', '2024-03-17', '2034-03-17', 'C', 'DMV East Side', 'bidadi', 317);
INSERT INTO DrivingLicenseInfo VALUES(417,218, 'Daniel ', '1997-05-06', 'DL123456772', '2024-03-18', '2034-03-18', 'A', 'DMV West Side', 'mysore', 318);
INSERT INTO DrivingLicenseInfo VALUES(418,219, 'baby ', '2000-06-16', 'DL123456771', '2024-03-19', '2034-03-19', 'B', 'DMV North Side', 'mandya',319);
INSERT INTO DrivingLicenseInfo VALUES(420,220, 'hitler', '1999-02-28', 'DL123456770', '2024-03-20', '2034-03-20', 'C', 'DMV South Side', 'vijaypur', 320);
INSERT INTO DrivingLicenseInfo VALUES(419,214, 'dar', '1999-02-28', 'DL123455770', '2024-05-20', '2034-03-20', 'C', 'DMV west Side', 'vijaypur', 304);


CREATE TABLE Dl_TestInfo (TestID INT  ,l_id int ,TestDate DATE ,TestCenter VARCHAR(100),d_id INT,PracticalScore INT,Passed BOOLEAN ,ExaminerName VARCHAR(100),
    TestType VARCHAR(50),Remarks VARCHAR(255),FOREIGN KEY (d_id) REFERENCES DrivingLicenseInfo(d_id));


select * from Dl_TestInfo;
INSERT INTO Dl_TestInfo  VALUES(301,201, '2024-03-10', 'Downtown Test Center', 401, 90, TRUE, ' jaya', 'Initial', 'Excellent performance');
INSERT INTO Dl_TestInfo  VALUES(302,202,'2024-03-12', 'Eastside Test Center', 402, 85, TRUE, ' jhon', 'Initial', 'Good performance');
INSERT INTO Dl_TestInfo  VALUES(303,203, '2024-03-14', 'Westside Test Center', 403, 88, TRUE, ' anjali', 'Initial', 'Very good');
INSERT INTO Dl_TestInfo  VALUES(304,204, '2024-03-16', 'Northside Test Center', 404, 75, FALSE, ' david', 'Initial', 'Needs improvement');
INSERT INTO Dl_TestInfo  VALUES(305,205, '2024-03-18', 'Southside Test Center', 405, 90, TRUE, ' latha', 'Initial', 'Great job');
INSERT INTO Dl_TestInfo  VALUES(306,206, '2024-03-20', 'Downtown Test Center', 406, 87, TRUE, ' pushpa', 'Initial', 'Good effort');
INSERT INTO Dl_TestInfo  VALUES(307,207, '2024-03-22', 'Eastside Test Center', 407, 80, TRUE, ' anni', 'Initial', 'Satisfactory');
INSERT INTO Dl_TestInfo  VALUES(308,208, '2024-03-24', 'Westside Test Center', 408, 86, TRUE, ' asha', 'Initial', 'Well done');
INSERT INTO Dl_TestInfo  VALUES(309,209, '2024-03-26', 'Northside Test Center', 409, 70, FALSE, ' amit', 'Initial', 'Needs more practice');
INSERT INTO Dl_TestInfo  VALUES(310,210, '2024-03-28', 'Southside Test Center', 410, 92, TRUE, ' ajay', 'Initial', 'Outstanding');
INSERT INTO Dl_TestInfo  VALUES(311,211, '2024-03-30', 'Downtown Test Center', 411, 83, TRUE, ' aa', 'Initial', 'Good job');
INSERT INTO Dl_TestInfo  VALUES(312,212, '2024-04-01', 'Eastside Test Center', 412, 89, TRUE, ' appu', 'Initial', 'Very well done');
INSERT INTO Dl_TestInfo  VALUES(313,213, '2024-04-03', 'Westside Test Center', 413, 85, TRUE, ' sudeep', 'Initial', 'Excellent');
INSERT INTO Dl_TestInfo  VALUES(314,214, '2024-04-05', 'Northside Test Center', 414, 78, FALSE, ' yash', 'Initial', 'Needs work');
INSERT INTO Dl_TestInfo  VALUES(315,215, '2024-04-07', 'Southside Test Center', 415, 88, TRUE, ' raj', 'Initial', 'Great effort');
INSERT INTO Dl_TestInfo  VALUES(316,216, '2024-04-09', 'Downtown Test Center', 416, 82, TRUE, ' ram', 'Initial', 'Good enough');
INSERT INTO Dl_TestInfo  VALUES(317,217, '2024-04-11', 'Eastside Test Center', 417, 79, TRUE, ' sita', 'Initial', 'Satisfactory');
INSERT INTO Dl_TestInfo  VALUES(318,218, '2024-04-13', 'Westside Test Center', 418, 89, TRUE, ' geeta', 'Initial', 'Great job');
INSERT INTO Dl_TestInfo  VALUES(319,219, '2024-04-15', 'Northside Test Center', 419, 72, FALSE, ' roopa', 'Initial', 'Needs improvement');
INSERT INTO Dl_TestInfo  VALUES(320,220 ,'2024-04-17', 'Southside Test Center', 420, 94, TRUE, ' deepa', 'Initial', 'Exceptional performance');

select *from llr_info;
select*from LearnerLicenseTestInfo;
SELECT *FROM DrivingLicenseInfo;
select * from Dl_TestInfo;