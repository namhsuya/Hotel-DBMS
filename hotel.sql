-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version 5.1.58-community

--


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;




--
-- Create schema hotel
--


CREATE DATABASE IF NOT EXISTS hotel;
USE hotel;



--
-- Definition of table `bookingtable`
--


DROP TABLE IF EXISTS `bookingtable`;

CREATE TABLE `bookingtable` 
(
  `book_id` int(3) NOT NULL,
 
 `room_no` varchar(3) DEFAULT NULL,
 
 `date_fro` datetime DEFAULT NULL,
 
 `date_to` datetime DEFAULT NULL,
  
`no_of_day` int(3) DEFAULT NULL,
  PRIMARY KEY (`book_id`)

) 
ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Dumping data for table `bookingtable`
--



/*!40000 ALTER TABLE `bookingtable` DISABLE KEYS */;


INSERT INTO `bookingtable` (`book_id`,`room_no`,`date_fro`,`date_to`,`no_of_day`) 
VALUES 
 (1,'101','2012-01-10 00:00:00','2012-01-12 00:00:00',NULL),
 
(2,'103','2012-01-07 00:00:00','2012-01-10 00:00:00',NULL),
 
(3,'105','2012-01-11 00:00:00','2012-01-13 00:00:00',NULL),
 
(4,'108','2012-01-08 00:00:00','2012-01-09 00:00:00',NULL),
 
(5,'112','2012-01-11 00:00:00','2012-01-13 00:00:00',NULL),

 (6,'118','2012-01-11 00:00:00','2012-01-13 00:00:00',NULL),
 
(7,'123','2012-01-07 00:00:00','2012-01-10 00:00:00',NULL),
 
(8,'120','2012-01-08 00:00:00','2012-01-09 00:00:00',NULL),

 (9,'110','2012-01-08 00:00:00','2012-01-08 00:00:00',NULL),

 (10,'125','2012-01-09 00:00:00','2012-01-10 00:00:00',NULL),
 
(11,'109','2012-01-09 00:00:00','2012-01-11 00:00:00',2),
 
(12,'108','2012-01-09 00:00:00','2012-01-12 00:00:00',3);


/*!40000 ALTER TABLE `bookingtable` ENABLE KEYS */;




--
-- Definition of table `custdetail`
--


DROP TABLE IF EXISTS `custdetail`;

CREATE TABLE `custdetail` 
(
  `Cust_name` varchar(30) DEFAULT NULL,
  
`Cust_add` varchar(40) DEFAULT NULL,
 
 `Cust_city` varchar(30) DEFAULT NULL,
 
 `Cust_state` varchar(30) DEFAULT NULL,
  
`Cust_country` varchar(30) DEFAULT NULL,
  
`Cust_ph` varchar(10) DEFAULT NULL,
  
`Cust_proof` varchar(20) DEFAULT NULL,
 
 `Cust_adult` varchar(2) DEFAULT NULL,
 
 `Cust_child` varchar(2) DEFAULT NULL,
  
`Cust_mar_stat` varchar(15) DEFAULT NULL,
 
 `Cust_id_no` varchar(30) DEFAULT NULL,
 
 `Cust_nation` varchar(30) DEFAULT NULL,
 
 `Cust_purpos` varchar(30) DEFAULT NULL,
 
 `Cust_bill` int(5) DEFAULT NULL,
  
`book_id` int(3) DEFAULT NULL

) 
ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Dumping data for table `custdetail`
--


/*!40000 ALTER TABLE `custdetail` DISABLE KEYS */;


INSERT INTO `custdetail`(`Cust_name`,`Cust_add`,`Cust_city`,`Cust_state`,`Cust_country`,`Cust_ph`,`Cust_proof`,`Cust_adult`,`Cust_child`,`Cust_mar_stat`,`Cust_id_no`,`Cust_nation`,`Cust_purpos`,`Cust_bill`,`book_id`)
 VALUES 
 ('Vijay','AFS 2','Jamnagar','Gujarat','Indian','0288253422','Passport','1','0','Single','LDKF-999238-LL09-6','Indian','Tour',1568,11),

 ('Vidit','ABC','Jamnagar','Gujarat','India','9898263882','Voter ID','1','0','Single','3947QWE','Indian','Offical',2352,12);


/*!40000 ALTER TABLE `custdetail` ENABLE KEYS */;




--
-- Definition of table `login`
--


DROP TABLE IF EXISTS `login`;

CREATE TABLE `login`
(

`userid` varchar(15) NOT NULL,
`password` varchar(10) NOT NULL,
`desig` varchar(15) NOT NULL,
`fname` varchar(25) NOT NULL,
`lname` varchar(25) NOT NULL,
`contact` varchar(15) NOT NULL,
`addr` varchar(100) NOT NULL,
PRIMARY KEY (`userid`)

) 
ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Dumping data for table `login`
--



/*!40000 ALTER TABLE `login` DISABLE KEYS */;


INSERT INTO `login` (`userid`,`password`,`desig`,`fname`,`lname`,`contact`,`addr`) 
VALUES 
 ('ayushman','65kb','MANAGER','Ayushman Kumar','Banerjee','9939679992','Shady Street, Slim Way, XV Apartmentment Flat-313')
;


/*!40000 ALTER TABLE `login` ENABLE KEYS */;




--
-- Definition of table `roomdetail`
--


DROP TABLE IF EXISTS `roomdetail`;

CREATE TABLE `roomdetail` 
(
  
`room_no` varchar(3) NOT NULL,
  
`room_type` varchar(10) NOT NULL,
  
`room_rate` int(4) NOT NULL,
  
`room_bed` varchar(6) NOT NULL,
  
PRIMARY KEY (`room_no`)

) 
ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Dumping data for table `roomdetail`
--



/*!40000 ALTER TABLE `roomdetail` DISABLE KEYS */;


INSERT INTO `roomdetail` (`room_no`,`room_type`,`room_rate`,`room_bed`) 
VALUES 
 ('101','Non AC',700,'Single'),
 
('102','Non AC',700,'Single'),
 
('103','Non AC',700,'Single'),
 
('104','Non AC',700,'Single'),
 
('105','Non AC',700,'Single'),
 
('106','Non AC',700,'Single'),
 
('107','Non AC',700,'Single'),
 
('108','Non AC',700,'Single'),
 
('109','Non AC',700,'Single'),
 
('110','Non AC',700,'Single'),
 
('111','Non AC',1000,'Double'),
 
('112','Non AC',1000,'Double'),
 
('113','Non AC',1000,'Double'),
 
('114','Non AC',1000,'Double'),
 
('115','Non AC',1000,'Double'),
 
('116','AC',1500,'Single'),
 
('117','AC',1500,'Single'),
 
('118','AC',1500,'Single'),
 
('119','AC',1500,'Single'),
 
('120','AC',1500,'Single'),
 
('121','AC',1500,'Single'),
 
('122','AC',1500,'Single'),
 
('123','AC',1500,'Single'),
 
('124','AC',2000,'Double'),
 
('125','AC',2000,'Double'),
 
('126','AC',2000,'Double'),
 
('127','AC',2000,'Double'),
 
('128','AC',2000,'Double'),
 
('129','AC',2000,'Double'),
 
('130','AC',2000,'Double');


/*!40000 ALTER TABLE `roomdetail` ENABLE KEYS */;





/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;