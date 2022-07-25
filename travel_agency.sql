DROP DATABASE IF EXISTS travel_agency;
CREATE DATABASE travel_agency;
USE travel_agency;

CREATE TABLE `passenger` (`id` int NOT NULL AUTO_INCREMENT,
`name` varchar(45) DEFAULT NULL,
`family` varchar(45) DEFAULT NULL,
`email` varchar(45) DEFAULT NULL,
`phone` varchar(45) DEFAULT NULL,
`gender` varchar(1) DEFAULT NULL,
`birthday` varchar(45) DEFAULT NULL,
`card_type` varchar(45) DEFAULT NULL,
`card_number` varchar(45) DEFAULT NULL,
`address_number` varchar(45) DEFAULT NULL,
`address_street` varchar(45) DEFAULT NULL,
`address_city` varchar(45) DEFAULT NULL,
`address_state` varchar(45) DEFAULT NULL,
`address_country` varchar(45) DEFAULT NULL,
`address_zipcode` varchar(45) DEFAULT NULL,
`flight_from` varchar(45) DEFAULT NULL,
`flight_dep_date` varchar(45) DEFAULT NULL,
`flight_dep_time` varchar(45) DEFAULT NULL,
`flight_to` varchar(45) DEFAULT NULL,
`flight_dest_date` varchar(45) DEFAULT NULL,
`flight_dest_time` varchar(45) DEFAULT NULL,
PRIMARY KEY (`id`));

