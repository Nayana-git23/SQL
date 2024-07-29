USE ASSIGNMENTS;
COMMIT;
DROP TABLE SHOW_ROOM;
DESC SHOW_ROOM;
CREATE TABLE SHOW_ROOM (
    ID INT NOT NULL,
    SHOW_ROOM_NAME VARCHAR(30) NOT NULL,
    PRODUCT VARCHAR(30) UNIQUE,
    PRODUCT_ID INT UNIQUE,
    PRICE BIGINT,
    QUANTITY INT,
    CREATED_IN TIMESTAMP,
    CREATED_BY VARCHAR(30),
    MODIFIED_IN TIMESTAMP,
    MODIFIED_BY VARCHAR(30),
    CHECK (PRICE >= 1),
    CHECK (QUANTITY >= 1)
);
INSERT INTO SHOW_ROOM VALUES(1,'SHRUTI MOTARS','BIKE',101,50000,1,NOW(),'NAYANA',NOW(),'ANANYA');
INSERT INTO SHOW_ROOM VALUES(2,'ABI MOBILES','MOBILE',102,20000,1,NOW(),'NAYANA',NOW(),'ANANYA');
INSERT INTO SHOW_ROOM VALUES(3,'ABAY ELECTRONICS','TV',103,40000,1,NOW(),'POORVI',NOW(),'MEGHA');

INSERT INTO SHOW_ROOM VALUES
(4, 'GIGA COMPUTERS', 'LAPTOP', 104, 60000, 2, NOW(), 'SONU', NOW(), 'SHREYA'),
(5, 'BEST APPLIANCES', 'WASHER', 105, 30000, 3, NOW(), 'NEEL', NOW(), 'ZYAN'),
(6, 'SUPER MOBILES', 'TABLET', 106, 15000, 4, NOW(), 'PRASHANTH', NOW(), 'MADHU'),
(7, 'TECH GIZMOS', 'HEADPHONES', 107, 5000, 10, NOW(), 'NETRA', NOW(), 'NAGA'),
(8, 'GLOBE GADGETS', 'SMARTWATCH', 108, 12000, 5, NOW(), 'ABI', NOW(), 'AMOGHA'),
(9, 'HOME SOLUTIONS', 'MICROWAVE', 109, 7000, 7, NOW(), 'NAYANA', NOW(), 'ANANYA'),
(10, 'FUTURE TECH', 'PRINTER', 110, 8000, 8, NOW(), 'KIRAN', NOW(), 'BALAJI'),
(11, 'ELECTRO WORLD', 'CAMERA', 111, 25000, 6, NOW(), 'VIRAT', NOW(), 'ANUSHKA'),
(12, 'DIGITAL DEPOT', 'BLUETOOTH SPEAKER', 112, 6000, 12, NOW(), 'NAGS', NOW(), 'DANISH'),
(13, 'SMART ELECTRONICS', 'VR HEADSET', 113, 20000, 3, NOW(), 'KUSHAL', NOW(), 'KUMAR'),
(14, 'TECH STORE', 'ROUTER', 114, 4000, 9, NOW(), 'VIKKY', NOW(), 'ANANYA'),
(15, 'GADGET LAND', 'FAN', 115, 2000, 15, NOW(), 'AKSHAY', NOW(), 'ANANYA'),
(16, 'BEST DEALS', 'GAS STOVE', 116, 15000, 4, NOW(), 'APPU', NOW(), 'MEGHA'),
(17, 'VALUE APPLIANCES', 'TOASTER', 117, 2500, 11, NOW(), 'RAMA', NOW(), 'KRISHNA'),
(18, 'TECH MANIA', 'ELECTRIC KETTLE', 118, 3000, 8, NOW(), 'POUDAN', NOW(), 'GURU'),
(19, 'QUALITY MOBILES', 'POWER BANK', 119, 2000, 14, NOW(), 'ANIL', NOW(), 'ARUN'),
(20, 'ULTIMATE GIZMOS', 'BLENDER', 120, 3500, 6, NOW(), 'ZAIBA', NOW(), 'SINCHANA'),
(21, 'SMART WORLD', 'DEHUMIDIFIER', 121, 10000, 5, NOW(), 'SANTU', NOW(), 'SUJAN'),
(22, 'ECO APPLIANCES', 'AIR PURIFIER', 122, 12000, 7, NOW(), 'JEEVAN', NOW(), 'RASHMI'),
(23, 'NEXT GEN TECH', 'LAPTOP BAG', 123, 3000, 10, NOW(), 'VISHWA', NOW(), 'VARUN'),
(24, 'GIZMO HUB', 'CAR CHARGER', 124, 1500, 20, NOW(), 'PRIYA', NOW(), 'KEERTHI');

