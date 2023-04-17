CREATE TABLE IF NOT EXISTS Users(
   first_name VARCHAR(50) NOT NULL,
   last_name  VARCHAR(50) NOT NULL,
   user_id  INTEGER  NOT NULL AUTO_INCREMENT PRIMARY KEY
);
INSERT INTO Users(first_name,last_name, user_id) VALUES ('Katey','Menendes', 1);
INSERT INTO Users(first_name,last_name, user_id) VALUES ('Bruis','Feehan', 2);
INSERT INTO Users(first_name,last_name, user_id) VALUES ('Alvis','Terne', 3);
INSERT INTO Users(first_name,last_name, user_id) VALUES ('Desiree','Barke', 4);
INSERT INTO Users(first_name,last_name, user_id) VALUES ('Holmes','Piscopello', 5);
INSERT INTO Users(first_name,last_name, user_id) VALUES ('Shea','Lawlan' ,6);
INSERT INTO Users(first_name,last_name, user_id) VALUES ('Pearle','Macvain', 7);
INSERT INTO Users(first_name,last_name, user_id) VALUES ('Stephanus','Kellaway', 8);
INSERT INTO Users(first_name,last_name, user_id) VALUES ('Keven','Brickner', 9);
INSERT INTO Users(first_name,last_name, user_id) VALUES ('Zach','Turmall', 10);
INSERT INTO Users(first_name,last_name, user_id) VALUES ('Quentin','Mack', 11);
INSERT INTO Users(first_name,last_name, user_id) VALUES ('Tobin','Beadles', 12);
INSERT INTO Users(first_name,last_name, user_id) VALUES ('Florina','MacCrackan', 13);
INSERT INTO Users(first_name,last_name, user_id) VALUES ('Tomlin','Hendricks', 14);
INSERT INTO Users(first_name,last_name, user_id) VALUES ('Ninetta','Fuentes', 15);

CREATE TABLE IF NOT EXISTS Messages(
   sender_id    INTEGER  NOT NULL PRIMARY KEY, 
   recipient_id INTEGER  NOT NULL,
   content      TEXT,
   sent_at      DATETIME DEFAULT CURRENT _TIMESTAMP,
   message_id   INTEGER AUTO_INCREMENT PRIMARY KEY

    constraint foreign key (sender_id) references Users(user_id)
        on delete restrict
        on update cascade,
    constraint foreign key (recipient_id) references Users(user_id)
        on delete restrict
        on update cascade
);

INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (1,1,'Monitored needs-based approach','7:34',1);
INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (2,2,'Fundamental human-resource structure','11:23',2);
INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (3,3,'Down-sized disintermediate Graphic Interface','21:05',3);
INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (4,4,'Monitored attitude-oriented firmware','1:30',4);
INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (5,5,'Networked fresh-thinking migration','18:54',5);
INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (6,6,'Synergized transitional ability','0:42',6);
INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (7,7,'Robust discrete frame','11:25',7);
INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (8,8,'Cross-group multi-tasking open system','16:18',8);
INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (9,9,'Reduced discrete matrices','2:46',9);
INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (10,10,'Versatile foreground standardization','20:03',10);
INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (11,11,'Focused foreground budgetary management','17:00',11);
INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (12,12,'Object-based responsive array','7:03',12);
INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (13,13,'Seamless interactive infrastructure','19:17',13);
INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (14,14,'Realigned homogeneous Graphic Interface','22:43',14);
INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (15,15,'Enterprise-wide zero defect forecast','22:15',15);

