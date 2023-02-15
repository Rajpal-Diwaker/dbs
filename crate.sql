-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: crate
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
-- Current Database: `crate`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `crate` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `crate`;

--
-- Table structure for table `SequelizeData`
--

DROP TABLE IF EXISTS `SequelizeData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SequelizeData` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SequelizeData`
--

LOCK TABLES `SequelizeData` WRITE;
/*!40000 ALTER TABLE `SequelizeData` DISABLE KEYS */;
INSERT INTO `SequelizeData` VALUES ('1-user.js'),('2-products.js'),('3-crates.js');
/*!40000 ALTER TABLE `SequelizeData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SequelizeMeta`
--

DROP TABLE IF EXISTS `SequelizeMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SequelizeMeta`
--

LOCK TABLES `SequelizeMeta` WRITE;
/*!40000 ALTER TABLE `SequelizeMeta` DISABLE KEYS */;
INSERT INTO `SequelizeMeta` VALUES ('1-user.js'),('2-product.js'),('3-crates.js'),('4-subscriptions.js');
/*!40000 ALTER TABLE `SequelizeMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crates`
--

DROP TABLE IF EXISTS `crates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crates`
--

LOCK TABLES `crates` WRITE;
/*!40000 ALTER TABLE `crates` DISABLE KEYS */;
INSERT INTO `crates` VALUES (1,'Clothes for Men','A monthly supply of trendy clothes for men.','2020-04-21 12:06:36','2020-04-21 12:06:36'),(2,'Clothes for Women','A monthly supply of trendy clothes for women.','2020-04-21 12:06:36','2020-04-21 12:06:36'),(3,'Accessories for Men','A monthly supply of trendy accessories for men','2020-04-21 12:06:36','2020-04-21 12:06:36'),(4,'Accessories for Women','A monthly supply of trendy accessories for women','2020-04-21 12:06:36','2020-04-21 12:06:36'),(5,'Clothes and Accessories for Men','A monthly supply of trendy clothes and accessories for men','2020-04-21 12:06:36','2020-04-21 12:06:36'),(6,'Clothes and Accessories for Women','A monthly supply of trendy clothes and accessories for women','2020-04-21 12:06:36','2020-04-21 12:06:36');
/*!40000 ALTER TABLE `crates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `type` int(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `image` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Belt for Women','belt-for-women','A very nice belt for women.',2,2,'/images/stock/belt-female.jpg','2020-04-20 12:06:36','2020-04-21 12:06:36'),(2,'Belt for Men','belt-for-men','A very nice belt for men.',2,1,'/images/stock/belt-male.jpg','2020-04-21 12:06:36','2020-04-24 12:06:36'),(3,'Watch for Women','watch-for-women','A very nice watch for women.',2,2,'/images/stock/watch-female.jpg','2020-04-16 12:06:36','2020-04-21 12:06:36'),(4,'Watch for Men','watch-for-men','A very nice watch for men.',2,1,'/images/stock/watch-male.jpg','2020-04-21 12:06:36','2020-04-21 12:06:36'),(5,'T-Shirt for Women - Black','t-shirt-for-women-black','A very nice black t-shirt for women.',1,2,'/images/stock/t-shirt-female-1.jpg','2020-04-11 12:06:36','2020-04-21 12:06:36'),(6,'T-Shirt for Women - Grey','t-shirt-for-women-grey','A very nice grey t-shirt for women.',1,2,'/images/stock/t-shirt-female-2.jpg','2020-04-21 12:06:36','2020-04-21 12:06:36'),(7,'T-Shirt for Men - White','t-shirt-for-men-white','A very nice white t-shirt for men.',1,1,'/images/stock/t-shirt-male-1.jpg','2020-04-21 12:06:36','2020-04-23 12:06:36'),(8,'T-Shirt for Men - Grey','t-shirt-for-men-grey','A very nice grey t-shirt for men.',1,1,'/images/stock/t-shirt-male-2.jpg','2020-04-21 12:06:36','2020-04-23 12:06:36'),(9,'test','test','bsadddddddddddm',2,1,'/images/uploads/file-1587472258103.png','2020-04-21 12:31:00','2020-04-19 12:31:18');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `crateId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `crateId` (`crateId`),
  CONSTRAINT `subscriptions_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  CONSTRAINT `subscriptions_ibfk_2` FOREIGN KEY (`crateId`) REFERENCES `crates` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (2,1,2,'2020-04-21 12:33:28','2020-04-21 12:33:28'),(3,1,4,'2020-04-21 12:33:38','2020-04-21 12:33:38'),(4,1,2,'2020-04-21 12:33:46','2020-04-21 12:33:46'),(5,1,1,'2020-04-21 12:33:51','2020-04-21 12:33:51'),(6,1,4,'2020-04-21 12:34:09','2020-04-21 12:34:09'),(7,2,3,'2020-04-21 14:54:12','2020-04-21 14:54:12'),(8,2,3,'2020-04-21 14:57:32','2020-04-21 14:57:32'),(9,2,3,'2020-04-21 15:02:49','2020-04-21 15:02:49'),(10,2,3,'2020-04-22 11:00:20','2020-04-22 11:00:20');
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` text,
  `password` text,
  `role` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'The Admin','admin@crate.com','$2b$10$VL67ZjMXtAAQYSSgxDSvAOsEdjSgvPP4JVNIbi/../xwOvs9wO5.W','ADMIN','2020-04-21 12:06:35','2020-04-21 12:06:35'),(2,'The User','user@crate.com','$2b$10$F4UOjmblYXdfLx0b9/963uIIfxXIi/9/F0TtVPFsWuSg4gUhPXW/6','USER','2020-04-21 12:06:36','2020-04-21 12:06:36'),(3,'ab','ab@gmail.com','$2b$10$DwY5qZS6Dj6iv99zKsDiBO3t9HpyUESJ4.EKSO0AEtVWlCPS/9rbi','USER','2020-04-21 12:54:43','2020-04-21 12:54:43'),(4,'ab','ab@gmail.com1','$2b$10$uTCgxM8U0qed6T2vUPHGou8p1yhrLJfkDr//.qF8gYlBW9y4b/YyS','USER','2020-04-21 13:14:43','2020-04-21 13:14:43'),(5,'ab','ab@gmail.com2','$2b$10$uSKOhvdZPzesTLMTqII7MuE6YdaIiRoYQyt1CWoH.SIXFyooKWTz2','USER','2020-04-21 13:41:06','2020-04-21 13:41:06'),(6,'ab','ab1@gmail.com','$2b$10$8FbIFsf4u2T/zgIu2/XKT.CFJEPeemK5TE9v1zHU1xnNGThhvv7TG','USER','2020-04-21 14:14:21','2020-04-21 14:14:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-04 19:37:40
