CREATE TABLE EventAttendees(
   user_id  INTEGER  NOT NULL PRIMARY KEY 
  ,event_id INTEGER  NOT NULL
);
INSERT INTO EventAttendees(user_id,event_id) VALUES (1,1);
INSERT INTO EventAttendees(user_id,event_id) VALUES (2,2);
INSERT INTO EventAttendees(user_id,event_id) VALUES (3,3);
INSERT INTO EventAttendees(user_id,event_id) VALUES (4,4);
INSERT INTO EventAttendees(user_id,event_id) VALUES (5,5);
INSERT INTO EventAttendees(user_id,event_id) VALUES (6,6);
INSERT INTO EventAttendees(user_id,event_id) VALUES (7,7);
INSERT INTO EventAttendees(user_id,event_id) VALUES (8,8);
INSERT INTO EventAttendees(user_id,event_id) VALUES (9,9);
INSERT INTO EventAttendees(user_id,event_id) VALUES (10,10);
INSERT INTO EventAttendees(user_id,event_id) VALUES (11,11);
INSERT INTO EventAttendees(user_id,event_id) VALUES (12,12);
INSERT INTO EventAttendees(user_id,event_id) VALUES (13,13);
INSERT INTO EventAttendees(user_id,event_id) VALUES (14,14);
INSERT INTO EventAttendees(user_id,event_id) VALUES (15,15);
INSERT INTO EventAttendees(user_id,event_id) VALUES (16,16);
INSERT INTO EventAttendees(user_id,event_id) VALUES (17,17);
INSERT INTO EventAttendees(user_id,event_id) VALUES (18,18);
INSERT INTO EventAttendees(user_id,event_id) VALUES (19,19);
INSERT INTO EventAttendees(user_id,event_id) VALUES (20,20);

CREATE TABLE Events(
   title      VARCHAR(13) NOT NULL PRIMARY KEY
  ,details    VARCHAR(56) NOT NULL
  ,scheduled  DATE  NOT NULL
  ,created_by INTEGER  NOT NULL
  ,event_id   INTEGER  NOT NULL
);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Photospace','Versatile coherent function','3/4/2023',1,1);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Browseblab','Intuitive dedicated capability','10/13/2022',2,2);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Edgetag','Focused hybrid knowledge base','8/5/2022',3,3);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Quatz','Secured coherent model','7/13/2022',4,4);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Pixonyx','Ameliorated asymmetric collaboration','2/23/2023',5,5);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Tagchat','Exclusive motivating implementation','12/8/2022',6,6);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Photobug','Focused logistical portal','7/27/2022',7,7);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Youspan','Assimilated transitional core','4/28/2022',8,8);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Tagchat','Customer-focused heuristic middleware','3/12/2023',9,9);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Kwinu','Cross-group zero defect data-warehouse','5/4/2022',10,10);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Buzzshare','Ameliorated secondary utilisation','11/5/2022',11,11);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Yambee','Switchable high-level groupware','6/17/2022',12,12);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Tazz','Balanced cohesive encryption','8/27/2022',13,13);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Dabshots','Customizable heuristic system engine','1/3/2023',14,14);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Linkbuzz','De-engineered fault-tolerant system engine','9/22/2022',15,15);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Zoonoodle','Digitized didactic task-force','12/4/2022',16,16);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Buzzshare','Horizontal zero tolerance secured line','2/22/2023',17,17);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Wikizz','Cloned optimal local area network','5/2/2022',18,18);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Jabbersphere','Expanded secondary productivity','2/15/2023',19,19);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Tavu','Enhanced actuating process improvement','8/22/2022',20,20);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Skidoo','Persistent tangible implementation','11/24/2022',21,21);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Shufflester','Virtual secondary utilisation','2/23/2023',22,22);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Latz','Synergized bi-directional pricing structure','12/8/2022',23,23);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Quinu','Grass-roots 5th generation project','9/25/2022',24,24);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Wikido','Innovative solution-oriented paradigm','3/15/2023',25,25);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Jamia','Switchable fresh-thinking benchmark','7/11/2022',26,26);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Oyondu','Cloned local capability','11/20/2022',27,27);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Blogtag','Multi-layered upward-trending throughput','6/19/2022',28,28);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Livepath','User-friendly 24 hour workforce','3/27/2023',29,29);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Latz','Networked encompassing encoding','1/27/2023',30,30);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Youtags','User-centric bottom-line extranet','4/11/2023',31,31);
INSERT INTO Events(title,details,scheduled,created_by,event_id) VALUES ('Devbug','Total radical focus group','2/24/2023',32,32);