CREATE TABLE IF NOT EXISTS TaskCategories(
   category_name VARCHAR(50) NOT NULL UNIQUE, 
   category_id INTEGER  AUTO_INCREMENT PRIMARY KEY 
);
INSERT INTO TaskCategories(category_name, category_id) VALUES ('Proactive 5th generation installation', 1);
INSERT INTO TaskCategories(category_name, category_id) VALUES ('Integrated dedicated framework', 2);
INSERT INTO TaskCategories(category_name, category_id) VALUES ('Diverse system-worthy array', 3);
INSERT INTO TaskCategories(category_name, category_id) VALUES ('Team-oriented needs-based hub', 4);
INSERT INTO TaskCategorie (category_name, category_id) VALUES ('Focused dedicated artificial intelligence', 5);
INSERT INTO TaskCategories(category_name, category_id) VALUES ('Intuitive mobile collaboration', 6);
INSERT INTO TaskCategories(category_name, category_id) VALUES ('Multi-tiered multi-state neural-net', 7);
INSERT INTO TaskCategories(category_name, category_id) VALUES ('Advanced static frame', 8);
INSERT INTO TaskCategories(category_name, category_id) VALUES ('Function-based client-driven customer loyalty', 9);
INSERT INTO TaskCategories(category_name, category_id) VALUES ('Face to face attitude-oriented conglomeration', 10);
INSERT INTO TaskCategories(category_name, category_id) VALUES ('Multi-channelled incremental solution', 11);
INSERT INTO TaskCategories(category_name, category_id) VALUES ('Open-architected analyzing info-mediaries', 12);
INSERT INTO TaskCategories(category_name, category_id) VALUES ('Switchable upward-trending database', 13);
INSERT INTO TaskCategories(category_name, category_id) VALUES ('Team-oriented high-level hierarchy', 14);
INSERT INTO TaskCategories(category_name, category_id) VALUES ('Progressive 24 hour challenge', 15);

CREATE TABLE IF NOT EXISTS Tasks(
   title       VARCHAR(50) NOT NULL, 
   details     VARCHAR(200),
   category_id INTEGER,
   task_status boolean NOT NULL, 
   complete_by DATETIME, 
   created_by  INTEGER  NOT NULL, 
   assigned_to INTEGER, 
   task_id INTEGER  AUTO_INCREMENT PRIMARY KEY, 

    constraint foreign key (created_by) references Users(user_id)
        on delete restrict
        on update cascade,
    constraint foreign key (category_id) references TaskCategories(category_id)
        on delete set null
        on update cascade,
    constraint foreign key (assigned_to) references Users(user_id)
        on delete set null
        on update cascade
);

INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Runolfsdottir-Hettinger','Adaptive value-added moderator',1,'true','6/17/2023',1,2,1);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Metz, Hyatt and Beatty','Compatible needs-based access',2,'false','6/2/2023',2,1,2);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Zieme-Corkery','Cross-group leading edge conglomeration',3,'false','5/16/2023',3,1,3);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Farrell, Williamson and O''Connell','Enterprise-wide heuristic migration',4,'false','6/18/2023',4,1,4);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Macejkovic-Rippin','Sharable well-modulated flexibility',5,'true','4/24/2023',5,4,5);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Turcotte-Sawayn','Function-based modular capability',6,'true','4/28/2023',6,3,6);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Brakus, Graham and West','Decentralized scalable toolset',7,'true','6/6/2023',7,5,7);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Zboncak-Durgan','Optimized leading edge model',8,'true','4/21/2023',8,11,8);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Hyatt Inc','Up-sized zero defect matrices',9,'true','7/10/2023',9,4,9);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('McLaughlin-Johnson','Inverse coherent product',10,'false','5/29/2023',10,15,10);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Smitham-Connelly','Future-proofed clear-thinking concept',11,'false','6/25/2023',11,13,11);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Trantow-Becker','Synchronised clear-thinking moratorium',12,'true','7/9/2023',12,1,12);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('MacGyver, Grady and Legros','Implemented tertiary alliance',13,'false','6/2/2023',13,13,13);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Prosacco-Wunsch','Ergonomic intangible Graphical User Interface',14,'false','4/23/2023',14,4,14);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Goyette, Hansen and Predovic','Polarised human-resource firmware',15,'true','7/10/2023',15,6,15);

