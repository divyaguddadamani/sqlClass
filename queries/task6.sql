create database relations;
use relations;

CREATE TABLE Students (StudentID INT PRIMARY KEY,FirstName VARCHAR(50),LastName VARCHAR(50),Email VARCHAR(100),Phone VARCHAR(15),BirthDate DATE,Gender VARCHAR(10),
    Address VARCHAR(150),City VARCHAR(50),Country VARCHAR(50) default 'india');

select*from Students;

INSERT INTO Students VALUES(1, 'divya', 'kimwoobin', 'divya@gmail.com', '123-456-7890', '2000-05-15', 'Female', '123 Main St', 'gkk','india');
INSERT INTO Students VALUES(2, 'deepak', 'suga', 'deepu@gmail.com', '987-654-3210', '1999-03-22', 'Male', '456 Elm St', 'bgm','india');
INSERT INTO Students VALUES(3, 'darshu', 'jhope', 'darshu@gmail.com', '987-654-3210', '1999-03-22', 'Male', '456 Elm St', 'delhi','india');
INSERT INTO Students VALUES(4, 'darshan', 'jimin', 'darshan@gmail.com', '987-654-3210', '1999-03-22', 'Male', '456 Elm St', 'hydrabad','india');
INSERT INTO Students VALUES(5, 'deepu', 'jungkook', 'deepu@gmail.com', '987-654-3210', '1999-03-22', 'Male', '456 Elm St', 'hubali','india');
INSERT INTO Students VALUES(6, 'gudami', 'v', 'gudami@gmail.com', '987-654-3210', '1999-03-22', 'Male', '456 Elm St', 'dharwad','india');
INSERT INTO Students VALUES(7, 'kalpana', 'rm', 'kalpana@gmail.com', '987-654-3210', '1999-03-22', 'Male', '456 Elm St', 'naragunda','india');
INSERT INTO Students VALUES(8, 'shrikant', 'jin', 'shrikant@gmail.com.com', '987-654-3210', '1999-03-22', 'Male', '456 Elm St', 'badami','india');
INSERT INTO Students VALUES(9, 'pajju', 'jungsuk', 'pajju@gmail.com', '987-654-3210', '1999-03-22', 'Male', '456 Elm St', 'mumbai','india');
INSERT INTO Students VALUES(10, 'pragathi', 'kai', 'paggu@gmail.com', '987-654-3210', '1999-03-22', 'Male', '456 Elm St', 'bgk','india');
INSERT INTO Students VALUES(11, 'navya', 'jackson', 'navya@gmail.com', '987-654-3210', '1999-03-22', 'Male', '456 Elm St', 'konnura','india');
INSERT INTO Students VALUES(12, 'kavya', 'jisoos', 'kavya@gmail.com', '987-654-3210', '1999-03-22', 'Male', '456 Elm St', 'haveri','india');
INSERT INTO Students VALUES(13, 'ramya', 'jinine', 'ramya@gmail.com', '987-654-3210', '1999-03-22', 'Male', '456 Elm St', 'hasan','india');
INSERT INTO Students VALUES(14, 'nora', 'rose', 'nora@gmail.com', '987-654-3210', '1999-03-22', 'Male', '456 Elm St', 'belagavi','india');
INSERT INTO Students VALUES(15, 'shraddha', 'lisa', 'shry@gmail.com', '987-654-3210', '1999-03-22', 'Male', '456 Elm St', 'davangeri','india');
INSERT INTO Students VALUES(16, 'vidya', 'smitha', 'vidya@gmail.com', '987-654-3210', '1999-03-22', 'Male', '456 Elm St', 'mysore','india');
INSERT INTO Students VALUES(17, 'manya', 'soumya', 'manya@gmail.com', '987-654-3210', '1999-03-22', 'Male', '456 Elm St', 'mandya','india');
INSERT INTO Students VALUES(18, 'manoja', 'vikas', 'manoja@gmail.com', '987-654-3210', '1999-03-22', 'Male', '456 Elm St', 'ballari','india');
INSERT INTO Students VALUES(19, 'iranna', 'vinod', 'iranna@gmail.com', '987-654-3210', '1999-03-22', 'Male', '456 Elm St', 'maddur','india');
INSERT INTO Students VALUES(20, 'arun', 'anju', 'arun@gmail.com', '987-654-3210', '1999-03-22', 'Male', '456 Elm St', 'malnada','india');