CREATE TABLE Messages(
   sender_id    INTEGER  NOT NULL PRIMARY KEY 
  ,recipient_id INTEGER  NOT NULL
  ,content      VARCHAR(55) NOT NULL
  ,sent_at      VARCHAR(5) NOT NULL
  ,message_id   INTEGER  NOT NULL
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
INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (16,16,'Optimized tertiary moderator','16:58',16);
INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (17,17,'Seamless global forecast','12:12',17);
INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (18,18,'Centralized interactive hardware','2:09',18);
INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (19,19,'Proactive transitional hierarchy','8:26',19);
INSERT INTO Messages(sender_id,recipient_id,content,sent_at,message_id) VALUES (20,20,'Object-based maximized system engine','0:57',20);

CREATE TABLE PaymentCategories(
   category_id   INTEGER  NOT NULL PRIMARY KEY 
  ,category_name VARCHAR(141) NOT NULL
);
INSERT INTO PaymentCategories(category_id,category_name) VALUES (1,'Harvest');
INSERT INTO PaymentCategories(category_id,category_name) VALUES (2,'Letters to Juliet');
INSERT INTO PaymentCategories(category_id,category_name) VALUES (3,'$9.99');
INSERT INTO PaymentCategories(category_id,category_name) VALUES (4,'King''s Faith');
INSERT INTO PaymentCategories(category_id,category_name) VALUES (5,'99 francs');
INSERT INTO PaymentCategories(category_id,category_name) VALUES (6,'Family Honeymoon');
INSERT INTO PaymentCategories(category_id,category_name) VALUES (7,'Bratz: The Movie');
INSERT INTO PaymentCategories(category_id,category_name) VALUES (8,'The Fat Spy');
INSERT INTO PaymentCategories(category_id,category_name) VALUES (9,'Monkey''s Paw, The');
INSERT INTO PaymentCategories(category_id,category_name) VALUES (10,'Filming ''Othello''');
INSERT INTO PaymentCategories(category_id,category_name) VALUES (11,'Myriad of Lights (Lights of Ten Thousand Homes, The) (Wanjia denghuo)');
INSERT INTO PaymentCategories(category_id,category_name) VALUES (12,'Gitmek: My Marlon and Brando (Gitmek: Benim Marlon ve Brandom)');
INSERT INTO PaymentCategories(category_id,category_name) VALUES (13,'Rumble in Hong Kong (Nu jing cha) (Heroine, The)');
INSERT INTO PaymentCategories(category_id,category_name) VALUES (14,'French Fried Vacation 3 (Les bronzés 3: amis pour la vie)');
INSERT INTO PaymentCategories(category_id,category_name) VALUES (15,'Fled');
INSERT INTO PaymentCategories(category_id,category_name) VALUES (16,'Kidnapped For Christ');
INSERT INTO PaymentCategories(category_id,category_name) VALUES (17,'Barefoot Executive, The');
INSERT INTO PaymentCategories(category_id,category_name) VALUES (18,'Viva Max!');
INSERT INTO PaymentCategories(category_id,category_name) VALUES (19,'The Nutcracker in 3D');
INSERT INTO PaymentCategories(category_id,category_name) VALUES (20,'The Army');

CREATE TABLE Payments(
   fulfilled_on DATE  NOT NULL PRIMARY KEY
  ,request_id   INTEGER  NOT NULL
);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('4/8/2023',1);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('5/13/2023',2);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('6/6/2023',3);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('5/25/2023',4);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('5/2/2023',5);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('5/2/2023',6);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('5/15/2023',7);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('6/22/2023',8);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('7/16/2023',9);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('4/8/2023',10);

CREATE TABLE Requests(
   requested_by   INTEGER  NOT NULL PRIMARY KEY 
  ,requested_from INTEGER  NOT NULL
  ,amount         BIT  NOT NULL
  ,details        VARCHAR(47) NOT NULL
  ,category_id    INTEGER  NOT NULL
  ,requested_at   VARCHAR(19) NOT NULL
  ,request_id     INTEGER  NOT NULL
);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (1,1,1,'Digitized attitude-oriented complexity',1,'2023-07-22 12:08:58',1);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (2,2,0,'Profit-focused transitional leverage',2,'2023-08-08 21:55:44',2);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (3,3,1,'Vision-oriented multi-tasking middleware',3,'2023-05-01 15:20:08',3);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (4,4,1,'Customer-focused actuating neural-net',4,'2023-08-19 04:07:16',4);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (5,5,1,'Multi-channelled stable artificial intelligence',5,'2023-04-04 20:14:01',5);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (6,6,1,'Proactive composite emulation',6,'2023-04-04 01:13:48',6);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (7,7,1,'Optimized optimizing solution',7,'2023-08-18 08:50:17',7);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (8,8,0,'Expanded bifurcated leverage',8,'2023-04-10 05:01:34',8);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (9,9,1,'Digitized background migration',9,'2023-05-31 06:58:53',9);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (10,10,1,'Robust disintermediate contingency',10,'2023-04-01 12:30:47',10);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (11,11,1,'Polarised responsive open system',11,'2023-04-19 13:25:03',11);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (12,12,0,'Secured real-time alliance',12,'2023-07-26 00:37:35',12);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (13,13,0,'Advanced static parallelism',13,'2023-08-15 08:02:25',13);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (14,14,0,'Distributed multimedia emulation',14,'2023-04-02 14:25:17',14);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (15,15,1,'Front-line optimizing knowledge base',15,'2023-08-28 00:23:04',15);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (16,16,0,'Innovative demand-driven info-mediaries',16,'2023-09-21 04:11:00',16);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (17,17,0,'Business-focused secondary encoding',17,'2023-07-04 15:13:37',17);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (18,18,1,'Implemented holistic matrices',18,'2023-06-28 05:34:22',18);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (19,19,0,'Profit-focused contextually-based forecast',19,'2023-08-21 05:34:35',19);
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at,request_id) VALUES (20,20,0,'Ameliorated logistical moderator',20,'2023-06-14 19:48:27',20);