ALTER TABLE SHOW_ROOM
ADD CONSTRAINT unique_show_room_name UNIQUE (SHOW_ROOM_NAME);

ALTER TABLE SHOW_ROOM
MODIFY PRICE BIGINT NOT NULL;

ALTER TABLE SHOW_ROOM
ADD CONSTRAINT check_price CHECK (PRICE >= 1);

ALTER TABLE SHOW_ROOM
ADD CONSTRAINT check_quantity CHECK (QUANTITY >= 1);


CREATE TABLE CHAT_CENTRE(ID INT UNIQUE,CENTRE_NAME VARCHAR(30) NOT NULL,
CHAT_NAME VARCHAR(30) UNIQUE,PRICE INT,QUANTITY INT,CREATED_IN TIMESTAMP,CREATED_BY VARCHAR(30),
MODIFIED_IN TIMESTAMP,MODIFIED_BY VARCHAR(30),
CHECK (PRICE >= 1),
    CHECK (QUANTITY >= 1));
INSERT INTO CHAT_CENTRE VALUES(1,'BANGARA PETE','PANI PURI',30,1,NOW(),'RASHMI',NOW(),'AISHWARYA');
INSERT INTO CHAT_CENTRE VALUES(2,'ASHA SWEETS','SANDWITCH',40,2,NOW(),'RASHMI',NOW(),'AISHWARYA');
INSERT INTO CHAT_CENTRE VALUES(3,'KIRAN CHATS','MASALA PURI',30,3,NOW(),'APPORVA',NOW(),'ANIL');
INSERT INTO CHAT_CENTRE VALUES(4,'JAADU CHATS','SEV PURI',30,1,NOW(),'RASHMI',NOW(),'AISHWARYA');

INSERT INTO CHAT_CENTRE VALUES
(5, 'GUPTA SNACKS', 'BHEL PURI', 35, 2, NOW(), 'APPORVA', NOW(), 'ANIL'),
(6, 'TASTY BITES', 'DAHI PURI', 40, 3, NOW(), 'RASHMI', NOW(), 'AISHWARYA'),
(7, 'CHATPATA CORNER', 'PAV BHAJI', 50, 2, NOW(), 'APPORVA', NOW(), 'ANIL'),
(8, 'SPICY SNACKS', 'SAMOSA', 20, 5, NOW(), 'RASHMI', NOW(), 'AISHWARYA'),
(9, 'YUMMY CHATS', 'VADA PAV', 25, 4, NOW(), 'APPORVA', NOW(), 'ANIL'),
(10, 'DELIGHT CHATS', 'DAHI VADA', 45, 1, NOW(), 'RASHMI', NOW(), 'AISHWARYA'),
(11, 'SNACK ATTACK', 'KACHORI', 30, 3, NOW(), 'APPORVA', NOW(), 'ANIL'),
(12, 'FLAVOR FUSION', 'CHANA CHAT', 35, 2, NOW(), 'RASHMI', NOW(), 'AISHWARYA'),
(13, 'CRISPY CORNER', 'ALOO TIKKI', 25, 4, NOW(), 'APPORVA', NOW(), 'ANIL'),
(14, 'MUNCHIES', 'BOMBAY SANDWICH', 50, 1, NOW(), 'RASHMI', NOW(), 'AISHWARYA'),
(15, 'TASTE HUB', 'RAGDA PATTICE', 40, 2, NOW(), 'APPORVA', NOW(), 'ANIL'),
(16, 'CHAT BHANDAR', 'BOTI SNACKS', 30, 5, NOW(), 'RASHMI', NOW(), 'AISHWARYA'),
(17, 'SWEET CHATS', 'PEANUT MASALA', 30, 3, NOW(), 'APPORVA', NOW(), 'ANIL'),
(18, 'TANGY TREATS', 'GOBI MANCHURIAN', 35, 2, NOW(), 'RASHMI', NOW(), 'AISHWARYA'),
(19, 'FLAVORS GALORE', 'MIRCHI', 50, 1, NOW(), 'APPORVA', NOW(), 'ANIL'),
(20, 'SPICE ZONE', 'MANDAKKI', 40, 3, NOW(), 'RASHMI', NOW(), 'AISHWARYA');

