USE ASSIGNMENTS;
CREATE TABLE SPORTS(ID INT UNIQUE,SPORTS_ID VARCHAR(10) PRIMARY KEY,
SPORT_NAME VARCHAR(25) NOT NULL,NO_OF_PLAYER INT,CAPTION VARCHAR(30),
constraint NO_OF_PL_CK CHECK(NO_OF_PLAYER >=1));

CREATE TABLE PLAYER(ID INT UNIQUE,PLAYER_NAME VARCHAR(30) NOT NULL,PLAYER_ID INT,
AGE INT,SPORT_ID VARCHAR(10),SPORTS_NAME VARCHAR(30),
constraint CHK_AGE CHECK(AGE>=5),
PRIMARY KEY(PLAYER_ID),
foreign key(SPORT_ID) references  SPORTS(SPORTS_ID));

DESC SPORTS;

INSERT INTO SPORTS VALUES(1,'S101','KABBADI',7,'PAWAN SHERWATH');
INSERT INTO SPORTS VALUES
(2,'S102','CRIKET',11,'ROHITH SHARMA'),
(3,'S103','FOOTBALL',15,'SUNIL CHETRI'),
(4,'S104','HOCKEY',11,'GURUPREETH'),
(5,'S105','SHOOTING DOUBLE',2,'MANU BAKAR'),
(6,'S106','BADMINTION',11,'P V SINDHU'),
(7,'S107','JAWELLIN',1,'NEERAJ CHOPRA'),
(8,'S108','ARCHERY',1,'DEEPA'),
(9,'S109','100M RUNNNNING',1,'P T USHA'),
(10,'S110','VOLLYBALL',6,'AMOGHA S HEGDE');

DESC PLAYER;

INSERT INTO PLAYER VALUES(1,'ROHTH KUMAR',101,30,'S101','KABBADI');
INSERT INTO PLAYER VALUES
(2,'VIRAT KOHLI',102,34,'S102','CRICKET'),
(3,'JSPREETH',103,30,'S102','CRICKET'),
(4,'PARDEEP NARWAL',104,32,'S101','KABBADI'),
(5,'K L RAHUL',105,30,'S102','CRICKET'),
(6,'MANU BAKAR',106,34,'S105','SHOOTING'),
(7,'SAINA NEHWAL',107,32,'S106','BADMINTON'),
(8,'DEEPA KUMARI',108,34,'S108','ARCHERY'),
(9,'BOLT',109,40,'S109','RUNNIMG'),
(10,'NEERAJ CHOPRA',110,25,'S107','CRICKET');

SELECT * FROM PLAYER WHERE AGE BETWEEN 30 AND 35;

SELECT * FROM SPORTS WHERE CAPTION LIKE 'R%H%A%';
SELECT * FROM SPORTS WHERE SPORT_NAME LIKE '%L';
SELECT * FROM SPORTS WHERE SPORT_NAME LIKE '_R%';
SELECT * FROM PLAYER ORDER BY PLAYER_ID ;
SELECT * FROM PLAYER ORDER BY PLAYER_ID DESC ;
SELECT * FROM SPORTS ORDER BY NO_OF_PLAYER ASC ;
SELECT * FROM SPORTS ORDER BY NO_OF_PLAYER DESC ;
SELECT LOWER(SPORT_NAME) AS LOWER_SPORT_NAME FROM SPORTS;
SELECT LOWER(PLAYER_NAME) AS UPPER_PLYER_NAME FROM PLAYER;
SELECT UPPER(PLAYER_NAME) AS UPPER_PLYER_NAME FROM PLAYER;
SELECT LENGTH("I AM A PROGRAMMER") AS LENGTH;
SELECT LOWER("I LOVE CATS") AS LOWER;
SELeCT UPPER("i love elephhants")as upper; 

SELECT LENGTH(PLAYER_NAME) AS LENGTH_PL_NAME FROM PLAYER;
SELECT LENGTH(PLAYER_NAME) AS LENGTH_PL_NAME FROM PLAYER WHERE ID IN(1,2,3,4);
SELECT CONCAT('MY','NAME','IS') AS CONCAT;
SELECT CONCAT('PLAYER_NAME','PLAYER_ID') FROM PLAYER;
CREATE INDEX IDX_NAME ON SPORTS (SPORT_NAME);
SHOW INDEX FROM SPORTS;