CREATE TABLE Colleges (CollegeID INT PRIMARY KEY,StudentID INT,CollegeName VARCHAR(100),EnrollmentYear INT,Major VARCHAR(100),GPA DECIMAL(3, 2),GraduationYear INT,
    CollegeAddress VARCHAR(150),CollegeCity VARCHAR(50),CollegeState VARCHAR(50),CollegeCountry VARCHAR(50),FOREIGN KEY (StudentID) REFERENCES Students(StudentID));

select* from Colleges;

INSERT INTO Colleges VALUES(1, 1, 'aitm', 2018, 'Computer Science', 3.8, 2022, '1 Washington Square', 'New York', 'NY', 'USA');
INSERT INTO Colleges VALUES(2, 2, 'mit', 2017, 'Mechanical Engineering', 3.6, 2021, '405 Hilgard Ave', 'gkk', 'CA', 'USA');
INSERT INTO Colleges VALUES(3, 3, 'aitm', 2019, 'Computer Science', 3.8, 2022, '1 Washington Square', 'New York', 'NY', 'USA');
INSERT INTO Colleges VALUES(4, 4, 'git', 2020, 'ec', 3.8, 2022, '1 Washington Square', 'New York', 'NY', 'USA');
INSERT INTO Colleges VALUES(5, 5, 'jain', 2021, 'cse', 3.8, 2022, 'dubai', 'New York', 'bgm', 'USA');
INSERT INTO Colleges VALUES(16, 6, 'pess', 2022, 'aiml', 3.8, 2022, '1 Washington Square', 'New York', 'NY', 'USA');
INSERT INTO Colleges VALUES(7, 7, 'sgbit', 2017, 'ai', 3.8, 2022, '1 Washington Square', 'naragunda', 'belagavi', 'USA');
INSERT INTO Colleges VALUES(8, 8, 'vtu', 2016, 'cse', 3.8, 2022, '3blocl', 'New York', 'NY', 'USA');
INSERT INTO Colleges VALUES(9, 9, 'rit', 2015, 'mech', 3.8, 2022, 'maratha', 'New York', 'hydrabad', 'USA');
INSERT INTO Colleges VALUES(10, 10, 'ramyya', 2018, 'civil', 3.8, 2022, '1 Washington Square', 'malnad ', 'NY', 'USA');
INSERT INTO Colleges VALUES(11, 11, 'navkis', 2019, 'eee', 3.8, 2022, 'hubali', 'New York', 'hubali', 'USA');
INSERT INTO Colleges VALUES(12, 12, 'malnad', 2020, 'ec', 3.8, 2022, '24 cross', 'kolkata', 'NY', 'USA');
INSERT INTO Colleges VALUES(13, 13, 'ait', 2021, 'cse', 3.8, 2022, '1 Washington Square', 'New York', 'NY', 'USA');
INSERT INTO Colleges VALUES(14, 14, 'siddganga', 2020, 'cse', 3.8, 2022, '1 Washington Square', 'bangalore', 'NY', 'USA');
INSERT INTO Colleges VALUES(15, 15, 'dbit', 2024, 'civil', 3.8, 2022, '47 cross', 'New York', 'mumbai', 'USA');
INSERT INTO Colleges VALUES(16, 16, 'global', 2021, 'aiml', 3.8, 2021, 'davangeri', 'bgk', 'nu', 'USA');
INSERT INTO Colleges VALUES(17, 17, 'rv', 2019, 'ai', 3.8, 2022, '1 Washington Square', 'New York', 'NY', 'USA');
INSERT INTO Colleges VALUES(18, 18, 'reva', 2019, 'aiml', 3.8, 2022, '5block', 'New York', 'NY', 'USA');
INSERT INTO Colleges VALUES(19, 19, 'maharani ', 2018, 'cse', 3.8, 2022, '1 Washington Square', 'New York', 'NY', 'USA');
INSERT INTO Colleges VALUES(20, 20, 'eastwest', 2019, 'ai', 3.8, 2022, '1 Washington Square', 'New York', 'NY', 'USA');


