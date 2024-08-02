CREATE DATABASE RTO;
USE RTO;
CREATE TABLE LLR_INFO(ID INT,
LLR_ID INT ,
APPLICANT_NAME VARCHAR(30),
DATE_OF_BIRTH DATE,
GENDER VARCHAR(30),
MAIL VARCHAR(30),
CREATED_AT TIMESTAMP,
CREATED_BY VARCHAR(30),
MODIFIED_AT TIMESTAMP,
MODIFIED_BY VARCHAR(30),
PRIMARY KEY(LLR_ID));

CREATE TABLE LLR_TEST_INFO(ID INT,
LLR_ID INT,
TEST_ID INT,
APPLICANT_NAME VARCHAR(100) NOT NULL,
LOCATION VARCHAR(30),
TEST_SCORE VARCHAR(30),
CREATED_AT TIMESTAMP,
CREATED_BY VARCHAR(30),
MODIFIED_AT TIMESTAMP,
MODIFIED_BY VARCHAR(30),
PRIMARY KEY(TEST_ID),
FOREIGN KEY(LLR_ID) REFERENCES  LLR_INFO(LLR_ID));

CREATE TABLE DRIVING_LICENCE_INFO (ID INT,
NAME VARCHAR(30),
ISSUED_IN DATE,
DL_ID INT, 
TEST_ID INT, 
LLR_ID INT,
CREATED_AT TIMESTAMP,
CREATED_BY VARCHAR(30),
MODIFIED_AT TIMESTAMP,
MODIFIED_BY VARCHAR(30),
PRIMARY KEY(DL_ID),
FOREIGN KEY(TEST_ID) REFERENCES LLR_TEST_INFO(TEST_ID),
FOREIGN KEY(LLR_ID) REFERENCES LLR_INFO(LLR_ID));

CREATE TABLE DRIVING_LICENSE_TEST_INFO (ID INT,
	APPLICANT_NAME VARCHAR(100) NOT NULL,
    DL_ID INT,
    TEST_CENTRE VARCHAR(100),
    TEST_TYPE VARCHAR(50), 
    TEST_SCORE INT,
    CREATED_AT TIMESTAMP,
    CREATED_BY VARCHAR(30),
    MODIFIED_AT TIMESTAMP,
	MODIFIED_BY VARCHAR(30),
    FOREIGN KEY(DL_ID) references DRIVING_LICENCE_INFO(DL_ID));
    
    DESC LLR_INFO;
    
    INSERT INTO LLR_INFO VALUES(1,101,'HAREESH','1990-01-01','MALE','HAREESH@GMAIL.COM',
    NOW(),'RASHMI',NOW(),'AVINASH');
    
    INSERT INTO LLR_INFO VALUES
(2, 102, 'Aarav', '1992-02-14', 'Male', 'aarav@example.com', NOW(), 'Rashmi', NOW(), 'Avinash'),
(3, 103, 'Aditi', '1985-07-21', 'Female', 'aditi@example.com', NOW(), 'Rashmi', NOW(), 'Avinash'),
(4, 104, 'Ravi', '1980-09-05', 'Male', 'ravi@example.com', NOW(), 'Rashmi', NOW(), 'Avinash'),
(5, 105, 'Meena', '1995-12-15', 'Female', 'meena@example.com', NOW(), 'Rashmi', NOW(), 'Avinash'),
(6, 106, 'Vijay', '1991-03-10', 'Male', 'vijay@example.com', NOW(), 'Rashmi', NOW(), 'Avinash'),
(7, 107, 'Priya', '1988-08-30', 'Female', 'priya@example.com', NOW(), 'Rashmi', NOW(), 'Avinash'),
(8, 108, 'Sunita', '1979-04-22', 'Female', 'sunita@example.com', NOW(), 'Rashmi', NOW(), 'Avinash'),
(9, 109, 'Rahul', '1983-05-18', 'Male', 'rahul@example.com', NOW(), 'Rashmi', NOW(), 'Avinash'),
(10, 110, 'Kavita', '1987-11-29', 'Female', 'kavita@example.com', NOW(), 'Rashmi', NOW(), 'Avinash'),
(11, 111, 'Suresh', '1994-06-17', 'Male', 'suresh@example.com', NOW(), 'Rashmi', NOW(), 'Avinash'),
(12, 112, 'Neha', '1982-01-06', 'Female', 'neha@example.com', NOW(), 'Rashmi', NOW(), 'Avinash'),
(13, 113, 'Rajesh', '1975-02-24', 'Male', 'rajesh@example.com', NOW(), 'Rashmi', NOW(), 'Avinash'),
(14, 114, 'Sneha', '1993-03-12', 'Female', 'sneha@example.com', NOW(), 'Rashmi', NOW(), 'Avinash'),
(15, 115, 'Arjun', '1986-07-09', 'Male', 'arjun@example.com', NOW(), 'Rashmi', NOW(), 'Avinash'),
(16, 116, 'Divya', '1990-11-23', 'Female', 'divya@example.com', NOW(), 'Rashmi', NOW(), 'Avinash'),
(17, 117, 'Manoj', '1992-12-30', 'Male', 'manoj@example.com', NOW(), 'Rashmi', NOW(), 'Avinash'),
(18, 118, 'Aishwarya', '1984-04-19', 'Female', 'aishwarya@example.com', NOW(), 'Rashmi', NOW(), 'Avinash'),
(19, 119, 'Sanjay', '1989-05-25', 'Male', 'sanjay@example.com', NOW(), 'Rashmi', NOW(), 'Avinash'),
(20, 120, 'Lakshmi', '1991-10-14', 'Female', 'lakshmi@example.com', NOW(), 'Rashmi', NOW(), 'Avinash');





