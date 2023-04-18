
create database if not exists homey;

use homey;

drop table if exists EventAttendees;
drop table if exists Events;
drop table if exists Payments;
drop table if exists Requests;
drop table if exists PaymentCategories;
drop table if exists ShoppingItems;
drop table if exists ShoppingCategories;
drop table if exists Tasks;
drop table if exists TaskCategories;
drop table if exists Messages;
drop table if exists Users;


create table if not exists Users (
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    user_id int auto_increment primary key
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

create table if not exists Messages (
    sender_id int not null,
    recipient_id int not null,
    content text,
    sent_at datetime default current_timestamp,
    message_id int auto_increment primary key,

    constraint foreign key (sender_id) references Users(user_id)
        on delete cascade
        on update cascade,
    constraint foreign key (recipient_id) references Users(user_id)
        on delete cascade
        on update cascade
);

INSERT INTO Messages(sender_id,recipient_id,content) VALUES (2,1,'Fundamental human-resource structure');
INSERT INTO Messages(sender_id,recipient_id,content,sent_at) VALUES (1,2,'Monitored needs-based approach','2022-07-01 07:34:00');
INSERT INTO Messages(sender_id,recipient_id,content,sent_at) VALUES (3,5,'Down-sized disintermediate Graphic Interface','2019-11-11 21:05:00');
INSERT INTO Messages(sender_id,recipient_id,content,sent_at) VALUES (5,4,'Monitored attitude-oriented firmware','2023-01-01 01:30:00');
INSERT INTO Messages(sender_id,recipient_id,content,sent_at) VALUES (5,9,'Networked fresh-thinking migration','2023-03-02 18:54:00');
INSERT INTO Messages(sender_id,recipient_id,content,sent_at) VALUES (9,5,'Synergized transitional ability','2023-04-08 00:42:00');
INSERT INTO Messages(sender_id,recipient_id,content,sent_at) VALUES (7,7,'Robust discrete frame','2022-06-01 11:25:00');
INSERT INTO Messages(sender_id,recipient_id,content,sent_at) VALUES (8,8,'Cross-group multi-tasking open system','2022-08-31 16:18:00');
INSERT INTO Messages(sender_id,recipient_id,content,sent_at) VALUES (9,9,'Reduced discrete matrices','2019-12-25 02:46:00');
INSERT INTO Messages(sender_id,recipient_id,content,sent_at) VALUES (10,10,'Versatile foreground standardization','2023-01-01 20:03:00');
INSERT INTO Messages(sender_id,recipient_id,content,sent_at) VALUES (11,11,'Focused foreground budgetary management','2023-01-03 17:00:00');
INSERT INTO Messages(sender_id,recipient_id,content,sent_at) VALUES (12,12,'Object-based responsive array','2023-2-18 07:03:00');
INSERT INTO Messages(sender_id,recipient_id,content,sent_at) VALUES (13,13,'Seamless interactive infrastructure','2023-3-01 19:17:00');
INSERT INTO Messages(sender_id,recipient_id,content,sent_at) VALUES (14,14,'Realigned homogeneous Graphic Interface','2023-03-15 22:43:00');
INSERT INTO Messages(sender_id,recipient_id,content,sent_at) VALUES (15,15,'Enterprise-wide zero defect forecast','2023-04-01 22:15:00');

create table if not exists TaskCategories (
    category_name varchar(50) not null unique,
    category_id int auto_increment primary key
);

INSERT INTO TaskCategories(category_name) VALUES ('Proactive 5th generation installation');
INSERT INTO TaskCategories(category_name) VALUES ('Integrated dedicated framework');
INSERT INTO TaskCategories(category_name) VALUES ('Diverse system-worthy array');
INSERT INTO TaskCategories(category_name) VALUES ('Team-oriented needs-based hub');
INSERT INTO TaskCategories(category_name) VALUES ('Focused dedicated artificial intelligence');
INSERT INTO TaskCategories(category_name) VALUES ('Intuitive mobile collaboration');
INSERT INTO TaskCategories(category_name) VALUES ('Multi-tiered multi-state neural-net');
INSERT INTO TaskCategories(category_name) VALUES ('Advanced static frame');
INSERT INTO TaskCategories(category_name) VALUES ('Function-based client-driven customer loyalty');
INSERT INTO TaskCategories(category_name) VALUES ('Face to face attitude-oriented conglomeration');
INSERT INTO TaskCategories(category_name) VALUES ('Multi-channelled incremental solution');
INSERT INTO TaskCategories(category_name) VALUES ('Open-architected analyzing info-mediaries');
INSERT INTO TaskCategories(category_name) VALUES ('Switchable upward-trending database');
INSERT INTO TaskCategories(category_name) VALUES ('Team-oriented high-level hierarchy');
INSERT INTO TaskCategories(category_name) VALUES ('Progressive 24 hour challenge');

create table if not exists Tasks (
    title varchar(50) not null,
    details varchar(200),
    category_id int,
    task_status bool not null,
    complete_by datetime,
    created_by int not null,
    assigned_to int,
    task_id int auto_increment primary key,

    constraint foreign key (created_by) references Users(user_id)
        on delete cascade
        on update cascade,
    constraint foreign key (category_id) references TaskCategories(category_id)
        on delete set null
        on update cascade,
    constraint foreign key (assigned_to) references Users(user_id)
        on delete set null
        on update cascade
);

INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to) VALUES ('Runolfsdottir-Hettinger','Adaptive value-added moderator',1,1,'2023-05-22 00:00:00',1,2);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to) VALUES ('Metz, Hyatt and Beatty','Compatible needs-based access',2,0,'2023-05-23 00:00:00',2,1);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to) VALUES ('Zieme-Corkery','Cross-group leading edge conglomeration',2,0,'2023-05-24 00:00:00',3,1);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to) VALUES ('Farrell, Williamson and O''Connell','Enterprise-wide heuristic migration',4,0,null,4,1);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to) VALUES ('Macejkovic-Rippin','Sharable well-modulated flexibility',5,1,'2023-05-12 00:00:00',5,4);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to) VALUES ('Turcotte-Sawayn','Function-based modular capability',6,1,null,6,3);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to) VALUES ('Brakus, Graham and West','Decentralized scalable toolset',10,1,'2023-05-02 00:00:00',7,5);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to) VALUES ('Zboncak-Durgan','Optimized leading edge model',10,1,'2023-05-20 00:00:00',8,11);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to) VALUES ('Hyatt Inc','Up-sized zero defect matrices',9,1,'2023-05-22 00:00:00',9,4);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to) VALUES ('McLaughlin-Johnson','Inverse coherent product',10,0,'2023-05-28 00:00:00',10,15);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to) VALUES ('Smitham-Connelly','Future-proofed clear-thinking concept',11,0,'2023-04-22 00:00:00',11,13);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to) VALUES ('Trantow-Becker','Synchronised clear-thinking moratorium',12,1,'2023-04-02 00:00:00',12,1);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to) VALUES ('MacGyver, Grady and Legros','Implemented tertiary alliance',11,0,'2023-04-12 00:00:00',13,13);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to) VALUES ('Prosacco-Wunsch','Ergonomic intangible Graphical User Interface',14,0,'2023-04-13 00:00:00',14,4);
INSERT INTO Tasks(title,details,category_id,task_status,complete_by,created_by,assigned_to) VALUES ('Goyette, Hansen and Predovic','Polarised human-resource firmware',15,1,'2023-05-22 00:00:00',15,6);