CREATE TABLE Customers ( CustomerID INT PRIMARY KEY,FirstName VARCHAR(50) ,LastName VARCHAR(50) ,Email VARCHAR(100) ,
    PhoneNumber BIGINT,Address VARCHAR(255),City VARCHAR(50),State VARCHAR(50),PostalCode VARCHAR(20),JoinDate TIMESTAMP );
    
    
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, PhoneNumber, Address, City, State, PostalCode, JoinDate) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 5551234, '123 Elm St', 'Springfield', 'IL', '62701', '2024-01-01 10:00:00'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 5555678, '456 Oak St', 'Springfield', 'IL', '62702', '2024-01-02 11:00:00'),
(3, 'Robert', 'Brown', 'robert.brown@example.com', 5558765, '789 Pine St', 'Springfield', 'IL', '62703', '2024-01-03 12:00:00'),
(4, 'Emily', 'Johnson', 'emily.johnson@example.com', 5554321, '135 Maple St', 'Springfield', 'IL', '62704', '2024-01-04 13:00:00'),
(5, 'Michael', 'Williams', 'michael.williams@example.com', 5556789, '246 Birch St', 'Springfield', 'IL', '62705', '2024-01-05 14:00:00'),
(6, 'Linda', 'Davis', 'linda.davis@example.com', 5559876, '357 Cedar St', 'Springfield', 'IL', '62706', '2024-01-06 15:00:00'),
(7, 'James', 'Wilson', 'james.wilson@example.com', 5553456, '468 Fir St', 'Springfield', 'IL', '62707', '2024-01-07 16:00:00'),
(8, 'Mary', 'Moore', 'mary.moore@example.com', 5556543, '579 Spruce St', 'Springfield', 'IL', '62708', '2024-01-08 17:00:00'),
(9, 'William', 'Taylor', 'william.taylor@example.com', 5557890, '680 Willow St', 'Springfield', 'IL', '62709', '2024-01-09 18:00:00'),
(10, 'Patricia', 'Anderson', 'patricia.anderson@example.com', 5552345, '791 Poplar St', 'Springfield', 'IL', '62710', '2024-01-10 19:00:00'),
(11, 'Daniel', 'Clark', 'daniel.clark@example.com', 5553457, '802 Elm St', 'Springfield', 'IL', '62711', '2024-02-01 10:00:00'),
(12, 'Jessica', 'Martinez', 'jessica.martinez@example.com', 555-4568, '913 Oak St', 'Springfield', 'IL', '62712', '2024-02-02 11:00:00'),
(13, 'Chris', 'Garcia', 'chris.garcia@example.com', 5555679, '102 Pine St', 'Springfield', 'IL', '62713', '2024-02-03 12:00:00'),
(14, 'Amanda', 'Rodriguez', 'amanda.rodriguez@example.com', 5556780, '213 Maple St', 'Springfield', 'IL', '62714', '2024-02-04 13:00:00'),
(15, 'Joshua', 'Martinez', 'joshua.martinez@example.com', 5557891, '324 Birch St', 'Springfield', 'IL', '62715', '2024-02-05 14:00:00'),
(16, 'Sophia', 'Hernandez', 'sophia.hernandez@example.com', 555-8901, '435 Cedar St', 'Springfield', 'IL', '62716', '2024-02-06 15:00:00'),
(17, 'Matthew', 'Young', 'matthew.young@example.com', 5559012, '546 Fir St', 'Springfield', 'IL', '62717', '2024-02-07 16:00:00'),
(18, 'Olivia', 'King', 'olivia.king@example.com', 5550123, '657 Spruce St', 'Springfield', 'IL', '62718', '2024-02-08 17:00:00'),
(19, 'Ethan', 'Wright', 'ethan.wright@example.com', 5551235, '768 Willow St', 'Springfield', 'IL', '62719', '2024-02-09 18:00:00'),
(20, 'Ava', 'Scott', 'ava.scott@example.com', 555-2346, '879 Poplar St', 'Springfield', 'IL', '62720', '2024-02-10 19:00:00');