CREATE TABLE LLR_TEST_INFO (
    ID INT,
    LLR_ID INT,
    TEST_ID INT PRIMARY KEY,
    APPLICANT_NAME VARCHAR(100) NOT NULL,
    LOCATION VARCHAR(30),
    TEST_SCORE VARCHAR(30),
    CREATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CREATED_BY VARCHAR(30) DEFAULT 'Rashmi',
    MODIFIED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    MODIFIED_BY VARCHAR(30) DEFAULT 'Avinash',
    FOREIGN KEY (LLR_ID) REFERENCES LLR_INFO(LLR_ID)
);
INSERT INTO LLR_TEST_INFO (ID, LLR_ID, TEST_ID, APPLICANT_NAME, LOCATION, TEST_SCORE, CREATED_AT, CREATED_BY, MODIFIED_AT, MODIFIED_BY) VALUES
(1, 101, 1, 'Hareesh', 'Mumbai', '85', NOW(), 'Rashmi', NOW(), 'Avinash'),
(2, 102, 2, 'Aarav', 'Delhi', '90', NOW(), 'Rashmi', NOW(), 'Avinash'),
(3, 103, 3, 'Aditi', 'Bangalore', '78', NOW(), 'Rashmi', NOW(), 'Avinash'),
(4, 104, 4, 'Rohan', 'Hyderabad', '82', NOW(), 'Rashmi', NOW(), 'Avinash'),
(5, 105, 5, 'Isha', 'Chennai', '88', NOW(), 'Rashmi', NOW(), 'Avinash'),
(6, 106, 6, 'Kiran', 'Pune', '75', NOW(), 'Rashmi', NOW(), 'Avinash'),
(7, 107, 7, 'Meera', 'Ahmedabad', '92', NOW(), 'Rashmi', NOW(), 'Avinash'),
(8, 108, 8, 'Amit', 'Kolkata', '80', NOW(), 'Rashmi', NOW(), 'Avinash'),
(9, 109, 9, 'Priya', 'Jaipur', '87', NOW(), 'Rashmi', NOW(), 'Avinash'),
(10, 110, 10, 'Arjun', 'Lucknow', '84', NOW(), 'Rashmi', NOW(), 'Avinash'),
(11, 111, 11, 'Neha', 'Kanpur', '79', NOW(), 'Rashmi', NOW(), 'Avinash'),
(12, 112, 12, 'Rajesh', 'Indore', '93', NOW(), 'Rashmi', NOW(), 'Avinash'),
(13, 113, 13, 'Sneha', 'Coimbatore', '82', NOW(), 'Rashmi', NOW(), 'Avinash'),
(14, 114, 14, 'Vikram', 'Nagpur', '76', NOW(), 'Rashmi', NOW(), 'Avinash'),
(15, 115, 15, 'Divya', 'Visakhapatnam', '89', NOW(), 'Rashmi', NOW(), 'Avinash'),
(16, 116, 16, 'Manoj', 'Chandigarh', '77', NOW(), 'Rashmi', NOW(), 'Avinash'),
(17, 117, 17, 'Lakshmi', 'Bhopal', '91', NOW(), 'Rashmi', NOW(), 'Avinash'),
(18, 118, 18, 'Sanjay', 'Gurgaon', '83', NOW(), 'Rashmi', NOW(), 'Avinash'),
(19, 119, 19, 'Kavita', 'Noida', '81', NOW(), 'Rashmi', NOW(), 'Avinash'),
(20, 120, 20, 'Suresh', 'Thane', '86', NOW(), 'Rashmi', NOW(), 'Avinash');