create table if not exists ShoppingCategories (
    category_name varchar(50) not null unique,
    category_id int auto_increment primary key
);

INSERT INTO ShoppingCategories(category_name) VALUES ('Ziemann Group');
INSERT INTO ShoppingCategories(category_name) VALUES ('Stokes, Sawayn and Gorczany');
INSERT INTO ShoppingCategories(category_name) VALUES ('Schmitt LLC');
INSERT INTO ShoppingCategories(category_name) VALUES ('Cole, Schumm and Pacocha');
INSERT INTO ShoppingCategories(category_name) VALUES ('Gerhold, Torp and Howell');
INSERT INTO ShoppingCategories(category_name) VALUES ('Simonis and Sons');
INSERT INTO ShoppingCategories(category_name) VALUES ('Carter Inc');
INSERT INTO ShoppingCategories(category_name) VALUES ('Monahan and Sons');
INSERT INTO ShoppingCategories(category_name) VALUES ('Kub-Gutkowski');
INSERT INTO ShoppingCategories(category_name) VALUES ('Rolfson-Smith');
INSERT INTO ShoppingCategories(category_name) VALUES ('Vandervort, Mueller and Bartoletti');
INSERT INTO ShoppingCategories(category_name) VALUES ('Watsica and Sons');
INSERT INTO ShoppingCategories(category_name) VALUES ('Rodriguez-Rogahn');
INSERT INTO ShoppingCategories(category_name) VALUES ('Schmitt, Hickle and Zemlak');
INSERT INTO ShoppingCategories(category_name) VALUES ('VonRueden, Borer and Stoltenberg');