CREATE TABLE Orders ( OrderID INT PRIMARY KEY,CustomerID INT,OrderDate TIMESTAMP ,OrderAmount DECIMAL(10, 2),
    ShippingAddress VARCHAR(255),ShippingCity VARCHAR(50),ShippingState VARCHAR(50),ShippingPostalCode VARCHAR(20),Status VARCHAR(20),
    PaymentMethod VARCHAR(50),FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID));
    

INSERT INTO Orders (OrderID, CustomerID, OrderDate, OrderAmount, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, Status, PaymentMethod) VALUES
(1, 1, '2024-01-05 10:00:00', 150.00, '123 Elm St', 'Springfield', 'IL', '62701', 'Shipped', 'Credit Card'),
(2, 1, '2024-01-15 11:00:00', 200.00, '123 Elm St', 'Springfield', 'IL', '62701', 'Processing', 'PayPal'),
(3, 2, '2024-01-07 12:00:00', 50.00, '456 Oak St', 'Springfield', 'IL', '62702', 'Delivered', 'Credit Card'),
(4, 2, '2024-01-18 13:00:00', 80.00, '456 Oak St', 'Springfield', 'IL', '62702', 'Shipped', 'PayPal'),
(5, 3, '2024-01-10 14:00:00', 75.00, '789 Pine St', 'Springfield', 'IL', '62703', 'Shipped', 'Debit Card'),
(6, 3, '2024-01-20 15:00:00', 125.00, '789 Pine St', 'Springfield', 'IL', '62703', 'Shipped', 'Credit Card'),
(7, 4, '2024-01-12 16:00:00', 300.00, '135 Maple St', 'Springfield', 'IL', '62704', 'Delivered', 'Credit Card'),
(8, 4, '2024-02-01 17:00:00', 100.00, '135 Maple St', 'Springfield', 'IL', '62704', 'Processing', 'PayPal'),
(9, 5, '2024-01-14 18:00:00', 60.00, '246 Birch St', 'Springfield', 'IL', '62705', 'Processing', 'PayPal'),
(10, 5, '2024-02-05 19:00:00', 70.00, '246 Birch St', 'Springfield', 'IL', '62705', 'Shipped', 'Credit Card'),
(11, 6, '2024-01-18 20:00:00', 90.00, '357 Cedar St', 'Springfield', 'IL', '62706', 'Delivered', 'Debit Card'),
(12, 6, '2024-02-10 21:00:00', 130.00, '357 Cedar St', 'Springfield', 'IL', '62706', 'Processing', 'PayPal'),
(13, 7, '2024-01-22 22:00:00', 110.00, '468 Fir St', 'Springfield', 'IL', '62707', 'Shipped', 'Credit Card'),
(14, 7, '2024-02-02 23:00:00', 45.00, '468 Fir St', 'Springfield', 'IL', '62707', 'Delivered', 'Debit Card'),
(15, 8, '2024-01-25 10:00:00', 80.00, '579 Spruce St', 'Springfield', 'IL', '62708', 'Processing', 'PayPal'),
(16, 8, '2024-02-05 11:00:00', 120.00, '579 Spruce St', 'Springfield', 'IL', '62708', 'Shipped', 'Credit Card'),
(17, 9, '2024-01-28 12:00:00', 45.00, '680 Willow St', 'Springfield', 'IL', '62709', 'Delivered', 'Credit Card'),
(18, 9, '2024-02-08 13:00:00', 55.00, '680 Willow St', 'Springfield', 'IL', '62709', 'Shipped', 'PayPal'),
(19, 10, '2024-01-30 14:00:00', 95.00, '791 Poplar St', 'Springfield', 'IL', '62710', 'Delivered', 'Debit Card'),
(20, 10, '2024-02-15 15:00:00', 110.00, '791 Poplar St', 'Springfield', 'IL', '62710', 'Shipped', 'Credit Card');

CREATE TABLE Student (StudentID INT PRIMARY KEY,FirstName VARCHAR(50),LastName VARCHAR(50),Email VARCHAR(100),Phone VARCHAR(15),
DateOfBirth DATE,EnrollmentDate DATE,Major VARCHAR(100),GPA DECIMAL(3, 2),Address VARCHAR(255));