ALTER TABLE CHAT_CENTRE
ADD CONSTRAINT unique_centre_name UNIQUE (CENTRE_NAME);

ALTER TABLE CHAT_CENTRE
MODIFY PRICE INT NOT NULL;

ALTER TABLE CHAT_CENTRE
ADD CONSTRAINT check_price CHECK (PRICE >= 1);

ALTER TABLE CHAT_CENTRE
ADD CONSTRAINT check_quantity CHECK (QUANTITY >= 1);

CREATE TABLE TEMPLE_INFO (
    ID INT UNIQUE,
    TEMPLE_NAME VARCHAR(30) UNIQUE,
    GOD VARCHAR(30) NOT NULL,
    LOCATION INT NOT NULL,
    ENTRY_FEE INT,
    NO_OF_DEVOTES INT,
    CREATED_IN TIMESTAMP,
    CREATED_BY VARCHAR(30),
    MODIFIED_IN TIMESTAMP,
    MODIFIED_BY VARCHAR(30),
    CHECK (ENTRY_FEE >= 5),
    CHECK (NO_OF_DEVOTES >= 1));
    ALTER TABLE TEMPLE_INFO MODIFY COLUMN LOCATION VARCHAR(30);
INSERT INTO TEMPLE_INFO VALUES(1,'ISKON TEMPLE','KRISHNA','BANGLORE',10,5,NOW(),'KIRAN',NOW(),'BALAJI'); 
INSERT INTO TEMPLE_INFO VALUES(2,'KASHI','VISHWANTHA','KASHI',10,5,NOW(),'KIRAN',NOW(),'BALAJI');
INSERT INTO TEMPLE_INFO VALUES(3,'SRI KSHETRA DHARMASTALA','MANJUNATHA','DHARMASTALA',100,4,NOW(),'KIRAN',NOW(),'BALAJI');
INSERT INTO TEMPLE_INFO VALUES(4,'HORANADU ANNAPORASHERI','ANNAPOENSHWARI','HORANADU',10,8,NOW(),'KIRAN',NOW(),'BALAJI');
INSERT INTO TEMPLE_INFO VALUES(5,'ANEGUDDE','SRI GANESHA','KUMBASI',100,2,NOW(),'KIRAN',NOW(),'BALAJI');
INSERT INTO TEMPLE_INFO VALUES(6,'AMMANA GATTA','JENUKALLMMA','KODURU',12,10,NOW(),'KIRAN',NOW(),'BALAJI');
INSERT INTO TEMPLE_INFO VALUES
(7, 'SRI RANGANATHA SWAMY TEMPLE', 'RANGANATHA', 'SRIRANGAPATNA', 120, 9, NOW(), 'KIRAN', NOW(), 'BALAJI'),
(8, 'MURUDESHWAR TEMPLE', 'SHIVA', 'MURUDESHWAR', 150, 8, NOW(), 'KIRAN', NOW(), 'BALAJI'),
(9, 'KUKKE SUBRAMANYA', 'SUBRAMANYA', 'KUKKE', 90, 7, NOW(), 'KIRAN', NOW(), 'BALAJI'),
(10, 'TIRUPATI BALAJI', 'VENKATESWARA', 'TIRUPATI', 250, 10, NOW(), 'KIRAN', NOW(), 'BALAJI'),
(11, 'UDUPI SRI KRISHNA', 'KRISHNA', 'UDUPI', 200, 9, NOW(), 'KIRAN', NOW(), 'BALAJI'),
(12, 'SRINGERI SHARADA PEETHAM', 'SHARADA', 'SRINGERI', 180, 8, NOW(), 'KIRAN', NOW(), 'BALAJI'),
(13, 'MYSORE CHAMUNDI', 'CHAMUNDESHWARI', 'MYSORE', 130, 7, NOW(), 'KIRAN', NOW(), 'BALAJI'),
(14, 'SHRAVANABELAGOLA', 'GOMATESHWARA', 'HASSAN', 170, 6, NOW(), 'KIRAN', NOW(), 'BALAJI'),
(15, 'BELUR CHENNAKESAVA', 'CHENNAKESAVA', 'BELUR', 160, 7, NOW(), 'KIRAN', NOW(), 'BALAJI'),
(16, 'HALASURU SOMESHWARA', 'SOMESHWARA', 'BANGALORE', 20, 8, NOW(), 'KIRAN', NOW(), 'BALAJI'),
(17, 'MANGALORE KADRI MANJUNATH', 'MANJUNATHA', 'MANGALORE', 140, 9, NOW(), 'KIRAN', NOW(), 'BALAJI'),
(18, 'NANJUNDESHWARA TEMPLE', 'SHIVA', 'NANJANGUD', 110, 8, NOW(), 'KIRAN', NOW(), 'BALAJI'),
(19, 'KOLLUR MOOKAMBIKA', 'MOOKAMBIKA', 'KOLLUR', 200, 10, NOW(), 'KIRAN', NOW(), 'BALAJI'),
(20, 'BADAMI CAVE TEMPLES', 'SHIVA', 'BADAMI', 300, 8, NOW(), 'KIRAN', NOW(), 'BALAJI');


