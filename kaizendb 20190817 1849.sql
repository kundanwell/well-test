-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.23


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema kaizendb
--

CREATE DATABASE IF NOT EXISTS kaizendb;
USE kaizendb;

--
-- Definition of table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`,`name`,`description`,`image_url`,`is_active`) VALUES 
 (1,'Steel','this is description for Steel category!','CAT_1.png',1),
 (2,'Aluminium','this is description for Aluminium category!','CAT_2.png',1),
 (3,'Copper','this is description for Copper category!','CAT_3.png',1),
 (5,'Nylon','this is description for Nylon category!','CAT_3.png',1),
 (6,'Other','this is description for Other category!',NULL,NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Definition of table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`,`code`,`name`,`material`,`description`,`is_active`,`category_id`,`supplier_id`,`views`) VALUES 
 (22,'PRDABC123DEF','PU COATING ROLLERS','Polyurethane Rubber','High mechanical strength, wear resistance, anti-aging and oil resistance',1,1,1,32),
 (23,'PRDDEF123PQR','GEARS & PULLEYS ','Stainless Steel','This is particularly true in saltwater environments',1,2,1,7),
 (24,'PRDGHI123MNO','SPROCKETS','Stainless Steel,Steel','Hardened Steel Teeth Material, Lubrication None, Maintains Proper Chain Tension',1,2,1,2),
 (25,'PRDJKL123STW','POLYURETHANE CASTER WHEEL & NYLON WHEELS','Polyurethane, rubber, cast iron, nylon','our castor range offers a solution to any kind of industry application',1,1,1,3),
 (31,'PRD82DF6F8FC1','Cast Nylon Polymer','Nylon Polymer','Industrial Use, Food Containers, Storage Containers, Packaging Pellets, Pipes & Construction',1,5,1,0),
 (32,'PRD07F1C4553B','Cast Nylon Pulley','Nylon','We are an illustrious manufacturer of premium quality Polyamide Sprocket. These products are developed by using top quality raw material and advanced machinery in accordance with the set industry norms. ',1,5,1,0),
 (33,'PRDE9307377FC','Cast Nylon Ring','Nylon','This nylon ring is designed by using high-quality nylon and advanced machinery in accordance with the defined industry norms. The provided nylon ring is inspected on various parameters so as to deliver a defect free range. ',1,5,1,0),
 (34,'PRDD240EA5FC3','Nylon Gear','Nylon','These nylon gears find extensive application in commercial purposes as well as in industrial purposes. Offered nylon gears are available from us in several specifications to choose from. ',1,5,1,0),
 (35,'PRD806F9DD423','CHAINS','Steel','The chain is the main member in a chain drive made up by means of links interlocked by pins and rollers of specific diameter.',1,1,1,0),
 (36,'PRDB739CE72FE','SPRINGS','Steel','We are the leading manufacturers and suppliers of all types of Spring used for automobiles in all over India',1,1,1,0),
 (37,'PRD61326A2B02','FILTERS','Steel','We are counted amongst as the foremost manufacturer, exporter and supplier of the best quality range of Filter . The provided belt is widely appreciated across the world by our esteemed patrons owing to its perfect finish and dimensionally accuracy.',1,1,1,0),
 (38,'PRDA98C5FB05C','TROLLEYS','Steel, Nylon','Our valuable clients can avail these products from us in several technical specifications to fulfill their exact needs. Apart from this, we also provide Repair and Maintenance Service of these products.',1,1,1,0),
 (39,'PRDCCE58190DA','PNUMATIC  & HUDRAULIC FITTINGS','Brass,copper','Here at Worlifts, we have experience in the supply and maintenance in many industries such as Oil & Gas, Engineering, Rail and Renewables.',1,3,1,0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Definition of table `user_detail`
--

DROP TABLE IF EXISTS `user_detail`;
CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `passwords` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_detail`
--

/*!40000 ALTER TABLE `user_detail` DISABLE KEYS */;
INSERT INTO `user_detail` (`id`,`first_name`,`last_name`,`role`,`enabled`,`passwords`,`email`,`contact_number`) VALUES 
 (1,'Sudhir','Davang','ADMIN',1,'admin','sudhir.davang@gmail.com','9673492555');
/*!40000 ALTER TABLE `user_detail` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