INSERT INTO Student(StudentID, FirstName, LastName, Email, Phone, DateOfBirth, EnrollmentDate, Major, GPA, Address) VALUES
(1, 'Aarav', 'Patel', 'aarav.patel@example.com', '987-6543', '2001-04-15', '2020-09-01', 'Computer Science', 3.75, '1/2, MG Road, Ahmedabad, Gujarat'),
(2, 'Isha', 'Sharma', 'isha.sharma@example.com', '987-6544', '2000-11-23', '2019-09-01', 'Mathematics', 3.60, '12, Park Street, Bangalore, Karnataka'),
(3, 'Vivaan', 'Singh', 'vivaan.singh@example.com', '987-6545', '2002-02-10', '2021-01-15', 'Biology', 3.90, '45, Sector 12, Noida, Uttar Pradesh'),
(4, 'Ananya', 'Mehta', 'ananya.mehta@example.com', '987-6546', '1999-06-30', '2018-09-01', 'Physics', 3.45, '67, Mandi House, Delhi'),
(5, 'Aryan', 'Reddy', 'aryan.reddy@example.com', '987-6547', '2001-12-05', '2020-09-01', 'Chemistry', 3.80, '89, Banjara Hills, Hyderabad, Telangana'),
(6, 'Saanvi', 'Kumar', 'saanvi.kumar@example.com', '987-6548', '2000-09-17', '2019-09-01', 'Engineering', 3.70, '101, Vashi, Navi Mumbai, Maharashtra'),
(7, 'Aditya', 'Nair', 'aditya.nair@example.com', '987-6549', '2002-01-25', '2021-01-15', 'English', 3.85, '32, Pali Hill, Mumbai, Maharashtra'),
(8, 'Diya', 'Joshi', 'diya.joshi@example.com', '987-6550', '1999-07-04', '2018-09-01', 'History', 3.50, '54, B-Block, Kolkata, West Bengal'),
(9, 'Kartik', 'Gupta', 'kartik.gupta@example.com', '987-6551', '2000-03-22', '2019-09-01', 'Economics', 3.65, '76, Arera Colony, Bhopal, Madhya Pradesh'),
(10, 'Mira', 'Singh', 'mira.singh@example.com', '987-6552', '2002-05-14', '2021-01-15', 'Political Science', 3.55, '98, Anand Vihar, Delhi'),
(11, 'Rohan', 'Chopra', 'rohan.chopra@example.com', '987-6553', '2001-08-11', '2020-09-01', 'Art', 3.90, '120, Green Park, Delhi'),
(12, 'Naina', 'Sethi', 'naina.sethi@example.com', '987-6554', '2000-12-17', '2019-09-01', 'Music', 3.70, '141, Jayanagar, Bangalore, Karnataka'),
(13, 'Arjun', 'Kaur', 'arjun.kaur@example.com', '987-6555', '2002-04-29', '2021-01-15', 'Theater', 3.85, '162, Golf Course Road, Gurgaon, Haryana'),
(14, 'Priya', 'Shukla', 'priya.shukla@example.com', '987-6556', '1999-09-15', '2018-09-01', 'Philosophy', 3.40, '183, Saket, Delhi'),
(15, 'Vihaan', 'Agarwal', 'vihaan.agarwal@example.com', '987-6557', '2001-01-12', '2020-09-01', 'Psychology', 3.75, '204, Rajouri Garden, Delhi'),
(16, 'Siddharth', 'Bhat', 'siddharth.bhat@example.com', '987-6558', '2000-10-09', '2019-09-01', 'Sociology', 3.60, '225, Nariman Point, Mumbai, Maharashtra'),
(17, 'Shruti', 'Rao', 'shruti.rao@example.com', '987-6559', '2002-06-23', '2021-01-15', 'International Relations', 3.80, '246, Hitech City, Hyderabad, Telangana'),
(18, 'Ravi', 'Malik', 'ravi.malik@example.com', '987-6560', '2001-03-30', '2020-09-01', 'Statistics', 3.65, '267, Vasant Vihar, Delhi'),
(19, 'Madhuri', 'Khan', 'madhuri.khan@example.com', '987-6561', '2000-11-07', '2019-09-01', 'Environmental Science', 3.55, '289, Peddar Road, Mumbai, Maharashtra'),
(20, 'Karan', 'Puri', 'karan.puri@example.com', '987-6562', '2002-08-18', '2021-01-15', 'Public Health', 3.90, '310, Model Town, Delhi');