ALTER TABLE TEMPLE_INFO
MODIFY ENTRY_FEE INT NOT NULL;

ALTER TABLE TEMPLE_INFO
ADD CONSTRAINT unique_god UNIQUE (GOD);

ALTER TABLE TEMPLE_INFO
ADD CONSTRAINT check_entry_fee CHECK (ENTRY_FEE >= 5);

ALTER TABLE TEMPLE_INFO
ADD CONSTRAINT check_no_of_devotes CHECK (NO_OF_DEVOTES >= 1);



CREATE TABLE MARKET_INFO (
    ID INT UNIQUE,
    MARKET_NAME VARCHAR(40) UNIQUE,
    PRODUCT VARCHAR(40) NOT NULL,
    LOCATION INT NOT NULL,
    PRICE INT,
    QUANTITY INT,
    CREATED_IN TIMESTAMP,
    CREATED_BY VARCHAR(20),
    MODIFIED_IN TIMESTAMP,
    MODIFIED_BY VARCHAR(20),
    CHECK (PRICE >= 1),
    CHECK (QUANTITY >= 1));
    
    ALTER TABLE MARKET_INFO MODIFY COLUMN LOCATION VARCHAR(30);
    INSERT INTO MARKET_INFO VALUES(1,'K R MARKET','VEGETABLE','BENGALURU',100,4,NOW(),'AMOGHA',NOW(),'ABI');
    INSERT INTO MARKET_INFO VALUES(2,'CITY MARKET','GROCIRIES','BENGALURU',400,10,NOW(),'AMOGHA',NOW(),'ABI');
       INSERT INTO MARKET_INFO VALUES 
        (3, 'GREEN FIELD MARKET', 'FRUITS', 2, 150, 25, NOW(), 'RAVI', NOW(), 'KIRAN'),
