USE ASSIGNMENTS;
CREATE TABLE STATE_INFO( ID INT,NAME_OF_STATE VARCHAR(30),CAPITAL VARCHAR(30),POPULATTION BIGINT,
AREA BIGINT,CHIEF_MINISTER VARCHAR(30),NO_OF_DISTRICTS INT,LANGAUGE VARCHAR(30),STATE_DANCE VARCHAR(30),
ESTABLISHED_YEAR VARCHAR(30));

ALTER TABLE STATE_INFO ADD COLUMN STATE_ANIMAL VARCHAR(30),ADD COLUMN GDP BIGINT,ADD COLUMN SOURCE_INCOME
VARCHAR(30),ADD COLUMN FAMOUS_FOOD VARCHAR(30),ADD COLUMN GOVERNER VARCHAR(30);

ALTER TABLE STATE_INFO RENAME COLUMN  NO_OF_DISTRICTS TO DISTRICTS,RENAME COLUMN  NAME_OF_STATE TO STATE_NAME,
RENAME COLUMN GOVERNER TO GOVERNER_NAME,RENAME COLUMN STATE_DANCE TO STATE_DANCE_FORM,
RENAME COLUMN LANGAUGE TO MAIN_LANGAUGE;

DESC STATE_INFO;

ALTER TABLE STATE_INFO MODIFY COLUMN ID VARCHAR(10);
ALTER TABLE STATE_INFO MODIFY COLUMN ID INT;
ALTER TABLE STATE_INFO MODIFY DISTRICTS VARCHAR(30);
ALTER TABLE STATE_INFO MODIFY DISTRICTS INT;
ALTER TABLE STATE_INFO MODIFY  MAIN_LANGAUGE INT;
ALTER TABLE STATE_INFO MODIFY  MAIN_LANGAUGE VARCHAR(30);
ALTER TABLE STATE_INFO MODIFY GDP VARCHAR(30);

INSERT INTO STATE_INFO VALUES(1,'KARNATAKA','BANGOLORE',70000000,382789000,'SIDDARAMMAIH',
30,'KANNADA','YAKSHAGANA','1961','ELEPHANAT','2.62CR','AGRICULUTURE','MYSORE PAK','TAWAR CHAND HEHLOT');

INSERT INTO STATE_INFO VALUES(2,'TAMIL NADU','CHENNAI',50000000,312789000,'M K STALIN',
38,'TAMIL','BHARATANATYAM','1956','TAHR','31.55 L CR','AGRICULUTURE','IDLI','R N RAVI');

INSERT INTO STATE_INFO VALUES(3,'KERALA','THIRUVANTAPURAM',55000000,3828786000,'PINARAYI VIJAYANAN',
14,'MALAYALAM','KATHAKALI','1956','ELEPHANAT','9.78CR','COCUNUT','PUTTU','ARIF MOHAMMAD KAHN');

INSERT INTO STATE_INFO VALUES(4,'ANDHRA PRADESH','AMARAVATHI',70000000,382789000,'N CHANDRA BABU NAIDU',
25,'TELUGU','KUCHUPUDI','1956','BLACK BUK','3.62CR','AGRICULUTURE','BIRIYANI','S ABDUL NAZEER');

INSERT INTO STATE_INFO VALUES(5,'GOA','PANAJI',15.780000,382789000,'PRAMODSAWANTH',
2,'KONKANI','FUGDI AND DHALO','1987','GAUR','2.62CR','1.0 T','FISH FRY','P S SREEDHARAN PILLAI');

INSERT INTO STATE_INFO VALUES(9, 'MAHARASHTRA', 'MUMBAI', 19.076090, 112374333, 'EKNATH SHINDE',
 2, 'MARATHI', 'LAVANI', '1960', 'INDIAN GIANT SQUIRREL', '4.9CR', '3.2 T', 'VADA PAV', 'RAMESH BAIS');
 
INSERT INTO STATE_INFO VALUES(10, 'WEST BENGAL', 'KOLKATA', 22.572646, 91276115, 'MAMATA BANERJEE',
 2, 'BENGALI', 'CHAUPAD HAR', '1947', 'WHITE TIGER', '2.9CR', '2.6 T', 'ROSOGOLLA', 'C. V. ANANDA BOSE');
 
 