select *from student;
select * from orders;
select * from studentCourses;
UPDATE StudentCourses SET CreditsEarned = CASE WHEN Grade = 'A+' THEN CreditsEarned + 1 ELSE CreditsEarned END;
SELECT Email, COUNT(*) AS NumberOfStudents FROM Students GROUP BY Email;
SELECT Semester, AVG(CreditsEarned) AS AverageCredits FROM StudentCourses GROUP BY Semester;
SELECT CourseID, MAX(CreditsEarned) AS MaxCredits FROM StudentCourses GROUP BY CourseID;
SELECT Status, COUNT(*) AS NumberOfStudents FROM StudentCourses GROUP BY Status HAVING COUNT(*) > 5;
SELECT * FROM customer ORDER BY firstname ;

CREATE TABLE StudentCourses (StudentID INT,CourseID INT, EnrollmentDate DATE, Grade CHAR(2), Status VARCHAR(20), CreditsEarned INT,                         
Semester VARCHAR(10),Year INT, Comments TEXT,PRIMARY KEY (StudentID), FOREIGN KEY (StudentID) REFERENCES Students(StudentID));

INSERT INTO StudentCourses (StudentID, CourseID, EnrollmentDate, Grade, Status, CreditsEarned, Semester, Year, Comments) VALUES
(1, 101, '2023-01-10', 'A', 'Completed', 4, 'Spring', 2023, 'Outstanding performance in the course.'),
(2, 102, '2023-01-15', 'B+', 'Completed', 3, 'Spring', 2023, 'Good progress, but missed a few assignments.'),
(3, 103, '2023-02-01', 'A-', 'In Progress', 4, 'Winter', 2023, 'Strong participation and good grasp of the material.'),
(4, 104, '2023-02-20', 'C', 'Dropped', 0, 'Spring', 2023, 'Student decided to withdraw from the course.'),
(5, 105, '2023-03-05', 'B', 'Completed', 3, 'Fall', 2023, 'Satisfactory performance, needs improvement in exams.'),
(6, 106, '2023-03-15', 'A+', 'Completed', 4, 'Fall', 2023, 'Exceptional work and engagement.'),
(7, 107, '2023-04-01', 'B-', 'In Progress', 3, 'Spring', 2023, 'Requires additional practice and focus on assignments.'),
(8, 108, '2023-04-20', 'A', 'Completed', 4, 'Winter', 2023, 'Very thorough understanding and high-quality work.'),
(9, 109, '2023-05-01', 'B+', 'Completed', 3, 'Summer', 2023, 'Good effort, could benefit from more revision.'),
(10, 110, '2023-05-15', 'C+', 'In Progress', 3, 'Summer', 2023, 'Struggling with some concepts, additional support needed.'),
(11, 111, '2023-01-10', 'A', 'Completed', 4, 'Spring', 2023, 'Consistent high performance throughout the semester.'),
(12, 112, '2023-01-15', 'B', 'Completed', 3, 'Spring', 2023, 'Good understanding but missed a few deadlines.'),
(13, 113, '2023-02-01', 'A-', 'In Progress', 4, 'Winter', 2023, 'Strong contributions in class discussions and projects.'),
(14, 114, '2023-02-20', 'C+', 'Dropped', 0, 'Spring', 2023, 'Decided to drop out due to personal reasons.'),
(15, 115, '2023-03-05', 'B', 'Completed', 3, 'Fall', 2023, 'Solid performance with room for improvement in tests.'),
(16, 116, '2023-03-15', 'A+', 'Completed', 4, 'Fall', 2023, 'Exceptional academic work and participation.'),
(17, 117, '2023-04-01', 'B-', 'In Progress', 3, 'Spring', 2023, 'Needs to improve homework submission and exam scores.'),
(18, 118, '2023-04-20', 'A', 'Completed', 4, 'Winter', 2023, 'Excellent project work and exam results.'),
(19, 119, '2023-05-01', 'C', 'Completed', 3, 'Summer', 2023, 'Met basic course requirements but needs improvement.'),
(20, 120, '2023-05-15', 'B+', 'In Progress', 3, 'Summer', 2023, 'Good progress with some areas needing more focus.');
select* from orders;