(4, 'MAIN STREET MARKET', 'DAIRY', 3, 80, 15, NOW(), 'PRIYA', NOW(), 'NAVEEN'),
(5, 'FOOD PLAZA', 'MEAT', 4, 200, 10, NOW(), 'AMOGHA', NOW(), 'ABI'),
(6, 'SUNSHINE MARKET', 'FROZEN FOODS', 5, 120, 20, NOW(), 'RAVI', NOW(), 'KIRAN'),
(7, 'SUPERMART', 'BAKERY', 6, 90, 12, NOW(), 'PRIYA', NOW(), 'NAVEEN'),
(8, 'FRESH MARKET', 'SEAFOOD', 7, 250, 8, NOW(), 'AMOGHA', NOW(), 'ABI'),
(9, 'WEST END MARKET', 'BEVERAGES', 8, 60, 30, NOW(), 'RAVI', NOW(), 'KIRAN'),
(10, 'EAST SIDE MARKET', 'SNACKS', 9, 40, 50, NOW(), 'PRIYA', NOW(), 'NAVEEN'),
(11, 'CITY CENTRE MARKET', 'BREAD', 10, 50, 25, NOW(), 'AMOGHA', NOW(), 'ABI'),
(12, 'MAIN MARKET', 'PASTA', 1, 70, 22, NOW(), 'RAVI', NOW(), 'KIRAN'),
(13, 'FARMERS MARKET', 'HONEY', 2, 180, 5, NOW(), 'PRIYA', NOW(), 'NAVEEN'),
(14, 'LOCAL MARKET', 'OIL', 3, 110, 18, NOW(), 'AMOGHA', NOW(), 'ABI'),
(15, 'BUDGET MARKET', 'RICE', 4, 90, 50, NOW(), 'RAVI', NOW(), 'KIRAN'),
(16, 'GOURMET MARKET', 'CHEESE', 5, 140, 10, NOW(), 'PRIYA', NOW(), 'NAVEEN'),
(17, 'SAVINGS MARKET', 'CEREALS', 6, 80, 35, NOW(), 'AMOGHA', NOW(), 'ABI'),
(18, 'VALUE MARKET', 'CONDIMENTS', 7, 45, 40, NOW(), 'RAVI', NOW(), 'KIRAN'),
(19, 'TOP MARKET', 'FRUITS', 8, 160, 20, NOW(), 'PRIYA', NOW(), 'NAVEEN'),
(20, 'DISCOUNT MARKET', 'VEGETABLES', 9, 70, 28, NOW(), 'AMOGHA', NOW(), 'ABI');

ALTER TABLE MARKET_INFO
MODIFY PRICE INT NOT NULL;

ALTER TABLE MARKET_INFO
ADD CONSTRAINT unique_product UNIQUE (PRODUCT);

ALTER TABLE MARKET_INFO
ADD CONSTRAINT check_price CHECK (PRICE >= 1);

ALTER TABLE MARKET_INFO
ADD CONSTRAINT check_quantity CHECK (QUANTITY >= 1);

CREATE TABLE METRO_INFO (
    ID INT UNIQUE,
    METRO_RAIL_NO VARCHAR(40) UNIQUE,
    METRO_STATION_NAME VARCHAR(40) NOT NULL,
    LINE VARCHAR(30) NOT NULL,
    TICKET_PRICE INT,
    QUANTITY INT,
    CREATED_IN TIMESTAMP,
    CREATED_BY VARCHAR(20),
    MODIFIED_IN TIMESTAMP,
    MODIFIED_BY VARCHAR(20),
    CHECK (TICKET_PRICE >= 1),
    CHECK (QUANTITY >= 1));
    
