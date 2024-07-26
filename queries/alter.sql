USE DIVYA;
CREATE TABLE EMPLPOYEE_DETAILS(ID INT,NAME_EMP VARCHAR(20),ADD_EMP VARCHAR(20));
ALTER TABLE EMPLPOYEE_DETAILS ADD COLUMN PHONE_NO BIGINT;
ALTER TABLE EMPLPOYEE_DETAILS ADD COLUMN SAL_EMP BIGINT;
ALTER TABLE EMPLPOYEE_DETAILS ADD COLUMN POS_EMP VARCHAR(20);
ALTER TABLE EMPLPOYEE_DETAILS ADD COLUMN CITY VARCHAR(10);
ALTER TABLE EMPLPOYEE_DETAILS ADD COLUMN PINCODE BIGINT;
ALTER TABLE EMPLPOYEE_DETAILS ADD COLUMN EXPERIANCE INT;

ALTER TABLE EMPLPOYEE_DETAILS DROP COLUMN ADD_EMP;
ALTER TABLE EMPLPOYEE_DETAILS DROP COLUMN POS_EMP;

ALTER TABLE EMPLPOYEE_DETAILS RENAME COLUMN CITY TO NEW_CURRENT_CITY;
ALTER TABLE EMPLPOYEE_DETAILS RENAME COLUMN NAME_EMP TO EMP_NAME;
ALTER TABLE EMPLPOYEE_DETAILS RENAME COLUMN PHONE_NO TO CONTACT_NO;
ALTER TABLE EMPLPOYEE_DETAILS RENAME COLUMN PINCODE TO EMO_PINCODE;
ALTER TABLE EMPLPOYEE_DETAILS RENAME COLUMN SAL_EMP TO EMP_SAL;

ALTER TABLE EMPLPOYEE_DETAILS MODIFY COLUMN ID BIGINT;
ALTER TABLE EMPLPOYEE_DETAILS MODIFY COLUMN EMP_SAL INT;
ALTER TABLE EMPLPOYEE_DETAILS MODIFY COLUMN EMP_PINCODE INT;
ALTER TABLE EMPLPOYEE_DETAILS MODIFY COLUMN CONTACT_NO INT;
ALTER TABLE EMPLPOYEE_DETAILS MODIFY COLUMN EXPERIANCE  BIGINT;
ALTER TABLE EMPLPOYEE_DETAILS MODIFY COLUMN CONTACT_NO BIGINT;

DESC EMPLPOYEE_DETAILS;
SELECT * FROM EMPLPOYEE_DETAILS;

USE DIVYA;
SELECT* FROM  EMPLPOYEE_DETAILS;

INSERT INTO EMPLPOYEE_DETAILS VALUES (1,'DIVYA',8123791097,'BNGALORE',591307,40000,5);
INSERT INTO EMPLPOYEE_DETAILS VALUES (2,'VIDYA',1578842519,'GKK',527106,50000,2);
INSERT INTO EMPLPOYEE_DETAILS VALUES (3,'KALPANA',5179281248,'BNGALORE',592307,40000,5);
INSERT INTO EMPLPOYEE_DETAILS VALUES (4,'LAXMI',1572948325,'BGM',592807,40000,2);
INSERT INTO EMPLPOYEE_DETAILS VALUES (5,'PINKY',2548963148,'ATHANI',562807,30000,2);
INSERT INTO EMPLPOYEE_DETAILS VALUES (6,'TEJI',1429576382,'BGM',592807,40000,3);
INSERT INTO EMPLPOYEE_DETAILS VALUES (7,'REVATI',1278935469,'RNAGAR',566807,50000,2);
INSERT INTO EMPLPOYEE_DETAILS VALUES (8,'MADHU',1284563972,'BTM',562030,4000,2);
INSERT INTO EMPLPOYEE_DETAILS VALUES (9,'BAGHYA',2045893155,'NARAGUND',599807,5000,7);
INSERT INTO EMPLPOYEE_DETAILS VALUES (10,'NIDHI',24892065793,'RR NAGAR',592807,5000,3);

SELECT *FROM EMPLPOYEE_DETAILS  WHERE EMP_SAL=40000; 