CREATE TABLE Departments (DepartmentID INT PRIMARY KEY,DepartmentName VARCHAR(100),Location VARCHAR(100),Manager VARCHAR(100),Phone VARCHAR(15),Email VARCHAR(100),
    Budget DECIMAL(10, 2),EstablishedYear INT,FloorNumber INT,BuildingName VARCHAR(100));

INSERT INTO Departments (DepartmentID,DepartmentName,Location,Manager,Phone,Email, Budget ,EstablishedYear,FloorNumber,BuildingName)VALUES
(1, 'Human Resources', 'Building A, 3rd Floor', 'John Manager', '555-1010', 'hr@example.com', 500000.00, 2005, 3, 'Building A'),
(2, 'Information Technology', 'Building B, 5th Floor', 'Jane Director', '555-2020', 'it@example.com', 1200000.00, 2003, 5, 'Building B'),
(3, 'Finance', 'Building C, 2nd Floor', 'Tom CFO', '555-3030', 'finance@example.com', 800000.00, 2000, 2, 'Building C'),
(4, 'Marketing', 'Building D, 4th Floor', 'Emily Lead', '555-4040', 'marketing@example.com', 600000.00, 2010, 4, 'Building D'),
(5, 'Sales', 'Building E, 6th Floor', 'Michael Head', '555-5050', 'sales@example.com', 700000.00, 2008, 6, 'Building E'),
(6, 'Customer Service', 'Building F, 2nd Floor', 'Sarah Support', '555-6060', 'support@example.com', 400000.00, 2012, 2, 'Building F'),
(7, 'Research and Development', 'Building G, 7th Floor', 'Albert Einstein', '555-7070', 'randd@example.com', 1500000.00, 1998, 7, 'Building G'),
(8, 'Legal', 'Building H, 3rd Floor', 'Legal Eagle', '555-8080', 'legal@example.com', 900000.00, 2001, 3, 'Building H'),
(9, 'Procurement', 'Building I, 4th Floor', 'Samantha Purchase', '555-9090', 'procurement@example.com', 450000.00, 2006, 4, 'Building I'),
(10, 'Operations', 'Building J, 1st Floor', 'Operations Ops', '555-0101', 'operations@example.com', 1100000.00, 2002, 1, 'Building J'),
(11, 'Quality Assurance', 'Building K, 2nd Floor', 'Quality Control', '555-1111', 'qa@example.com', 300000.00, 2007, 2, 'Building K'),
(12, 'Public Relations', 'Building L, 3rd Floor', 'Public Speaker', '555-1212', 'pr@example.com', 600000.00, 2004, 3, 'Building L'),
(13, 'Compliance', 'Building M, 4th Floor', 'Compliance Officer', '555-1313', 'compliance@example.com', 350000.00, 2009, 4, 'Building M'),
(14, 'Audit', 'Building N, 5th Floor', 'Audit Analyst', '555-1414', 'audit@example.com', 400000.00, 2013, 5, 'Building N'),
(15, 'Training and Development', 'Building O, 6th Floor', 'Trainer Mentor', '555-1515', 'training@example.com', 200000.00, 2015, 6, 'Building O'),
(16, 'Strategy and Planning', 'Building P, 7th Floor', 'Strategist Planner', '555-1616', 'strategy@example.com', 1300000.00, 1995, 7, 'Building P'),
(17, 'Corporate Communications', 'Building Q, 8th Floor', 'Corporate Spokesperson', '555-1717', 'corpcomm@example.com', 500000.00, 2011, 8, 'Building Q'),
(18, 'Facilities Management', 'Building R, 1st Floor', 'Facility Manager', '555-1818', 'facilities@example.com', 600000.00, 2014, 1, 'Building R'),
(19, 'Security', 'Building S, 2nd Floor', 'Security Officer', '555-1919', 'security@example.com', 250000.00, 2010, 2, 'Building S'),
(20, 'IT Support', 'Building T, 3rd Floor', 'Support Lead', '555-2020', 'itsupport@example.com', 800000.00, 2016, 3, 'Building T');