INSERT INTO METRO_INFO VALUES
(1, 'MR001', 'RAJAJI NAGAR', 'GREEN LINE', 50, 100, NOW(), 'ANIL', NOW(), 'MEERA'),
(2, 'MR002', 'MEJESTIC', 'PURPLE LINE', 60, 150, NOW(), 'PRIYA', NOW(), 'RAJ'),
(3, 'MR003', 'K R MARKET', 'YELLOW LINE', 50, 100, NOW(), 'ANIL', NOW(), 'MEERA'),
(4, 'MR004', 'MACHENAHALLI', 'PURPLE LINE', 60, 150, NOW(), 'PRIYA', NOW(), 'RAJ');
INSERT INTO METRO_INFO VALUES
(5, 'MR005', 'BANGALORE CANTONMENT', 'RED LINE', 55, 120, NOW(), 'RAVI', NOW(), 'SITA'),
(6, 'MR006', 'NAGAWARA', 'BLUE LINE', 65, 90, NOW(), 'KIRAN', NOW(), 'ANANYA'),
(7, 'MR007', 'KORAMANGALA', 'GREEN LINE', 50, 110, NOW(), 'MEERA', NOW(), 'RAJ'),
(8, 'MR008', 'JAYANAGAR', 'PURPLE LINE', 70, 130, NOW(), 'PRIYA', NOW(), 'RAVI'),
(9, 'MR009', 'BASAVANAGUDI', 'RED LINE', 60, 140, NOW(), 'ANIL', NOW(), 'SITA'),
(10, 'MR010', 'WHITEFIELD', 'BLUE LINE', 55, 100, NOW(), 'KIRAN', NOW(), 'MEERA'),
(11, 'MR011', 'ELECTRONIC CITY', 'GREEN LINE', 80, 85, NOW(), 'RAJ', NOW(), 'PRIYA'),
(12, 'MR012', 'YELAHANKA', 'PURPLE LINE', 75, 95, NOW(), 'RAVI', NOW(), 'SITA'),
(13, 'MR013', 'MAGADI ROAD', 'RED LINE', 50, 105, NOW(), 'KIRAN', NOW(), 'ANIL'),
(14, 'MR014', 'GORGON PARK', 'BLUE LINE', 65, 130, NOW(), 'MEERA', NOW(), 'RAJ'),
(15, 'MR015', 'KR PURAM', 'GREEN LINE', 70, 115, NOW(), 'PRIYA', NOW(), 'RAVI'),
(16, 'MR016', 'HOSUR ROAD', 'PURPLE LINE', 55, 140, NOW(), 'ANIL', NOW(), 'SITA'),
(17, 'MR017', 'HBR LAYOUT', 'RED LINE', 60, 125, NOW(), 'KIRAN', NOW(), 'MEERA'),
(18, 'MR018', 'DASARAHALLI', 'BLUE LINE', 50, 90, NOW(), 'RAVI', NOW(), 'RAJ'),
(19, 'MR019', 'BELLANDUR', 'GREEN LINE', 65, 120, NOW(), 'PRIYA', NOW(), 'SITA'),
(20, 'MR020', 'KR PURAM', 'PURPLE LINE', 75, 150, NOW(), 'ANIL', NOW(), 'MEERA');

ALTER TABLE METRO_INFO
MODIFY TICKET_PRICE INT NOT NULL;

ALTER TABLE METRO_INFO
ADD CONSTRAINT unique_station_name UNIQUE (METRO_STATION_NAME);

ALTER TABLE METRO_INFO
ADD CONSTRAINT check_ticket_price CHECK (TICKET_PRICE >= 1);

ALTER TABLE METRO_INFO
ADD CONSTRAINT check_quantity CHECK (QUANTITY >= 1);