INSERT INTO `passenger` (`id`,`name`,`family`,`email`,`phone`,`gender`,`birthday`,`card_type`,`card_number`,`address_number`,`address_street`,`address_city`,`address_state`,`address_country`,`address_zipcode`,`flight_from`,`flight_dep_date`,`flight_dep_time`,`flight_to`,`flight_dest_date`,`flight_dest_time`) VALUES (1,'Artur','Dallas','artur@gmail.com','5140000001','M','01 Jan 2003','visa','00000000000001','1','Place Ville Marie','Montreal','Quebec','Canada','H3B 2B6','Montreal','2030-01-01','00:00','Toronto','2030-01-01','10:00');
INSERT INTO `passenger` (`id`,`name`,`family`,`email`,`phone`,`gender`,`birthday`,`card_type`,`card_number`,`address_number`,`address_street`,`address_city`,`address_state`,`address_country`,`address_zipcode`,`flight_from`,`flight_dep_date`,`flight_dep_time`,`flight_to`,`flight_dest_date`,`flight_dest_time`) VALUES (2,'Ellen','Ripley','ellen@gmail.com','5140000002','F','02 Jan 2003','visa','00000000000002','1','Place Ville Marie','Montreal','Quebec','Canada','H3B 2B6','Montreal','2030-01-01','00:00','Toronto','2030-01-01','10:00');
INSERT INTO `passenger` (`id`,`name`,`family`,`email`,`phone`,`gender`,`birthday`,`card_type`,`card_number`,`address_number`,`address_street`,`address_city`,`address_state`,`address_country`,`address_zipcode`,`flight_from`,`flight_dep_date`,`flight_dep_time`,`flight_to`,`flight_dest_date`,`flight_dest_time`) VALUES (3,'Joan','Lambert','joan@gmail.com','5140000003','F','03 Jan 2003','visa','00000000000003','1','Place Ville Marie','Montreal','Quebec','Canada','H3B 2B6','Montreal','2030-01-01','00:00','Toronto','2030-01-01','10:00');
INSERT INTO `passenger` (`id`,`name`,`family`,`email`,`phone`,`gender`,`birthday`,`card_type`,`card_number`,`address_number`,`address_street`,`address_city`,`address_state`,`address_country`,`address_zipcode`,`flight_from`,`flight_dep_date`,`flight_dep_time`,`flight_to`,`flight_dest_date`,`flight_dest_time`) VALUES (4,'Samuel','Brett','samuel@gmail.com','5140000004','M','04 Jan 2003','visa','00000000000004','1','Place Ville Marie','Montreal','Quebec','Canada','H3B 2B6','Montreal','2030-01-02','00:00','Toronto','2030-01-02','10:00');
INSERT INTO `passenger` (`id`,`name`,`family`,`email`,`phone`,`gender`,`birthday`,`card_type`,`card_number`,`address_number`,`address_street`,`address_city`,`address_state`,`address_country`,`address_zipcode`,`flight_from`,`flight_dep_date`,`flight_dep_time`,`flight_to`,`flight_dest_date`,`flight_dest_time`) VALUES (5,'Gilbert','Kane','gilbert@gmail.com','5140000005','M','05 Jan 2003','visa','00000000000005','1','Place Ville Marie','Montreal','Quebec','Canada','H3B 2B6','Montreal','2030-01-02','00:00','Toronto','2030-01-02','10:00');
INSERT INTO `passenger` (`id`,`name`,`family`,`email`,`phone`,`gender`,`birthday`,`card_type`,`card_number`,`address_number`,`address_street`,`address_city`,`address_state`,`address_country`,`address_zipcode`,`flight_from`,`flight_dep_date`,`flight_dep_time`,`flight_to`,`flight_dest_date`,`flight_dest_time`) VALUES (6,'Dennis','Parker','dennis@gmail.com','5140000006','M','06 Jan 2003','visa','00000000000006','1','Place Ville Marie','Montreal','Quebec','Canada','H3B 2B6','Montreal','2030-01-02','00:00','Toronto','2030-01-02','10:00');
INSERT INTO `passenger` (`id`,`name`,`family`,`email`,`phone`,`gender`,`birthday`,`card_type`,`card_number`,`address_number`,`address_street`,`address_city`,`address_state`,`address_country`,`address_zipcode`,`flight_from`,`flight_dep_date`,`flight_dep_time`,`flight_to`,`flight_dest_date`,`flight_dest_time`) VALUES (7,'Dwayne','Hicks','dwayne@gmail.com','5140000007','M','07 Jan 2003','visa','00000000000007','1','Place Ville Marie','Montreal','Quebec','Canada','H3B 2B6','Toronto','2030-01-03','00:00','Montreal','2030-01-03','10:00');
INSERT INTO `passenger` (`id`,`name`,`family`,`email`,`phone`,`gender`,`birthday`,`card_type`,`card_number`,`address_number`,`address_street`,`address_city`,`address_state`,`address_country`,`address_zipcode`,`flight_from`,`flight_dep_date`,`flight_dep_time`,`flight_to`,`flight_dest_date`,`flight_dest_time`) VALUES (8,'Carter','Burke','carter@gmail.com','5140000008','M','08 Jan 2003','visa','00000000000008','1','Place Ville Marie','Montreal','Quebec','Canada','H3B 2B6','Toronto','2030-01-03','00:00','Montreal','2030-01-03','10:00');
INSERT INTO `passenger` (`id`,`name`,`family`,`email`,`phone`,`gender`,`birthday`,`card_type`,`card_number`,`address_number`,`address_street`,`address_city`,`address_state`,`address_country`,`address_zipcode`,`flight_from`,`flight_dep_date`,`flight_dep_time`,`flight_to`,`flight_dest_date`,`flight_dest_time`) VALUES (9,'Newt','Jorden','newt@gmail.com','5140000009','F','09 Jan 2003','visa','00000000000009','1','Place Ville Marie','Montreal','Quebec','Canada','H3B 2B6','Toronto','2030-01-03','00:00','Montreal','2030-01-03','10:00');
INSERT INTO `passenger` (`id`,`name`,`family`,`email`,`phone`,`gender`,`birthday`,`card_type`,`card_number`,`address_number`,`address_street`,`address_city`,`address_state`,`address_country`,`address_zipcode`,`flight_from`,`flight_dep_date`,`flight_dep_time`,`flight_to`,`flight_dest_date`,`flight_dest_time`) VALUES (10,'William','Hudson','william@gmail.com','5140000010','M','10 Jan 2003','visa','00000000000010','1','Place Ville Marie','Montreal','Quebec','Canada','H3B 2B6','Toronto','2030-01-04','00:00','Montreal','2030-01-04','10:00');
INSERT INTO `passenger` (`id`,`name`,`family`,`email`,`phone`,`gender`,`birthday`,`card_type`,`card_number`,`address_number`,`address_street`,`address_city`,`address_state`,`address_country`,`address_zipcode`,`flight_from`,`flight_dep_date`,`flight_dep_time`,`flight_to`,`flight_dest_date`,`flight_dest_time`) VALUES (11,'Scott','Gorman','scott@gmail.com','5140000011','M','11 Jan 2003','visa','00000000000011','1','Place Ville Marie','Montreal','Quebec','Canada','H3B 2B6','Toronto','2030-01-04','00:00','Montreal','2030-01-04','10:00');
INSERT INTO `passenger` (`id`,`name`,`family`,`email`,`phone`,`gender`,`birthday`,`card_type`,`card_number`,`address_number`,`address_street`,`address_city`,`address_state`,`address_country`,`address_zipcode`,`flight_from`,`flight_dep_date`,`flight_dep_time`,`flight_to`,`flight_dest_date`,`flight_dest_time`) VALUES (12,'Amanda','Ripley','amanda@gmail.com','5140000012','F','12 Jan 2003','visa','00000000000012','1','Place Ville Marie','Montreal','Quebec','Canada','H3B 2B6','Toronto','2030-01-04','00:00','Montreal','2030-01-04','10:00');

SELECT * FROM passenger;