CREATE TABLE Employees (EmployeeID INT PRIMARY KEY,FirstName VARCHAR(50),LastName VARCHAR(50),Email VARCHAR(100),Phone VARCHAR(15),HireDate DATE,Position VARCHAR(50),
Salary DECIMAL(10, 2),DepartmentID INT,OfficeLocation VARCHAR(100),FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID));

select * from Employees;


INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Phone, HireDate, Position, Salary, DepartmentID, OfficeLocation) VALUES
(21, 'Alice', 'Brown', 'alice.brown@example.com', '555-1111', '2015-04-22', 'HR Specialist', 60000.00, 1, 'Building A, Room 301'),
(22, 'Bob', 'Smith', 'bob.smith@example.com', '555-1112', '2017-05-15', 'HR Coordinator', 55000.00, 1, 'Building A, Room 302'),
(33, 'Charlie', 'Johnson', 'charlie.johnson@example.com', '555-1113', '2018-06-01', 'IT Support', 70000.00, 2, 'Building B, Room 501'),
(24, 'Daisy', 'Williams', 'daisy.williams@example.com', '555-1114', '2019-06-01','Software Developer', 90000.00, 2, 'Building B, Room 502'),
(25, 'Edward', 'Taylor', 'edward.taylor@example.com', '555-1115', '2016-09-11', 'Financial Analyst', 80000.00, 3, 'Building C, Room 201'),
(26, 'Fiona', 'Davies', 'fiona.davies@example.com', '555-1116', '2019-01-22', 'Marketing Coordinator', 62000.00, 4, 'Building D, Room 401'),
(27, 'George', 'Martin', 'george.martin@example.com', '555-1117', '2020-03-10', 'Sales Executive', 58000.00, 5, 'Building E, Room 601'),
(28, 'Helen', 'Clark', 'helen.clark@example.com', '555-1118', '2018-07-14', 'Customer Support', 45000.00, 6, 'Building F, Room 202'),
(29, 'Ian', 'King', 'ian.king@example.com', '555-1119', '2021-08-01', 'Research Scientist', 110000.00, 7, 'Building G, Room 701'),
(30, 'Jack', 'Turner', 'jack.turner@example.com', '555-1120', '2016-02-15', 'Legal Advisor', 95000.00, 8, 'Building H, Room 301'),
(31, 'Karen', 'Hill', 'karen.hill@example.com', '555-1121', '2017-04-18', 'Procurement Officer', 67000.00, 9, 'Building I, Room 401'),
(32, 'Larry', 'Scott', 'larry.scott@example.com', '555-1122', '2019-05-10', 'Operations Manager', 85000.00, 10, 'Building J, Room 101'),
(33, 'Megan', 'Evans', 'megan.evans@example.com', '555-1123', '2020-06-20', 'QA Specialist', 55000.00, 11, 'Building K, Room 202'),
(34, 'Nathan', 'Harris', 'nathan.harris@example.com', '555-1124', '2015-07-12', 'Public Relations Officer', 72000.00, 12, 'Building L, Room 301'),
(35, 'Olivia', 'Walker', 'olivia.walker@example.com', '555-1125', '2018-08-23', 'Compliance Analyst', 60000.00, 13, 'Building M, Room 401'),
(36, 'Paul', 'Baker', 'paul.baker@example.com', '555-1126', '2016-09-14', 'Auditor', 63000.00, 14, 'Building N, Room 501'),
(37, 'Quincy', 'Reed', 'quincy.reed@example.com', '555-1127', '2021-10-01', 'Training Specialist', 50000.00, 15, 'Building O, Room 601'),
(38, 'Rachel', 'Nelson', 'rachel.nelson@example.com', '555-1128', '2017-11-15', 'Strategy Consultant', 95000.00, 16, 'Building P, Room 701'),
(39, 'Steve', 'Adams', 'steve.adams@example.com', '555-1129', '2018-12-01', 'Corporate Communications Manager', 75000.00, 17, 'Building Q, Room 801'),
(40, 'Tina', 'Carter', 'tina.carter@example.com', '555-1130', '2020-01-15', 'Facilities Coordinator', 56000.00, 18, 'Building R, Room 101');