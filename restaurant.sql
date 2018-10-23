-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: restaurant
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `food` (
  `idFood` int(11) NOT NULL AUTO_INCREMENT,
  `nameFood` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `priceFood` int(11) NOT NULL,
  `time` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idFoodType` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `anh` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idFood`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_esperanto_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,'Salad Cà Chua',10000,'cả ngày','1','1.jpg'),(2,'sup',10000,'sáng','1','2.jpg'),(3,'sup',10000,'sáng','1','2.jpg'),(4,'sup',10000,'sáng','1','2.jpg'),(5,'sup',10000,'sáng','1','2.jpg'),(6,'sup',10000,'sáng','1','2.jpg'),(7,'sup',10000,'sáng','1','2.jpg'),(8,'sup',10000,'sáng','1','2.jpg'),(9,'111',111,'Cáº£ NgÃ y','2',NULL),(10,'dao manjh',11111,'Cáº£ NgÃ y','2',NULL),(11,'son can team',12321,'Cáº£ NgÃ y','1',NULL),(12,'son can team',12321,'Cáº£ NgÃ y','1',NULL),(13,'son can team',12321,'Cáº£ NgÃ y','1',NULL),(14,'son can team',12321,'Cáº£ NgÃ y','1',NULL),(15,'1111',12333333,'Bá»¯a SÃ¡ng','1',NULL),(16,'123',12333,'Cả Ngày','1',NULL),(17,'123',1111,'Cả Ngày','2',NULL),(18,'123',11,'Cả Ngày','1',NULL),(19,'111',111,'Cả Ngày','2',NULL),(20,'111',111,'Cả Ngày','2',NULL),(21,'111',111,'Cả Ngày','2','1122.jpg'),(22,'111',111,'Cả Ngày','2',NULL),(23,'111',111,'Cả Ngày','2',NULL),(24,'dao manh 97',111,'Cả Ngày','1','1122.jpg'),(25,'ahihihi',9999,'Cả Ngày','1','manh.jpg'),(26,'123',7777777,'Cả Ngày','7','WIN_20180613_22_02_18_Pro.jpg'),(27,'22222',11111,'Bữa Sáng','1','manh.jpg'),(28,'11',111,'Cả Ngày','2','manh.jpg'),(29,'5555',1111,'Cả Ngày','1','manh.jpg');
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foodtype`
--

DROP TABLE IF EXISTS `foodtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `foodtype` (
  `idFoodType` int(11) NOT NULL AUTO_INCREMENT,
  `nameFoodType` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `FoodTypecol` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idFoodType`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foodtype`
--

LOCK TABLES `foodtype` WRITE;
/*!40000 ALTER TABLE `foodtype` DISABLE KEYS */;
INSERT INTO `foodtype` VALUES (1,'Súp',NULL),(2,'Món Khai Vị Đồ Uống',NULL),(3,'CÆ¡m',NULL),(4,'ChÃ¡o',NULL),(5,'bÃ¡nh mÃ¬',NULL),(6,'cơm rang',NULL),(7,'bún',NULL),(8,'kẹo',NULL),(9,'dao manh',NULL);
/*!40000 ALTER TABLE `foodtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `restaurant` (
  `restaurant_name` int(11) NOT NULL,
  `restaurant_content` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restaurant_addrest` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restaurant_phone` int(11) DEFAULT NULL,
  PRIMARY KEY (`restaurant_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table`
--

DROP TABLE IF EXISTS `table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `table` (
  `idTable` int(11) NOT NULL AUTO_INCREMENT,
  `type_table` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_people` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `status_table` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idTable`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table`
--

LOCK TABLES `table` WRITE;
/*!40000 ALTER TABLE `table` DISABLE KEYS */;
INSERT INTO `table` VALUES (1,'ngoi ghe','6 nguoi','trong'),(2,'BÃ n ngÃ´i gháº¿','BÃ n 4 ngÆ°á»i','clear'),(3,'Bàn ngồi sệt','Bàn 2 người','clear');
/*!40000 ALTER TABLE `table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tableorder`
--

DROP TABLE IF EXISTS `tableorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tableorder` (
  `idTableOrder` int(11) NOT NULL AUTO_INCREMENT,
  `nameCustomer` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `phoneNumber` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `numberOfPeople` int(11) NOT NULL,
  `time` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `note` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `status` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `idtable` int(11) NOT NULL,
  PRIMARY KEY (`idTableOrder`),
  KEY `idtable` (`idtable`),
  CONSTRAINT `tableorder_ibfk_1` FOREIGN KEY (`idtable`) REFERENCES `table` (`idtable`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tableorder`
--

LOCK TABLES `tableorder` WRITE;
/*!40000 ALTER TABLE `tableorder` DISABLE KEYS */;
INSERT INTO `tableorder` VALUES (1,'dao manh','1231313',6,'6 pm','abc','trống',1);
/*!40000 ALTER TABLE `tableorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `user_lastname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_fullname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_account` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_password` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_creatday` date DEFAULT NULL,
  `user_photo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'manh',NULL,NULL,NULL,'manh','manh',NULL,'manh'),(2,'dao manh',NULL,NULL,NULL,'daomanh','123',NULL,'manh.jpg'),(3,'dao manh',NULL,NULL,NULL,'daomanh','123',NULL,'manh.jpg'),(4,'dao manh',NULL,NULL,NULL,'daomanh','123','2018-10-24','manh.jpg'),(5,'dao manh',NULL,NULL,'daomanh2810@gmail.com','daomanh','123','2018-10-24','WIN_20180613_22_02_18_Pro.jpg'),(6,'dao duc manh',NULL,NULL,'daomanh2810@gmail.com','daoma97','123','2018-10-24','manh.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-24  5:34:29