INSERT INTO DRIVING_LICENCE_INFO (ID, NAME, ISSUED_IN, DL_ID, TEST_ID, LLR_ID, CREATED_AT, CREATED_BY, MODIFIED_AT, MODIFIED_BY) VALUES
(1, 'Hareesh', '2024-01-15', 1001, 1, 101, NOW(), 'Rashmi', NOW(), 'Avinash'),
(2, 'Aarav', '2024-02-20', 1002, 2, 102, NOW(), 'Rashmi', NOW(), 'Avinash'),
(3, 'Aditi', '2024-03-18', 1003, 3, 103, NOW(), 'Rashmi', NOW(), 'Avinash'),
(4, 'Rohan', '2024-04-22', 1004, 4, 104, NOW(), 'Rashmi', NOW(), 'Avinash'),
(5, 'Isha', '2024-05-30', 1005, 5, 105, NOW(), 'Rashmi', NOW(), 'Avinash'),
(6, 'Kiran', '2024-06-14', 1006, 6, 106, NOW(), 'Rashmi', NOW(), 'Avinash'),
(7, 'Meera', '2024-07-09', 1007, 7, 107, NOW(), 'Rashmi', NOW(), 'Avinash'),
(8, 'Amit', '2024-08-21', 1008, 8, 108, NOW(), 'Rashmi', NOW(), 'Avinash'),
(9, 'Priya', '2024-09-17', 1009, 9, 109, NOW(), 'Rashmi', NOW(), 'Avinash'),
(10, 'Arjun', '2024-10-10', 1010, 10, 110, NOW(), 'Rashmi', NOW(), 'Avinash'),
(11, 'Neha', '2024-11-15', 1011, 11, 111, NOW(), 'Rashmi', NOW(), 'Avinash'),
(12, 'Rajesh', '2024-12-20', 1012, 12, 112, NOW(), 'Rashmi', NOW(), 'Avinash'),
(13, 'Sneha', '2024-01-05', 1013, 13, 113, NOW(), 'Rashmi', NOW(), 'Avinash'),
(14, 'Vikram', '2024-02-25', 1014, 14, 114, NOW(), 'Rashmi', NOW(), 'Avinash'),
(15, 'Divya', '2024-03-30', 1015, 15, 115, NOW(), 'Rashmi', NOW(), 'Avinash'),
(16, 'Manoj', '2024-04-15', 1016, 16, 116, NOW(), 'Rashmi', NOW(), 'Avinash'),
(17, 'Lakshmi', '2024-05-25', 1017, 17, 117, NOW(), 'Rashmi', NOW(), 'Avinash'),
(18, 'Sanjay', '2024-06-22', 1018, 18, 118, NOW(), 'Rashmi', NOW(), 'Avinash'),
(19, 'Kavita', '2024-07-30', 1019, 19, 119, NOW(), 'Rashmi', NOW(), 'Avinash'),
(20, 'Suresh', '2024-08-25', 1020, 20, 120, NOW(), 'Rashmi', NOW(), 'Avinash');
SELECT * FROM DRIVING_LICENCE_INFO;