CREATE TABLE IF NOT EXISTS ShoppingCategories (
   category_name VARCHAR(50) NOT NULL UNIQUE, 
   category_id  INTEGER  AUTO_INCREMENT  PRIMARY KEY,  
);

INSERT INTO ShoppingCategories(category_name, category_id) VALUES ('Ziemann Group', 1);
INSERT INTO ShoppingCategories(category_name, category_id) VALUES ('Stokes, Sawayn and Gorczany', 2);
INSERT INTO ShoppingCategories(category_name, category_id) VALUES ('Schmitt LLC', 3);
INSERT INTO ShoppingCategories(category_name, category_id) VALUES ('Cole, Schumm and Pacocha', 4);
INSERT INTO ShoppingCategories(category_name, category_id) VALUES ('Gerhold, Torp and Howell', 5);
INSERT INTO ShoppingCategories(category_name, category_id) VALUES ('Simonis and Sons', 6);
INSERT INTO ShoppingCategories(category_name, category_id) VALUES ('Carter Inc', 7);
INSERT INTO ShoppingCategories(category_name, category_id) VALUES ('Monahan and Sons', 8);
INSERT INTO ShoppingCategories(category_name, category_id) VALUES ('Kub-Gutkowski', 9);
INSERT INTO ShoppingCategories(category_name, category_id) VALUES ('Rolfson-Smith', 10);
INSERT INTO ShoppingCategories(category_name, category_id) VALUES ('Vandervort, Mueller and Bartoletti', 11);
INSERT INTO ShoppingCategories(category_name, category_id) VALUES ('Watsica and Sons', 12);
INSERT INTO ShoppingCategories(category_name, category_id) VALUES ('Rodriguez-Rogahn', 13);
INSERT INTO ShoppingCategories(category_name, category_id) VALUES ('Schmitt, Hickle and Zemlak', 14);
INSERT INTO ShoppingCategories(category_name, category_id) VALUES ('VonRueden, Borer and Stoltenberg', 15);

CREATE TABLE IF NOT EXISTS ShoppingItems(
   item_name   VARCHAR(50) NOT NULL, 
   quantity    INTEGER,
   details     VARCHAR(200), 
   category_id INTEGER, 
   assigned_to INTEGER, 
   item_id     INTEGER AUTO_INCREMENT PRIMARY KEY,

    constraint foreign key (category_id) references ShoppingCategories(category_id)
        on delete set null
        on update cascade,
    constraint foreign key (assigned_to) references Users(user_id)
        on delete set null
        on update cascade
);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Muffin Puck Ww Carrot',1,'Down-sized systemic moderator',1,1,1);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Chicken Giblets',2,'Assimilated responsive neural-net',2,2,2);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Appetizer - Mini Egg Roll, Shrimp',3,'Versatile composite extranet',3,3,3);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Shrimp - 31/40',4,'Devolved grid-enabled orchestration',4,4,4);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Bread - Rolls, Rye',5,'Operative actuating benchmark',5,5,5);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Baking Soda',6,'Decentralized client-driven projection',6,6,6);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Pepper Squash',7,'Future-proofed reciprocal data-warehouse',7,7,7);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Cake - Night And Day Choclate',8,'Mandatory exuding methodology',8,8,8);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Bouillion - Fish',9,'Ergonomic 4th generation projection',9,9,9);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Pike - Frozen Fillet',10,'Optional static utilisation',10,10,10);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Gatorade - Fruit Punch',11,'Decentralized discrete database',11,11,11);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Towel - Roll White',12,'Function-based fresh-thinking methodology',12,12,12);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Longos - Chicken Cordon Bleu',13,'Cross-group impactful artificial intelligence',13,13,13);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Salmon - Atlantic, Fresh, Whole',14,'Self-enabling homogeneous synergy',14,14,14);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Calaloo',15,'Reduced explicit benchmark',15,15,15);