INSERT INTO STATE_INFO VALUES (11, 'RAJASTHAN', 'JAIPUR', 26.912434, 68548437, 'ASHOK GEHLOT',
 2, 'HINDI', 'GHOOMAR', '1949', 'CHINKARA', '2.8CR', '1.6 T', 'DAL BAATI CHURMA', 'KALRAJ MISHRA');
 
INSERT INTO STATE_INFO VALUES(12, 'GUJARAT', 'GANDHINAGAR', 23.215635, 63976778, 'BHUPENDRA PATEL',
 2, 'GUJARATI', 'GARBA', '1960', 'ASIATIC LION', '3.6CR', '2.2 T', 'DHOKLA', 'ACHARYA DEVVRAT');
 
INSERT INTO STATE_INFO VALUES(13, 'UTTAR PRADESH', 'LUCKNOW', 26.846708, 199812341, 'YOGI ADITYANATH',
 2, 'HINDI', 'KATHAK', '1950', 'SWAMP DEER', '7.2CR', '3.3 T', 'AWADHI CUISINE', 'ANANDIBEN PATEL');

INSERT INTO STATE_INFO VALUES(14, 'BIHAR', 'PATNA', 25.611000, 104099452, 'NITISH KUMAR',
 2, 'HINDI', 'JHUMAR', '1950', 'GANGES RIVER DOLPHIN', '3.1CR', '1.6 T', 'LITTI CHOKHA', 'RAJENDRA ARLEKAR');
 
INSERT INTO STATE_INFO VALUES(15, 'MADHYA PRADESH', 'BHOPAL', 23.259933, 85358965, 'MOHAN YADAV',
 2, 'HINDI', 'TIPPANI', '1956', 'BARASINGHA', '2.9CR', '1.8 T', 'POHA', 'MANGUBHAI C. PATEL');
 
 INSERT INTO STATE_INFO VALUES
(16, 'PUNJAB', 'CHANDIGARH', 30.733315, 27743338, 'BHAGWANT MANN',
 2, 'PUNJABI', 'KUCCHIPODI', '1966', 'BLACKBUCK', '3.4CR', '1.7 T', 'MAKKI DI ROTI', 'BANWARILAL PUROHIT');
INSERT INTO STATE_INFO VALUES(17, 'HARYANA', 'CHANDIGARH', 30.733315, 25353081, 'MANOHAR LAL KHATTAR',
 2, 'HINDI', 'NAATI', '1966', 'TIGER', '3.2CR', '1.9 T', 'BASMATI RICE', 'BANDARU DATTATREYA');
INSERT INTO STATE_INFO VALUES(18, 'ASSAM', 'DISPUR', 26.144518, 31205576, 'HIMANTA BISWA SARMA',
 2, 'ASSAMESE', 'BIHU', '1947', 'ONE-HORNED RHINO', '2.9CR', '1.5 T', 'ASSAMESE THALI', 
 'GULAB CHAND KATARIA');
INSERT INTO STATE_INFO VALUES(19, 'ODISHA', 'BHUBANESWAR', 20.296059, 46356334, 'MOHAN CHARAN',
 2, 'ODIA', 'ODISSI', '1950', 'SAMBHAR DEER', '3.0CR', '1.8 T', 'PITHA', 'RAGHU BAR DAS');
INSERT INTO STATE_INFO VALUES(20, 'TELANGANA', 'HYDERABAD', 17.385044, 35193978, 'K. REVANTH REDDY',
 2, 'TELUGU', 'PERINI SHIVATANDAVAM', '2014', 'SPOTTED DEER', '3.3CR', '2.5 T',
 'DOSE', 'RADHA KRISHNAN');

INSERT INTO STATE_INFO VALUES
(7, 'JAMMU & KASHMIR', 'SRINAGAR', 34.083656, 12267032, 'MANOJ SINHA',
 2, 'TELUGU', 'ROUF', '2019', 'HANGUL', '1.4CR', '1.3 T', 'ROGAN JOSH', 'MANOJ SINHA');
INSERT INTO STATE_INFO VALUES
(8, 'GUJARAT', 'GANDHINAGAR', 23.215635, 63976778, 'BHUPENDRA PATEL',
 2, 'GUJARATI', 'BHARATHANATYAM', '1960', 'ASIATIC LION', '3.6CR', '2.2 T', 'DHOKLA', 'ACHARYA DEVVRAT');