CREATE TABLE ShoppingCategory(
   category_id   INTEGER  NOT NULL PRIMARY KEY 
  ,category_name VARCHAR(34) NOT NULL
);
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (1,'Ziemann Group');
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (2,'Stokes, Sawayn and Gorczany');
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (3,'Schmitt LLC');
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (4,'Cole, Schumm and Pacocha');
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (5,'Gerhold, Torp and Howell');
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (6,'Simonis and Sons');
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (7,'Carter Inc');
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (8,'Monahan and Sons');
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (9,'Kub-Gutkowski');
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (10,'Rolfson-Smith');
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (11,'Vandervort, Mueller and Bartoletti');
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (12,'Watsica and Sons');
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (13,'Rodriguez-Rogahn');
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (14,'Schmitt, Hickle and Zemlak');
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (15,'VonRueden, Borer and Stoltenberg');
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (16,'Mayert, Purdy and Schultz');
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (17,'Hoeger-Sawayn');
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (18,'Weimann-Hermiston');
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (19,'Macejkovic-Hirthe');
INSERT INTO ShoppingCategory(category_id,category_name) VALUES (20,'Osinski and Sons');

CREATE TABLE Users(
   user_id    INTEGER  NOT NULL PRIMARY KEY 
  ,first_name VARCHAR(9) NOT NULL
  ,last_name  VARCHAR(10) NOT NULL
);
INSERT INTO Users(user_id,first_name,last_name) VALUES (1,'Katey','Menendes');
INSERT INTO Users(user_id,first_name,last_name) VALUES (2,'Bruis','Feehan');
INSERT INTO Users(user_id,first_name,last_name) VALUES (3,'Alvis','Terne');
INSERT INTO Users(user_id,first_name,last_name) VALUES (4,'Desiree','Barke');
INSERT INTO Users(user_id,first_name,last_name) VALUES (5,'Holmes','Piscopello');
INSERT INTO Users(user_id,first_name,last_name) VALUES (6,'Shea','Lawlan');
INSERT INTO Users(user_id,first_name,last_name) VALUES (7,'Pearle','Macvain');
INSERT INTO Users(user_id,first_name,last_name) VALUES (8,'Stephanus','Kellaway');
INSERT INTO Users(user_id,first_name,last_name) VALUES (9,'Keven','Brickner');
INSERT INTO Users(user_id,first_name,last_name) VALUES (10,'Zach','Turmall');
INSERT INTO Users(user_id,first_name,last_name) VALUES (11,'Quentin','Mack');
INSERT INTO Users(user_id,first_name,last_name) VALUES (12,'Tobin','Beadles');
INSERT INTO Users(user_id,first_name,last_name) VALUES (13,'Florina','MacCrackan');
INSERT INTO Users(user_id,first_name,last_name) VALUES (14,'Tomlin','Hendricks');
INSERT INTO Users(user_id,first_name,last_name) VALUES (15,'Ninetta','Fuentes');