CREATE TABLE IF NOT EXISTS PaymentCategories(
   category_name VARCHAR(50) NOT NULL UNIQUE, 
   category_id   INTEGER  AUTO_INCREMENAT NOT NULL PRIMARY KEY
);
INSERT INTO PaymentCategories(category_name, category_id) VALUES ('Harvest', 1);
INSERT INTO PaymentCategories(category_name, category_id) VALUES ('Letters to Juliet', 2);
INSERT INTO PaymentCategories(category_name, category_id) VALUES ('$9.99', 3);
INSERT INTO PaymentCategories(category_name, category_id) VALUES ('King''s Faith', 4);
INSERT INTO PaymentCategories(category_name, category_id) VALUES ('99 francs', 5);
INSERT INTO PaymentCategories(category_name, category_id) VALUES ('Family Honeymoon', 6);
INSERT INTO PaymentCategories(category_name, category_id) VALUES ('Bratz: The Movie', 7);
INSERT INTO PaymentCategories(category_name, category_id) VALUES ('The Fat Spy', 8);
INSERT INTO PaymentCategories(category_name, category_id) VALUES ('Monkey''s Paw, The', 9);
INSERT INTO PaymentCategories(category_name, category_id) VALUES ('Filming ''Othello''', 10);
INSERT INTO PaymentCategories(category_name, category_id) VALUES ('Myriad of Lights (Lights of Ten Thousand Homes, The) (Wanjia denghuo)', 11);
INSERT INTO PaymentCategories(category_name, category_id) VALUES ('Gitmek: My Marlon and Brando (Gitmek: Benim Marlon ve Brandom)' 12);
INSERT INTO PaymentCategories(category_name, category_id) VALUES ('Rumble in Hong Kong (Nu jing cha) (Heroine, The)', 13);
INSERT INTO PaymentCategories(category_name, category_id) VALUES ('French Fried Vacation 3 (Les bronzés 3: amis pour la vie)', 14);
INSERT INTO PaymentCategories(category_name, category_id) VALUES ('Fled', 15);

CREATE TABLE IF NOT EXISTS Requests(
   requested_by   INTEGER, 
   requested_from INTEGER, 
   amount         DOUBLE  NOT NULL CHECK (AMOUNT > 0), 
   details        VARCHAR(50),
   category_id    INTEGER,
   requested_at   DATETIME DEFAULT CURRENT_TIMESTAMP, 
   request_id     INTEGER  AUTO_INCREMENAT PRIMARY KEY,

    constraint foreign key (requested_by) references Users(user_id)
        on delete cascade
        on update cascade,
    constraint foreign key (requested_from) references Users(user_id)
        on delete cascade
        on update cascade,
    constraint foreign key (category_id) references PaymentCategories(category_id)
        on delete set null
        on update cascade
);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (1,2,1,'Digitized attitude-oriented complexity',1,'2023-07-22 12:08:58',1);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (2,1,0,'Profit-focused transitional leverage',2,'2023-08-08 21:55:44',2);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (3,1,1,'Vision-oriented multi-tasking middleware',3,'2023-05-01 15:20:08',3);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (4,14,1,'Customer-focused actuating neural-net',4,'2023-08-19 04:07:16',4);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (5,6,1,'Multi-channelled stable artificial intelligence',5,'2023-04-04 20:14:01',5);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (6,6,1,'Proactive composite emulation',6,'2023-04-04 01:13:48',6);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (7,11,1,'Optimized optimizing solution',7,'2023-08-18 08:50:17',7);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (8,11,0,'Expanded bifurcated leverage',8,'2023-04-10 05:01:34',8);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (9,2,1,'Digitized background migration',9,'2023-05-31 06:58:53',9);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (10,4,1,'Robust disintermediate contingency',10,'2023-04-01 12:30:47',10);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (11,10,1,'Polarised responsive open system',11,'2023-04-19 13:25:03',11);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (12,9,0,'Secured real-time alliance',12,'2023-07-26 00:37:35',12);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (13,13,0,'Advanced static parallelism',13,'2023-08-15 08:02:25',13);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (14,6,0,'Distributed multimedia emulation',14,'2023-04-02 14:25:17',14);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (15,5,1,'Front-line optimizing knowledge base',15,'2023-08-28 00:23:04',15);

