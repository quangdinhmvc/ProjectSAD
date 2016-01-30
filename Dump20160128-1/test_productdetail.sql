-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.7.10-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `productdetail`
--

DROP TABLE IF EXISTS `productdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productdetail` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `screen` varchar(45) DEFAULT NULL,
  `generation` varchar(45) DEFAULT NULL,
  `hdd` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `imageLink` varchar(255) DEFAULT NULL,
  `vga` varchar(45) DEFAULT NULL,
  `ram` varchar(45) DEFAULT NULL,
  `os` varchar(45) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `nowater` bit(1) DEFAULT NULL,
  `touch` bit(1) DEFAULT NULL,
  `onestart` int(11) DEFAULT NULL,
  `twostart` int(11) DEFAULT NULL,
  `threestart` int(11) DEFAULT NULL,
  `fourstart` int(11) DEFAULT NULL,
  `sumstart` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productdetail`
--

LOCK TABLES `productdetail` WRITE;
/*!40000 ALTER TABLE `productdetail` DISABLE KEYS */;
INSERT INTO `productdetail` VALUES (1,'acer-aspire-e5-473r','acer','14','i3',500,10000000,'acer-aspire-e5-473-i3-5005u-4g-500g-win10-300-300x300.jpg','Nvidia GeForce GTX 860M','16 GB','Windows 10',2,8,'','',10,20,30,40,100),(2,'asus-x453ma-celeron-n3540','asus','14','celeron',500,4500000,'asus-x453ma-celeron-n3540-win8-nowatermark-300x300.jpg','Intel Iris 6100','8 GB','Windows 10',2,7,'\0','',10,10,10,60,90),(3,'acer-aspire-z1402-30ba','acer','15','ỉ3',500,7000000,'acer-aspire-z1402-30ba-i3-5005u-4gb-500gb-win10-300-300x300.jpg','Intel® HD Graphics 5500','4 GB','Windows 10',2,7,'\0','\0',1,2,3,4,10),(4,'asus-a540la-i3-4005u','asus','15','i3',500,8000000,'asus-a540la-i3-4005u-4gb-500gb-win10-300-1-300x300.jpg','Intel HD Graphics 4400','4 GB','Windows 10',2,8,'','',1,9,1,0,10),(5,'asus-a556uf-i5-6200u','asus','15','i5',500,10000000,'asus-a556uf-i5-6200u-4gb-500gb-2gb-930m-win10-300-300x300.jpg','NVIDIA GeForce 930M','4 GB','Windows 10',3,7,'','\0',8,2,0,0,10),(6,'asus-e402ma-n2840','asus','15','i5',500,12000000,'asus-e402ma-n2840-2gb-500gb-win10-300-300x300.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'asus-tp300la-i5-5200u','asus','15','i5',500,15000000,'asus-tp300la-i5-5200u-4gb-500gb-win81-300-300x300.jpg','	Intel® HD Graphics 5500','4 GB','Windows 10',2,7,'\0','\0',1,1,1,7,10),(8,'dell-inspiron-3451-n3540u','dell','14','i5',500,14000000,'dell-inspiron-3451-n3540u-2gb-500gb-win81-300x300.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'dell-inspiron-3148-300','dell','14','i5',500,13500000,'dell-inspiron-3148-300-nowatermark-300x300.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'asus-x553ma-sx684b','asus','14','i3',500,12000000,'asus-x553ma-sx684b-1-nowatermark-300x300.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'dell-inspiron-3543','dell','14','i3',500,12000000,'dell-inspiron-3543-i3-5005u-4gb-500gb-win81-300-300x300.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Apple-MacBook-Air-MC969Z','apple','15','i3',500,16000000,'Apple-MacBook-Air-MC969ZP-A-l-190x190.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `productdetail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-28 10:03:07