create table if not exists ShoppingItems (
    item_name varchar(50) not null,
    quantity int,
    details varchar(200),
    category_id int,
    assigned_to int,
    item_id int auto_increment primary key,

    constraint foreign key (category_id) references ShoppingCategories(category_id)
        on delete set null
        on update cascade,
    constraint foreign key (assigned_to) references Users(user_id)
        on delete set null
        on update cascade
);

INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to) VALUES ('Muffin Puck Ww Carrot',3,null,2,1);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to) VALUES ('Chicken Giblets',20,'Assimilated responsive neural-net',2,1);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to) VALUES ('Appetizer - Mini Egg Roll, Shrimp',3,'Versatile composite extranet',2,1);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to) VALUES ('Shrimp - 31/40',1,'Devolved grid-enabled orchestration',4,1);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to) VALUES ('Bread - Rolls, Rye',2,null,1,5);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to) VALUES ('Baking Soda',1,'Decentralized client-driven projection',4,6);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to) VALUES ('Pepper Squash',3,'Future-proofed reciprocal data-warehouse',11,6);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to) VALUES ('Cake - Night And Day Choclate',1,'Mandatory exuding methodology',8,null);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to) VALUES ('Bouillion - Fish',null,'Ergonomic 4th generation projection',9,null);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to) VALUES ('Pike - Frozen Fillet',2,'Optional static utilisation',12,null);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to) VALUES ('Gatorade - Fruit Punch',2,'Decentralized discrete database',11,null);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to) VALUES ('Towel - Roll White',6,null,12,null);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to) VALUES ('Longos - Chicken Cordon Bleu',1,'Cross-group impactful artificial intelligence',13,13);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to) VALUES ('Salmon - Atlantic, Fresh, Whole',3,'Self-enabling homogeneous synergy',14,14);
INSERT INTO ShoppingItems(item_name,quantity,details,category_id,assigned_to) VALUES ('Calaloo',null,'Reduced explicit benchmark',15,15);

create table if not exists PaymentCategories (
    category_name varchar(50) not null unique,
    category_id int auto_increment primary key
);

INSERT INTO PaymentCategories(category_name) VALUES ('Harvest');
INSERT INTO PaymentCategories(category_name) VALUES ('Letters to Juliet');
INSERT INTO PaymentCategories(category_name) VALUES ('$9.99');
INSERT INTO PaymentCategories(category_name) VALUES ('Kings Faith');
INSERT INTO PaymentCategories(category_name) VALUES ('99 francs');
INSERT INTO PaymentCategories(category_name) VALUES ('Family Honeymoon');
INSERT INTO PaymentCategories(category_name) VALUES ('Bratz: The Movie');
INSERT INTO PaymentCategories(category_name) VALUES ('The Fat Spy');
INSERT INTO PaymentCategories(category_name) VALUES ('Monkeys Paw, The');
INSERT INTO PaymentCategories(category_name) VALUES ('Filming');
INSERT INTO PaymentCategories(category_name) VALUES ('Myriad of Lights');
INSERT INTO PaymentCategories(category_name) VALUES ('Gitmek: My Marlon and Brando');
INSERT INTO PaymentCategories(category_name) VALUES ('Rumble in Hong Kong');
INSERT INTO PaymentCategories(category_name) VALUES ('French Fried Vacation 3');
INSERT INTO PaymentCategories(category_name) VALUES ('Fled');