CREATE TABLE TaskCategories(
   category_id   INTEGER  NOT NULL PRIMARY KEY 
  ,category_name VARCHAR(58) NOT NULL
);
INSERT INTO TaskCategories(category_id,category_name) VALUES (1,'Proactive 5th generation installation');
INSERT INTO TaskCategories(category_id,category_name) VALUES (2,'Integrated dedicated framework');
INSERT INTO TaskCategories(category_id,category_name) VALUES (3,'Diverse system-worthy array');
INSERT INTO TaskCategories(category_id,category_name) VALUES (4,'Team-oriented needs-based hub');
INSERT INTO TaskCategories(category_id,category_name) VALUES (5,'Focused dedicated artificial intelligence');
INSERT INTO TaskCategories(category_id,category_name) VALUES (6,'Intuitive mobile collaboration');
INSERT INTO TaskCategories(category_id,category_name) VALUES (7,'Multi-tiered multi-state neural-net');
INSERT INTO TaskCategories(category_id,category_name) VALUES (8,'Advanced static frame');
INSERT INTO TaskCategories(category_id,category_name) VALUES (9,'Function-based client-driven customer loyalty');
INSERT INTO TaskCategories(category_id,category_name) VALUES (10,'Face to face attitude-oriented conglomeration');
INSERT INTO TaskCategories(category_id,category_name) VALUES (11,'Multi-channelled incremental solution');
INSERT INTO TaskCategories(category_id,category_name) VALUES (12,'Open-architected analyzing info-mediaries');
INSERT INTO TaskCategories(category_id,category_name) VALUES (13,'Switchable upward-trending database');
INSERT INTO TaskCategories(category_id,category_name) VALUES (14,'Team-oriented high-level hierarchy');
INSERT INTO TaskCategories(category_id,category_name) VALUES (15,'Progressive 24 hour challenge');
INSERT INTO TaskCategories(category_id,category_name) VALUES (16,'Multi-lateral empowering installation');
INSERT INTO TaskCategories(category_id,category_name) VALUES (17,'Optional non-volatile flexibility');
INSERT INTO TaskCategories(category_id,category_name) VALUES (18,'Cross-group systemic synergy');
INSERT INTO TaskCategories(category_id,category_name) VALUES (19,'Total needs-based benchmark');
INSERT INTO TaskCategories(category_id,category_name) VALUES (20,'Focused 24/7 structure');