INSERT INTO DRIVING_LICENSE_TEST_INFO (ID, APPLICANT_NAME, DL_ID, TEST_CENTRE, TEST_TYPE, TEST_SCORE, CREATED_AT, CREATED_BY, MODIFIED_AT, MODIFIED_BY) VALUES
(1, 'Hareesh', 1001, 'Mumbai Test Centre', 'Practical', 88, NOW(), 'Rashmi', NOW(), 'Avinash'),
(2, 'Aarav', 1002, 'Delhi Test Centre', 'Written', 92, NOW(), 'Rashmi', NOW(), 'Avinash'),
(3, 'Aditi', 1003, 'Bangalore Test Centre', 'Practical', 80, NOW(), 'Rashmi', NOW(), 'Avinash'),
(4, 'Rohan', 1004, 'Hyderabad Test Centre', 'Written', 85, NOW(), 'Rashmi', NOW(), 'Avinash'),
(5, 'Isha', 1005, 'Chennai Test Centre', 'Practical', 90, NOW(), 'Rashmi', NOW(), 'Avinash'),
(6, 'Kiran', 1006, 'Pune Test Centre', 'Written', 76, NOW(), 'Rashmi', NOW(), 'Avinash'),
(7, 'Meera', 1007, 'Ahmedabad Test Centre', 'Practical', 95, NOW(), 'Rashmi', NOW(), 'Avinash'),
(8, 'Amit', 1008, 'Kolkata Test Centre', 'Written', 82, NOW(), 'Rashmi', NOW(), 'Avinash'),
(9, 'Priya', 1009, 'Jaipur Test Centre', 'Practical', 84, NOW(), 'Rashmi', NOW(), 'Avinash'),
(10, 'Arjun', 1010, 'Lucknow Test Centre', 'Written', 89, NOW(), 'Rashmi', NOW(), 'Avinash'),
(11, 'Neha', 1011, 'Kanpur Test Centre', 'Practical', 77, NOW(), 'Rashmi', NOW(), 'Avinash'),
(12, 'Rajesh', 1012, 'Indore Test Centre', 'Written', 93, NOW(), 'Rashmi', NOW(), 'Avinash'),
(13, 'Sneha', 1013, 'Coimbatore Test Centre', 'Practical', 81, NOW(), 'Rashmi', NOW(), 'Avinash'),
(14, 'Vikram', 1014, 'Nagpur Test Centre', 'Written', 78, NOW(), 'Rashmi', NOW(), 'Avinash'),
(15, 'Divya', 1015, 'Visakhapatnam Test Centre', 'Practical', 87, NOW(), 'Rashmi', NOW(), 'Avinash'),
(16, 'Manoj', 1016, 'Chandigarh Test Centre', 'Written', 80, NOW(), 'Rashmi', NOW(), 'Avinash'),
(17, 'Lakshmi', 1017, 'Bhopal Test Centre', 'Practical', 90, NOW(), 'Rashmi', NOW(), 'Avinash'),
(18, 'Sanjay', 1018, 'Gurgaon Test Centre', 'Written', 83, NOW(), 'Rashmi', NOW(), 'Avinash'),
(19, 'Kavita', 1019, 'Noida Test Centre', 'Practical', 88, NOW(), 'Rashmi', NOW(), 'Avinash'),
(20, 'Suresh', 1020, 'Thane Test Centre', 'Written', 85, NOW(), 'Rashmi', NOW(), 'Avinash');


insert into LLR_INFO(LLR_ID ,APPLICANT_NAME,MAIL)
values(1,'Amit','amit.sharma@example.com')
on duplicate key update llr_id=21, applicant_name='Steven',email='stevennoronha9@gmail.com';

insert into llr_test_info(llr_id,test_id,test_result,remarks)values(2,103,'Pass','Good')on duplicate key update test_result='Fail',remarks='Needs improvement';
insert into driving_licence_info(dl_id,dl_type,dl_status)values(1,'Permanent','Active')on duplicate key update dl_type='Temporary',dl_status='Inactive';
insert into driving_licence_test_info(dl_test_id,examiner_name,test_center)values(1,'Ravi Kumar','Driving Center A')on duplicate key update dl_test_id=25,examiner_name='megha',test_center='Driving Center S';


replace into llr_info(llr_id,applicant_name,applicant_address,applicant_phone,applicant_email,applicant_dob,created_at,created_by,modified_at,modified_by)values(2,'Janu','Bagalkote',8976534362,'janu.patil@example.com','2020-07-12','2024-07-20 07:00:00','megha',now(),'megha');
replace into llr_test_info(llr_id,test_id,test_date,test_result)values(4,130,'2024-01-29','Excellent');
replace into driving_licence_info(dl_id,issue_date,dl_type)values(3,'2024-03-30','Temporary');
replace into driving_licence_test_info(dl_test_id,test_result,remarks)values(6,'Fail','Requires additional training');