INSERT INTO STATE_INFO VALUES
(9, 'SIKKIM', 'GANGTOK', 27.338936, 610577, 'PREM SINGH TAMANG',
 2, 'NEPALI', 'CHHUTKAY', '1975', 'RED PANDA', '0.75CR', '0.2 T', 'MOMOS', 'GANGA PRASAD');
   UPDATE STATE_INFO MAIN_LANGUAGE SET MAIN_LANGAUGE='URDU' WHERE ID=7;
 UPDATE STATE_INFO SET  STATE_DANCE_FORM='BANGRAH' where ID=8;
 UPDATE STATE_INFO SET POPULATTION=160000000 WHERE ID=6;
 UPDATE STATE_INFO SET POPULATTION=60000000 WHERE ID=7;
 UPDATE STATE_INFO SET POPULATTION=70000000 WHERE ID=8;
 UPDATE STATE_INFO SET POPULATTION=7600000 WHERE ID=9;
 UPDATE STATE_INFO SET POPULATTION=160000 WHERE ID=10;
 UPDATE STATE_INFO SET POPULATTION=1600000 WHERE ID=11;
 UPDATE STATE_INFO SET FAMOUS_FOOD='HYDREABADI BIRIYANI' WHERE ID=20;
 UPDATE STATE_INFO SET DISTRICTS=3 WHERE ID=5;
 UPDATE STATE_INFO SET POPULATTION=1600000; 
 DELETE FROM STATE_INFO WHERE ID=7;
 DELETE FROM STATE_INFO WHERE STATE_NAME='GUJARATH';
 DELETE FROM STATE_INFO WHERE ID=9;
 SELECT * FROM STATE_INFO;
 
 SELECT CAPITAL,DISTRICTS FROM STATE_INFO WHERE MAIN_LANGAUGE='KANNADA' AND FAMOUS_FOOD='MYSORE PAK';
  SELECT * FROM STATE_INFO WHERE MAIN_LANGAUGE='KANNADA' OR SOURCE_INCOME='AGRICULUTURE';
SELECT * FROM STATE_INFO WHERE ID IN(1,4,5,6,7,8,11,16);
SELECT * FROM STATE_INFO WHERE ID NOT IN(1,4,5,6,7,8,11,16);

CREATE TABLE SCAM_INFO(ID INT,SCAM_NAME VARCHAR(35),SCAM_TYPE INT,VICTIM_NAME BIGINT,
AMMOUNT VARCHAR(35),SCAM_YEAR INT,PLACE BIGINT,STATE VARCHAR(30),VICTIM_AGE VARCHAR(30),
COUNTRY VARCHAR(30)); 

ALTER TABLE SCAM_INFO ADD COLUMN VICTIM_COUNT INT,ADD COLUMN INVESTIGATION VARCHAR(35),
ADD COLUMN LEGAL_ACTION VARCHAR(35),ADD COLUMN SACM_NO VARCHAR(30),ADD COLUMN STATUS_INFO VARCHAR(30);

  SELECT * FROM SCAM_INFO;
  DESC SCAM_INFO;

ALTER TABLE SCAM_INFO RENAME COLUMN SCAM_NAME TO SACM;
ALTER TABLE SCAM_INFO RENAME COLUMN  VICTIM_NAME TO VICTIMS;
ALTER TABLE SCAM_INFO RENAME COLUMN  VICTIM_AGE TO VICTIMS_AGE;
ALTER TABLE SCAM_INFO RENAME COLUMN VICTIM_COUNT TO VICTIMS_COUNT;
ALTER TABLE SCAM_INFO RENAME COLUMN INVESTIGATION TO INVESTGATION_AGENCY;


ALTER TABLE SCAM_INFO MODIFY COLUMN SCAM_TYPE VARCHAR(30);
ALTER TABLE SCAM_INFO MODIFY COLUMN VICTIMS VARCHAR(50);
ALTER TABLE SCAM_INFO MODIFY COLUMN PLACE VARCHAR(30);
ALTER TABLE SCAM_INFO MODIFY COLUMN VICTIMS_AGE INT;
ALTER TABLE SCAM_INFO MODIFY COLUMN AMMOUNT BIGINT;