create table if not exists Requests (
    requested_by int,
    requested_from int,
    amount double not null check (amount > 0),
    details varchar(50),
    category_id int,
    requested_at datetime default current_timestamp,
    request_id int auto_increment primary key,

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

INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at) VALUES (1,2,10.44,'Digitized attitude-oriented complexity',1,'2023-03-22 12:08:58');
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at) VALUES (2,1,4.33,'Profit-focused transitional leverage',3,'2023-03-08 21:55:44');
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at) VALUES (3,1,7.55,'Vision-oriented multi-tasking middleware',3,'2023-01-01 15:20:08');
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at) VALUES (4,14,10.4,'Customer-focused actuating neural-net',4,'2023-03-19 04:07:16');
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at) VALUES (5,6,30.44,'Multi-channelled stable artificial intelligence',5,'2023-03-04 20:14:01');
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at) VALUES (6,9,10.00,'Proactive composite emulation',6,'2023-03-04 01:13:48');
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at) VALUES (7,11,19.00,'Optimized optimizing solution',7,'2023-02-18 08:50:17');
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at) VALUES (8,11,0.50,'Expanded bifurcated leverage',1,'2023-01-10 05:01:34');
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at) VALUES (9,2,1.90,'Digitized background migration',1,'2023-03-31 06:58:53');
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at) VALUES (10,4,119.20,'Robust disintermediate contingency',9,'2023-01-01 12:30:47');
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at) VALUES (11,10,20.00,'Polarised responsive open system',11,'2023-03-19 13:25:03');
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at) VALUES (12,9,12.00,'Secured real-time alliance',1,'2023-01-26 00:37:35');
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at) VALUES (13,10,0.85,'Advanced static parallelism',2,'2023-01-15 08:02:25');
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at) VALUES (14,6,40.50,'Distributed multimedia emulation',15,'2023-03-02 14:25:17');
INSERT INTO Requests(requested_by,requested_from,amount,details,category_id,requested_at) VALUES (15,5,111.33,'Front-line optimizing knowledge base',15,'2023-02-28 00:23:04');

create table if not exists Payments (
    fulfilled_on datetime default current_timestamp,
    request_id int not null,

    constraint foreign key (request_id) references Requests(request_id)
        on delete cascade
        on update cascade
);

INSERT INTO Payments(fulfilled_on,request_id) VALUES ('2023-04-01 12:08:58',1);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('2023-04-02 12:08:58',2);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('2023-04-03 12:08:58',3);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('2023-04-04 12:08:58',4);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('2023-04-05 12:08:58',5);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('2023-04-06 12:08:58',6);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('2023-04-07 12:08:58',7);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('2023-04-08 12:08:58',8);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('2023-04-09 12:08:58',9);
INSERT INTO Payments(fulfilled_on,request_id) VALUES ('2023-04-13 12:08:58',10);

create table if not exists Events (
    title varchar(50) not null,
    details varchar(200),
    scheduled datetime not null,
    created_by int not null,
    event_id int auto_increment primary key,

    constraint foreign key (created_by) references Users(user_id)
        on delete cascade
        on update cascade
);