CREATE TABLE IF NOT EXISTS Payments(
   fulfilled_on DATE DEFAULT CURRENT_TIMESTAMP, 
   request_id   INTEGER  NOT NULL, 

    constraint foreign key (request_id) references Requests(request_id)
        on delete cascade
        on update cascade
);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('4/8/2022',1);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('5/13/2023',2);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('6/6/2022',3);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('5/25/2023',4);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('5/2/2022',5);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('5/2/2022',6);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('5/15/2023',7);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('6/22/2022',8);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('7/16/2022',9);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('4/8/2023',10);

CREATE TABLE IF NOT EXISTS Events(
   title      VARCHAR(50) NOT NULL, 
   details    VARCHAR(200), 
   scheduled  DATETIME  NOT NULL, 
   created_by INTEGER  NOT NULL, 
   event_id   INTEGER  AUTO_INCREMENT PRIMARY KEY, 

    constraint foreign key (created_by) references Users(user_id)
        on delete cascade
        on update cascade
);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Photospace','Versatile coherent function','3/4/2023',1,1);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Browseblab','Intuitive dedicated capability','10/13/2023',2,2);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Edgetag','Focused hybrid knowledge base','8/5/2022',3,3);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Quatz','Secured coherent model','7/13/2023',4,4);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Pixonyx','Ameliorated asymmetric collaboration','2/23/2023',5,5);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Tagchat','Exclusive motivating implementation','12/8/2022',6,6);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Photobug','Focused logistical portal','7/27/2023',7,7);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Youspan','Assimilated transitional core','4/28/2022',8,8);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Tagchat','Customer-focused heuristic middleware','3/12/2023',9,9);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Kwinu','Cross-group zero defect data-warehouse','5/4/2022',11,10);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Buzzshare','Ameliorated secondary utilisation','11/5/2023',11,11);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Yambee','Switchable high-level groupware','6/17/2022',12,12);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Tazz','Balanced cohesive encryption','8/27/2023',13,13);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Dabshots','Customizable heuristic system engine','1/3/2023',14,14);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Linkbuzz','De-engineered fault-tolerant system engine','9/22/2023',15,15);

CREATE TABLE IF NOT EXISTS EventAttendees(
   user_id  INTEGER  NOT NULL, 
   event_id INTEGER  NOT NULL
);
INSERT INTO EventAttendees(user_id,event_id) VALUES (1,1);
INSERT INTO EventAttendees(user_id,event_id) VALUES (2,1);
INSERT INTO EventAttendees(user_id,event_id) VALUES (3,2);
INSERT INTO EventAttendees(user_id,event_id) VALUES (4,1);
INSERT INTO EventAttendees(user_id,event_id) VALUES (5,2);
INSERT INTO EventAttendees(user_id,event_id) VALUES (6,3);
INSERT INTO EventAttendees(user_id,event_id) VALUES (7,4);
INSERT INTO EventAttendees(user_id,event_id) VALUES (8,1);
INSERT INTO EventAttendees(user_id,event_id) VALUES (9,6);
INSERT INTO EventAttendees(user_id,event_id) VALUES (10,6);
INSERT INTO EventAttendees(user_id,event_id) VALUES (11,6);
INSERT INTO EventAttendees(user_id,event_id) VALUES (12,1);
INSERT INTO EventAttendees(user_id,event_id) VALUES (13,2);
INSERT INTO EventAttendees(user_id,event_id) VALUES (14,5);
INSERT INTO EventAttendees(user_id,event_id) VALUES (15,5);