INSERT INTO SCAM_INFO VALUES(1,'PASSWORD HACKING','CYBER CRIME','KUMAR ANIL ','450000',2018,
'HUBLI','KARNATAKA',45,'INDIA',2,'KARNATAKA POLICE','2 YEAR JAIL','S101','CLOSED');

INSERT INTO SCAM_INFO VALUES
(2, 'EMAIL PHISHING', 'CYBER CRIME', 'JOHN DOE', 500000.00, 2019, 'BANGALORE', 'KARNATAKA', 30, 
'INDIA', 1, 'CBI', '3 YEAR JAIL', 'S102', 'OPEN'),
(3, 'CREDIT CARD FRAUD', 'FINANCIAL CRIME', 'JANE SMITH', 300000.00, 2020, 'MUMBAI',
 'MAHARASHTRA', 50, 'INDIA', 3, 'MAHARASHTRA POLICE', '5 YEAR JAIL', 'S103', 'CLOSED'),
(4, 'INSIDER TRADING', 'CORPORATE CRIME', 'RAHUL KAPOOR', 1000000.00, 2017, 'DELHI', 
'DELHI', 20, 'INDIA', 1, 'SEBI', '10 YEAR JAIL', 'S104', 'OPEN'),
(5, 'BANK FRAUD', 'FINANCIAL CRIME', 'ANITA SHARMA', 2000000.00, 2016, 'CHENNAI', 'TAMIL NADU',
 100, 'INDIA', 5, 'CBI', '7 YEAR JAIL', 'S105', 'CLOSED'),
(6, 'ONLINE SCAM', 'CYBER CRIME', 'MICHAEL BROWN', 150000.00, 2021, 'HYDERABAD', 'TELANGANA', 25,
 'INDIA', 2, 'HYDERABAD POLICE', '4 YEAR JAIL', 'S106', 'OPEN'),
(7, 'INSURANCE FRAUD', 'FINANCIAL CRIME', 'PRIYA MEHTA', 1200000.00, 2015, 'PUNE', 'MAHARASHTRA', 
40, 'INDIA', 3, 'IRDAI', '6 YEAR JAIL', 'S107', 'CLOSED'),
(8, 'IDENTITY THEFT', 'CYBER CRIME', 'VIKAS SINGH', 600000.00, 2018, 'JAIPUR', 'RAJASTHAN', 60, 
'INDIA', 4, 'RAJASTHAN POLICE', '3 YEAR JAIL', 'S108', 'CLOSED'),
(9, 'INVESTMENT FRAUD', 'FINANCIAL CRIME', 'ANIL AGARWAL', 800000.00, 2020, 'AHMEDABAD', 
'GUJARAT', 35, 'INDIA', 1, 'GUJARAT POLICE', '8 YEAR JAIL', 'S109', 'OPEN'),
(10, 'LOTTERY SCAM', 'CYBER CRIME', 'SUSAN LEE', 250000.00, 2019, 'KOLKATA', 'WEST BENGAL', 70, 
'INDIA', 2, 'KOLKATA POLICE', '5 YEAR JAIL', 'S110', 'CLOSED'),
(11, 'FAKE CHARITY', 'FRAUD', 'DAVID WILLIAMS', 900000.00, 2017, 'LUCKNOW', 'UTTAR PRADESH',
 80, 'INDIA', 3, 'UP POLICE', '9 YEAR JAIL', 'S111', 'OPEN'),
(12, 'MORTGAGE FRAUD', 'FINANCIAL CRIME', 'ASHOK PATEL', 400000.00, 2021, 'BHOPAL', 
'MADHYA PRADESH', 45, 'INDIA', 1, 'MP POLICE', '4 YEAR JAIL', 'S112', 'CLOSED'),
(13, 'HEALTHCARE FRAUD', 'FINANCIAL CRIME', 'MARY JOHNSON', 200000.00, 2018, 'PATNA',
 'BIHAR', 50, 'INDIA', 2, 'BIHAR POLICE', '2 YEAR JAIL', 'S113', 'CLOSED'),