INSERT INTO Events(title,details,scheduled,created_by) VALUES ('Photospace','Versatile coherent function','2023-04-01 12:08:58',1);
INSERT INTO Events(title,details,scheduled,created_by) VALUES ('Browseblab','Intuitive dedicated capability','2023-04-04 12:08:58',2);
INSERT INTO Events(title,details,scheduled,created_by) VALUES ('Edgetag','Focused hybrid knowledge base','2023-04-06 12:08:58',2);
INSERT INTO Events(title,details,scheduled,created_by) VALUES ('Quatz','Secured coherent model','2023-05-01 12:08:58',2);
INSERT INTO Events(title,details,scheduled,created_by) VALUES ('Pixonyx','Ameliorated asymmetric collaboration','2023-04-21 12:08:58',6);
INSERT INTO Events(title,details,scheduled,created_by) VALUES ('Tagchat','Exclusive motivating implementation','2023-04-25 12:08:58',6);
INSERT INTO Events(title,details,scheduled,created_by) VALUES ('Photobug','Focused logistical portal','2023-07-01 12:08:58',1);
INSERT INTO Events(title,details,scheduled,created_by) VALUES ('Youspan','Assimilated transitional core','2023-06-01 12:08:58',2);
INSERT INTO Events(title,details,scheduled,created_by) VALUES ('Tagchat','Customer-focused heuristic middleware','2023-12-01 12:08:58',3);
INSERT INTO Events(title,details,scheduled,created_by) VALUES ('Kwinu','Cross-group zero defect data-warehouse','2023-06-01 12:08:58',11);
INSERT INTO Events(title,details,scheduled,created_by) VALUES ('Buzzshare','Ameliorated secondary utilisation','2023-05-11 12:08:58',11);
INSERT INTO Events(title,details,scheduled,created_by) VALUES ('Yambee','Switchable high-level groupware','2023-07-17 12:08:58',11);
INSERT INTO Events(title,details,scheduled,created_by) VALUES ('Tazz','Balanced cohesive encryption','2023-05-01 12:08:58',13);
INSERT INTO Events(title,details,scheduled,created_by) VALUES ('Dabshots','Customizable heuristic system engine','2023-03-01 12:08:58',14);
INSERT INTO Events(title,details,scheduled,created_by) VALUES ('Linkbuzz','De-engineered fault-tolerant system engine','2023-04-01 12:08:58',15);

create table if not exists EventAttendees (
    user_id int not null,
    event_id int not null,

    constraint foreign key (user_id) references Users(user_id)
        on delete cascade
        on update cascade,
    constraint foreign key (event_id) references Events(event_id)
        on delete cascade
        on update cascade
);

INSERT INTO EventAttendees(user_id,event_id) VALUES (1,1);
INSERT INTO EventAttendees(user_id,event_id) VALUES (3,1);
INSERT INTO EventAttendees(user_id,event_id) VALUES (11,1);
INSERT INTO EventAttendees(user_id,event_id) VALUES (8,1);

INSERT INTO EventAttendees(user_id,event_id) VALUES (2,2);
INSERT INTO EventAttendees(user_id,event_id) VALUES (3,2);
INSERT INTO EventAttendees(user_id,event_id) VALUES (4,2);
INSERT INTO EventAttendees(user_id,event_id) VALUES (5,2);
INSERT INTO EventAttendees(user_id,event_id) VALUES (6,2);

INSERT INTO EventAttendees(user_id,event_id) VALUES (2,3);
INSERT INTO EventAttendees(user_id,event_id) VALUES (4,3);
INSERT INTO EventAttendees(user_id,event_id) VALUES (5,3);
INSERT INTO EventAttendees(user_id,event_id) VALUES (6,3);
INSERT INTO EventAttendees(user_id,event_id) VALUES (12,3);
INSERT INTO EventAttendees(user_id,event_id) VALUES (15,3);

INSERT INTO EventAttendees(user_id,event_id) VALUES (2,4);
INSERT INTO EventAttendees(user_id,event_id) VALUES (6,5);
INSERT INTO EventAttendees(user_id,event_id) VALUES (6,6);
INSERT INTO EventAttendees(user_id,event_id) VALUES (1,7);
INSERT INTO EventAttendees(user_id,event_id) VALUES (2,8);
INSERT INTO EventAttendees(user_id,event_id) VALUES (3,9);
INSERT INTO EventAttendees(user_id,event_id) VALUES (11,10);
INSERT INTO EventAttendees(user_id,event_id) VALUES (11,11);
INSERT INTO EventAttendees(user_id,event_id) VALUES (11,12);
INSERT INTO EventAttendees(user_id,event_id) VALUES (13,13);
INSERT INTO EventAttendees(user_id,event_id) VALUES (14,14);
INSERT INTO EventAttendees(user_id,event_id) VALUES (15,15);