CREATE TABLE ShoppingItems(
   item_name   VARCHAR(33) NOT NULL PRIMARY KEY
  ,quantity    INTEGER  NOT NULL
  ,details     VARCHAR(45) NOT NULL
  ,category_id INTEGER  NOT NULL
  ,assigned_to INTEGER  NOT NULL
  ,item_id     INTEGER  NOT NULL
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
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Black Currants',16,'Multi-lateral demand-driven access',16,16,16);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Steampan - Half Size Shallow',17,'Managed disintermediate instruction set',17,17,17);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Muffin Mix - Corn Harvest',18,'Face to face explicit secured line',18,18,18);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Whmis - Spray Bottle Trigger',19,'Diverse logistical strategy',19,19,19);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to,item_id) VALUES ('Bay Leaf Ground',20,'Cross-platform client-server utilisation',20,20,20);


CREATE TABLE Tasks(
   title       VARCHAR(33) NOT NULL PRIMARY KEY
  ,details     VARCHAR(45) NOT NULL
  ,category_id INTEGER  NOT NULL
  ,task_status VARCHAR(5) NOT NULL
  ,complete_by DATE  NOT NULL
  ,created_by  INTEGER  NOT NULL
  ,assigned_to INTEGER  NOT NULL
  ,task_id     INTEGER  NOT NULL
);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Runolfsdottir-Hettinger','Adaptive value-added moderator',1,'true','6/17/2023',1,1,1);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Metz, Hyatt and Beatty','Compatible needs-based access',2,'false','6/2/2023',2,2,2);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Zieme-Corkery','Cross-group leading edge conglomeration',3,'false','5/16/2023',3,3,3);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Farrell, Williamson and O''Connell','Enterprise-wide heuristic migration',4,'false','6/18/2023',4,4,4);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Macejkovic-Rippin','Sharable well-modulated flexibility',5,'true','4/24/2023',5,5,5);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Turcotte-Sawayn','Function-based modular capability',6,'true','4/28/2023',6,6,6);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Brakus, Graham and West','Decentralized scalable toolset',7,'true','6/6/2023',7,7,7);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Zboncak-Durgan','Optimized leading edge model',8,'true','4/21/2023',8,8,8);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Hyatt Inc','Up-sized zero defect matrices',9,'true','7/10/2023',9,9,9);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('McLaughlin-Johnson','Inverse coherent product',10,'false','5/29/2023',10,10,10);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Smitham-Connelly','Future-proofed clear-thinking concept',11,'false','6/25/2023',11,11,11);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Trantow-Becker','Synchronised clear-thinking moratorium',12,'true','7/9/2023',12,12,12);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('MacGyver, Grady and Legros','Implemented tertiary alliance',13,'false','6/2/2023',13,13,13);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Prosacco-Wunsch','Ergonomic intangible Graphical User Interface',14,'false','4/23/2023',14,14,14);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Goyette, Hansen and Predovic','Polarised human-resource firmware',15,'true','7/10/2023',15,15,15);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Schulist-Cummings','Progressive solution-oriented collaboration',16,'true','6/20/2023',16,16,16);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Kutch-Simonis','Extended cohesive hub',17,'false','6/7/2023',17,17,17);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Lemke and Sons','Expanded modular extranet',18,'true','6/19/2023',18,18,18);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Sauer, Senger and Haag','Enterprise-wide bi-directional synergy',19,'true','6/28/2023',19,19,19);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to,task_id) VALUES ('Gibson-Gutmann','Decentralized non-volatile forecast',20,'true','6/18/2023',20,20,20);