(14, 'TELEMARKETING FRAUD', 'CYBER CRIME', 'AMIT KHAN', 750000.00, 2016, 'THIRUVANANTHAPURAM', 
'KERALA', 55, 'INDIA', 3, 'KERALA POLICE', '6 YEAR JAIL', 'S114', 'OPEN'),
(15, 'PYRAMID SCHEME', 'FINANCIAL CRIME', 'KAVITA VERMA', 550000.00, 2020, 'RANCHI', 
'JHARKHAND', 65, 'INDIA', 1, 'JHARKHAND POLICE', '7 YEAR JAIL', 'S115', 'CLOSED'),
(16, 'FAKE LOAN SCAM', 'FINANCIAL CRIME', 'RAMESH KUMAR', 100000.00, 2017, 'SHIMLA', 
'HIMACHAL PRADESH', 15, 'INDIA', 4, 'HP POLICE', '1 YEAR JAIL', 'S116', 'OPEN'),
(17, 'PHISHING SCAM', 'CYBER CRIME', 'LISA MARTIN', 950000.00, 2019, 'DEHRADUN', 
'UTTARAKHAND', 85, 'INDIA', 2, 'UTTARAKHAND POLICE', '5 YEAR JAIL', 'S117', 'CLOSED'),
(18, 'DEBIT CARD FRAUD', 'FINANCIAL CRIME', 'SANJAY RAO', 650000.00, 2018, 'GUWAHATI', 
'ASSAM', 25, 'INDIA', 3, 'ASSAM POLICE', '4 YEAR JAIL', 'S118', 'OPEN'),
(19, 'BITCOIN SCAM', 'CYBER CRIME', 'KEVIN WHITE', 850000.00, 2020, 'ITANAGAR', 'ARUNACHAL PRADESH',
 95, 'INDIA', 2, 'CBI', '6 YEAR JAIL', 'S119', 'CLOSED'),
(20, 'PHONE SCAM', 'CYBER CRIME', 'SAMANTHA GREEN', 300000.00, 2021, 'AGARTALA', 'TRIPURA', 20,
 'INDIA', 1, 'TRIPURA POLICE', '3 YEAR JAIL', 'S120', 'OPEN');
 
 SELECT * FROM SCAM_INFO;
   UPDATE STATE_INFO SET POPULATTION=1600000; 
 UPDATE SCAM_INFO   SET SACM='GOLD ROBBERY',SCAM_TYPE='ROBBERY' WHERE ID=13;
 UPDATE SCAM_INFO SET SCAM_YEAR=2019,SACM='MONEY STEALING' WHERE ID=5;
 UPDATE SCAM_INFO SET SACM='BIKE STEELING', SCAM_TYPE='ROBBERY' WHERE ID=3; 
 UPDATE SCAM_INFO SET SACM='EDUCATION', SCAM_TYPE='POLITICS CIRRUPTION' WHERE ID=15; 
UPDATE SCAM_INFO SET SACM='BLACK MONEY', SCAM_TYPE='CORRUPTION' WHERE ID=11;   UPDATE SCAM_INFO SET SACM='SOFTWARE ERROR', SCAM_TYPE='CYBER CROME' ,COUNTRY='ENGLEND' WHERE ID=9;
UPDATE SCAM_INFO SET SACM='JOB OFFERS', SCAM_TYPE='EMAILS' ,COUNTRY='JAPAN' WHERE ID=18;
UPDATE SCAM_INFO SET STATE='NEWYORK' ,COUNTRY='USA' WHERE ID=16;
UPDATE SCAM_INFO SET SACM='BANK LOAN', SCAM_TYPE='CALLS' ,COUNTRY='RUSSIA',STATE='MASCO' WHERE ID=7;
 UPDATE SCAM_INFO SET SACM='ROBO CALLING', SCAM_TYPE='CALLING' ,COUNTRY='CHINA',STATE='BEIZING' WHERE ID=2;  
 UPDATE SCAM_INFO  SET VICTIMS='JOHN' WHERE ID=10;
 
 DELETE FROM SCAM_INFO WHERE ID=4;
 ROLLBACK;
 SELECT * FROM SCAM_INFO;
 DELETE  FROM SCAM_INFO WHERE ID=12;
 DELETE FROM SCAM_INFO WHERE ID=16;
 
 SELECT SCAM_TYPE FROM SCAM_INFO WHERE ID=3 AND PLACE='MUMBAI';
 SELECT * FROM SCAM_INFO WHERE ID=3 OR SCAM_TYPE='CYBER CRIME';
 SELECT * FROM SCAM_INFO WHERE ID IN(1,3,6,7,11,13,15);
  SELECT * FROM SCAM_INFO WHERE ID NOT IN(1,3,6,7,11,13,15);
 
 