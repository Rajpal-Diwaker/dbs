-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: lal10_db
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
-- Current Database: `lal10_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `lal10_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `lal10_db`;

--
-- Table structure for table `aboutus_sample`
--

DROP TABLE IF EXISTS `aboutus_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus_sample` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus_sample`
--

LOCK TABLES `aboutus_sample` WRITE;
/*!40000 ALTER TABLE `aboutus_sample` DISABLE KEYS */;
INSERT INTO `aboutus_sample` VALUES (2,'Google search','2020-07-13 10:48:35'),(3,'Word of mouth (e.g.industry,friends,family)','2020-07-13 10:48:35'),(4,'Industry websites/news outlets(e.g giftshopmag.com,nrf.com,forbes,wsj.com,etc.)','2020-07-13 10:48:35'),(5,'Trade show or event','2020-07-13 10:48:35'),(6,'Facebook','2020-07-13 10:48:35'),(8,'Instagram','2020-07-13 10:48:35'),(9,'Other','2020-07-13 10:48:35'),(11,'another','2020-08-01 08:39:43'),(14,'deep','2020-08-18 08:04:50');
/*!40000 ALTER TABLE `aboutus_sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aboutus_user`
--

DROP TABLE IF EXISTS `aboutus_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `userId` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `aboutus_user_userid_foreign` (`userId`),
  CONSTRAINT `aboutus_user_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus_user`
--

LOCK TABLES `aboutus_user` WRITE;
/*!40000 ALTER TABLE `aboutus_user` DISABLE KEYS */;
INSERT INTO `aboutus_user` VALUES (70,'2',308,'2020-08-08 07:46:55'),(71,'3',308,'2020-08-08 07:46:55'),(72,'5',308,'2020-08-08 07:46:55'),(73,'2',311,'2020-08-10 07:52:00'),(74,'3',311,'2020-08-10 07:52:00'),(75,'6',311,'2020-08-10 07:52:00'),(76,'8',311,'2020-08-10 07:52:00'),(77,'11',311,'2020-08-10 07:52:00'),(78,'12',311,'2020-08-10 07:52:00'),(79,'2',312,'2020-08-10 13:08:43'),(80,'3',312,'2020-08-10 13:08:43'),(81,'5',312,'2020-08-10 13:08:43'),(82,'8',312,'2020-08-10 13:08:43'),(83,'9',312,'2020-08-10 13:08:43'),(84,'11',313,'2020-08-10 13:57:53'),(85,'2',321,'2020-08-11 14:33:56'),(86,'4',321,'2020-08-11 14:33:56'),(87,'6',321,'2020-08-11 14:33:56'),(88,'2',326,'2020-08-18 07:57:12'),(89,'4',326,'2020-08-18 07:57:12'),(90,'6',326,'2020-08-18 07:57:12'),(91,'2',327,'2020-08-18 07:59:52'),(92,'4',327,'2020-08-18 07:59:52'),(93,'5',327,'2020-08-18 07:59:52'),(94,'6',327,'2020-08-18 07:59:52'),(95,'8',327,'2020-08-18 07:59:52'),(96,'11',327,'2020-08-18 07:59:52'),(97,'4',328,'2020-08-18 08:05:42'),(98,'5',328,'2020-08-18 08:05:42'),(99,'8',328,'2020-08-18 08:05:42'),(100,'1',343,'2020-08-30 14:06:31'),(101,'2',343,'2020-08-30 14:06:31'),(102,'3',343,'2020-08-30 14:06:31'),(103,'4',343,'2020-08-30 14:06:31'),(104,'1',344,'2020-08-30 14:09:30'),(105,'2',344,'2020-08-30 14:09:30'),(106,'3',344,'2020-08-30 14:09:30'),(107,'4',344,'2020-08-30 14:09:30'),(108,'1',345,'2020-08-30 15:17:22'),(109,'2',345,'2020-08-30 15:17:22'),(110,'3',345,'2020-08-30 15:17:22'),(111,'4',345,'2020-08-30 15:17:22');
/*!40000 ALTER TABLE `aboutus_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `countryId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `addLine1` text COLLATE utf8_bin,
  `street` text COLLATE utf8_bin,
  `cityId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `stateId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `mobNo` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `defaultAdd` varchar(255) COLLATE utf8_bin DEFAULT '0',
  `userId` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `addressType` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `addressName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `latlong` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `address_userid_foreign` (`userId`),
  CONSTRAINT `address_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Kuldeep Singh','India','Noida sector 75','Internal road sec 75','Noida','UP','201301','1111111111','0',308,'2020-08-26 13:03:35','home',NULL,NULL),(2,'Test continue','India','sdfdf','rtrtrtrt','Noida','Delhi','454545','4555555555','0',308,'2020-08-26 13:55:43','Work',NULL,NULL),(3,'sdfdfdsf','India','dsfdsff','sdff','Delhi','Delhi','322333','4545453454','0',308,'2020-08-26 13:57:50','Other',NULL,NULL);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan_details`
--

DROP TABLE IF EXISTS `artisan_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kycImage` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `artisanImage` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userId` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `artisan_details_userid_foreign` (`userId`),
  CONSTRAINT `artisan_details_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_details`
--

LOCK TABLES `artisan_details` WRITE;
/*!40000 ALTER TABLE `artisan_details` DISABLE KEYS */;
INSERT INTO `artisan_details` VALUES (83,NULL,NULL,NULL,'2020-07-23 14:01:17',1,'ADMIN'),(150,'https://res.cloudinary.com/techugonew/image/upload/v1596790606/6xORecQuzs7y6YXCV2JQJsve.jpg','https://res.cloudinary.com/techugonew/image/upload/v1597738421/ivDkFEW_c7wcG3DnLw790RIC.png','DELHI','2020-08-07 08:56:18',301,'Amandeep Aggarwal'),(151,'https://res.cloudinary.com/techugonew/image/upload/v1596793490/_tPcC-jrJRIbDPl04jBVtN6_.jpg','https://res.cloudinary.com/techugonew/image/upload/v1596793944/0ZJROXKWxCam81kC5fLYb85X.jpg','Delhi','2020-08-07 09:41:15',302,'Sumit'),(152,'https://res.cloudinary.com/techugonew/image/upload/v1596822016/G4UIbJRD37XmJgy_NNAtfW9w.jpg',NULL,'Uttar Pradesh','2020-08-07 17:40:16',303,'AkritiSharma'),(153,NULL,NULL,'West bengal','2020-08-07 17:47:14',304,'AkritiSharma'),(156,'https://res.cloudinary.com/techugonew/image/upload/v1596866467/ZhpVKfkvpG8qPHiqCKq-86zh.jpg',NULL,'Delhi','2020-08-08 05:59:56',307,'Deep Verm'),(158,NULL,NULL,'Uttar Pradesh','2020-08-10 15:01:18',314,'Amitkumar'),(159,'https://res.cloudinary.com/techugonew/image/upload/v1597311867/ZtNaKp9hGzNrreBRj7CIyfDM.jpg',NULL,'Delhi','2020-08-13 09:43:54',322,'Ishu'),(160,NULL,NULL,'Delhi','2020-08-14 08:02:41',323,'Rajeev Kumar'),(161,NULL,NULL,'Delhi','2020-08-14 08:44:49',324,'Djdjfk'),(162,NULL,NULL,'Delhi','2020-08-14 12:18:16',325,'Cnncnc'),(163,NULL,NULL,'Uttar Pradesh','2020-08-18 13:11:47',329,'Deep Another'),(164,'https://res.cloudinary.com/techugonew/image/upload/v1597759957/p9ZmXoAqf4Ynr6DbRiJP95Wx.jpg',NULL,'Delhi','2020-08-18 13:12:18',330,'Deep Test'),(165,NULL,NULL,'Delhi','2020-08-18 13:21:48',331,'Amandeep'),(166,NULL,NULL,NULL,'2020-08-18 13:22:47',332,'Aman'),(167,NULL,NULL,NULL,'2020-08-18 13:30:40',333,'Aman'),(168,NULL,NULL,'DELHI','2020-08-18 13:38:13',334,'ABC123121'),(169,NULL,NULL,'DELHI','2020-08-18 13:44:15',335,'ABC123121'),(170,NULL,NULL,'Delhi','2020-08-18 13:47:07',336,'Deep Test'),(171,NULL,NULL,'Delhi','2020-08-18 14:06:26',337,'dddlfkldfk'),(172,'https://res.cloudinary.com/techugonew/image/upload/v1597762145/ES5OtRhzwWuM6rSrZIgJs7pc.jpg',NULL,'Delhi','2020-08-18 14:48:04',338,'Lucky'),(173,'https://res.cloudinary.com/techugonew/image/upload/v1597822573/t_WtWGK48LiO3GfwwQskTVWB.jpg',NULL,'Uttar Pradesh','2020-08-19 07:20:52',339,'Piyush ahuja'),(174,NULL,NULL,NULL,'2020-08-19 17:18:33',340,'Rishabh Arora'),(175,'https://res.cloudinary.com/techugonew/image/upload/v1597857613/dE3GgUdrkjlKBBBexKotei3o.jpg',NULL,'Delhi','2020-08-19 17:19:32',341,'Gjbnn'),(176,'https://res.cloudinary.com/techugonew/image/upload/v1598457817/-T_yHxImi950G3uI1dlG3i4i.jpg',NULL,'West bengal','2020-08-26 16:03:17',342,'Deep Verma');
/*!40000 ALTER TABLE `artisan_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan_group`
--

DROP TABLE IF EXISTS `artisan_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artisan_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `total_artisan` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `craft` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->for active,0->Inactive',
  `created_by` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `artisan_group_created_by_foreign` (`created_by`),
  CONSTRAINT `artisan_group_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_group`
--

LOCK TABLES `artisan_group` WRITE;
/*!40000 ALTER TABLE `artisan_group` DISABLE KEYS */;
INSERT INTO `artisan_group` VALUES (28,'Final test','314,303,304,307','','2020-08-11 12:44:49',1,1);
/*!40000 ALTER TABLE `artisan_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avenue`
--

DROP TABLE IF EXISTS `avenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avenue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `description` longtext COLLATE utf8_bin,
  `image` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avenue`
--

LOCK TABLES `avenue` WRITE;
/*!40000 ALTER TABLE `avenue` DISABLE KEYS */;
/*!40000 ALTER TABLE `avenue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `totalAwards` int(11) DEFAULT '0',
  `userId` int(10) unsigned NOT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `isPublished` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `awards_userid_foreign` (`userId`),
  CONSTRAINT `awards_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
INSERT INTO `awards` VALUES (1,'https://res.cloudinary.com/techugonew/image/upload/v1598881478/uDk6YisLtcgTsIX9FrnuBYZD.png','HEllo3',0,301,1,NULL,'2020-08-31 13:31:28'),(2,'https://res.cloudinary.com/techugonew/image/upload/v1598880715/_bka504Y8Ivz0G-nmNxoShZp.png','HEllo',0,301,1,NULL,'2020-08-31 13:31:57'),(3,'https://res.cloudinary.com/techugonew/image/upload/v1598880784/1nD52B70AYuuYsmDHLxdD9PH.png','HEllo',0,301,1,NULL,'2020-08-31 13:33:04'),(4,'https://res.cloudinary.com/techugonew/image/upload/v1598881385/4aeE-U5atIEookivmcnRo8SL.png','HEllo',0,301,1,NULL,'2020-08-31 13:43:06');
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `userId` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->for active,0->Inactive',
  PRIMARY KEY (`id`),
  KEY `brand_userid_foreign` (`userId`),
  CONSTRAINT `brand_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cardNo` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `expiry` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `cvv` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `userId` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bankName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `card_userid_foreign` (`userId`),
  CONSTRAINT `card_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uniqueId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `productId` int(10) unsigned NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `type` enum('1','0') COLLATE utf8_bin DEFAULT NULL COMMENT '1->EnquiryCart,0->LiveShopCart',
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->for active,0->Inactive',
  `deleted` enum('1','0') COLLATE utf8_bin DEFAULT '1' COMMENT '1->for active,0->Inactive',
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `expPrice` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cart_userid_foreign` (`userId`),
  KEY `cart_productid_foreign` (`productId`),
  CONSTRAINT `cart_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cart_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (28,308,'2020-08-30 11:04:05','CART-010001',71,100,'0',1,'1',NULL,0),(30,308,'2020-08-30 12:44:38','CART-010002',71,990,'1',1,'1',NULL,0);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `parentId` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `isActive` tinyint(1) DEFAULT '1',
  `banner_image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `deleted` enum('0','1') COLLATE utf8_bin DEFAULT '1' COMMENT '1->active record ,0->record deleted [soft delete]',
  PRIMARY KEY (`id`),
  KEY `category_parentid_foreign` (`parentId`),
  CONSTRAINT `category_parentid_foreign` FOREIGN KEY (`parentId`) REFERENCES `category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'',1,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','0'),(2,'Home & Living',1,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1595318406/vQt-VW0W1NFlr7sR55o_ZCUG.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(3,'GIFTING',1,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',0,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(4,'Decor',1,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1596209751/SiHfuQL-H7AGAA5mD4aq6Hwg.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(5,'Beauty & Wellness',1,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1596209725/qhAZRfouzk5ieCK3JWLTVBTg.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(6,'Jewelery',1,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1596209708/Y63iNYwHnRKvN0aI7WZR8T7-.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(7,'Paper & Novelty',1,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1596209693/-_QGJrMcCu2r-T7YRk-YSTjG.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(8,'Export Houses',1,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1596209668/W8Qi_6u6iItN8yurPRdeAd2L.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(9,'Hotel',1,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1596132461/laJt-J30yBDJ4tKRgHO1ZurT.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(10,'Trading Collections',2,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(11,'COVID-19 Resources',2,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(12,'Brand Values',3,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1596132587/Qwo_piNGNMs-jcpuIofV5yaL.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(13,'Recommended',3,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','0'),(14,'Shop ALL Home & Living',4,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(15,'Show New Arrivals',4,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(16,'Bath',5,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(17,'Bedding',5,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(18,'Candles & Holders',6,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(19,'Home Fragances',6,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(20,'Shop ALL Food & Drink',7,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(21,'Show New Arrivals',7,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(22,'Garden & Outdoor',8,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(23,'Home Accents',8,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(24,'Baking',9,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1596132503/sEapQ5Ed8ZdBo3MJ2uXILhvJ.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(25,'DIY Kits',9,'2020-07-13 10:48:35','https://res.cloudinary.com/techugonew/image/upload/v1596132490/tElidEKHknopPRGoglsH8f2-.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(26,'COVID-19 Resources Later',10,'2020-07-17 13:53:12','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(27,'COVID-19 Resources',10,'2020-07-18 09:08:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(28,'Brand Values',11,'2020-07-18 09:08:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(29,'Recommended',11,'2020-07-18 09:08:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(30,'Shop ALL Home & Living',12,'2020-07-18 09:08:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(31,'Show New Arrivals',12,'2020-07-18 09:08:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(32,'Bath',13,'2020-07-18 09:08:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(33,'Bedding',13,'2020-07-18 09:08:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(34,'Candles & Holders',14,'2020-07-18 09:08:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(35,'Home Fragances',14,'2020-07-18 09:08:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(36,'Shop ALL Food & Drink',15,'2020-07-18 09:08:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(37,'Show New Arrivals',15,'2020-07-18 09:08:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(38,'Garden & Outdoor',16,'2020-07-18 09:08:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(39,'Home Accents',16,'2020-07-18 09:08:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(40,'Baking',17,'2020-07-18 09:08:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(41,'DIY Kits',17,'2020-07-18 09:08:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(42,'COVID-19 Resources Later',18,'2020-07-18 09:08:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(58,'Clocks',1,'2020-07-21 07:36:48','https://res.cloudinary.com/techugonew/image/upload/v1595317007/NbsCW6GSPAqlcQD0QrHf4zQJ.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(59,'sdfsdf',NULL,'2020-07-21 09:25:05','https://res.cloudinary.com/techugonew/image/upload/v1595323505/YihyCfvbC5lSpp3X_bkf7qxL.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(60,'dfdsf',NULL,'2020-07-21 09:26:25','https://res.cloudinary.com/techugonew/image/upload/v1595323585/nQ2vyNVTdzxh9H_9NynyhBe0.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(61,'test',2,'2020-07-21 09:33:29','https://res.cloudinary.com/techugonew/image/upload/v1595324009/Qd2Y8zd0EJUvSPZzKTACpCrz.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(62,'his is ',30,'2020-07-21 13:32:05','https://res.cloudinary.com/techugonew/image/upload/v1595338323/-k2gHOQI8b7s0OoGT8TZpnzH.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(63,'ss',32,'2020-07-21 13:34:16','https://res.cloudinary.com/techugonew/image/upload/v1595338455/amPm78N4S-UYATbVFTqJwwfL.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','0'),(64,'ss',33,'2020-07-21 13:34:30','https://res.cloudinary.com/techugonew/image/upload/v1595338469/ngSMG6qQX7uMMk-opC9zhPIG.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','0'),(65,'Bedsheets',1,'2020-07-21 13:36:38','https://res.cloudinary.com/techugonew/image/upload/v1595338597/0ZjrpkeU8uo7PJhc3-XrgrwD.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(66,'PAINTING',65,'2020-07-21 13:37:05','https://res.cloudinary.com/techugonew/image/upload/v1596209998/og50D4OikBoI2hu_DgvH36Al.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(67,'sub',33,'2020-07-23 08:20:29','https://res.cloudinary.com/techugonew/image/upload/v1595492429/BiCd0HgkvwJBMldwGdPIO550.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1595516029/1Sksl883kO5Qut3uXMDrqZmK.png','1'),(68,'test',58,'2020-07-30 18:08:48','https://res.cloudinary.com/techugonew/image/upload/v1596132528/2_YXib0wamT2FOCqPOQeL8rt.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1596132527/9fgjs5WxTcvjMgm6QRsqKyS3.jpg','1'),(71,'Corporate Gifting',1,'2020-07-31 08:32:53','https://res.cloudinary.com/techugonew/image/upload/v1596184373/SPL1-J6PtuDCsLj_9-g95wKR.jpg',0,'https://res.cloudinary.com/techugonew/image/upload/v1596184372/6KhuxgT-rZYjVi8jjE0YId3l.jpg','1'),(72,'CUSTOMIZED pRODUCT',71,'2020-07-31 15:38:18','https://res.cloudinary.com/techugonew/image/upload/v1596209897/6Gvb8alMnttJvtzodgm61gE3.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1596209896/vfjZ-6Hn1IaZ4AayeUmQmQX2.png','1'),(73,'HOUSE KEEPING',65,'2020-07-31 15:39:14','https://res.cloudinary.com/techugonew/image/upload/v1596209954/6LrW5w5Aw5WNsORrXbOlSxED.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1596209952/RN7r88AwLQSoWiyYNRwVGgBa.png','1'),(76,'safasdf qwertyu wertyu yu qwert qwertyui',1,'2020-08-07 19:33:01','https://res.cloudinary.com/techugonew/image/upload/v1596828781/pUayAmvX3AFPrPEdUl_tO6G1.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1596828780/3RdU1TA9GG0F2oiMqTd6-ZJR.jpg','0'),(77,'ert',9,'2020-08-07 19:33:19','https://res.cloudinary.com/techugonew/image/upload/v1596828799/5cQaoVp9AG8n0W6fCqRKZDaU.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1596828798/OuQzO9wlmI1WmZKECENgmYqe.png','1'),(78,'asdf',8,'2020-08-07 19:33:48','https://res.cloudinary.com/techugonew/image/upload/v1596828828/JSVdz9KBnAt6cMvMqB-UP5Qo.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1596828827/ytaDfLNj--Fi68SSQNtdGS2Q.png','1'),(79,'qwerty',76,'2020-08-07 19:46:56','https://res.cloudinary.com/techugonew/image/upload/v1596829616/_vEe2mQeRPRgPBhtNk6zyyCU.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1596829614/uBdAzUlP0-cRIv4Zppb7gWph.jpg','1'),(80,'sdfsdfsd',71,'2020-08-08 11:25:12','https://res.cloudinary.com/techugonew/image/upload/v1596885911/txae_5_tsIT5l9S2Ik9YJ09n.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1596885910/eUuJr_UyEb_wDSp8DV6cRScr.jpg','0'),(81,'qwertyuiop',76,'2020-08-08 11:55:57','https://res.cloudinary.com/techugonew/image/upload/v1596887757/YCZ92o55RjwuWfskUPidrjjg.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1596887755/FCuT6_msHr7JbFH47FqW5Mr7.jpg','1'),(82,'RAJPAL',27,'2020-08-10 17:03:04','https://res.cloudinary.com/techugonew/image/upload/v1597078983/_gOcDkzdD1kUAlTzorR4Ajxb.jpg',1,'https://res.cloudinary.com/techugonew/image/upload/v1597078982/K37kYSgdCgrD0cgpaIaL9B_u.jpg','1');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EnqId` int(10) unsigned NOT NULL,
  `fromId` int(10) unsigned NOT NULL,
  `toId` int(10) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `files` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isRead` tinyint(1) DEFAULT '0' COMMENT '2->blue tik 1->for double tik ,0->UnRead',
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->Active,0->Inactive',
  `type` enum('delete','text','image','logistic','invoice','tracker','purchase','estimate','comment','price','general','description') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `chat_enqid_foreign` (`EnqId`),
  KEY `chat_fromid_foreign` (`fromId`),
  KEY `chat_toid_foreign` (`toId`),
  CONSTRAINT `chat_enqid_foreign` FOREIGN KEY (`EnqId`) REFERENCES `enquiries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chat_fromid_foreign` FOREIGN KEY (`fromId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chat_toid_foreign` FOREIGN KEY (`toId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=539 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (409,57,1,301,'test','',NULL,2,1,'description','2020-08-27 10:07:51',''),(410,57,1,302,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(411,57,1,303,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(412,57,1,304,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(413,57,1,307,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(414,57,1,314,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(415,57,1,322,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(416,57,1,323,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(417,57,1,324,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(418,57,1,325,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(419,57,1,329,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(420,57,1,330,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(421,57,1,331,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(422,57,1,332,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(423,57,1,333,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(424,57,1,334,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(425,57,1,335,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(426,57,1,336,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(427,57,1,337,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(428,57,1,338,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(429,57,1,339,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(430,57,1,340,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(431,57,1,341,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(432,57,1,342,'test','',NULL,0,1,'description','2020-08-27 10:07:51',''),(433,57,1,301,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg','11',2,0,'general','2020-08-27 10:07:51',''),(434,57,1,301,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg','11',2,0,'general','2020-08-27 10:07:51',''),(435,57,1,302,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(436,57,1,302,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(437,57,1,303,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(438,57,1,303,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(439,57,1,304,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(440,57,1,304,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(441,57,1,307,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(442,57,1,307,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(443,57,1,314,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(444,57,1,314,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(445,57,1,322,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(446,57,1,322,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(447,57,1,323,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(448,57,1,323,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(449,57,1,324,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(450,57,1,324,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(451,57,1,325,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(452,57,1,325,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(453,57,1,329,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(454,57,1,329,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(455,57,1,330,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(456,57,1,330,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(457,57,1,331,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(458,57,1,331,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(459,57,1,333,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(460,57,1,333,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(461,57,1,334,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(462,57,1,334,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(463,57,1,335,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(464,57,1,335,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(465,57,1,336,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(466,57,1,336,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(467,57,1,337,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(468,57,1,337,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(469,57,1,338,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(470,57,1,338,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(471,57,1,332,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(472,57,1,332,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(473,57,1,342,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(474,57,1,342,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(475,57,1,339,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(476,57,1,339,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(477,57,1,340,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(478,57,1,340,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(479,57,1,341,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(480,57,1,341,'','https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',NULL,0,1,'general','2020-08-27 10:07:51',''),(481,57,1,301,'',NULL,NULL,2,1,'comment','2020-08-27 10:08:43',''),(482,57,1,301,'',NULL,NULL,2,1,'comment','2020-08-27 10:09:32',''),(483,57,301,1,'','https://res.cloudinary.com/techugonew/image/upload/v1598523002/tPHE2_O-Aj_nvuj76yjwCCHx.png','11',2,0,'image','2020-08-27 10:10:03',''),(484,57,301,1,'',NULL,NULL,2,1,'comment','2020-08-27 10:10:31',''),(485,57,301,1,'',NULL,NULL,2,1,'price','2020-08-27 10:11:11',''),(486,57,301,1,'',NULL,NULL,2,1,'','2020-08-27 10:11:40',''),(487,57,301,1,'','https://res.cloudinary.com/techugonew/image/upload/v1598523944/ATDjtiCUCNg3FKiCBlFBTX8s.png',NULL,2,1,'image','2020-08-27 10:25:45',''),(488,57,301,1,'',NULL,NULL,2,1,'comment','2020-08-27 10:25:57',''),(489,57,1,301,'safdasdf',NULL,NULL,2,1,'text','2020-08-27 11:56:12',''),(490,57,1,301,'',NULL,NULL,2,1,'','2020-08-27 12:23:28',''),(491,58,1,301,'sdfsdf','',NULL,1,1,'description','2020-08-27 12:32:11',''),(492,58,1,302,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(493,58,1,303,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(494,58,1,304,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(495,58,1,307,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(496,58,1,314,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(497,58,1,322,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(498,58,1,323,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(499,58,1,324,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(500,58,1,325,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(501,58,1,329,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(502,58,1,330,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(503,58,1,331,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(504,58,1,332,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(505,58,1,333,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(506,58,1,334,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(507,58,1,335,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(508,58,1,336,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(509,58,1,337,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(510,58,1,338,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(511,58,1,339,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(512,58,1,340,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(513,58,1,341,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(514,58,1,342,'sdfsdf','',NULL,0,1,'description','2020-08-27 12:32:11',''),(515,58,1,301,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,1,1,'general','2020-08-27 12:32:11',''),(516,58,1,302,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(517,58,1,303,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(518,58,1,304,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(519,58,1,307,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(520,58,1,314,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(521,58,1,322,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(522,58,1,323,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(523,58,1,324,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(524,58,1,325,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(525,58,1,329,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(526,58,1,333,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(527,58,1,334,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(528,58,1,335,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(529,58,1,336,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(530,58,1,330,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(531,58,1,332,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(532,58,1,331,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(533,58,1,340,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(534,58,1,341,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(535,58,1,342,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(536,58,1,337,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(537,58,1,338,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11',''),(538,58,1,339,'','https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',NULL,0,1,'general','2020-08-27 12:32:11','');
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_bkp`
--

DROP TABLE IF EXISTS `chat_bkp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_bkp` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `EnqId` int(10) unsigned NOT NULL,
  `fromId` int(10) unsigned NOT NULL,
  `toId` int(10) unsigned NOT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci,
  `files` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isRead` tinyint(1) DEFAULT '0' COMMENT '2->blue tik 1->for double tik ,0->UnRead',
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->Active,0->Inactive',
  `type` enum('text','image','logistic','invoice','tracker') COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_bkp`
--

LOCK TABLES `chat_bkp` WRITE;
/*!40000 ALTER TABLE `chat_bkp` DISABLE KEYS */;
INSERT INTO `chat_bkp` VALUES (43,7,104,1,'YES',NULL,NULL,1,1,'text','2020-07-16 05:08:46'),(44,8,104,1,'HELLO',NULL,NULL,1,1,'text','2020-07-16 05:08:59'),(45,9,104,1,'YES',NULL,NULL,1,1,'text','2020-07-16 05:09:12'),(46,9,104,1,'hello',NULL,NULL,1,1,'text','2020-07-16 05:14:32'),(47,9,104,1,'getmsg',NULL,NULL,1,1,'text','2020-07-16 05:15:40'),(48,9,104,1,'','https://res.cloudinary.com/techugonew/image/upload/v1594828353/cefaWJSmAxP7MFO01x8Gomz9.png',NULL,0,0,'image','2020-07-16 05:16:14'),(49,9,104,1,'jyiyui',NULL,NULL,1,1,'text','2020-07-16 05:19:25'),(50,9,104,1,'hello','https://res.cloudinary.com/techugonew/image/upload/v1594828353/cefaWJSmAxP7MFO01x8Gomz9.png',NULL,0,0,'image','2020-07-16 05:20:01'),(51,9,104,1,'mdndfm,ndf',NULL,NULL,1,1,'text','2020-07-16 05:22:43'),(52,8,104,1,'ashjh',NULL,NULL,1,1,'text','2020-07-16 05:23:22'),(53,8,104,1,'fdfg',NULL,NULL,1,1,'text','2020-07-16 05:23:30'),(54,8,104,1,'1',NULL,NULL,1,1,'text','2020-07-16 05:23:56'),(92,8,104,1,'5',NULL,NULL,1,1,'text','2020-07-16 11:26:39'),(93,8,104,1,'6',NULL,NULL,1,1,'text','2020-07-16 11:26:43'),(94,8,104,1,'8',NULL,NULL,1,1,'text','2020-07-16 11:26:51'),(95,9,104,1,'comments11','https://res.cloudinary.com/techugonew/image/upload/v1594899584/U2HBCfJBt795rHtPpsxw-kJl.png','190',0,0,'image','2020-07-16 11:39:44'),(96,9,104,1,NULL,'https://res.cloudinary.com/techugonew/image/upload/v1594899606/eMz9mcO9pM4tdUs0Z-1uf5Lj.png',NULL,0,0,'image','2020-07-16 11:40:07'),(97,9,104,1,'123comments','https://res.cloudinary.com/techugonew/image/upload/v1594900274/03wL-rSGairmR_LskcG_R3IS.png','9290',0,0,'image','2020-07-16 11:51:15'),(98,9,104,1,'hello','https://res.cloudinary.com/techugonew/image/upload/v1594900806/Z2Z37PPtZJ2dwIKUcumNjuK9.png','200',0,0,'image','2020-07-16 12:00:06'),(99,7,184,1,'hello',NULL,NULL,1,1,'text','2020-07-16 12:06:36'),(100,7,184,1,'mew',NULL,NULL,1,1,'text','2020-07-16 12:06:41'),(101,9,104,1,'Good','https://res.cloudinary.com/techugonew/image/upload/v1594903663/J9W-PinltNO-SJoqRjranO1m.png','1000',0,0,'image','2020-07-16 12:47:44'),(102,9,104,1,NULL,'https://res.cloudinary.com/techugonew/image/upload/v1594978815/8mjKUkhLK5nWFigKtXp1Npza.png','25',0,0,'image','2020-07-17 09:40:16'),(103,9,104,1,'     ','https://res.cloudinary.com/techugonew/image/upload/v1594981789/7KcqqNeKAVA-6xIL3iflh_M-.png','10',1,1,'image','2020-07-17 10:29:50'),(104,9,184,1,'dsfjjkdfhjdfjjdkf',NULL,NULL,1,1,'text','2020-07-17 10:37:55'),(105,9,184,1,'gfdffd',NULL,NULL,1,1,'text','2020-07-17 10:38:02'),(106,9,184,1,NULL,'https://res.cloudinary.com/techugonew/image/upload/v1594982424/NDOuoG6FFBSNiLJFAFeiCk6Y.png',NULL,1,1,'image','2020-07-17 10:40:24'),(107,9,184,1,NULL,'https://res.cloudinary.com/techugonew/image/upload/v1594982557/l7LcwM0TOhinfb0AHi2bDbY_.png',NULL,1,1,'image','2020-07-17 10:42:37'),(108,7,184,1,'MMC.,',NULL,NULL,1,1,'text','2020-07-17 10:57:21'),(109,7,184,1,'dsfdsdsdf','https://res.cloudinary.com/techugonew/image/upload/v1594982557/l7LcwM0TOhinfb0AHi2bDbY_.png',NULL,1,1,'image','2020-07-17 10:57:32'),(110,7,184,1,'afssdfddf','https://res.cloudinary.com/techugonew/image/upload/v1594982557/l7LcwM0TOhinfb0AHi2bDbY_.png',NULL,1,1,'image','2020-07-17 10:57:40'),(111,7,184,1,'cxzcx','https://res.cloudinary.com/techugonew/image/upload/v1594982557/l7LcwM0TOhinfb0AHi2bDbY_.png',NULL,1,1,'image','2020-07-17 10:57:45'),(112,7,184,1,'1','https://res.cloudinary.com/techugonew/image/upload/v1594982557/l7LcwM0TOhinfb0AHi2bDbY_.png',NULL,1,1,'image','2020-07-17 11:01:23'),(113,7,184,1,'2',NULL,NULL,1,1,'text','2020-07-17 11:01:29'),(114,7,184,1,'3',NULL,NULL,1,1,'text','2020-07-17 11:01:34'),(115,7,184,1,'4',NULL,NULL,1,1,'text','2020-07-17 11:01:40'),(116,7,184,1,'sadkjasdhhs',NULL,NULL,1,1,'text','2020-07-17 12:00:47'),(117,7,184,1,'fghghhh',NULL,NULL,1,1,'text','2020-07-17 12:02:29'),(144,8,104,1,'hello','https://res.cloudinary.com/techugonew/image/upload/v1594988863/Dv1J-bTvSyjirSv12-ItjBqa.png','100',1,1,'image','2020-07-17 12:27:43'),(147,6,184,1,'1',NULL,NULL,1,1,'text','2020-07-18 07:00:36'),(148,6,184,1,'2',NULL,NULL,1,1,'text','2020-07-18 07:00:37'),(149,6,184,1,'3',NULL,NULL,1,1,'text','2020-07-18 07:00:39'),(150,6,184,1,'4',NULL,NULL,1,1,'text','2020-07-18 07:00:41'),(151,6,184,1,'5',NULL,NULL,1,1,'text','2020-07-18 07:00:42'),(152,6,184,1,'6',NULL,NULL,1,1,'text','2020-07-18 07:00:44'),(153,6,184,1,'7',NULL,NULL,1,1,'text','2020-07-18 07:00:45'),(154,6,184,1,'8',NULL,NULL,1,1,'text','2020-07-18 07:00:46'),(155,6,184,1,'9',NULL,NULL,1,1,'text','2020-07-18 07:00:48'),(156,6,184,1,'10',NULL,NULL,1,1,'text','2020-07-18 07:00:49'),(157,6,184,1,'11',NULL,NULL,1,1,'text','2020-07-18 07:01:01'),(158,6,184,1,'12',NULL,NULL,1,1,'text','2020-07-18 07:01:02'),(159,6,184,1,'13',NULL,NULL,1,1,'text','2020-07-18 07:01:04'),(160,6,184,1,'14',NULL,NULL,1,1,'text','2020-07-18 07:01:05'),(161,6,184,1,'15',NULL,NULL,1,1,'text','2020-07-18 07:01:06'),(162,6,184,1,'16',NULL,NULL,1,1,'text','2020-07-18 07:01:08'),(163,6,184,1,'17',NULL,NULL,1,1,'text','2020-07-18 07:01:09'),(164,6,184,1,'18',NULL,NULL,1,1,'text','2020-07-18 07:01:10'),(165,6,184,1,'19',NULL,NULL,1,1,'text','2020-07-18 07:01:12'),(166,6,184,1,'20',NULL,NULL,1,1,'text','2020-07-18 07:01:13'),(167,6,184,1,'21',NULL,NULL,1,1,'text','2020-07-18 07:01:19'),(168,6,184,1,'22',NULL,NULL,1,1,'text','2020-07-18 07:01:21'),(169,6,184,1,'23',NULL,NULL,1,1,'text','2020-07-18 07:01:22'),(170,6,184,1,NULL,'https://res.cloudinary.com/techugonew/image/upload/v1595056069/AfwBKmjA1IisfvQZ7HFGasug.png',NULL,1,1,'image','2020-07-18 07:07:50'),(171,6,184,1,'mmnmnmm',NULL,NULL,1,1,'text','2020-07-18 07:46:44'),(172,9,184,1,'ddd',NULL,NULL,1,1,'text','2020-07-18 12:47:54'),(173,6,184,1,'24',NULL,NULL,1,1,'text','2020-07-20 11:19:35'),(174,6,184,1,'26',NULL,NULL,1,1,'text','2020-07-20 11:19:47'),(175,6,184,1,'27',NULL,NULL,1,1,'text','2020-07-20 11:19:57'),(176,6,184,1,NULL,'https://res.cloudinary.com/techugonew/image/upload/v1595244782/cOPT78Pr5o5XyRgLlAK7G24q.png',NULL,1,1,'image','2020-07-20 11:33:02'),(177,7,1,184,'RAJPALmsdbjdbfkd',NULL,NULL,1,1,'text','2020-07-20 12:12:22'),(178,7,1,184,'RAJPALmsdbjdbfkd',NULL,NULL,1,1,'text','2020-07-20 12:13:26'),(179,7,1,184,'RAJPALmsdbjdbfkd',NULL,NULL,1,1,'text','2020-07-20 12:14:10'),(180,7,184,1,'hello',NULL,NULL,1,1,'text','2020-07-20 12:14:51'),(181,7,184,1,'1',NULL,NULL,1,1,'text','2020-07-20 12:16:47'),(182,7,184,1,'2',NULL,NULL,1,1,'text','2020-07-20 12:16:53'),(183,7,184,1,'3',NULL,NULL,1,1,'text','2020-07-20 12:17:02'),(184,7,184,1,'4',NULL,NULL,1,1,'text','2020-07-20 12:17:13'),(185,6,184,1,'lklk',NULL,NULL,1,1,'text','2020-07-20 12:25:46'),(186,6,184,1,'12',NULL,NULL,1,1,'text','2020-07-20 12:28:11'),(187,8,104,1,'','https://res.cloudinary.com/techugonew/image/upload/v1595317117/g1OVDeRd8W5cUKyuxkM6_twX.png',NULL,1,1,'image','2020-07-21 07:38:38'),(188,8,184,1,'111',NULL,NULL,1,1,'text','2020-07-21 07:38:44'),(189,8,184,1,'4454',NULL,NULL,1,1,'text','2020-07-21 07:38:52'),(190,9,184,1,'11',NULL,NULL,1,1,'text','2020-07-21 07:39:01'),(191,8,104,1,'',NULL,NULL,1,1,'text','2020-07-21 07:41:36'),(192,7,184,1,'112',NULL,NULL,1,1,'text','2020-07-21 07:44:55'),(193,7,184,1,'121',NULL,NULL,1,1,'text','2020-07-21 07:47:26'),(194,7,184,1,'85',NULL,NULL,1,1,'text','2020-07-21 07:47:31'),(195,7,184,1,'98',NULL,NULL,1,1,'text','2020-07-21 07:47:34'),(196,7,184,1,'233',NULL,NULL,1,1,'text','2020-07-21 07:47:36'),(197,7,1,184,'RAJPALmsdbjdbfkd',NULL,NULL,1,1,'text','2020-07-21 08:02:25'),(198,7,1,184,'RAJPALmsdbjdbfkd',NULL,NULL,1,1,'text','2020-07-21 08:05:56'),(199,7,1,184,'RAJPALmsdbjdbfkd',NULL,NULL,1,1,'text','2020-07-21 08:07:06'),(200,7,1,184,'RAJPALmsdbjdbfkd',NULL,NULL,1,1,'text','2020-07-21 08:08:11'),(201,7,1,184,'RAJPALmsdbjdbfkd',NULL,NULL,1,1,'text','2020-07-21 08:19:11'),(202,7,1,184,'RAJPALmsdbjdbfkd',NULL,NULL,1,1,'text','2020-07-21 08:25:30'),(203,17,184,1,'djgkljkljkjfjdjfklgklfjklsdf',NULL,NULL,1,1,'text','2020-07-21 13:26:27'),(204,17,184,1,NULL,'https://res.cloudinary.com/techugonew/image/upload/v1595395843/LPVYJ80lw5zE_Jb3lQp7s-sX.png',NULL,1,1,'image','2020-07-22 05:30:44'),(205,17,184,1,NULL,'https://res.cloudinary.com/techugonew/image/upload/v1595401732/kYBvXeCPx8KwEKfo17YB_5kR.png',NULL,1,1,'image','2020-07-22 07:08:52'),(206,17,184,1,NULL,'https://res.cloudinary.com/techugonew/image/upload/v1595401792/v7CzSLN0yPhBd8XcOwt8ROOM.png',NULL,1,1,'image','2020-07-22 07:09:52'),(207,17,184,1,NULL,'https://res.cloudinary.com/techugonew/image/upload/v1595401835/WxTnZ3Nh_R4fD2eFa6lOTCfB.png',NULL,1,1,'image','2020-07-22 07:10:36'),(208,17,184,1,NULL,'https://res.cloudinary.com/techugonew/image/upload/v1595402643/dJqopKpg5GdbSdY07bk3gY6s.png',NULL,1,1,'image','2020-07-22 07:24:04'),(209,17,184,1,NULL,'https://res.cloudinary.com/techugonew/image/upload/v1595403327/9Kr8_j_ZbJrpgjw8_iwb8Tjq.png',NULL,1,1,'image','2020-07-22 07:35:27'),(210,9,179,1,NULL,'https://res.cloudinary.com/techugonew/image/upload/v1595489677/GlTrevLuSrWOxwSBRRWKwnxR.png',NULL,1,1,'image','2020-07-23 07:34:38'),(211,9,179,1,NULL,'https://res.cloudinary.com/techugonew/image/upload/v1595490560/ZHe1esdd8RcAVC-1dNlpY6lm.png',NULL,1,1,'image','2020-07-23 07:49:21'),(212,9,179,1,'asdjsdjkjdsasadjkasdjk',NULL,NULL,1,1,'text','2020-07-23 07:52:51'),(213,9,179,1,'dhdh',NULL,NULL,1,1,'text','2020-07-23 07:52:57'),(214,9,179,1,'aa',NULL,NULL,1,1,'text','2020-07-23 07:53:10'),(215,9,179,1,'ss',NULL,NULL,1,1,'text','2020-07-23 07:53:21'),(216,6,199,1,'testing',NULL,NULL,1,1,'text','2020-07-23 17:40:15'),(217,6,199,1,'please enter comment','https://res.cloudinary.com/techugonew/image/upload/v1595526054/qcwYeIe01Pm4lCYVObcM82Oj.png','100',1,1,'image','2020-07-23 17:40:55'),(218,6,199,1,'test',NULL,NULL,1,1,'text','2020-07-23 17:42:56'),(219,6,199,1,'on',NULL,NULL,1,1,'text','2020-07-23 17:42:58'),(220,6,199,1,'ok test one',NULL,NULL,1,1,'text','2020-07-23 17:43:15'),(221,7,1,184,'RAJPALmsdbjdbfkd',NULL,NULL,1,1,'text','2020-07-24 08:01:58'),(222,7,1,184,'abcd',NULL,NULL,1,1,'text','2020-07-24 08:03:14'),(223,6,199,1,'heelo rajpal',NULL,NULL,1,1,'text','2020-07-24 08:06:30'),(224,6,198,1,'test',NULL,NULL,0,1,'text','2020-07-24 08:28:34'),(225,6,198,1,'what a world',NULL,NULL,0,1,'text','2020-07-24 08:28:43'),(226,6,198,1,'Deep','https://res.cloudinary.com/techugonew/image/upload/v1595580509/t7JI5g_8cknl7UxtSwY0iaal.png','123',0,1,'image','2020-07-24 08:48:30'),(227,6,198,1,'key words','https://res.cloudinary.com/techugonew/image/upload/v1595580732/B7CU7QC3dmsVrbOlb9-MPa2O.png','123',0,0,'image','2020-07-24 08:52:12'),(228,6,198,1,NULL,'https://res.cloudinary.com/techugonew/image/upload/v1595581286/IgW7Vn5XpN1Lkz2MUGtv5Rf_.png',NULL,0,0,'image','2020-07-24 09:01:27'),(229,6,198,1,'khcgkxkyxjg',NULL,NULL,0,1,'text','2020-07-24 09:10:27'),(230,6,198,1,'lk mxggxkx',NULL,NULL,0,1,'text','2020-07-24 09:10:31'),(231,6,198,1,'iodoufoydf',NULL,NULL,0,1,'text','2020-07-24 09:10:33'),(232,6,198,1,',kgxkgxiyx',NULL,NULL,0,1,'text','2020-07-24 09:10:34'),(233,6,198,1,'jfzkgxiyxyixix',NULL,NULL,0,1,'text','2020-07-24 09:10:37'),(234,6,198,1,'jfzkktxyoxy',NULL,NULL,0,1,'text','2020-07-24 09:10:38'),(235,6,198,1,'kgxkyxiyxotesti',NULL,NULL,0,1,'text','2020-07-24 09:10:42'),(236,6,198,1,'',NULL,NULL,0,1,'text','2020-07-24 09:10:55'),(237,6,202,1,'dfgfgf',NULL,NULL,0,1,'text','2020-07-24 10:21:34'),(238,9,104,1,'dgegs','https://res.cloudinary.com/techugonew/image/upload/v1595587279/FxrE32Cyik9LBlRFAkDdrR7K.png','100',0,1,'image','2020-07-24 10:41:19'),(239,6,202,1,'11',NULL,NULL,0,1,'text','2020-07-24 11:18:53'),(240,6,202,1,'22',NULL,NULL,0,1,'text','2020-07-24 11:21:12'),(241,6,202,1,'1232',NULL,NULL,0,1,'text','2020-07-24 11:30:48'),(242,6,202,1,'12121',NULL,NULL,0,1,'text','2020-07-24 11:41:35'),(243,6,202,1,'gohf',NULL,NULL,0,1,'text','2020-07-24 11:48:54'),(244,6,202,1,'111',NULL,NULL,0,1,'text','2020-07-24 11:49:32'),(245,22,184,1,NULL,'https://res.cloudinary.com/techugonew/image/upload/v1595609550/GVnuDMd9GNG2Um91WESxZZzv.png',NULL,0,1,'image','2020-07-24 16:52:30'),(246,22,184,1,'gur',NULL,NULL,0,1,'text','2020-07-24 16:53:38'),(247,22,184,1,'',NULL,NULL,0,1,'text','2020-07-24 16:53:39'),(248,22,184,1,'',NULL,NULL,0,1,'text','2020-07-24 16:54:31'),(249,22,184,1,NULL,'https://res.cloudinary.com/techugonew/image/upload/v1595610010/wW3kNc52D-cBlUhoSYMLZric.png',NULL,0,1,'image','2020-07-24 17:00:10'),(250,8,104,1,NULL,'https://res.cloudinary.com/techugonew/image/upload/v1595741280/gSy6Hqyuvar1FnG5q9_mYcz2.png',NULL,0,1,'image','2020-07-26 05:28:01'),(251,9,179,1,'zkfka',NULL,NULL,0,1,'text','2020-07-27 04:28:30'),(252,9,179,1,'xvj',NULL,NULL,0,1,'text','2020-07-27 04:28:33'),(253,9,179,1,'arg',NULL,NULL,0,1,'text','2020-07-27 04:28:35');
/*!40000 ALTER TABLE `chat_bkp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms`
--

DROP TABLE IF EXISTS `cms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` longtext COLLATE utf8_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `link` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `viewType` enum('web','app') COLLATE utf8_bin DEFAULT 'web' COMMENT 'web->for Websites,app->for App',
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->for active,0->Inactive',
  `deleted` enum('1','0') COLLATE utf8_bin DEFAULT '1' COMMENT '1->for active,0->Inactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms`
--

LOCK TABLES `cms` WRITE;
/*!40000 ALTER TABLE `cms` DISABLE KEYS */;
INSERT INTO `cms` VALUES (1,'About us','TEST','2020-07-08 19:14:26','','','','web',1,'1'),(2,'Patch-message','','2020-07-09 03:41:59','TEST','','','web',1,'1'),(3,'About us','About Us','2020-07-09 06:13:44','','','','web',1,'1'),(4,'About us','HELLO','2020-07-18 17:35:59','','','','web',1,'1'),(5,'Banner','We are a young team of artists, designers, poets, photographers, engineers and social workers, who are passionate towards reviving the traditional creative art forms of India.','2020-07-18 17:38:14','sadsd','https://res.cloudinary.com/techugonew/image/upload/v1595502299/GGhC8wj-gNEynS1rru1hi9Fu.png','RAJPAL','web',1,'1'),(6,'Faq','JI','2020-07-18 17:39:40','HELLO','','','web',1,'1'),(7,'Banner','We are a young team of artists, designers, poets, photographers, engineers and social workers, who are passionate towards reviving the traditional creative art forms of India.','2020-07-18 17:40:30','BNANE1','https://res.cloudinary.com/techugonew/image/upload/v1595502299/GGhC8wj-gNEynS1rru1hi9Fu.png','Top Banner','web',1,'1'),(8,'USP','','2020-07-18 17:41:09','USP','93e252edd7b9421b8b4c9d5a4ab6a3f11595094069001.jpeg','','web',1,'1'),(9,'Banner','We are a young team of artists, designers, poets, photographers, engineers and social workers, who are passionate towards reviving the traditional creative art forms of India.','2020-07-18 17:41:29','MANaGE','https://res.cloudinary.com/techugonew/image/upload/v1595502299/GGhC8wj-gNEynS1rru1hi9Fu.png','','web',1,'1'),(10,'Testimonial','d','2020-07-18 19:43:47','a','e14f9fa93847f51c4708b9eef3cc0bfc1595101426828.jpeg','sd','web',1,'1'),(11,'About us','Hello','2020-07-19 06:49:34','','','','web',1,'1'),(12,'Testimonial','vv','2020-07-19 06:58:39','dd','022718f5d4c0a401d496fa5d62c6f31a1595141918991.jpeg','aa','web',1,'1'),(13,'Patch-message','','2020-07-19 06:59:51','s','','','web',1,'1'),(14,'Testimonial','dcdsdcsdfdsdfsdf','2020-07-31 09:10:37','dsfd','https://res.cloudinary.com/techugonew/image/upload/v1596186637/ZnEtE-87uECc1lT3SygTrxeV.png','dsf','web',1,'1'),(15,'About us','asdfasfdaf','2020-07-31 15:16:52',NULL,NULL,NULL,'web',1,'1'),(16,'Testimonial','sdfghjkl','2020-08-07 19:47:56','fdgjk',NULL,'fdgh','web',1,'1'),(17,'About us','description','2020-08-09 13:44:24','',NULL,'','web',1,'1'),(18,'Banner','','2020-08-10 05:23:04','dfsdf','https://res.cloudinary.com/techugonew/image/upload/v1597036984/CaVjOx9gXA4hQVdVYnZYlSNK.jpg','Top Banner','web',1,'1'),(19,'About us','sdfsd','2020-08-10 05:34:54',NULL,NULL,NULL,'web',1,'1'),(20,'About us','sddsfsdf','2020-08-10 05:36:58',NULL,NULL,NULL,'web',1,'1'),(21,'About us','sddsfsdf','2020-08-10 05:36:58',NULL,NULL,NULL,'web',1,'1'),(22,'Testimonial','sdfsdf','2020-08-10 05:37:22','sdfsdf','https://res.cloudinary.com/techugonew/image/upload/v1597037842/AmXJobVpK9B-g4RHMZSdr8ZR.jpg','sdfsdf','web',1,'1'),(23,'Testimonial','sdfsdfsdfdsf','2020-08-10 05:39:00','sdfdsf','https://res.cloudinary.com/techugonew/image/upload/v1597037939/OHAqFJM01VepPgQF5cX13xtQ.jpg','sdfsdf','web',1,'1'),(24,'Testimonial','dfgdfgfdg','2020-08-10 05:39:53','dfgdfg','https://res.cloudinary.com/techugonew/image/upload/v1597037993/I0nl6-nissZSTt3P8lLYWlGO.jpg','gfgdf','web',1,'1'),(25,'Faq','sdfsdfds','2020-08-10 05:40:41','fdgfdg',NULL,'','web',1,'1'),(26,'Faq','sdfsdfsdf','2020-08-10 05:40:50','dfdsfsdf',NULL,'','web',1,'1'),(27,'Faq','sdfdsf','2020-08-10 05:40:59','sdfsdf',NULL,'','web',1,'1'),(28,'Patch-message','','2020-08-10 05:42:00','sdfsdf',NULL,'','web',1,'1'),(29,'Patch-message','','2020-08-10 05:42:14','fgfg',NULL,'','web',1,'1'),(30,'USP','','2020-08-10 05:42:24','sdfsdf',NULL,'','web',1,'1'),(31,'USP','','2020-08-10 05:42:28','sdfdsf',NULL,'','web',1,'1'),(32,'Industries','sdfsdfsdf','2020-08-10 05:42:35','sdfdsf',NULL,'','web',1,'1'),(33,'Industries','sadfasdf','2020-08-10 06:28:49','sdafdfas',NULL,'','web',1,'1'),(34,'Industries','sadfasdf','2020-08-10 06:29:07','asdfsadf','https://res.cloudinary.com/techugonew/image/upload/v1597040946/zzK4p0DcQ5Cwj1upSu8ymiAl.jpg','','web',1,'1'),(35,'Faq','asdfsadf','2020-08-10 06:29:22','asdfasdf',NULL,'','web',1,'1'),(36,'USP','','2020-08-10 06:29:38','asdfasdfasfdasdf',NULL,'','web',1,'1'),(37,'USP','','2020-08-10 06:31:38','sdfsdf',NULL,'','web',1,'1'),(38,'USP','','2020-08-10 06:31:38','sdfsdf',NULL,'','web',1,'1'),(39,'USP','','2020-08-10 06:31:51','sdfffffffffffff','https://res.cloudinary.com/techugonew/image/upload/v1597041111/Nr_xGDZgWqjtAqaf5hq_SqpG.png','','web',1,'1'),(40,'Banner','','2020-08-10 08:40:58','Test','https://res.cloudinary.com/techugonew/image/upload/v1597048858/AeIn24bQ2hRCVu46TCSyN6jt.jpg','Top Banner','web',1,'1'),(41,'About us','Testset','2020-08-10 17:06:02',NULL,NULL,NULL,'web',1,'1'),(42,'About us','e','2020-08-10 17:06:09',NULL,NULL,NULL,'web',1,'1'),(43,'Testimonial','sdf','2020-08-10 17:06:21','sdf','https://res.cloudinary.com/techugonew/image/upload/v1597079181/YkDU-bgkDO8G_O_8oluvF_As.jpg','df','web',1,'1'),(44,'Faq','wer','2020-08-10 17:06:29','we',NULL,'','web',1,'1'),(45,'Patch-message','','2020-08-10 17:06:39','asd',NULL,'','web',1,'1'),(46,'About us','jhmghfhvc','2020-08-11 12:11:32',NULL,NULL,NULL,'web',1,'1'),(47,'USP','','2020-08-11 12:13:23','vghgfh','https://res.cloudinary.com/techugonew/image/upload/v1597148003/Mm6kdOKuuDvqIRE7GDRtGt4j.png','','web',1,'1');
/*!40000 ALTER TABLE `cms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_history`
--

DROP TABLE IF EXISTS `comment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chatId` int(10) unsigned NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->Active,0->Inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `comment_history_chatid_foreign` (`chatId`),
  CONSTRAINT `comment_history_chatid_foreign` FOREIGN KEY (`chatId`) REFERENCES `chat` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_history`
--

LOCK TABLES `comment_history` WRITE;
/*!40000 ALTER TABLE `comment_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_history`
--

DROP TABLE IF EXISTS `cron_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `body` text COLLATE utf8_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_history`
--

LOCK TABLES `cron_history` WRITE;
/*!40000 ALTER TABLE `cron_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_important_sample`
--

DROP TABLE IF EXISTS `customer_important_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_important_sample` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `country` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_important_sample`
--

LOCK TABLES `customer_important_sample` WRITE;
/*!40000 ALTER TABLE `customer_important_sample` DISABLE KEYS */;
INSERT INTO `customer_important_sample` VALUES (1,'Home Made','https://res.cloudinary.com/techugonew/image/upload/v1597754042/CZXyCJtlUXKTXc9tfspD2Wyr.jpg','2020-07-13 10:48:35','India'),(3,'Made in India','https://res.cloudinary.com/techugonew/image/upload/v1597754042/CZXyCJtlUXKTXc9tfspD2Wyr.jpg','2020-07-13 10:48:35',NULL),(4,'Made Locally','https://res.cloudinary.com/techugonew/image/upload/v1597754042/CZXyCJtlUXKTXc9tfspD2Wyr.jpg','2020-07-13 10:48:35',NULL),(5,'Eco-friendly','https://res.cloudinary.com/techugonew/image/upload/v1597754042/CZXyCJtlUXKTXc9tfspD2Wyr.jpg','2020-07-13 10:48:35',NULL),(6,'Not Sold On Amazon','https://res.cloudinary.com/techugonew/image/upload/v1597755010/XX7DxvjvEp0lCxxt5gorCx1S.jpg','2020-07-13 10:48:35','India'),(8,'sdfsdf','https://res.cloudinary.com/techugonew/image/upload/v1597753903/QGctu6EqvZgPSjM3Bb2skqmy.jpg','2020-08-18 12:31:43','India'),(9,'test','https://res.cloudinary.com/techugonew/image/upload/v1597778320/kAkXeF1X6mtT0pJgSnb6SvqZ.jpg','2020-08-18 19:18:40','India');
/*!40000 ALTER TABLE `customer_important_sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiries`
--

DROP TABLE IF EXISTS `enquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enquiries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniqueId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `productId` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `qty` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `expPrice` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `userId` int(10) unsigned DEFAULT NULL,
  `mailBy` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mailSubject` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mailBody` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `isGenrate` enum('0','1','2','3') COLLATE utf8_bin DEFAULT '0' COMMENT '0->not Assign,1->Assign open to all,2->Assign to particuler group)',
  `craftId` int(11) DEFAULT NULL,
  `typeOfEnquiry` enum('','1','2','3') COLLATE utf8_bin DEFAULT '' COMMENT '1->lead Enquiry,2->Email Enquiry,3->website Enquiry',
  `status` enum('0','1') COLLATE utf8_bin DEFAULT '0' COMMENT '0->open,1->close',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->for active,0->Inactive',
  `updated_at` datetime DEFAULT NULL,
  `deleted` enum('0','1') COLLATE utf8_bin DEFAULT '1' COMMENT '1->active record ,0->record deleted [soft delete]',
  `materialId` int(11) DEFAULT NULL,
  `requestTo` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `update_status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enquiries_productid_foreign` (`productId`),
  KEY `enquiries_userid_foreign` (`userId`),
  CONSTRAINT `enquiries_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `enquiries_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiries`
--

LOCK TABLES `enquiries` WRITE;
/*!40000 ALTER TABLE `enquiries` DISABLE KEYS */;
INSERT INTO `enquiries` VALUES (57,'ENQUIRY-010001',NULL,'new enquire','test',NULL,NULL,1,NULL,NULL,NULL,'1',22,'','0','2020-08-27 10:07:51',1,NULL,'1',315,'All','enquiry forwared to artisan'),(58,'ENQUIRY-010002',NULL,'sdfsd','sdfsdf',NULL,NULL,1,NULL,NULL,NULL,'1',22,'','0','2020-08-27 12:32:11',1,NULL,'1',315,'All','enquiry forwared to artisan'),(59,'ENQUIRY-010003',72,NULL,'very nice product, i like to buy more , can you provide the same in expected price. Thank you','188',NULL,308,NULL,NULL,NULL,'0',NULL,'3','0','2020-08-27 19:09:05',1,NULL,'1',NULL,NULL,NULL),(60,'ENQUIRY-010004',71,NULL,'I would like to buy this product for reselling. In bulk please provide it live so that i can buy','23083','120000',308,NULL,NULL,NULL,'0',NULL,'3','0','2020-08-27 19:10:40',1,NULL,'1',NULL,NULL,NULL);
/*!40000 ALTER TABLE `enquiries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiry_attachment`
--

DROP TABLE IF EXISTS `enquiry_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enquiry_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `enqId` int(10) unsigned NOT NULL,
  `attachment` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->Active the Record,0->Not Active the Record',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `enquiry_attachment_enqid_foreign` (`enqId`),
  CONSTRAINT `enquiry_attachment_enqid_foreign` FOREIGN KEY (`enqId`) REFERENCES `enquiries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiry_attachment`
--

LOCK TABLES `enquiry_attachment` WRITE;
/*!40000 ALTER TABLE `enquiry_attachment` DISABLE KEYS */;
INSERT INTO `enquiry_attachment` VALUES (53,57,'https://res.cloudinary.com/techugonew/image/upload/v1598522870/tmV7QujQYDEUBuH8TAqPIaDc.jpg',1,'2020-08-27 10:07:51'),(54,57,'https://res.cloudinary.com/techugonew/image/upload/v1598522870/DFILTGoSkZ0jPPv0wObeXfOh.jpg',1,'2020-08-27 10:07:51'),(55,58,'https://res.cloudinary.com/techugonew/image/upload/v1598531530/D91bS0VWMDc4fCol_yjf02hP.jpg',1,'2020-08-27 12:32:11');
/*!40000 ALTER TABLE `enquiry_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiry_order`
--

DROP TABLE IF EXISTS `enquiry_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enquiry_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniqueId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `enqId` int(10) unsigned NOT NULL,
  `assignUserId` int(10) unsigned NOT NULL,
  `adminAssign` tinyint(1) DEFAULT '0' COMMENT '1->assign,0->not assign',
  `orderAccept` tinyint(1) DEFAULT '0' COMMENT '0->pending,1->Accept the order,2->Reject the order',
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->Active the Record,0->Not Active the Record',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `estimateUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `poUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `invoiceUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enquiry_order_enqid_foreign` (`enqId`),
  KEY `enquiry_order_assignuserid_foreign` (`assignUserId`),
  KEY `enquiry_order_updated_by_foreign` (`updated_by`),
  KEY `enquiry_order_created_by_foreign` (`created_by`),
  CONSTRAINT `enquiry_order_assignuserid_foreign` FOREIGN KEY (`assignUserId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `enquiry_order_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `enquiry_order_enqid_foreign` FOREIGN KEY (`enqId`) REFERENCES `enquiries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `enquiry_order_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiry_order`
--

LOCK TABLES `enquiry_order` WRITE;
/*!40000 ALTER TABLE `enquiry_order` DISABLE KEYS */;
INSERT INTO `enquiry_order` VALUES (963,NULL,57,301,1,1,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(964,NULL,57,302,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(965,NULL,57,301,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(966,NULL,57,304,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(967,NULL,57,307,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(968,NULL,57,314,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(969,NULL,57,322,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(970,NULL,57,323,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(971,NULL,57,324,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(972,NULL,57,325,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(973,NULL,57,329,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(974,NULL,57,330,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(975,NULL,57,331,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(976,NULL,57,333,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(977,NULL,57,334,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(978,NULL,57,335,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(979,NULL,57,336,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(980,NULL,57,337,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(981,NULL,57,338,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(982,NULL,57,332,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(983,NULL,57,342,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(984,NULL,57,339,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(985,NULL,57,340,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(986,NULL,57,341,0,0,1,'2020-08-27 10:07:51',NULL,NULL,1,NULL,NULL,NULL),(987,NULL,58,301,1,1,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(988,NULL,58,302,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(989,NULL,58,303,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(990,NULL,58,304,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(991,NULL,58,307,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(992,NULL,58,314,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(993,NULL,58,322,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(994,NULL,58,323,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(995,NULL,58,324,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(996,NULL,58,325,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(997,NULL,58,329,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(998,NULL,58,333,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(999,NULL,58,334,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(1000,NULL,58,335,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(1001,NULL,58,336,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(1002,NULL,58,330,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(1003,NULL,58,332,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(1004,NULL,58,331,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(1005,NULL,58,340,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(1006,NULL,58,341,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(1007,NULL,58,342,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(1008,NULL,58,337,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(1009,NULL,58,338,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL),(1010,NULL,58,339,0,0,1,'2020-08-27 12:32:11',NULL,NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `enquiry_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estimate`
--

DROP TABLE IF EXISTS `estimate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estimate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniqueId` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `enqId` int(10) unsigned NOT NULL,
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `shipTo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `estimateNo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `productName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `estimateRate` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `subTotal` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `acceptedBy` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `acceptedDate` datetime DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->Active the Record,0->Not Active the Record',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `pdfUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `deleted` enum('1','0') COLLATE utf8_bin DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `estimate_enqid_foreign` (`enqId`),
  CONSTRAINT `estimate_enqid_foreign` FOREIGN KEY (`enqId`) REFERENCES `enquiries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimate`
--

LOCK TABLES `estimate` WRITE;
/*!40000 ALTER TABLE `estimate` DISABLE KEYS */;
/*!40000 ALTER TABLE `estimate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `userId` int(10) unsigned NOT NULL,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->Active,0->Inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `gallery_userid_foreign` (`userId`),
  CONSTRAINT `gallery_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` VALUES (1,'HELLO',301,1,'2020-08-31 21:04:11'),(2,'HELLO',301,1,'2020-08-31 21:05:19'),(3,'HELLO',301,1,'2020-08-31 21:05:58'),(4,'HELLO',301,1,'2020-08-31 21:06:44'),(5,'HELLO',301,1,'2020-08-31 21:07:13');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleryImage`
--

DROP TABLE IF EXISTS `galleryImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleryImage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gallery_id` int(10) unsigned NOT NULL,
  `userId` int(10) unsigned NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->Active,0->Inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `galleryimage_gallery_id_foreign` (`gallery_id`),
  KEY `galleryimage_userid_foreign` (`userId`),
  CONSTRAINT `galleryimage_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `gallery` (`id`) ON DELETE CASCADE,
  CONSTRAINT `galleryimage_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleryImage`
--

LOCK TABLES `galleryImage` WRITE;
/*!40000 ALTER TABLE `galleryImage` DISABLE KEYS */;
INSERT INTO `galleryImage` VALUES (9,1,301,'https://res.cloudinary.com/techugonew/image/upload/v1598909391/HoPQZxFTKwTmoagX-9s-VokX.png',1,'2020-08-31 21:29:51'),(10,2,301,'https://res.cloudinary.com/techugonew/image/upload/v1598909391/xBDX5xCrguPVNl7hlxYuA6Qw.png',1,'2020-08-31 21:29:51'),(11,3,301,'https://res.cloudinary.com/techugonew/image/upload/v1598909419/Ic2XJvy3GXj_j-megIKkVExY.png',1,'2020-08-31 21:30:20'),(12,4,301,'https://res.cloudinary.com/techugonew/image/upload/v1598909420/cYYpEuNSigdeLYJfBFC5amvq.png',1,'2020-08-31 21:30:20');
/*!40000 ALTER TABLE `galleryImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infographics`
--

DROP TABLE IF EXISTS `infographics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infographics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `totalProducts` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `unitsDelivered` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `exportedTo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `totalClients` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `totalProject` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->for active,0->Inactive',
  `deleted` enum('1','0') COLLATE utf8_bin DEFAULT '1' COMMENT '1->for active,0->Inactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infographics`
--

LOCK TABLES `infographics` WRITE;
/*!40000 ALTER TABLE `infographics` DISABLE KEYS */;
/*!40000 ALTER TABLE `infographics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infographics_states`
--

DROP TABLE IF EXISTS `infographics_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infographics_states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `totalArtisan` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `info_id` int(11) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->for active,0->Inactive',
  `deleted` enum('1','0') COLLATE utf8_bin DEFAULT '1' COMMENT '1->for active,0->Inactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infographics_states`
--

LOCK TABLES `infographics_states` WRITE;
/*!40000 ALTER TABLE `infographics_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `infographics_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniqueId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `enqId` int(10) unsigned NOT NULL,
  `userId` int(10) unsigned NOT NULL,
  `invoiceTo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `shipTo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `placeOfSupply` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `productName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `subTotal` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->Active the Record,0->Not Active the Record',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `pdfUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `deleted` enum('1','0') COLLATE utf8_bin NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `invoice_enqid_foreign` (`enqId`),
  KEY `invoice_userid_foreign` (`userId`),
  CONSTRAINT `invoice_enqid_foreign` FOREIGN KEY (`enqId`) REFERENCES `enquiries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `invoice_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,'INVOICE-010001',12,301,'dsmfnkj','bjsbf','bfdjsbfk','INR','9988','89808','90898',908098,'89','2020-08-21 00:00:00','43453',NULL,1,'2020-08-09 13:58:37',1,'http://15.206.162.67:5656/1596981517949Invoice.pdf',890809809,'1');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knex_migrations`
--

DROP TABLE IF EXISTS `knex_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knex_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knex_migrations`
--

LOCK TABLES `knex_migrations` WRITE;
/*!40000 ALTER TABLE `knex_migrations` DISABLE KEYS */;
INSERT INTO `knex_migrations` VALUES (1,'20200423053608_options.js',1,'2020-07-13 04:39:57'),(2,'20200521125535_user_new.js',1,'2020-07-13 04:39:57'),(3,'20200521125721_roles.js',1,'2020-07-13 04:39:57'),(4,'20200521130123_uploads.js',1,'2020-07-13 04:39:57'),(5,'20200521131024_add_user_column.js',1,'2020-07-13 04:39:57'),(6,'20200521131351_user_details.js',1,'2020-07-13 04:39:57'),(7,'20200521131809_add_col_user_again.js',1,'2020-07-13 04:39:57'),(8,'20200521132711_products.js',1,'2020-07-13 04:39:57'),(9,'20200521133715_shop.js',1,'2020-07-13 04:39:57'),(10,'20200521134443_notifications.js',1,'2020-07-13 04:39:57'),(11,'20200521134825_awards.js',1,'2020-07-13 04:39:57'),(12,'20200521135241_onboarding.js',1,'2020-07-13 04:39:57'),(13,'20200521135633_cms.js',1,'2020-07-13 04:39:57'),(14,'20200522135622_init.js',1,'2020-07-13 04:39:58'),(15,'20200525172525_init_2.js',1,'2020-07-13 04:39:58'),(16,'20200526181446_init3.js',1,'2020-07-13 04:39:58'),(17,'20200528174705_cart.js',1,'2020-07-13 04:39:58'),(18,'20200609102757_alter.js',1,'2020-07-13 04:39:58'),(19,'20200611133707_alter2.js',1,'2020-07-13 04:39:58'),(20,'20200611151432_sub_type.js',1,'2020-07-13 04:39:58'),(21,'20200614121939_alter3.js',1,'2020-07-13 04:39:58'),(22,'20200614122321_alter4.js',1,'2020-07-13 04:39:58'),(23,'20200614145852_alter5.js',1,'2020-07-13 04:39:58'),(24,'20200614204149_store.js',1,'2020-07-13 04:39:58'),(25,'20200614230955_aboutus_sample.js',1,'2020-07-13 04:39:58'),(26,'20200614231051_aboutus_user.js',1,'2020-07-13 04:39:58'),(27,'20200615001328_user_product_sell.js',1,'2020-07-13 04:39:58'),(28,'20200615002900_customer_important_sample.js',1,'2020-07-13 04:39:58'),(29,'20200615112835_type_of_store.js',1,'2020-07-13 04:39:58'),(30,'20200617125002_altertables.js',1,'2020-07-13 04:39:59'),(31,'20200617130608_alterProduct.js',1,'2020-07-13 04:39:59'),(32,'20200617130846_alterProductagain.js',1,'2020-07-13 04:39:59'),(33,'20200617133536_alterNewsfeed.js',1,'2020-07-13 04:39:59'),(34,'20200618120229_alterOptions.js',1,'2020-07-13 04:39:59'),(35,'20200618125454_alterOptions1.js',1,'2020-07-13 04:39:59'),(36,'20200618125816_alterOptions1.js',1,'2020-07-13 04:39:59'),(37,'20200619192536_alterCategory.js',1,'2020-07-13 04:39:59'),(38,'20200622003200_alterCMS.js',1,'2020-07-13 04:39:59'),(39,'20200622171044_alterproduct.js',1,'2020-07-13 04:39:59'),(40,'20200623132019_enquiries.js',1,'2020-07-13 04:39:59'),(41,'20200624000748_altercart.js',1,'2020-07-13 04:39:59'),(42,'20200629130259_productImage.js',1,'2020-07-13 04:39:59'),(43,'20200629161110_chat.js',1,'2020-07-13 04:39:59'),(44,'20200711131037_enqOrder.js',1,'2020-07-13 04:39:59'),(45,'20200711133253_leadAccept.js',1,'2020-07-13 04:39:59'),(46,'20200711161253_enquiryAttachment.js',1,'2020-07-13 04:39:59'),(47,'20200711231653_alterlogistic.js',1,'2020-07-13 04:39:59'),(48,'20200712020440_alterproductiontracker.js',1,'2020-07-13 04:39:59'),(49,'20200714150904_alter.js',2,'2020-07-16 04:52:15'),(50,'20200715112737_brand.js',2,'2020-07-16 04:52:15'),(51,'20200716154216_group2.js',3,'2020-07-16 10:33:54'),(52,'20200717085440_alter.js',4,'2020-07-17 13:45:34'),(53,'20200718172944_alter.js',5,'2020-07-20 03:27:00'),(54,'20200722155105_estimate.js',6,'2020-07-22 11:25:29'),(56,'20200722161131_alter.js',NULL,'2020-07-23 12:17:11'),(57,'20200723123813_altercart.js',7,'2020-07-23 12:17:24'),(58,'20200723205841_invoice.js',8,'2020-07-23 18:24:00'),(59,'20200727173534_altercart.js',9,'2020-07-27 06:50:48'),(60,'20200730022103_alter.js',10,'2020-07-29 18:12:18'),(61,'20200819183834_alter.js',11,'2020-08-21 00:09:14'),(62,'20200820231901_alter.js',12,'2020-08-21 00:10:36'),(63,'20200824121410_commentHistory.js',13,'2020-08-28 07:04:25'),(64,'20200825161842_alter.js',13,'2020-08-28 07:04:27'),(65,'20200828123255_alter.js',13,'2020-08-28 07:04:28'),(66,'20200830194148_alterUser.js',14,'2020-08-30 14:25:13'),(67,'20200831121800_alterproductionTracker.js',15,'2020-08-31 06:50:27'),(68,'20200901021420_gallery.js',16,'2020-08-31 20:54:27'),(70,'20200901101139_notification.js',17,'2020-09-01 05:08:04'),(71,'20200901111238_alterChat.js',18,'2020-09-01 06:24:23'),(72,'20200901130436_alterAddress.js',19,'2020-09-01 07:39:09');
/*!40000 ALTER TABLE `knex_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knex_migrations_lock`
--

DROP TABLE IF EXISTS `knex_migrations_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knex_migrations_lock` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_locked` int(11) DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knex_migrations_lock`
--

LOCK TABLES `knex_migrations_lock` WRITE;
/*!40000 ALTER TABLE `knex_migrations_lock` DISABLE KEYS */;
INSERT INTO `knex_migrations_lock` VALUES (1,0);
/*!40000 ALTER TABLE `knex_migrations_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_accept`
--

DROP TABLE IF EXISTS `lead_accept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_accept` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `enqId` int(10) unsigned NOT NULL,
  `adminAssign` tinyint(1) DEFAULT '0' COMMENT '1->assign,0->not assign',
  `orderAccept` tinyint(1) DEFAULT '0' COMMENT '0->pending,1->Accept the order,2->Reject the order',
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->Active the Record,0->Not Active the Record',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_accept_enqid_foreign` (`enqId`),
  CONSTRAINT `lead_accept_enqid_foreign` FOREIGN KEY (`enqId`) REFERENCES `enquiries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_accept`
--

LOCK TABLES `lead_accept` WRITE;
/*!40000 ALTER TABLE `lead_accept` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_accept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logistics_detail`
--

DROP TABLE IF EXISTS `logistics_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logistics_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` int(10) unsigned DEFAULT NULL,
  `carrier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `trackingNo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `boxes` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `paymentMode` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `userId` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->for active,0->Inactive',
  PRIMARY KEY (`id`),
  KEY `logistics_detail_orderid_foreign` (`orderId`),
  KEY `logistics_detail_userid_foreign` (`userId`),
  CONSTRAINT `logistics_detail_orderid_foreign` FOREIGN KEY (`orderId`) REFERENCES `enquiry_order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `logistics_detail_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistics_detail`
--

LOCK TABLES `logistics_detail` WRITE;
/*!40000 ALTER TABLE `logistics_detail` DISABLE KEYS */;
INSERT INTO `logistics_detail` VALUES (2,963,'hello','HELOP09990mm,m','YES','Hwllonbhjbjb',301,'2020-08-31 06:15:14',1);
/*!40000 ALTER TABLE `logistics_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsfeed`
--

DROP TABLE IF EXISTS `newsfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsfeed` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `title` text COLLATE utf8_bin,
  `description` text COLLATE utf8_bin,
  `isActive` tinyint(1) DEFAULT NULL,
  `isPublished` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `type` enum('web','app') COLLATE utf8_bin DEFAULT 'web' COMMENT 'web->for Websites,app->for App',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsfeed`
--

LOCK TABLES `newsfeed` WRITE;
/*!40000 ALTER TABLE `newsfeed` DISABLE KEYS */;
INSERT INTO `newsfeed` VALUES (20,'https://res.cloudinary.com/techugonew/image/upload/v1596132632/yoyt23-97vASjY0ZEBOcA1-u.jpg','asd','sdf',1,1,'2020-07-30 18:10:32','https://www.google.com/','web'),(21,'https://res.cloudinary.com/techugonew/image/upload/v1596176809/LFtAGL7KmPv5VsGuYe6yiWCx.jpg','sdfdsf','sdfsdf',1,1,'2020-07-31 06:26:49','google.com','web'),(22,'https://res.cloudinary.com/techugonew/image/upload/v1596177062/ZSwNH-qbBpGL5hBfG6tlw1oP.jpg','sdfsdf','sdfdsf',1,1,'2020-07-31 06:31:02','fds.com','web'),(25,NULL,'fsd','fsdfs',1,1,'2020-08-07 19:17:24','www.facebook','app'),(27,'https://res.cloudinary.com/techugonew/image/upload/v1596828002/6bnqM7vldCcuiYkI2BEY_IEE.jpg','Coronavirus cases in Maharashtra reach 5,15,332, death toll rises to 17,757 short by Anmol Sharma / 11:02 pm on 09 Aug 2020,Sunday The total number of coronavirus cases in Maharashtra has risen to 5,15,332 after 12,248 new cases were reported in the last 24 hours. Meanwhile, the death toll due to coronavirus in the state surged to 17,757 after 390 new deaths. The total number of patients in the state who have recovered from the virus has risen to 3,51,710.','Coronavirus cases in Maharashtra reach 5,15,332, death toll rises to 17,757 short by Anmol Sharma / 11:02 pm on 09 Aug 2020,Sunday The total number of coronavirus cases in Maharashtra has risen to 5,15,332 after 12,248 new cases were reported in the last 24 hours. Meanwhile, the death toll due to coronavirus in the state surged to 17,757 after 390 new deaths. The total number of patients in the state who have recovered from the virus has risen to 3,51,710.',1,1,'2020-08-07 19:20:03','www.google.com','app');
/*!40000 ALTER TABLE `newsfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `gcmId` varchar(255) DEFAULT NULL,
  `userId` int(10) unsigned NOT NULL,
  `sendStatus` tinyint(1) DEFAULT '0' COMMENT '1->Send,0->NotSend',
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->Active,0->Inactive',
  `isRead` tinyint(1) DEFAULT '1' COMMENT '1->Read,0->UnRead',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `notifications_userid_foreign` (`userId`),
  CONSTRAINT `notifications_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,'sdnfj','dskf','msdnjndf',301,1,1,1,'2020-08-29 05:12:01'),(2,'TEST','TEST2','TEST2',301,1,1,1,'2020-08-31 05:12:42'),(4,'ABCD','TEST2','TEST2',301,1,1,1,'2020-08-31 05:43:54'),(5,'MNOP','MNOP','NJMI',301,1,1,1,'2020-09-01 05:44:50');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onboarding`
--

DROP TABLE IF EXISTS `onboarding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `onboarding` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ranking` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` longtext COLLATE utf8_bin,
  `language` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `type` enum('web','app') COLLATE utf8_bin DEFAULT 'web' COMMENT 'web->for Websites,app->for App',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onboarding`
--

LOCK TABLES `onboarding` WRITE;
/*!40000 ALTER TABLE `onboarding` DISABLE KEYS */;
INSERT INTO `onboarding` VALUES (2,0,'https://res.cloudinary.com/techugonew/image/upload/v1596132254/vfG5qT7TuBSuOgjEJT-iyTl_.jpg','nothingfdhd','1',1,'2020-07-09 09:17:20','http://www.lal10.com/','web'),(9,0,'https://res.cloudinary.com/techugonew/image/upload/v1596097396/3yvoihqS_ebdyEnRxHMPKHKz.jpg','HELLO','1',1,'2020-07-10 10:19:47','http://www.lal10.com/','web'),(11,0,'https://res.cloudinary.com/techugonew/image/upload/v1596980452/itxjohXWow4LdJsFk4tvHO0O.png','HELLO','1',1,'2020-07-18 20:07:57','asdbsjkd.com','web'),(12,0,'https://res.cloudinary.com/techugonew/image/upload/v1595226060/X1OpHpCVsLxfitQxSlRGvZbf.jpg','sdfsdfs','2',1,'2020-07-20 06:21:00','sdfds.com','web'),(13,0,'https://res.cloudinary.com/techugonew/image/upload/v1595226215/wBolpqgDqMpHP6nUU93rbGa_.jpg','sdfsdf','1',1,'2020-07-20 06:23:35','sdfs.com','web'),(14,0,'https://res.cloudinary.com/techugonew/image/upload/v1595501225/aQxx3AWFhcENJuyDxmFKGRZs.jpg','zxczczc','1',1,'2020-07-23 10:47:05','http://www.lal10.com/','web'),(15,0,'https://res.cloudinary.com/techugonew/image/upload/v1596132469/7c0wUkbhJxOSMmmIDeX_4-CH.jpg','cdsc','1',1,'2020-07-30 18:07:50','https://xd.adobe.com/view/9fcd0614-2734-4023-5d89-7e4629ee42fd-e9fc/screen/f8f6d6a6-2d37-4469-b776-d7a0a96cb5ff','web'),(17,0,'https://res.cloudinary.com/techugonew/image/upload/v1596183923/UF1UPaiUH6aCHuBCOhHtawji.jpg','sdfsdf','1',1,'2020-07-31 08:25:23','ffo.cpm','web'),(18,0,'https://res.cloudinary.com/techugonew/image/upload/v1596184502/ZZG33NM-exHasiyvnG8MA5z1.png','Avrodh: The Siege Within\' is based on \'We Don\'t Really Know Fear\', the first chapter of Rahul Singh & Shiv Aroor\'s book \'India\'s Most Fearless\'. Starring Amit Sadh, Vikram Gokhale, Neeraj Kabi & Madhurima Tuli, the series recounts the planning behind the surgical strike that happened after the deadly attack on India\'s security forces in Uri on September 18, 2016.','1',0,'2020-07-31 08:35:02','https://inshorts.com/en/news/sonylivs-avrodh-presents-the-untold-story-of-the-uri-surgical-strikes-1596175557176','app'),(19,0,'https://res.cloudinary.com/techugonew/image/upload/v1596270640/CdkcornM8e7fyKINcfN6VDlE.png','zsdzsdfzsd','1',1,'2020-08-01 08:30:41','s.com','web'),(20,0,'https://res.cloudinary.com/techugonew/image/upload/v1597079040/Qn3v6U4lspZF-irenspWMUFF.jpg','test onboarding','1',1,'2020-08-01 08:33:00','google.com','web'),(21,0,'https://res.cloudinary.com/techugonew/image/upload/v1596514811/vGxaOf7_lfW0LOZS3pbErakB.png','lhjb','1',1,'2020-08-04 04:20:11','url.com','app'),(23,0,'https://res.cloudinary.com/techugonew/image/upload/v1596828960/hYQKU8AZk_hMMYi_sNX7ndpu.jpg','fesf','1',1,'2020-08-07 19:36:00','www.fb','app'),(25,0,'https://res.cloudinary.com/techugonew/image/upload/v1597142807/Q4SI4prQUgNVqRfCBcgj5zaa.jpg','dasdaasfddasdaasfddasdaasfddasdaasfddasdaasfddasdaasfddasdaasfddasdaasfddasdsdaasfddasdaasfddasdaasfddasdaasfddasdaasfddasdaasfddasdaasfddasdaasfddasdaasfddasdaasfddasdaasfd','1',0,'2020-08-11 10:46:47','https://www.google.com/','app');
/*!40000 ALTER TABLE `onboarding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `deleted` enum('0','1') COLLATE utf8_bin DEFAULT '1' COMMENT '1->active record ,0->record deleted [soft delete]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1465 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,'english','language',1,'2020-06-22 20:48:06','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'1'),(2,'hindi','language',1,'2020-06-22 20:48:06','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'1'),(3,'1','productImage',1,'2020-06-22 20:48:06','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'1'),(4,'1','productImage',1,'2020-06-22 20:48:06','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'1'),(5,'1','productImage',1,'2020-06-22 20:48:06','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'1'),(6,'2','productImage',1,'2020-06-22 20:48:06','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'1'),(7,'2','productImage',1,'2020-06-22 20:48:06','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'1'),(8,'2','productImage',1,'2020-06-22 20:48:06','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'1'),(9,'3','productImage',1,'2020-06-22 20:48:06','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'1'),(10,'3','productImage',1,'2020-06-22 20:48:06','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'1'),(11,'3','productImage',1,'2020-06-22 20:48:06','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'1'),(12,'3','productImage',1,'2020-06-22 20:48:06','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'1'),(13,'4','productImage',1,'2020-06-22 20:48:06','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'1'),(14,'4','productImage',1,'2020-06-22 20:48:06','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'1'),(15,'4','productImage',1,'2020-06-22 20:48:06','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',1,'1'),(17,'Saree','products',1,'2020-06-24 08:16:23','https://res.cloudinary.com/techugonew/image/upload/v1596005339/N68wI-REGtzLonGHqR2Hstu0.jpg',1,'1'),(18,'Jute bags','products',1,'2020-06-24 08:18:44','https://res.cloudinary.com/techugonew/image/upload/v1596005306/e1lxKxoWoy9-AlaEXJyCwcK_.jpg',1,'1'),(21,'Wooden','material',1,'2020-06-26 12:30:59','https://res.cloudinary.com/techugonew/image/upload/v1596004737/_eC03HzzufcrJA6LQH2vKfDL.webp',1,'1'),(22,'Craft 1 ','craft',1,'2020-06-26 12:36:17','https://res.cloudinary.com/techugonew/image/upload/v1596005061/lnYQopj7BbwAuOQGoMMF_ys1.jpg',1,'1'),(23,'Jute','material',1,'2020-06-26 12:36:58','https://res.cloudinary.com/techugonew/image/upload/v1596004698/mI6Z7k5H1-YnKD1GHCyU6eQn.jpg',1,'1'),(69,'Delhi','state',1,'2020-07-09 07:04:03','https://res.cloudinary.com/techugonew/image/upload/v1596004197/q52Q9h-jE5LdIhwf2L-pxYOE.jpg',1,'1'),(70,'Uttar Pradesh','state',1,'2020-07-09 07:04:26','https://res.cloudinary.com/techugonew/image/upload/v1596004144/RfoPvb9qojdMg1jviqbQ2yzi.jpg',1,'1'),(72,'Mumbai','state',1,'2020-07-09 07:05:05','https://res.cloudinary.com/techugonew/image/upload/v1596004291/XwGx0TRIDd1DwuU-uQjT9-xW.jpg',1,'1'),(73,'West bengal','state',1,'2020-07-09 07:05:23','https://res.cloudinary.com/techugonew/image/upload/v1596004237/AsQI0Kn6zQ2SBPRU1XAbXTle.jpg',1,'1'),(76,'Cotton','material',1,'2020-07-09 07:14:25','https://res.cloudinary.com/techugonew/image/upload/v1596004609/XMFSYsSGW3y2VkwSjsboZB3-.jpg',1,'1'),(77,'Paper Bag','products',1,'2020-07-09 07:17:10','https://res.cloudinary.com/techugonew/image/upload/v1596005385/q6B1IIyWp9FBW2A2mkk10M9_.jpg',1,'1'),(275,'74','UserCraft',1,'2020-07-10 16:56:13','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',152,'1'),(276,'81','UserCraft',1,'2020-07-10 16:56:13','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',152,'1'),(277,'21','UserMaterial',1,'2020-07-10 16:56:13','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',152,'1'),(278,'17','UserProducts',1,'2020-07-10 16:56:13','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',152,'1'),(279,'74','UserCraft',1,'2020-07-10 19:31:33','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',159,'1'),(280,'143','UserCraft',1,'2020-07-10 19:31:33','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',159,'1'),(281,'75','UserMaterial',1,'2020-07-10 19:31:33','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',159,'1'),(282,'76','UserMaterial',1,'2020-07-10 19:31:33','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',159,'1'),(283,'17','UserProducts',1,'2020-07-10 19:31:33','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',159,'1'),(284,'18','UserProducts',1,'2020-07-10 19:31:33','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',159,'1'),(298,'22','UserCraft',1,'2020-07-11 11:31:29','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',161,'1'),(299,'74','UserCraft',1,'2020-07-11 11:31:29','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',161,'1'),(300,'21','UserMaterial',1,'2020-07-11 11:31:29','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',161,'1'),(301,'23','UserMaterial',1,'2020-07-11 11:31:29','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',161,'1'),(302,'17','UserProducts',1,'2020-07-11 11:31:29','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',161,'1'),(303,'18','UserProducts',1,'2020-07-11 11:31:29','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',161,'1'),(304,'74','UserCraft',1,'2020-07-11 15:16:59','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',164,'1'),(305,'23','UserMaterial',1,'2020-07-11 15:16:59','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',164,'1'),(306,'77','UserProducts',1,'2020-07-11 15:16:59','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',164,'1'),(307,'Water ','products',1,'2020-07-12 03:03:52','https://res.cloudinary.com/techugonew/image/upload/v1596005223/RnMN9EyhydyaoDxN9nsjnBIk.jpg',1,'1'),(308,'143','UserCraft',1,'2020-07-12 03:04:53','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',166,'1'),(309,'75','UserMaterial',1,'2020-07-12 03:04:53','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',166,'1'),(310,'307','UserProducts',1,'2020-07-12 03:04:53','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',166,'1'),(315,'Steel','material',1,'2020-07-12 08:51:41','https://res.cloudinary.com/techugonew/image/upload/v1596005159/0KrBSGctBUBV6TODUSyrCEg_.jpg',1,'1'),(316,'22','UserCraft',1,'2020-07-15 08:04:22','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',178,'1'),(317,'74','UserCraft',1,'2020-07-15 08:04:22','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',178,'1'),(318,'81','UserCraft',1,'2020-07-15 08:04:22','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',178,'1'),(319,'143','UserCraft',1,'2020-07-15 08:04:22','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',178,'1'),(320,'314','UserCraft',1,'2020-07-15 08:04:22','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',178,'1'),(361,'22','UserCraft',1,'2020-07-16 07:27:23','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',181,'1'),(362,'74','UserCraft',1,'2020-07-16 07:27:23','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',181,'1'),(363,'81','UserCraft',1,'2020-07-16 07:27:23','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',181,'1'),(364,'143','UserCraft',1,'2020-07-16 07:27:23','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',181,'1'),(365,'314','UserCraft',1,'2020-07-16 07:27:23','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',181,'1'),(366,'21','UserMaterial',1,'2020-07-16 07:27:23','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',181,'1'),(367,'23','UserMaterial',1,'2020-07-16 07:27:23','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',181,'1'),(368,'75','UserMaterial',1,'2020-07-16 07:27:23','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',181,'1'),(369,'76','UserMaterial',1,'2020-07-16 07:27:23','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',181,'1'),(370,'315','UserMaterial',1,'2020-07-16 07:27:23','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',181,'1'),(371,'17','UserProducts',1,'2020-07-16 07:27:23','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',181,'1'),(372,'18','UserProducts',1,'2020-07-16 07:27:23','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',181,'1'),(373,'77','UserProducts',1,'2020-07-16 07:27:23','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',181,'1'),(374,'307','UserProducts',1,'2020-07-16 07:27:23','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',181,'1'),(389,'22','UserCraft',1,'2020-07-16 07:28:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',168,'1'),(390,'21','UserMaterial',1,'2020-07-16 07:28:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',168,'1'),(391,'23','UserMaterial',1,'2020-07-16 07:28:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',168,'1'),(392,'75','UserMaterial',1,'2020-07-16 07:28:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',168,'1'),(393,'76','UserMaterial',1,'2020-07-16 07:28:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',168,'1'),(394,'315','UserMaterial',1,'2020-07-16 07:28:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',168,'1'),(395,'17','UserProducts',1,'2020-07-16 07:28:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',168,'1'),(396,'18','UserProducts',1,'2020-07-16 07:28:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',168,'1'),(397,'77','UserProducts',1,'2020-07-16 07:28:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',168,'1'),(398,'307','UserProducts',1,'2020-07-16 07:28:28','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',168,'1'),(399,'22','UserCraft',1,'2020-07-16 07:28:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',104,'1'),(400,'74','UserCraft',1,'2020-07-16 07:28:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',104,'1'),(401,'81','UserCraft',1,'2020-07-16 07:28:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',104,'1'),(402,'143','UserCraft',1,'2020-07-16 07:28:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',104,'1'),(403,'314','UserCraft',1,'2020-07-16 07:28:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',104,'1'),(404,'21','UserMaterial',1,'2020-07-16 07:28:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',104,'1'),(405,'23','UserMaterial',1,'2020-07-16 07:28:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',104,'1'),(406,'75','UserMaterial',1,'2020-07-16 07:28:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',104,'1'),(407,'76','UserMaterial',1,'2020-07-16 07:28:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',104,'1'),(408,'315','UserMaterial',1,'2020-07-16 07:28:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',104,'1'),(409,'17','UserProducts',1,'2020-07-16 07:28:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',104,'1'),(410,'18','UserProducts',1,'2020-07-16 07:28:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',104,'1'),(411,'77','UserProducts',1,'2020-07-16 07:28:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',104,'1'),(412,'307','UserProducts',1,'2020-07-16 07:28:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',104,'1'),(427,'22','UserCraft',1,'2020-07-16 10:52:13','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',182,'1'),(428,'74','UserCraft',1,'2020-07-16 10:52:13','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',182,'1'),(429,'81','UserCraft',1,'2020-07-16 10:52:13','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',182,'1'),(430,'143','UserCraft',1,'2020-07-16 10:52:13','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',182,'1'),(431,'314','UserCraft',1,'2020-07-16 10:52:13','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',182,'1'),(432,'21','UserMaterial',1,'2020-07-16 10:52:13','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',182,'1'),(433,'23','UserMaterial',1,'2020-07-16 10:52:13','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',182,'1'),(434,'75','UserMaterial',1,'2020-07-16 10:52:13','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',182,'1'),(435,'76','UserMaterial',1,'2020-07-16 10:52:13','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',182,'1'),(436,'315','UserMaterial',1,'2020-07-16 10:52:13','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',182,'1'),(437,'17','UserProducts',1,'2020-07-16 10:52:13','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',182,'1'),(438,'18','UserProducts',1,'2020-07-16 10:52:13','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',182,'1'),(439,'77','UserProducts',1,'2020-07-16 10:52:13','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',182,'1'),(440,'307','UserProducts',1,'2020-07-16 10:52:13','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',182,'1'),(471,'314','UserCraft',1,'2020-07-17 14:06:12','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',184,'1'),(472,'81','UserCraft',1,'2020-07-17 14:06:12','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',184,'1'),(473,'75','UserMaterial',1,'2020-07-17 14:06:12','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',184,'1'),(474,'76','UserMaterial',1,'2020-07-17 14:06:12','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',184,'1'),(475,'17','UserProducts',1,'2020-07-17 14:06:12','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',184,'1'),(476,'18','UserProducts',1,'2020-07-17 14:06:12','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',184,'1'),(478,'22','UserCraft',1,'2020-07-20 09:40:25','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',186,'1'),(479,'74','UserCraft',1,'2020-07-20 09:40:25','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',186,'1'),(480,'81','UserCraft',1,'2020-07-20 09:40:25','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',186,'1'),(481,'21','UserMaterial',1,'2020-07-20 09:40:25','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',186,'1'),(482,'23','UserMaterial',1,'2020-07-20 09:40:25','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',186,'1'),(483,'75','UserMaterial',1,'2020-07-20 09:40:25','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',186,'1'),(484,'17','UserProducts',1,'2020-07-20 09:40:25','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',186,'1'),(485,'18','UserProducts',1,'2020-07-20 09:40:25','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',186,'1'),(486,'22','UserCraft',1,'2020-07-20 09:40:38','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',187,'1'),(487,'74','UserCraft',1,'2020-07-20 09:40:38','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',187,'1'),(488,'81','UserCraft',1,'2020-07-20 09:40:38','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',187,'1'),(489,'21','UserMaterial',1,'2020-07-20 09:40:38','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',187,'1'),(490,'23','UserMaterial',1,'2020-07-20 09:40:38','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',187,'1'),(491,'75','UserMaterial',1,'2020-07-20 09:40:38','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',187,'1'),(492,'17','UserProducts',1,'2020-07-20 09:40:38','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',187,'1'),(493,'18','UserProducts',1,'2020-07-20 09:40:38','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',187,'1'),(494,'22','UserCraft',1,'2020-07-20 09:40:46','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',188,'1'),(495,'74','UserCraft',1,'2020-07-20 09:40:46','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',188,'1'),(496,'81','UserCraft',1,'2020-07-20 09:40:46','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',188,'1'),(497,'21','UserMaterial',1,'2020-07-20 09:40:46','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',188,'1'),(498,'23','UserMaterial',1,'2020-07-20 09:40:46','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',188,'1'),(499,'75','UserMaterial',1,'2020-07-20 09:40:46','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',188,'1'),(500,'17','UserProducts',1,'2020-07-20 09:40:46','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',188,'1'),(501,'18','UserProducts',1,'2020-07-20 09:40:46','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',188,'1'),(502,'22','UserCraft',1,'2020-07-20 09:40:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',189,'1'),(503,'74','UserCraft',1,'2020-07-20 09:40:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',189,'1'),(504,'81','UserCraft',1,'2020-07-20 09:40:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',189,'1'),(505,'21','UserMaterial',1,'2020-07-20 09:40:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',189,'1'),(506,'23','UserMaterial',1,'2020-07-20 09:40:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',189,'1'),(507,'75','UserMaterial',1,'2020-07-20 09:40:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',189,'1'),(508,'17','UserProducts',1,'2020-07-20 09:40:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',189,'1'),(509,'18','UserProducts',1,'2020-07-20 09:40:57','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',189,'1'),(510,'22','UserCraft',1,'2020-07-20 09:41:12','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',190,'1'),(511,'74','UserCraft',1,'2020-07-20 09:41:12','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',190,'1'),(512,'81','UserCraft',1,'2020-07-20 09:41:12','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',190,'1'),(513,'21','UserMaterial',1,'2020-07-20 09:41:12','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',190,'1'),(514,'23','UserMaterial',1,'2020-07-20 09:41:12','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',190,'1'),(515,'75','UserMaterial',1,'2020-07-20 09:41:12','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',190,'1'),(516,'17','UserProducts',1,'2020-07-20 09:41:12','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',190,'1'),(517,'18','UserProducts',1,'2020-07-20 09:41:12','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',190,'1'),(518,'22','UserCraft',1,'2020-07-20 09:41:25','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',191,'1'),(519,'74','UserCraft',1,'2020-07-20 09:41:25','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',191,'1'),(520,'81','UserCraft',1,'2020-07-20 09:41:25','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',191,'1'),(521,'21','UserMaterial',1,'2020-07-20 09:41:25','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',191,'1'),(522,'23','UserMaterial',1,'2020-07-20 09:41:25','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',191,'1'),(523,'75','UserMaterial',1,'2020-07-20 09:41:25','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',191,'1'),(524,'17','UserProducts',1,'2020-07-20 09:41:25','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',191,'1'),(525,'18','UserProducts',1,'2020-07-20 09:41:25','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',191,'1'),(526,'22','UserCraft',1,'2020-07-20 09:41:34','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',192,'1'),(527,'74','UserCraft',1,'2020-07-20 09:41:34','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',192,'1'),(528,'81','UserCraft',1,'2020-07-20 09:41:34','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',192,'1'),(529,'21','UserMaterial',1,'2020-07-20 09:41:34','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',192,'1'),(530,'23','UserMaterial',1,'2020-07-20 09:41:34','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',192,'1'),(531,'75','UserMaterial',1,'2020-07-20 09:41:34','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',192,'1'),(532,'17','UserProducts',1,'2020-07-20 09:41:34','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',192,'1'),(533,'18','UserProducts',1,'2020-07-20 09:41:34','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',192,'1'),(534,'22','UserCraft',1,'2020-07-20 09:41:50','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',193,'1'),(535,'74','UserCraft',1,'2020-07-20 09:41:50','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',193,'1'),(536,'81','UserCraft',1,'2020-07-20 09:41:50','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',193,'1'),(537,'21','UserMaterial',1,'2020-07-20 09:41:50','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',193,'1'),(538,'23','UserMaterial',1,'2020-07-20 09:41:50','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',193,'1'),(539,'75','UserMaterial',1,'2020-07-20 09:41:50','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',193,'1'),(540,'17','UserProducts',1,'2020-07-20 09:41:50','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',193,'1'),(541,'18','UserProducts',1,'2020-07-20 09:41:50','https://res.cloudinary.com/techugonew/image/upload/v1595225721/YA0gUBJe1a_u3KKf23bk1_M8.png',193,'1'),(542,'galatea','material',1,'2020-07-20 10:24:53','https://res.cloudinary.com/techugonew/image/upload/v1595240692/C6l7zH-SW5o8CFUxshiU4yBa.jpg',1,'1'),(544,'143','UserCraft',1,'2020-07-23 04:36:52',NULL,197,'1'),(545,'76','UserMaterial',1,'2020-07-23 04:36:52',NULL,197,'1'),(546,'307','UserProducts',1,'2020-07-23 04:36:52',NULL,197,'1'),(547,'22','UserCraft',1,'2020-07-23 04:39:37',NULL,198,'1'),(548,'21','UserMaterial',1,'2020-07-23 04:39:37',NULL,198,'1'),(549,'23','UserMaterial',1,'2020-07-23 04:39:37',NULL,198,'1'),(550,'18','UserProducts',1,'2020-07-23 04:39:37',NULL,198,'1'),(551,'307','UserProducts',1,'2020-07-23 04:39:37',NULL,198,'1'),(552,'22','UserCraft',1,'2020-07-23 04:41:09',NULL,199,'1'),(553,'143','UserCraft',1,'2020-07-23 04:41:09',NULL,199,'1'),(554,'75','UserMaterial',1,'2020-07-23 04:41:09',NULL,199,'1'),(555,'76','UserMaterial',1,'2020-07-23 04:41:09',NULL,199,'1'),(556,'77','UserProducts',1,'2020-07-23 04:41:09',NULL,199,'1'),(557,'307','UserProducts',1,'2020-07-23 04:41:09',NULL,199,'1'),(558,'22','UserCraft',1,'2020-07-23 05:00:49',NULL,200,'1'),(559,'21','UserMaterial',1,'2020-07-23 05:00:49',NULL,200,'1'),(560,'17','UserProducts',1,'2020-07-23 05:00:49',NULL,200,'1'),(561,'22','UserCraft',1,'2020-07-23 05:00:58',NULL,200,'1'),(562,'21','UserMaterial',1,'2020-07-23 05:00:58',NULL,200,'1'),(563,'17','UserProducts',1,'2020-07-23 05:00:58',NULL,200,'1'),(564,'307','UserProducts',1,'2020-07-23 05:00:58',NULL,200,'1'),(565,'22','UserCraft',1,'2020-07-23 07:35:36',NULL,201,'1'),(566,'74','UserCraft',1,'2020-07-23 07:35:36',NULL,201,'1'),(567,'21','UserMaterial',1,'2020-07-23 07:35:36',NULL,201,'1'),(568,'23','UserMaterial',1,'2020-07-23 07:35:36',NULL,201,'1'),(569,'17','UserProducts',1,'2020-07-23 07:35:36',NULL,201,'1'),(570,'18','UserProducts',1,'2020-07-23 07:35:36',NULL,201,'1'),(571,'74','UserCraft',1,'2020-07-23 07:55:03',NULL,202,'1'),(572,'21','UserMaterial',1,'2020-07-23 07:55:03',NULL,202,'1'),(573,'23','UserMaterial',1,'2020-07-23 07:55:03',NULL,202,'1'),(574,'17','UserProducts',1,'2020-07-23 07:55:03',NULL,202,'1'),(575,'18','UserProducts',1,'2020-07-23 07:55:03',NULL,202,'1'),(582,'22','UserCraft',1,'2020-07-23 11:05:00',NULL,203,'1'),(583,'74','UserCraft',1,'2020-07-23 11:05:00',NULL,203,'1'),(584,'21','UserMaterial',1,'2020-07-23 11:05:00',NULL,203,'1'),(585,'23','UserMaterial',1,'2020-07-23 11:05:00',NULL,203,'1'),(586,'17','UserProducts',1,'2020-07-23 11:05:00',NULL,203,'1'),(587,'18','UserProducts',1,'2020-07-23 11:05:00',NULL,203,'1'),(588,'74','UserCraft',1,'2020-07-23 15:55:49',NULL,210,'1'),(589,'23','UserMaterial',1,'2020-07-23 15:55:49',NULL,210,'1'),(590,'18','UserProducts',1,'2020-07-23 15:55:49',NULL,210,'1'),(612,'22','UserCraft',1,'2020-07-24 08:56:32',NULL,212,'1'),(613,'81','UserCraft',1,'2020-07-24 08:56:32',NULL,212,'1'),(614,'143','UserCraft',1,'2020-07-24 08:56:32',NULL,212,'1'),(615,'21','UserMaterial',1,'2020-07-24 08:56:32',NULL,212,'1'),(616,'75','UserMaterial',1,'2020-07-24 08:56:32',NULL,212,'1'),(617,'76','UserMaterial',1,'2020-07-24 08:56:32',NULL,212,'1'),(619,'22','UserCraft',1,'2020-07-24 12:12:50',NULL,213,'1'),(620,'74','UserCraft',1,'2020-07-24 12:12:50',NULL,213,'1'),(621,'21','UserMaterial',1,'2020-07-24 12:12:50',NULL,213,'1'),(622,'23','UserMaterial',1,'2020-07-24 12:12:50',NULL,213,'1'),(623,'17','UserProducts',1,'2020-07-24 12:12:50',NULL,213,'1'),(624,'18','UserProducts',1,'2020-07-24 12:12:50',NULL,213,'1'),(625,'22','UserCraft',1,'2020-07-24 16:51:18',NULL,209,'1'),(626,'74','UserCraft',1,'2020-07-24 16:51:18',NULL,209,'1'),(627,'21','UserMaterial',1,'2020-07-24 16:51:18',NULL,209,'1'),(628,'23','UserMaterial',1,'2020-07-24 16:51:18',NULL,209,'1'),(629,'17','UserProducts',1,'2020-07-24 16:51:18',NULL,209,'1'),(630,'18','UserProducts',1,'2020-07-24 16:51:18',NULL,209,'1'),(631,'74','UserCraft',1,'2020-07-27 04:55:54',NULL,221,'1'),(632,'76','UserMaterial',1,'2020-07-27 04:55:54',NULL,221,'1'),(633,'307','UserProducts',1,'2020-07-27 04:55:54',NULL,221,'1'),(634,'22','UserCraft',1,'2020-07-27 08:17:34',NULL,222,'1'),(635,'74','UserCraft',1,'2020-07-27 08:17:34',NULL,222,'1'),(636,'21','UserMaterial',1,'2020-07-27 08:17:34',NULL,222,'1'),(637,'17','UserProducts',1,'2020-07-27 08:17:34',NULL,222,'1'),(638,'22','UserCraft',1,'2020-07-28 17:20:18',NULL,233,'1'),(639,'74','UserCraft',1,'2020-07-28 17:20:18',NULL,233,'1'),(640,'21','UserMaterial',1,'2020-07-28 17:20:18',NULL,233,'1'),(641,'23','UserMaterial',1,'2020-07-28 17:20:18',NULL,233,'1'),(642,'75','UserMaterial',1,'2020-07-28 17:20:18',NULL,233,'1'),(643,'17','UserProducts',1,'2020-07-28 17:20:18',NULL,233,'1'),(644,'18','UserProducts',1,'2020-07-28 17:20:18',NULL,233,'1'),(645,'77','UserProducts',1,'2020-07-28 17:20:18',NULL,233,'1'),(646,'74','UserCraft',1,'2020-07-29 06:30:57',NULL,241,'1'),(647,'23','UserMaterial',1,'2020-07-29 06:30:57',NULL,241,'1'),(648,'18','UserProducts',1,'2020-07-29 06:30:57',NULL,241,'1'),(649,'307','UserProducts',1,'2020-07-29 06:30:57',NULL,241,'1'),(650,'74','UserCraft',1,'2020-07-29 06:31:57',NULL,242,'1'),(651,'23','UserMaterial',1,'2020-07-29 06:31:57',NULL,242,'1'),(652,'315','UserMaterial',1,'2020-07-29 06:31:57',NULL,242,'1'),(653,'18','UserProducts',1,'2020-07-29 06:31:57',NULL,242,'1'),(654,'307','UserProducts',1,'2020-07-29 06:31:57',NULL,242,'1'),(655,'74','UserCraft',1,'2020-07-29 06:43:40',NULL,243,'1'),(656,'23','UserMaterial',1,'2020-07-29 06:43:40',NULL,243,'1'),(657,'76','UserMaterial',1,'2020-07-29 06:43:40',NULL,243,'1'),(658,'18','UserProducts',1,'2020-07-29 06:43:40',NULL,243,'1'),(659,'307','UserProducts',1,'2020-07-29 06:43:40',NULL,243,'1'),(660,'143','UserCraft',1,'2020-07-29 06:50:27',NULL,234,'1'),(661,'23','UserMaterial',1,'2020-07-29 06:50:27',NULL,234,'1'),(662,'76','UserMaterial',1,'2020-07-29 06:50:27',NULL,234,'1'),(663,'18','UserProducts',1,'2020-07-29 06:50:27',NULL,234,'1'),(664,'74','UserCraft',1,'2020-07-29 06:53:38',NULL,244,'1'),(665,'542','UserCraft',1,'2020-07-29 06:53:38',NULL,244,'1'),(666,'23','UserMaterial',1,'2020-07-29 06:53:38',NULL,244,'1'),(667,'76','UserMaterial',1,'2020-07-29 06:53:38',NULL,244,'1'),(668,'18','UserProducts',1,'2020-07-29 06:53:38',NULL,244,'1'),(669,'307','UserProducts',1,'2020-07-29 06:53:38',NULL,244,'1'),(670,'22','UserCraft',1,'2020-07-29 06:54:46',NULL,245,'1'),(671,'74','UserCraft',1,'2020-07-29 06:54:46',NULL,245,'1'),(672,'21','UserMaterial',1,'2020-07-29 06:54:46',NULL,245,'1'),(673,'23','UserMaterial',1,'2020-07-29 06:54:46',NULL,245,'1'),(674,'75','UserMaterial',1,'2020-07-29 06:54:46',NULL,245,'1'),(675,'18','UserProducts',1,'2020-07-29 06:54:46',NULL,245,'1'),(676,'77','UserProducts',1,'2020-07-29 06:54:46',NULL,245,'1'),(689,'22','UserCraft',1,'2020-07-29 10:44:32',NULL,247,'1'),(690,'74','UserCraft',1,'2020-07-29 10:44:32',NULL,247,'1'),(691,'143','UserCraft',1,'2020-07-29 10:44:32',NULL,247,'1'),(692,'542','UserCraft',1,'2020-07-29 10:44:32',NULL,247,'1'),(693,'21','UserMaterial',1,'2020-07-29 10:44:32',NULL,247,'1'),(694,'23','UserMaterial',1,'2020-07-29 10:44:32',NULL,247,'1'),(695,'75','UserMaterial',1,'2020-07-29 10:44:32',NULL,247,'1'),(696,'76','UserMaterial',1,'2020-07-29 10:44:32',NULL,247,'1'),(697,'315','UserMaterial',1,'2020-07-29 10:44:32',NULL,247,'1'),(698,'17','UserProducts',1,'2020-07-29 10:44:32',NULL,247,'1'),(699,'18','UserProducts',1,'2020-07-29 10:44:32',NULL,247,'1'),(700,'22','UserCraft',1,'2020-07-29 10:44:42',NULL,246,'1'),(701,'542','UserCraft',1,'2020-07-29 10:44:42',NULL,246,'1'),(702,'23','UserMaterial',1,'2020-07-29 10:44:42',NULL,246,'1'),(703,'76','UserMaterial',1,'2020-07-29 10:44:42',NULL,246,'1'),(704,'18','UserProducts',1,'2020-07-29 10:44:42',NULL,246,'1'),(705,'307','UserProducts',1,'2020-07-29 10:44:42',NULL,246,'1'),(720,'1','UserCraft',1,'2020-07-29 13:03:31',NULL,249,'1'),(721,'2','UserCraft',1,'2020-07-29 13:03:31',NULL,249,'1'),(722,'2','UserMaterial',1,'2020-07-29 13:03:31',NULL,249,'1'),(723,'3','UserMaterial',1,'2020-07-29 13:03:31',NULL,249,'1'),(724,'4','UserProducts',1,'2020-07-29 13:03:31',NULL,249,'1'),(725,'5','UserProducts',1,'2020-07-29 13:03:31',NULL,249,'1'),(733,'22','UserCraft',1,'2020-07-29 14:03:45',NULL,250,'1'),(734,'21','UserMaterial',1,'2020-07-29 14:03:48',NULL,250,'1'),(735,'17','UserProducts',1,'2020-07-29 14:04:05',NULL,250,'1'),(736,'18','UserProducts',1,'2020-07-29 14:04:05',NULL,250,'1'),(737,'22','UserCraft',1,'2020-07-29 16:21:13',NULL,207,'1'),(738,'21','UserMaterial',1,'2020-07-29 16:21:23',NULL,207,'1'),(739,'23','UserMaterial',1,'2020-07-29 16:21:23',NULL,207,'1'),(740,'17','UserProducts',1,'2020-07-29 16:21:25',NULL,207,'1'),(741,'18','UserProducts',1,'2020-07-29 16:21:25',NULL,207,'1'),(742,'22','UserCraft',1,'2020-07-29 16:22:54',NULL,252,'1'),(743,'74','UserCraft',1,'2020-07-29 16:22:54',NULL,252,'1'),(744,'21','UserMaterial',1,'2020-07-29 16:22:55',NULL,252,'1'),(745,'23','UserMaterial',1,'2020-07-29 16:22:55',NULL,252,'1'),(746,'75','UserMaterial',1,'2020-07-29 16:22:55',NULL,252,'1'),(747,'76','UserMaterial',1,'2020-07-29 16:22:55',NULL,252,'1'),(748,'17','UserProducts',1,'2020-07-29 16:22:58',NULL,252,'1'),(749,'18','UserProducts',1,'2020-07-29 16:22:58',NULL,252,'1'),(750,'77','UserProducts',1,'2020-07-29 16:22:58',NULL,252,'1'),(751,'307','UserProducts',1,'2020-07-29 16:22:58',NULL,252,'1'),(755,'17','UserProducts',1,'2020-07-30 04:55:56',NULL,212,'1'),(756,'307','UserProducts',1,'2020-07-30 04:55:56',NULL,212,'1'),(759,'542','UserCraft',1,'2020-07-30 05:12:50',NULL,253,'1'),(760,'21','UserMaterial',1,'2020-07-30 05:12:52',NULL,253,'1'),(761,'17','UserProducts',1,'2020-07-30 05:12:55',NULL,253,'1'),(762,'22','UserCraft',1,'2020-07-30 05:20:49',NULL,254,'1'),(763,'542','UserCraft',1,'2020-07-30 05:20:49',NULL,254,'1'),(764,'21','UserMaterial',1,'2020-07-30 05:20:50',NULL,254,'1'),(765,'76','UserMaterial',1,'2020-07-30 05:20:50',NULL,254,'1'),(766,'18','UserProducts',1,'2020-07-30 05:20:52',NULL,254,'1'),(767,'77','UserProducts',1,'2020-07-30 05:20:52',NULL,254,'1'),(772,'74','UserCraft',1,'2020-07-30 05:53:59',NULL,257,'1'),(773,'23','UserMaterial',1,'2020-07-30 05:54:19',NULL,257,'1'),(774,'76','UserMaterial',1,'2020-07-30 05:54:19',NULL,257,'1'),(775,'22','UserCraft',1,'2020-07-30 06:03:24',NULL,258,'1'),(776,'21','UserMaterial',1,'2020-07-30 06:03:26',NULL,258,'1'),(777,'17','UserProducts',1,'2020-07-30 06:03:27',NULL,258,'1'),(793,'22','UserCraft',1,'2020-07-30 07:42:26',NULL,260,'1'),(794,'74','UserCraft',1,'2020-07-30 07:42:26',NULL,260,'1'),(795,'143','UserCraft',1,'2020-07-30 07:42:26',NULL,260,'1'),(796,'542','UserCraft',1,'2020-07-30 07:42:26',NULL,260,'1'),(797,'21','UserMaterial',1,'2020-07-30 07:42:26',NULL,260,'1'),(798,'23','UserMaterial',1,'2020-07-30 07:42:26',NULL,260,'1'),(799,'75','UserMaterial',1,'2020-07-30 07:42:26',NULL,260,'1'),(800,'76','UserMaterial',1,'2020-07-30 07:42:26',NULL,260,'1'),(801,'315','UserMaterial',1,'2020-07-30 07:42:26',NULL,260,'1'),(802,'17','UserProducts',1,'2020-07-30 07:42:26',NULL,260,'1'),(803,'18','UserProducts',1,'2020-07-30 07:42:26',NULL,260,'1'),(804,'77','UserProducts',1,'2020-07-30 07:42:26',NULL,260,'1'),(805,'307','UserProducts',1,'2020-07-30 07:42:26',NULL,260,'1'),(806,'74','UserCraft',1,'2020-07-30 07:48:28',NULL,259,'1'),(807,'542','UserCraft',1,'2020-07-30 07:48:28',NULL,259,'1'),(808,'21','UserMaterial',1,'2020-07-30 07:48:46',NULL,259,'1'),(809,'23','UserMaterial',1,'2020-07-30 07:48:46',NULL,259,'1'),(810,'17','UserProducts',1,'2020-07-30 07:49:01',NULL,259,'1'),(811,'18','UserProducts',1,'2020-07-30 07:49:01',NULL,259,'1'),(837,'22','UserCraft',1,'2020-07-30 08:03:13',NULL,265,'1'),(838,'74','UserCraft',1,'2020-07-30 08:03:13',NULL,265,'1'),(839,'143','UserCraft',1,'2020-07-30 08:03:13',NULL,265,'1'),(840,'542','UserCraft',1,'2020-07-30 08:03:13',NULL,265,'1'),(841,'21','UserMaterial',1,'2020-07-30 08:03:13',NULL,265,'1'),(842,'23','UserMaterial',1,'2020-07-30 08:03:13',NULL,265,'1'),(843,'75','UserMaterial',1,'2020-07-30 08:03:13',NULL,265,'1'),(844,'76','UserMaterial',1,'2020-07-30 08:03:13',NULL,265,'1'),(845,'315','UserMaterial',1,'2020-07-30 08:03:13',NULL,265,'1'),(846,'17','UserProducts',1,'2020-07-30 08:03:13',NULL,265,'1'),(847,'18','UserProducts',1,'2020-07-30 08:03:13',NULL,265,'1'),(848,'77','UserProducts',1,'2020-07-30 08:03:13',NULL,265,'1'),(849,'307','UserProducts',1,'2020-07-30 08:03:13',NULL,265,'1'),(895,'22','UserCraft',1,'2020-07-30 08:35:37',NULL,268,'1'),(896,'74','UserCraft',1,'2020-07-30 08:35:37',NULL,268,'1'),(897,'143','UserCraft',1,'2020-07-30 08:35:37',NULL,268,'1'),(898,'542','UserCraft',1,'2020-07-30 08:35:37',NULL,268,'1'),(899,'21','UserMaterial',1,'2020-07-30 08:35:37',NULL,268,'1'),(900,'23','UserMaterial',1,'2020-07-30 08:35:37',NULL,268,'1'),(901,'75','UserMaterial',1,'2020-07-30 08:35:37',NULL,268,'1'),(902,'76','UserMaterial',1,'2020-07-30 08:35:37',NULL,268,'1'),(903,'315','UserMaterial',1,'2020-07-30 08:35:37',NULL,268,'1'),(904,'17','UserProducts',1,'2020-07-30 08:35:37',NULL,268,'1'),(905,'18','UserProducts',1,'2020-07-30 08:35:37',NULL,268,'1'),(906,'77','UserProducts',1,'2020-07-30 08:35:37',NULL,268,'1'),(907,'307','UserProducts',1,'2020-07-30 08:35:37',NULL,268,'1'),(908,'22','UserCraft',1,'2020-07-30 12:40:36',NULL,264,'1'),(909,'74','UserCraft',1,'2020-07-30 12:40:36',NULL,264,'1'),(910,'143','UserCraft',1,'2020-07-30 12:40:36',NULL,264,'1'),(911,'542','UserCraft',1,'2020-07-30 12:40:36',NULL,264,'1'),(912,'21','UserMaterial',1,'2020-07-30 12:40:36',NULL,264,'1'),(913,'23','UserMaterial',1,'2020-07-30 12:40:36',NULL,264,'1'),(914,'75','UserMaterial',1,'2020-07-30 12:40:36',NULL,264,'1'),(915,'76','UserMaterial',1,'2020-07-30 12:40:36',NULL,264,'1'),(916,'315','UserMaterial',1,'2020-07-30 12:40:36',NULL,264,'1'),(917,'17','UserProducts',1,'2020-07-30 12:40:36',NULL,264,'1'),(918,'18','UserProducts',1,'2020-07-30 12:40:36',NULL,264,'1'),(919,'77','UserProducts',1,'2020-07-30 12:40:36',NULL,264,'1'),(920,'307','UserProducts',1,'2020-07-30 12:40:36',NULL,264,'1'),(935,'22','UserCraft',1,'2020-07-30 13:49:29',NULL,263,'1'),(936,'74','UserCraft',1,'2020-07-30 13:49:29',NULL,263,'1'),(937,'21','UserMaterial',1,'2020-07-30 13:49:29',NULL,263,'1'),(938,'23','UserMaterial',1,'2020-07-30 13:49:29',NULL,263,'1'),(939,'17','UserProducts',1,'2020-07-30 13:49:29',NULL,263,'1'),(940,'18','UserProducts',1,'2020-07-30 13:49:29',NULL,263,'1'),(941,'22','UserCraft',1,'2020-07-30 13:51:09',NULL,262,'1'),(942,'74','UserCraft',1,'2020-07-30 13:51:09',NULL,262,'1'),(943,'21','UserMaterial',1,'2020-07-30 13:51:09',NULL,262,'1'),(944,'23','UserMaterial',1,'2020-07-30 13:51:09',NULL,262,'1'),(945,'17','UserProducts',1,'2020-07-30 13:51:09',NULL,262,'1'),(946,'18','UserProducts',1,'2020-07-30 13:51:09',NULL,262,'1'),(950,'22','UserCraft',1,'2020-07-30 15:53:43',NULL,256,'1'),(951,'74','UserCraft',1,'2020-07-30 15:53:43',NULL,256,'1'),(952,'143','UserCraft',1,'2020-07-30 15:53:43',NULL,256,'1'),(953,'542','UserCraft',1,'2020-07-30 15:53:43',NULL,256,'1'),(954,'21','UserMaterial',1,'2020-07-30 15:53:43',NULL,256,'1'),(955,'23','UserMaterial',1,'2020-07-30 15:53:43',NULL,256,'1'),(956,'75','UserMaterial',1,'2020-07-30 15:53:43',NULL,256,'1'),(957,'76','UserMaterial',1,'2020-07-30 15:53:43',NULL,256,'1'),(958,'315','UserMaterial',1,'2020-07-30 15:53:43',NULL,256,'1'),(959,'17','UserProducts',1,'2020-07-30 15:53:43',NULL,256,'1'),(960,'18','UserProducts',1,'2020-07-30 15:53:43',NULL,256,'1'),(961,'77','UserProducts',1,'2020-07-30 15:53:43',NULL,256,'1'),(962,'307','UserProducts',1,'2020-07-30 15:53:43',NULL,256,'1'),(963,'22','UserCraft',1,'2020-07-30 15:54:07',NULL,272,'1'),(964,'23','UserMaterial',1,'2020-07-30 15:54:07',NULL,272,'1'),(965,'18','UserProducts',1,'2020-07-30 15:54:07',NULL,272,'1'),(966,'22','UserCraft',1,'2020-07-30 15:54:55',NULL,270,'1'),(967,'74','UserCraft',1,'2020-07-30 15:54:55',NULL,270,'1'),(968,'143','UserCraft',1,'2020-07-30 15:54:55',NULL,270,'1'),(969,'542','UserCraft',1,'2020-07-30 15:54:55',NULL,270,'1'),(970,'21','UserMaterial',1,'2020-07-30 15:54:55',NULL,270,'1'),(971,'23','UserMaterial',1,'2020-07-30 15:54:55',NULL,270,'1'),(972,'75','UserMaterial',1,'2020-07-30 15:54:55',NULL,270,'1'),(973,'76','UserMaterial',1,'2020-07-30 15:54:55',NULL,270,'1'),(974,'315','UserMaterial',1,'2020-07-30 15:54:55',NULL,270,'1'),(975,'17','UserProducts',1,'2020-07-30 15:54:55',NULL,270,'1'),(976,'18','UserProducts',1,'2020-07-30 15:54:55',NULL,270,'1'),(977,'77','UserProducts',1,'2020-07-30 15:54:55',NULL,270,'1'),(978,'307','UserProducts',1,'2020-07-30 15:54:55',NULL,270,'1'),(1027,'22','UserCraft',1,'2020-07-30 15:58:40',NULL,266,'1'),(1028,'74','UserCraft',1,'2020-07-30 15:58:40',NULL,266,'1'),(1029,'143','UserCraft',1,'2020-07-30 15:58:40',NULL,266,'1'),(1030,'542','UserCraft',1,'2020-07-30 15:58:40',NULL,266,'1'),(1031,'21','UserMaterial',1,'2020-07-30 15:58:40',NULL,266,'1'),(1032,'23','UserMaterial',1,'2020-07-30 15:58:40',NULL,266,'1'),(1033,'75','UserMaterial',1,'2020-07-30 15:58:40',NULL,266,'1'),(1034,'76','UserMaterial',1,'2020-07-30 15:58:40',NULL,266,'1'),(1035,'315','UserMaterial',1,'2020-07-30 15:58:40',NULL,266,'1'),(1036,'17','UserProducts',1,'2020-07-30 15:58:40',NULL,266,'1'),(1037,'18','UserProducts',1,'2020-07-30 15:58:40',NULL,266,'1'),(1038,'77','UserProducts',1,'2020-07-30 15:58:40',NULL,266,'1'),(1039,'307','UserProducts',1,'2020-07-30 15:58:40',NULL,266,'1'),(1075,'22','UserCraft',1,'2020-07-30 16:02:02',NULL,273,'1'),(1076,'74','UserCraft',1,'2020-07-30 16:02:02',NULL,273,'1'),(1077,'143','UserCraft',1,'2020-07-30 16:02:02',NULL,273,'1'),(1078,'21','UserMaterial',1,'2020-07-30 16:02:02',NULL,273,'1'),(1079,'17','UserProducts',1,'2020-07-30 16:02:02',NULL,273,'1'),(1080,'18','UserProducts',1,'2020-07-30 16:02:02',NULL,273,'1'),(1081,'77','UserProducts',1,'2020-07-30 16:02:02',NULL,273,'1'),(1085,'22','UserCraft',1,'2020-07-30 16:03:31',NULL,267,'1'),(1086,'21','UserMaterial',1,'2020-07-30 16:03:32',NULL,267,'1'),(1087,'77','UserProducts',1,'2020-07-30 16:03:32',NULL,267,'1'),(1088,'22','UserCraft',1,'2020-07-30 16:19:20',NULL,261,'1'),(1089,'74','UserCraft',1,'2020-07-30 16:19:20',NULL,261,'1'),(1090,'143','UserCraft',1,'2020-07-30 16:19:20',NULL,261,'1'),(1091,'542','UserCraft',1,'2020-07-30 16:19:20',NULL,261,'1'),(1092,'21','UserMaterial',1,'2020-07-30 16:19:21',NULL,261,'1'),(1093,'23','UserMaterial',1,'2020-07-30 16:19:21',NULL,261,'1'),(1094,'75','UserMaterial',1,'2020-07-30 16:19:21',NULL,261,'1'),(1095,'76','UserMaterial',1,'2020-07-30 16:19:21',NULL,261,'1'),(1096,'315','UserMaterial',1,'2020-07-30 16:19:21',NULL,261,'1'),(1097,'17','UserProducts',1,'2020-07-30 16:19:21',NULL,261,'1'),(1098,'18','UserProducts',1,'2020-07-30 16:19:21',NULL,261,'1'),(1099,'77','UserProducts',1,'2020-07-30 16:19:21',NULL,261,'1'),(1100,'307','UserProducts',1,'2020-07-30 16:19:21',NULL,261,'1'),(1101,'22','UserCraft',1,'2020-07-30 17:50:14',NULL,275,'1'),(1102,'74','UserCraft',1,'2020-07-30 17:50:14',NULL,275,'1'),(1103,'143','UserCraft',1,'2020-07-30 17:50:14',NULL,275,'1'),(1104,'542','UserCraft',1,'2020-07-30 17:50:14',NULL,275,'1'),(1105,'21','UserMaterial',1,'2020-07-30 17:50:14',NULL,275,'1'),(1106,'23','UserMaterial',1,'2020-07-30 17:50:14',NULL,275,'1'),(1107,'75','UserMaterial',1,'2020-07-30 17:50:14',NULL,275,'1'),(1108,'76','UserMaterial',1,'2020-07-30 17:50:14',NULL,275,'1'),(1109,'315','UserMaterial',1,'2020-07-30 17:50:14',NULL,275,'1'),(1110,'17','UserProducts',1,'2020-07-30 17:50:14',NULL,275,'1'),(1111,'18','UserProducts',1,'2020-07-30 17:50:14',NULL,275,'1'),(1112,'77','UserProducts',1,'2020-07-30 17:50:14',NULL,275,'1'),(1113,'307','UserProducts',1,'2020-07-30 17:50:14',NULL,275,'1'),(1118,'22','UserCraft',1,'2020-07-30 20:49:06',NULL,276,'1'),(1119,'542','UserMaterial',1,'2020-07-30 20:49:10',NULL,276,'1'),(1121,'77','UserProducts',1,'2020-07-30 20:50:19',NULL,276,'1'),(1122,'22','UserCraft',1,'2020-07-30 20:56:34',NULL,277,'1'),(1124,'21','UserMaterial',1,'2020-07-30 20:56:36',NULL,277,'1'),(1125,'23','UserMaterial',1,'2020-07-30 20:56:36',NULL,277,'1'),(1127,'17','UserProducts',1,'2020-07-30 20:56:37',NULL,277,'1'),(1128,'18','UserProducts',1,'2020-07-30 20:56:37',NULL,277,'1'),(1131,'22','UserCraft',1,'2020-07-30 20:57:14',NULL,279,'1'),(1133,'21','UserMaterial',1,'2020-07-30 20:57:15',NULL,279,'1'),(1134,'315','UserMaterial',1,'2020-07-30 20:57:15',NULL,279,'1'),(1135,'17','UserProducts',1,'2020-07-30 20:57:17',NULL,279,'1'),(1136,'18','UserProducts',1,'2020-07-30 20:57:17',NULL,279,'1'),(1139,'22','UserCraft',1,'2020-07-30 20:57:57',NULL,278,'1'),(1140,'315','UserMaterial',1,'2020-07-30 20:58:00',NULL,278,'1'),(1141,'307','UserProducts',1,'2020-07-30 20:58:02',NULL,278,'1'),(1142,'74','UserCraft',1,'2020-07-30 20:59:45',NULL,280,'1'),(1146,'315','UserMaterial',1,'2020-07-30 21:00:06',NULL,280,'1'),(1148,'307','UserProducts',1,'2020-07-30 21:00:10',NULL,280,'1'),(1152,'74','UserCraft',1,'2020-07-30 21:02:06',NULL,283,'1'),(1153,'23','UserMaterial',1,'2020-07-30 21:02:08',NULL,283,'1'),(1155,'307','UserProducts',1,'2020-07-30 21:02:28',NULL,283,'1'),(1157,'74','UserCraft',1,'2020-07-31 06:03:56',NULL,284,'1'),(1158,'23','UserMaterial',1,'2020-07-31 06:03:59',NULL,284,'1'),(1159,'315','UserMaterial',1,'2020-07-31 06:03:59',NULL,284,'1'),(1162,'18','UserProducts',1,'2020-07-31 06:04:37',NULL,284,'1'),(1163,'307','UserProducts',1,'2020-07-31 06:04:37',NULL,284,'1'),(1164,'74','UserCraft',1,'2020-07-31 06:05:44',NULL,285,'1'),(1165,'23','UserMaterial',1,'2020-07-31 06:05:47',NULL,285,'1'),(1166,'315','UserMaterial',1,'2020-07-31 06:05:47',NULL,285,'1'),(1169,'18','UserProducts',1,'2020-07-31 06:06:01',NULL,285,'1'),(1170,'307','UserProducts',1,'2020-07-31 06:06:01',NULL,285,'1'),(1171,'22','UserCraft',1,'2020-07-31 06:06:35',NULL,286,'1'),(1172,'21','UserMaterial',1,'2020-07-31 06:06:45',NULL,286,'1'),(1175,'17','UserProducts',1,'2020-07-31 06:07:20',NULL,286,'1'),(1176,'22','UserCraft',1,'2020-07-31 11:36:00',NULL,288,'1'),(1177,'21','UserMaterial',1,'2020-07-31 11:36:02',NULL,288,'1'),(1178,'17','UserProducts',1,'2020-07-31 11:36:03',NULL,288,'1'),(1179,'22','UserCraft',1,'2020-07-31 13:10:35',NULL,289,'1'),(1180,'21','UserMaterial',1,'2020-07-31 13:10:36',NULL,289,'1'),(1181,'17','UserProducts',1,'2020-07-31 13:10:37',NULL,289,'1'),(1182,'22','UserCraft',1,'2020-07-31 13:48:50',NULL,290,'1'),(1183,'21','UserMaterial',1,'2020-07-31 13:48:51',NULL,290,'1'),(1184,'315','UserMaterial',1,'2020-07-31 13:48:51',NULL,290,'1'),(1185,'17','UserProducts',1,'2020-07-31 13:48:53',NULL,290,'1'),(1186,'307','UserProducts',1,'2020-07-31 13:48:53',NULL,290,'1'),(1189,'22','UserCraft',1,'2020-07-31 20:05:51',NULL,291,'1'),(1190,'74','UserCraft',1,'2020-07-31 20:05:51',NULL,291,'1'),(1191,'21','UserMaterial',1,'2020-07-31 20:05:53',NULL,291,'1'),(1192,'76','UserMaterial',1,'2020-07-31 20:05:53',NULL,291,'1'),(1193,'315','UserMaterial',1,'2020-07-31 20:05:53',NULL,291,'1'),(1194,'17','UserProducts',1,'2020-07-31 20:05:56',NULL,291,'1'),(1195,'18','UserProducts',1,'2020-07-31 20:05:56',NULL,291,'1'),(1196,'77','UserProducts',1,'2020-07-31 20:05:56',NULL,291,'1'),(1197,'22','UserCraft',1,'2020-08-04 04:21:09',NULL,298,'1'),(1198,'74','UserCraft',1,'2020-08-04 04:21:09',NULL,298,'1'),(1199,'23','UserMaterial',1,'2020-08-04 04:21:12',NULL,298,'1'),(1200,'315','UserMaterial',1,'2020-08-04 04:21:12',NULL,298,'1'),(1201,'18','UserProducts',1,'2020-08-04 04:21:15',NULL,298,'1'),(1202,'307','UserProducts',1,'2020-08-04 04:21:15',NULL,298,'1'),(1203,'74','UserCraft',1,'2020-08-04 08:26:57',NULL,281,'1'),(1204,'23','UserMaterial',1,'2020-08-04 08:26:57',NULL,281,'1'),(1205,'307','UserProducts',1,'2020-08-04 08:26:57',NULL,281,'1'),(1239,'22','UserCraft',1,'2020-08-06 11:47:45',NULL,179,'1'),(1240,'74','UserCraft',1,'2020-08-06 11:47:45',NULL,179,'1'),(1241,'143','UserCraft',1,'2020-08-06 11:47:45',NULL,179,'1'),(1242,'21','UserMaterial',1,'2020-08-06 11:47:45',NULL,179,'1'),(1243,'23','UserMaterial',1,'2020-08-06 11:47:45',NULL,179,'1'),(1244,'76','UserMaterial',1,'2020-08-06 11:47:45',NULL,179,'1'),(1245,'315','UserMaterial',1,'2020-08-06 11:47:45',NULL,179,'1'),(1246,'17','UserProducts',1,'2020-08-06 11:47:45',NULL,179,'1'),(1247,'18','UserProducts',1,'2020-08-06 11:47:45',NULL,179,'1'),(1248,'77','UserProducts',1,'2020-08-06 11:47:45',NULL,179,'1'),(1249,'307','UserProducts',1,'2020-08-06 11:47:45',NULL,179,'1'),(1276,'74','UserCraft',1,'2020-08-07 17:40:36',NULL,303,'1'),(1277,'22','UserCraft',1,'2020-08-07 17:40:36',NULL,303,'1'),(1278,'21','UserMaterial',1,'2020-08-07 17:40:36',NULL,303,'1'),(1279,'17','UserProducts',1,'2020-08-07 17:40:36',NULL,303,'1'),(1280,'22','UserCraft',1,'2020-08-07 17:47:14',NULL,304,'1'),(1281,'74','UserCraft',1,'2020-08-07 17:47:14',NULL,304,'1'),(1282,'21','UserMaterial',1,'2020-08-07 17:47:14',NULL,304,'1'),(1283,'23','UserMaterial',1,'2020-08-07 17:47:14',NULL,304,'1'),(1284,'17','UserProducts',1,'2020-08-07 17:47:14',NULL,304,'1'),(1285,'18','UserProducts',1,'2020-08-07 17:47:14',NULL,304,'1'),(1297,'22','UserCraft',1,'2020-08-07 18:11:51',NULL,302,'1'),(1298,'21','UserMaterial',1,'2020-08-07 18:11:51',NULL,302,'1'),(1299,'23','UserMaterial',1,'2020-08-07 18:11:51',NULL,302,'1'),(1300,'76','UserMaterial',1,'2020-08-07 18:11:51',NULL,302,'1'),(1301,'315','UserMaterial',1,'2020-08-07 18:11:51',NULL,302,'1'),(1302,'17','UserProducts',1,'2020-08-07 18:11:51',NULL,302,'1'),(1303,'18','UserProducts',1,'2020-08-07 18:11:51',NULL,302,'1'),(1304,'307','UserProducts',1,'2020-08-07 18:11:51',NULL,302,'1'),(1305,'22','UserCraft',1,'2020-08-07 18:12:02',NULL,305,'1'),(1306,'21','UserMaterial',1,'2020-08-07 18:12:02',NULL,305,'1'),(1307,'23','UserMaterial',1,'2020-08-07 18:12:02',NULL,305,'1'),(1308,'76','UserMaterial',1,'2020-08-07 18:12:02',NULL,305,'1'),(1309,'315','UserMaterial',1,'2020-08-07 18:12:02',NULL,305,'1'),(1310,'542','UserMaterial',1,'2020-08-07 18:12:02',NULL,305,'1'),(1311,'17','UserProducts',1,'2020-08-07 18:12:02',NULL,305,'1'),(1312,'18','UserProducts',1,'2020-08-07 18:12:02',NULL,305,'1'),(1313,'77','UserProducts',1,'2020-08-07 18:12:02',NULL,305,'1'),(1314,'307','UserProducts',1,'2020-08-07 18:12:02',NULL,305,'1'),(1315,'22','UserCraft',1,'2020-08-07 18:15:19',NULL,306,'1'),(1316,'74','UserCraft',1,'2020-08-07 18:15:19',NULL,306,'1'),(1317,'21','UserMaterial',1,'2020-08-07 18:15:19',NULL,306,'1'),(1318,'23','UserMaterial',1,'2020-08-07 18:15:19',NULL,306,'1'),(1319,'76','UserMaterial',1,'2020-08-07 18:15:19',NULL,306,'1'),(1320,'315','UserMaterial',1,'2020-08-07 18:15:19',NULL,306,'1'),(1321,'542','UserMaterial',1,'2020-08-07 18:15:19',NULL,306,'1'),(1322,'17','UserProducts',1,'2020-08-07 18:15:19',NULL,306,'1'),(1323,'18','UserProducts',1,'2020-08-07 18:15:19',NULL,306,'1'),(1324,'77','UserProducts',1,'2020-08-07 18:15:19',NULL,306,'1'),(1325,'307','UserProducts',1,'2020-08-07 18:15:19',NULL,306,'1'),(1333,'22','UserCraft',1,'2020-08-08 06:58:21',NULL,307,'1'),(1334,'21','UserMaterial',1,'2020-08-08 06:58:21',NULL,307,'1'),(1335,'18','UserProducts',1,'2020-08-08 06:58:21',NULL,307,'1'),(1341,'22','UserCraft',1,'2020-08-10 15:00:49',NULL,309,'1'),(1342,'21','UserMaterial',1,'2020-08-10 15:00:49',NULL,309,'1'),(1343,'315','UserMaterial',1,'2020-08-10 15:00:49',NULL,309,'1'),(1344,'77','UserProducts',1,'2020-08-10 15:00:49',NULL,309,'1'),(1345,'307','UserProducts',1,'2020-08-10 15:00:49',NULL,309,'1'),(1346,'17','UserProducts',1,'2020-08-10 15:00:49',NULL,309,'1'),(1357,'22','UserCraft',1,'2020-08-10 15:13:25',NULL,314,'1'),(1358,'23','UserMaterial',1,'2020-08-10 15:13:25',NULL,314,'1'),(1359,'76','UserMaterial',1,'2020-08-10 15:13:25',NULL,314,'1'),(1360,'315','UserMaterial',1,'2020-08-10 15:13:25',NULL,314,'1'),(1361,'542','UserMaterial',1,'2020-08-10 15:13:25',NULL,314,'1'),(1362,'17','UserProducts',1,'2020-08-10 15:13:25',NULL,314,'1'),(1363,'18','UserProducts',1,'2020-08-10 15:13:25',NULL,314,'1'),(1364,'77','UserProducts',1,'2020-08-10 15:13:25',NULL,314,'1'),(1365,'307','UserProducts',1,'2020-08-10 15:13:25',NULL,314,'1'),(1376,'22','UserCraft',1,'2020-08-11 07:31:56',NULL,317,'1'),(1377,'21','UserMaterial',1,'2020-08-11 07:31:56',NULL,317,'1'),(1378,'23','UserMaterial',1,'2020-08-11 07:31:56',NULL,317,'1'),(1379,'76','UserMaterial',1,'2020-08-11 07:31:56',NULL,317,'1'),(1380,'315','UserMaterial',1,'2020-08-11 07:31:56',NULL,317,'1'),(1381,'542','UserMaterial',1,'2020-08-11 07:31:56',NULL,317,'1'),(1382,'17','UserProducts',1,'2020-08-11 07:31:56',NULL,317,'1'),(1383,'18','UserProducts',1,'2020-08-11 07:31:56',NULL,317,'1'),(1384,'77','UserProducts',1,'2020-08-11 07:31:56',NULL,317,'1'),(1385,'307','UserProducts',1,'2020-08-11 07:31:56',NULL,317,'1'),(1386,'22','UserCraft',1,'2020-08-13 09:44:05',NULL,322,'1'),(1387,'21','UserMaterial',1,'2020-08-13 09:44:10',NULL,322,'1'),(1388,'76','UserMaterial',1,'2020-08-13 09:44:10',NULL,322,'1'),(1389,'315','UserMaterial',1,'2020-08-13 09:44:10',NULL,322,'1'),(1390,'18','UserProducts',1,'2020-08-13 09:44:14',NULL,322,'1'),(1391,'307','UserProducts',1,'2020-08-13 09:44:14',NULL,322,'1'),(1392,'22','UserCraft',1,'2020-08-14 08:03:14',NULL,323,'1'),(1393,'76','UserMaterial',1,'2020-08-14 08:03:27',NULL,323,'1'),(1394,'17','UserProducts',1,'2020-08-14 08:03:39',NULL,323,'1'),(1395,'22','UserCraft',1,'2020-08-14 08:44:55',NULL,324,'1'),(1396,'21','UserMaterial',1,'2020-08-14 08:44:57',NULL,324,'1'),(1397,'17','UserProducts',1,'2020-08-14 08:44:59',NULL,324,'1'),(1413,'22','UserCraft',1,'2020-08-14 12:18:23',NULL,325,'1'),(1414,'21','UserMaterial',1,'2020-08-14 12:18:25',NULL,325,'1'),(1415,'18','UserProducts',1,'2020-08-14 12:18:26',NULL,325,'1'),(1416,'22','UserCraft',1,'2020-08-17 10:10:02',NULL,301,'1'),(1417,'21','UserMaterial',1,'2020-08-17 10:10:02',NULL,301,'1'),(1418,'17','UserProducts',1,'2020-08-17 10:10:02',NULL,301,'1'),(1419,'22','UserCraft',1,'2020-08-18 13:13:11',NULL,329,'1'),(1420,'21','UserMaterial',1,'2020-08-18 13:13:19',NULL,329,'1'),(1421,'315','UserMaterial',1,'2020-08-18 13:13:19',NULL,329,'1'),(1422,'307','UserProducts',1,'2020-08-18 13:13:26',NULL,329,'1'),(1423,'22','UserCraft',1,'2020-08-18 13:27:29',NULL,331,'1'),(1426,'22','UserCraft',1,'2020-08-18 13:47:28',NULL,336,'1'),(1427,'21','UserMaterial',1,'2020-08-18 13:47:35',NULL,336,'1'),(1428,'315','UserMaterial',1,'2020-08-18 13:47:35',NULL,336,'1'),(1429,'17','UserProducts',1,'2020-08-18 13:47:58',NULL,336,'1'),(1430,'21','UserMaterial',1,'2020-08-18 14:05:22',NULL,331,'1'),(1431,'17','UserProducts',1,'2020-08-18 14:05:27',NULL,331,'1'),(1432,'22','UserCraft',1,'2020-08-18 14:06:36',NULL,337,'1'),(1433,'21','UserMaterial',1,'2020-08-18 14:06:56',NULL,337,'1'),(1434,'22','UserCraft',1,'2020-08-18 14:12:29',NULL,330,'1'),(1435,'21','UserMaterial',1,'2020-08-18 14:12:30',NULL,330,'1'),(1436,'17','UserProducts',1,'2020-08-18 14:12:31',NULL,330,'1'),(1437,'22','UserCraft',1,'2020-08-18 14:48:25',NULL,338,'1'),(1438,'21','UserMaterial',1,'2020-08-18 14:48:36',NULL,338,'1'),(1439,'23','UserMaterial',1,'2020-08-18 14:48:36',NULL,338,'1'),(1440,'76','UserMaterial',1,'2020-08-18 14:48:36',NULL,338,'1'),(1441,'315','UserMaterial',1,'2020-08-18 14:48:36',NULL,338,'1'),(1442,'17','UserProducts',1,'2020-08-18 14:48:40',NULL,338,'1'),(1443,'18','UserProducts',1,'2020-08-18 14:48:40',NULL,338,'1'),(1444,'77','UserProducts',1,'2020-08-18 14:48:40',NULL,338,'1'),(1445,'307','UserProducts',1,'2020-08-18 14:48:40',NULL,338,'1'),(1446,'22','UserCraft',1,'2020-08-19 07:35:51',NULL,339,'1'),(1447,'76','UserMaterial',1,'2020-08-19 07:35:55',NULL,339,'1'),(1448,'77','UserProducts',1,'2020-08-19 07:35:57',NULL,339,'1'),(1449,'22','UserCraft',1,'2020-08-19 17:19:42',NULL,341,'1'),(1450,'21','UserMaterial',1,'2020-08-19 17:19:49',NULL,341,'1'),(1451,'23','UserMaterial',1,'2020-08-19 17:19:49',NULL,341,'1'),(1452,'76','UserMaterial',1,'2020-08-19 17:19:49',NULL,341,'1'),(1453,'315','UserMaterial',1,'2020-08-19 17:19:49',NULL,341,'1'),(1454,'17','UserProducts',1,'2020-08-19 17:19:56',NULL,341,'1'),(1455,'18','UserProducts',1,'2020-08-19 17:19:56',NULL,341,'1'),(1456,'77','UserProducts',1,'2020-08-19 17:19:56',NULL,341,'1'),(1457,'307','UserProducts',1,'2020-08-19 17:19:56',NULL,341,'1'),(1458,'22','UserCraft',1,'2020-08-26 16:03:23',NULL,342,'1'),(1459,'21','UserMaterial',1,'2020-08-26 16:03:25',NULL,342,'1'),(1460,'315','UserMaterial',1,'2020-08-26 16:03:25',NULL,342,'1'),(1461,'17','UserProducts',1,'2020-08-26 16:03:28',NULL,342,'1'),(1462,'18','UserProducts',1,'2020-08-26 16:03:28',NULL,342,'1'),(1463,'77','UserProducts',1,'2020-08-26 16:03:28',NULL,342,'1'),(1464,'307','UserProducts',1,'2020-08-26 16:03:28',NULL,342,'1');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp_verification`
--

DROP TABLE IF EXISTS `otp_verification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otp_verification` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `otp` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `isVerified` tinyint(1) DEFAULT NULL,
  `userId` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `otp_verification_userid_foreign` (`userId`),
  CONSTRAINT `otp_verification_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp_verification`
--

LOCK TABLES `otp_verification` WRITE;
/*!40000 ALTER TABLE `otp_verification` DISABLE KEYS */;
/*!40000 ALTER TABLE `otp_verification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `po`
--

DROP TABLE IF EXISTS `po`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `po` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniqueId` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `productName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `estimatedDelivery` datetime(6) DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `gst` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `enqId` int(10) unsigned NOT NULL,
  `assignUserId` int(10) unsigned NOT NULL,
  `supplier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `shipTo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `subTotal` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->for active,0->Inactive',
  `deleted` enum('1','0') COLLATE utf8_bin DEFAULT '1' COMMENT '1->for active,0->Inactive',
  `created_by` int(11) DEFAULT NULL,
  `pdfUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `po_enqid_foreign` (`enqId`),
  KEY `po_assignuserid_foreign` (`assignUserId`),
  CONSTRAINT `po_assignuserid_foreign` FOREIGN KEY (`assignUserId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `po_enqid_foreign` FOREIGN KEY (`enqId`) REFERENCES `enquiries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `po`
--

LOCK TABLES `po` WRITE;
/*!40000 ALTER TABLE `po` DISABLE KEYS */;
INSERT INTO `po` VALUES (2,NULL,'dsf','10','0000-00-00 00:00:00.000000',NULL,NULL,NULL,'2020-08-31 09:22:24',58,301,NULL,NULL,NULL,230,'2020-10-09 14:52:14',NULL,NULL,1,'1',NULL,NULL);
/*!40000 ALTER TABLE `po` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productImage`
--

DROP TABLE IF EXISTS `productImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productImage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `productId` int(10) unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `userId` int(10) unsigned NOT NULL,
  `isActive` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `productimage_productid_foreign` (`productId`),
  KEY `productimage_userid_foreign` (`userId`),
  CONSTRAINT `productimage_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `productimage_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productImage`
--

LOCK TABLES `productImage` WRITE;
/*!40000 ALTER TABLE `productImage` DISABLE KEYS */;
INSERT INTO `productImage` VALUES (62,69,'https://res.cloudinary.com/techugonew/image/upload/v1594394626/4viwagM5l3s3Dg-FzyzP2RrF.jpg',1,1,'2020-07-10 15:23:47'),(63,69,'https://res.cloudinary.com/techugonew/image/upload/v1594394638/3j8zpXOj8rp-V8BDMS3Dc6ty.jpg',1,1,'2020-07-10 15:23:59'),(67,70,'https://res.cloudinary.com/techugonew/image/upload/v1594396253/4-PIJlpzlPGLOSyAcnY50qGt.jpg',1,1,'2020-07-10 15:50:54'),(68,70,'https://res.cloudinary.com/techugonew/image/upload/v1594396253/zAlVvYrKW9DV8PX7WsWUVx4j.jpg',1,1,'2020-07-10 15:50:54'),(69,71,'https://res.cloudinary.com/techugonew/image/upload/v1594396309/lN0TjQ4CH3rDstnPn5q_zS33.jpg',1,1,'2020-07-10 15:51:50'),(70,71,'https://res.cloudinary.com/techugonew/image/upload/v1594396320/EnhFh1ocZzBkIvTlGT-wNUfW.jpg',1,1,'2020-07-10 15:52:01'),(73,72,'https://res.cloudinary.com/techugonew/image/upload/v1594396650/oGFHdxvUzp6jgsOiEKkDl3A1.jpg',1,1,'2020-07-10 15:57:31'),(74,72,'https://res.cloudinary.com/techugonew/image/upload/v1594396650/5ZfpUC--uHOkkB3nOOKOfvyJ.jpg',1,1,'2020-07-10 15:57:31'),(78,74,'https://res.cloudinary.com/techugonew/image/upload/v1594397255/hSqTS4o1ZxdQO5h9VliMXB7B.png',1,1,'2020-07-10 16:07:35'),(79,70,'https://res.cloudinary.com/techugonew/image/upload/v1594397308/trRb49VCubrDEMUJuJXwN_Q3.jpg',1,1,'2020-07-10 16:08:28'),(81,74,'https://res.cloudinary.com/techugonew/image/upload/v1594397391/UqQz0VZqNT8bypyT_xE3oUBQ.jpg',1,1,'2020-07-10 16:09:51'),(82,74,'https://res.cloudinary.com/techugonew/image/upload/v1594397473/KkuF3kPOg1WMRNR404KFSSWN.jpg',1,1,'2020-07-10 16:11:13'),(83,74,'https://res.cloudinary.com/techugonew/image/upload/v1594397473/Udhg_JJunACiu4n-DNR2doqZ.jpg',1,1,'2020-07-10 16:11:13'),(84,75,'https://res.cloudinary.com/techugonew/image/upload/v1594397595/CgYq8he4aSyA3uoRJqPaoR_L.jpg',1,1,'2020-07-10 16:13:16'),(85,75,'https://res.cloudinary.com/techugonew/image/upload/v1594397595/TtC_I-R9hJUKNxjhJb_nHnMZ.png',1,1,'2020-07-10 16:13:16'),(90,76,'https://res.cloudinary.com/techugonew/image/upload/v1594399825/YnkmgOaJghDiPlxrMG9HKv-I.jpg',1,1,'2020-07-10 16:50:25'),(91,76,'https://res.cloudinary.com/techugonew/image/upload/v1594399825/Z8x1YNrhhvJyx5XClQDdd1uV.jpg',1,1,'2020-07-10 16:50:25'),(92,77,'https://res.cloudinary.com/techugonew/image/upload/v1594399936/FuEgMIEPYWY_LBEhmNhPk07E.jpg',1,1,'2020-07-10 16:52:17'),(93,77,'https://res.cloudinary.com/techugonew/image/upload/v1594399962/k79Bxg1pIr5E2_n7HbdU2o2c.png',1,1,'2020-07-10 16:52:42'),(94,78,'https://res.cloudinary.com/techugonew/image/upload/v1594466710/5GKYnY2zLWWM7GkGMd5R_wDc.png',1,1,'2020-07-11 11:25:10'),(95,78,'https://res.cloudinary.com/techugonew/image/upload/v1594467024/ta6fYrzeyB4Ya-HWbwd3kXbt.jpg',1,1,'2020-07-11 11:30:25'),(96,79,'https://res.cloudinary.com/techugonew/image/upload/v1594543432/rcZOFzXp_fGgt_Hrh6S3G0iv.jpg',1,1,'2020-07-12 08:43:52'),(97,79,'https://res.cloudinary.com/techugonew/image/upload/v1594543432/r8OsmiHe4VDM7ryfcKCU2JSm.jpg',1,1,'2020-07-12 08:43:52'),(98,80,'https://res.cloudinary.com/techugonew/image/upload/v1595601008/ekmKW8PrPc-HFEYEr-2R8JzU.png',1,1,'2020-07-24 14:30:08'),(99,81,'https://res.cloudinary.com/techugonew/image/upload/v1596027577/_hc4coUimE1Lohp7l6JYfDB3.jpg',1,1,'2020-07-29 12:59:38'),(100,82,'https://res.cloudinary.com/techugonew/image/upload/v1596027843/vBXFGhg6d3BgnrAAgawXtO29.jpg',1,1,'2020-07-29 13:04:04'),(101,83,'https://res.cloudinary.com/techugonew/image/upload/v1596028886/377-J6foDVoUGuOqAWb4DAUv.jpg',1,1,'2020-07-29 13:21:26'),(102,84,'https://res.cloudinary.com/techugonew/image/upload/v1596029732/0Di3xSspCVJZWWd9sdgPkmy1.jpg',1,1,'2020-07-29 13:35:32'),(103,85,'https://res.cloudinary.com/techugonew/image/upload/v1596029801/xhleEtFh70j2iU1WJLGbccAf.jpg',1,1,'2020-07-29 13:36:41'),(104,86,'https://res.cloudinary.com/techugonew/image/upload/v1596029918/lLUiqSz7j9cNjpFYgDeSXg9T.jpg',1,1,'2020-07-29 13:38:38'),(105,88,'https://res.cloudinary.com/techugonew/image/upload/v1596032867/DEGF4BmM-CO3wRctF8X9ZBgL.jpg',1,1,'2020-07-29 14:27:47'),(106,89,'https://res.cloudinary.com/techugonew/image/upload/v1596033057/AjKRKzkz5cPIg3j1TbVpkeQJ.jpg',1,1,'2020-07-29 14:30:58'),(107,98,'https://res.cloudinary.com/techugonew/image/upload/v1596130383/YB8EbpBNgLDpSQOTYVQ6H2Q7.jpg',1,1,'2020-07-30 17:33:04'),(108,99,'https://res.cloudinary.com/techugonew/image/upload/v1596130582/Smgucfu13j1XE_8nr4uLFS9D.jpg',1,1,'2020-07-30 17:36:22'),(109,83,'https://res.cloudinary.com/techugonew/image/upload/v1596181038/ugbDFbskX_xwbCuFRiVKzN3n.jpg',1,1,'2020-07-31 07:37:18'),(110,108,'https://res.cloudinary.com/techugonew/image/upload/v1596182183/vVwBogRLQNA2_FDe4gCbnPVW.png',1,1,'2020-07-31 07:56:23'),(111,109,'https://res.cloudinary.com/techugonew/image/upload/v1596266833/13SIUj44faVSQNUbSTloASUi.png',1,1,'2020-08-01 07:27:14'),(112,109,'https://res.cloudinary.com/techugonew/image/upload/v1596266834/41hSPTwgId93N8BgEARnRbch.jpg',1,1,'2020-08-01 07:27:14'),(114,109,'https://res.cloudinary.com/techugonew/image/upload/v1596787935/oL3tMOwaeFe__OnvLmV11NTu.jpg',1,1,'2020-08-07 08:12:15'),(115,109,'https://res.cloudinary.com/techugonew/image/upload/v1596787935/Cp46M4vtXwp9yX2OtDslxXuA.jpg',1,1,'2020-08-07 08:12:15'),(116,109,'https://res.cloudinary.com/techugonew/image/upload/v1596787935/BV0ppMRybCftOmblWjNL3TUC.jpg',1,1,'2020-08-07 08:12:15'),(117,109,'https://res.cloudinary.com/techugonew/image/upload/v1596788009/iaHCEldYQ9IstpPrx9II2qfh.jpg',1,1,'2020-08-07 08:13:29'),(118,98,'https://res.cloudinary.com/techugonew/image/upload/v1596793979/as_mJj3Ihj6oO3awBzk9X34Y.jpg',1,1,'2020-08-07 09:53:00'),(119,99,'https://res.cloudinary.com/techugonew/image/upload/v1596793994/d14KfXYhuVfwNZsenshAiQsk.jpg',1,1,'2020-08-07 09:53:14'),(120,107,'https://res.cloudinary.com/techugonew/image/upload/v1596794952/0jnFN8X9e_8x476MjeSi-yHL.png',1,1,'2020-08-07 10:09:13'),(121,106,'https://res.cloudinary.com/techugonew/image/upload/v1596794990/jP6VIjo-xew1pTn40p-sE_TB.png',1,1,'2020-08-07 10:09:50'),(122,111,'https://res.cloudinary.com/techugonew/image/upload/v1596824298/cAo2rrmrMFDFe2gJBK2CJG9r.jpg',1,1,'2020-08-07 18:18:19'),(123,112,'https://res.cloudinary.com/techugonew/image/upload/v1596826751/C1c2_cW4vE6xcbgk323Hk1X-.jpg',1,1,'2020-08-07 18:59:12'),(124,113,'https://res.cloudinary.com/techugonew/image/upload/v1596826798/cO-10XfC7gtcVrh_1J2VA51n.jpg',1,1,'2020-08-07 18:59:58'),(125,114,'https://res.cloudinary.com/techugonew/image/upload/v1596827569/X5YkjAg4oD0g2eWvQepKw6Rs.jpg',1,1,'2020-08-07 19:12:50'),(126,115,'https://res.cloudinary.com/techugonew/image/upload/v1596828129/eV-g-7lHEP-Pyn17xprvI8Fk.jpg',1,1,'2020-08-07 19:22:10'),(127,116,'https://res.cloudinary.com/techugonew/image/upload/v1596828301/wPKFkRTVNA1QRGsrmkazXmY9.jpg',1,1,'2020-08-07 19:25:02'),(128,117,'https://res.cloudinary.com/techugonew/image/upload/v1596828341/LAcJdOlGFXkQZgjbnT2d4ebA.jpg',1,1,'2020-08-07 19:25:42'),(129,118,'https://res.cloudinary.com/techugonew/image/upload/v1596828457/wMtJ4y-S-Z6k3l5ef_gMI0au.jpg',1,1,'2020-08-07 19:27:37'),(130,119,'https://res.cloudinary.com/techugonew/image/upload/v1596828781/z39hMPjA6U5yAqShTYwzPbUj.jpg',1,1,'2020-08-07 19:33:01'),(131,74,'https://res.cloudinary.com/techugonew/image/upload/v1597058981/VfmjwyRCczEsVhcIXdLUsEMB.jpg',1,1,'2020-08-10 11:29:41'),(132,73,'https://res.cloudinary.com/techugonew/image/upload/v1597059011/sjHUTRDuzZbzJSlWsW9AVni4.jpg',1,1,'2020-08-10 11:30:11'),(133,73,'https://res.cloudinary.com/techugonew/image/upload/v1597059011/CQAlnzFObYAP7hZjgIMT6L4W.jpg',1,1,'2020-08-10 11:30:11'),(134,72,'https://res.cloudinary.com/techugonew/image/upload/v1597059035/2hz2AR_wy7pzkhtxaNPKLW4U.jpg',1,1,'2020-08-10 11:30:36'),(135,120,'https://res.cloudinary.com/techugonew/image/upload/v1597078371/hYRfsE3mhFXyL1GGCpapZ43N.png',1,1,'2020-08-10 16:52:52'),(136,121,'https://res.cloudinary.com/techugonew/image/upload/v1597145676/Nfiml9-oW2AJnPLfdbhRf0It.png',1,1,'2020-08-11 11:34:37'),(137,122,'https://res.cloudinary.com/techugonew/image/upload/v1597146419/hIWZt85RD4goG4hPdH4vaA3z.png',1,1,'2020-08-11 11:46:59'),(138,72,'https://res.cloudinary.com/techugonew/image/upload/v1597831894/yGa4ti1wHSVf7wU83SFQofeT.jpg',1,1,'2020-08-19 10:11:34'),(139,72,'https://res.cloudinary.com/techugonew/image/upload/v1597831894/YINJsE97u964Vt4X1T6dM2--.jpg',1,1,'2020-08-19 10:11:34');
/*!40000 ALTER TABLE `productImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_group`
--

DROP TABLE IF EXISTS `product_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `total_product` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `craft` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->for active,0->Inactive',
  `created_by` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_group_created_by_foreign` (`created_by`),
  CONSTRAINT `product_group_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_group`
--

LOCK TABLES `product_group` WRITE;
/*!40000 ALTER TABLE `product_group` DISABLE KEYS */;
INSERT INTO `product_group` VALUES (1,'sdfsdfsfdfsdf','77','','2020-07-16 12:35:12',0,1),(2,'sdsdfsdf','76,75','','2020-07-16 12:40:51',0,1),(3,'sadfsadf','79','','2020-07-16 12:42:16',0,1),(4,'sdsdfsdfdf','79','','2020-07-16 12:42:40',0,1),(5,'sdfsdf','71,72','','2020-07-31 05:56:53',1,1),(6,'abc2','72,73,74,79','','2020-08-05 23:47:02',1,1),(7,'hsf','74','','2020-08-10 16:36:43',1,1),(8,'Abhay','72,73,108','','2020-08-10 17:11:11',0,1);
/*!40000 ALTER TABLE `product_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productionFiles`
--

DROP TABLE IF EXISTS `productionFiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productionFiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tracker_id` int(10) unsigned NOT NULL,
  `files` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->Active,0->Inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `productionfiles_tracker_id_foreign` (`tracker_id`),
  CONSTRAINT `productionfiles_tracker_id_foreign` FOREIGN KEY (`tracker_id`) REFERENCES `production_tracker` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productionFiles`
--

LOCK TABLES `productionFiles` WRITE;
/*!40000 ALTER TABLE `productionFiles` DISABLE KEYS */;
INSERT INTO `productionFiles` VALUES (2,1,'https://res.cloudinary.com/techugonew/image/upload/v1598858531/z-MweZqXLZWnrXll0vugTy7b.png',1,'2020-08-31 07:22:13');
/*!40000 ALTER TABLE `productionFiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_tracker`
--

DROP TABLE IF EXISTS `production_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `production_tracker` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `productionStatus` tinyint(3) DEFAULT '0',
  `paymentStatus` tinyint(3) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deliveryDate` datetime DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->active,0->Inactive',
  `userId` int(10) unsigned NOT NULL,
  `orderId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `production_tracker_userid_foreign` (`userId`),
  KEY `production_tracker_orderid_foreign` (`orderId`),
  CONSTRAINT `production_tracker_orderid_foreign` FOREIGN KEY (`orderId`) REFERENCES `enquiry_order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `production_tracker_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_tracker`
--

LOCK TABLES `production_tracker` WRITE;
/*!40000 ALTER TABLE `production_tracker` DISABLE KEYS */;
INSERT INTO `production_tracker` VALUES (1,10,20,'2020-08-31 06:42:36','2020-09-04 12:13:20',1,301,963),(3,NULL,NULL,'2020-08-31 09:22:42','2020-10-09 09:22:14',1,301,987),(6,NULL,NULL,'2020-08-31 10:07:57','2020-08-31 00:00:00',1,301,965);
/*!40000 ALTER TABLE `production_tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `inventoryQty` int(11) DEFAULT NULL,
  `material` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `userId` int(10) unsigned NOT NULL,
  `isActive` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `doableQty` int(11) DEFAULT NULL,
  `craft` int(11) DEFAULT NULL,
  `searchTags` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `plive` enum('1','0') COLLATE utf8_bin DEFAULT '0' COMMENT '1->live product,0->non live product',
  `categoryId` int(10) unsigned DEFAULT NULL,
  `subcategoryId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `publish` enum('1','0') COLLATE utf8_bin DEFAULT '0' COMMENT '1->publish for web,0->un Publish',
  `addingBestselling` enum('1','0') COLLATE utf8_bin DEFAULT '0' COMMENT '1->Best Selling Product,0->Non best Selling Product',
  `addingBestsellingComment` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `deleted` enum('0','1') COLLATE utf8_bin DEFAULT '1' COMMENT '1->active record ,0->record deleted [soft delete]',
  `verified` enum('0','1') COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '''1->for Accept,0->Reject''',
  `ideal` enum('0','1') COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '''1->for ideal,0->Non ideal''',
  `sku` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_userid_foreign` (`userId`),
  KEY `products_categoryid_foreign` (`categoryId`),
  CONSTRAINT `products_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (69,'apparel-machines',21313,230,21,'Burgomaster (alternatively spelled burgermeister, literally master of the town, master of the borough, master of the fortress, or master of the citizens) is the English form of various terms in or derived from Germanic languages for the chief magistrate or executive of a city or town. The name in English was derived from the Dutch burgemeester. In some cases, Burgomaster was the title of the head of state and head of government of a sovereign (or partially or de facto sovereign) city-state, sometimes combined with other titles, such as Hamburg s First Mayor and President of the Senate). Contemporary titles are commonly translated into English as mayor.',107,0,'2020-07-10 14:52:07',13123,22,'123123','0',2,'10','1','0',NULL,'1','0','0',NULL),(70,'Craft n’ Creations\nThe Craft House',234,890,21,'Burgomaster (alternatively spelled burgermeister, literally master of the town, master of the borough, master of the fortress, or master of the citizens) is the English form of various terms in or derived from Germanic languages for the chief magistrate or executive of a city or town. The name in English was derived from the Dutch burgemeester. In some cases, Burgomaster was the title of the head of state and head of government of a sovereign (or partially or de facto sovereign) city-state, sometimes combined with other titles, such as Hamburg s First Mayor and President of the Senate). Contemporary titles are commonly translated into English as mayor.',107,0,'2020-07-10 15:35:58',234,22,'23','0',2,'10','1','0',NULL,'1','0','0',NULL),(71,'The Craft HouseThe Craft House',70,100,21,'Burgomaster (alternatively spelled burgermeister, literally master of the town, master of the borough, master of the fortress, or master of the citizens) is the English form of various terms in or derived from Germanic languages for the chief magistrate or executive of a city or town. The name in English was derived from the Dutch burgemeester. In some cases, Burgomaster was the title of the head of state and head of government of a sovereign (or partially or de facto sovereign) city-state, sometimes combined with other titles, such as Hamburg s First Mayor and President of the Senate). Contemporary titles are commonly translated into English as mayor.',107,1,'2020-07-10 15:51:50',12312,22,'sdfsdf','0',2,'10','1','0','','1','1','0',NULL),(72,'Is the name simple and easy to remember?',12,135,21,'Burgomaster (alternatively spelled burgermeister, literally master of the town, master of the borough, master of the fortress, or master of the citizens) is the English form of various terms in or derived from Germanic languages for the chief magistrate or executive of a city or town. The name in English was derived from the Dutch burgemeester. In some cases, Burgomaster was the title of the head of state and head of government of a sovereign (or partially or de facto sovereign) city-state, sometimes combined with other titles, such as Hamburg s First Mayor and President of the Senate). Contemporary titles are commonly translated into English as mayor.',1,1,'2020-07-10 15:53:37',12,22,'as','0',2,'10','1','1','','1','1','0',NULL),(73,'The Rustic Door',12,239,21,'Burgomaster (alternatively spelled burgermeister, literally master of the town, master of the borough, master of the fortress, or master of the citizens) is the English form of various terms in or derived from Germanic languages for the chief magistrate or executive of a city or town. The name in English was derived from the Dutch burgemeester. In some cases, Burgomaster was the title of the head of state and head of government of a sovereign (or partially or de facto sovereign) city-state, sometimes combined with other titles, such as Hamburg s First Mayor and President of the Senate). Contemporary titles are commonly translated into English as mayor.',1,1,'2020-07-10 16:03:55',12,22,'we','0',2,'10','0','0','fdsgfgdfgdfgsdfffffffffffffffffffffffffffffffffffffffffff       s  dfs d f s df sd f s df s df ','1','1','0',NULL),(74,'Is the name simple and easy to remember?',28989889,780,21,'Burgomaster (alternatively spelled burgermeister, literally master of the town, master of the borough, master of the fortress, or master of the citizens) is the English form of various terms in or derived from Germanic languages for the chief magistrate or executive of a city or town. The name in English was derived from the Dutch burgemeester. In some cases, Burgomaster was the title of the head of state and head of government of a sovereign (or partially or de facto sovereign) city-state, sometimes combined with other titles, such as Hamburg s First Mayor and President of the Senate). Contemporary titles are commonly translated into English as mayor.',1,1,'2020-07-10 16:07:35',12887899,22,'http://15.206lal10admin/','0',2,'10','1','0','sdfdsfdsf','1','1','1',NULL),(75,'Is the name simple and easy to remember?',23,0,21,'Burgomaster (alternatively spelled burgermeister, literally master of the town, master of the borough, master of the fortress, or master of the citizens) is the English form of various terms in or derived from Germanic languages for the chief magistrate or executive of a city or town. The name in English was derived from the Dutch burgemeester. In some cases, Burgomaster was the title of the head of state and head of government of a sovereign (or partially or de facto sovereign) city-state, sometimes combined with other titles, such as Hamburg s First Mayor and President of the Senate). Contemporary titles are commonly translated into English as mayor.',1,0,'2020-07-10 16:13:16',12,22,'qwer','0',2,'10','1','0','sdfdsfsdfsdfsdf','1','0','0',NULL),(76,'Is the name simple and easy to remember?',22,480,21,'Burgomaster (alternatively spelled burgermeister, literally master of the town, master of the borough, master of the fortress, or master of the citizens) is the English form of various terms in or derived from Germanic languages for the chief magistrate or executive of a city or town. The name in English was derived from the Dutch burgemeester. In some cases, Burgomaster was the title of the head of state and head of government of a sovereign (or partially or de facto sovereign) city-state, sometimes combined with other titles, such as Hamburg s First Mayor and President of the Senate). Contemporary titles are commonly translated into English as mayor.',1,0,'2020-07-10 16:20:52',12,22,'12','0',2,'10','1','0',NULL,'1','0','0',NULL),(77,'Is the name simple and easy to remember?',12,0,21,'Burgomaster (alternatively spelled burgermeister, literally master of the town, master of the borough, master of the fortress, or master of the citizens) is the English form of various terms in or derived from Germanic languages for the chief magistrate or executive of a city or town. The name in English was derived from the Dutch burgemeester. In some cases, Burgomaster was the title of the head of state and head of government of a sovereign (or partially or de facto sovereign) city-state, sometimes combined with other titles, such as Hamburg s First Mayor and President of the Senate). Contemporary titles are commonly translated into English as mayor.',1,0,'2020-07-10 16:52:15',1223,22,'sdf','0',2,'10','1','0',NULL,'1','0','0',NULL),(78,'Albin Jose',10,769,21,'Burgomaster (alternatively spelled burgermeister, literally master of the town, master of the borough, master of the fortress, or master of the citizens) is the English form of various terms in or derived from Germanic languages for the chief magistrate or executive of a city or town. The name in English was derived from the Dutch burgemeester. In some cases, Burgomaster was the title of the head of state and head of government of a sovereign (or partially or de facto sovereign) city-state, sometimes combined with other titles, such as Hamburg s First Mayor and President of the Senate). Contemporary titles are commonly translated into English as mayor.',102,1,'2020-07-11 11:25:09',12,22,'frfv','0',2,'10','1','0',NULL,'1','0','0',NULL),(79,'techugo index',123,0,21,'sdfsdfdsfsdfsf sdfsdfdsfsdfsfsdfsdfdsfsdfsfsdfsdfdsfsdfsfsdfsdfdsfsdfsfsdfsdfdsfsdfsfsdfsdfdsfsdfsfsdfsdfdsfsdfsfsdfsdfdsfsdfsfsdfsdfdsfsdfsfsdfsdfdsfsdfsfsdfsdfdsfsdfsfsdfsdfdsfsdfsfsdfsdfdsfsdfsfsdfsdfdsfsdfsfsdfsdfdsfsdfsfsdfsdfdsfsdfsfsdfsdfdsfsdfsfsdfsdfdsfsdfsfsdfsdfdsfsdfsf',1,1,'2020-07-12 08:43:51',14,22,'asdfaaf','0',2,'10','1','1','efdddddddddddddddddddddddddd','1','1','1',NULL),(80,'nhjm',789,89,23,'mjkml',1,1,'2020-07-24 14:30:06',898998,81,'bh,mg','0',2,'10','1','0','','1','1','0',NULL),(81,'sdfsdfs',23123,232,75,NULL,109,1,'2020-07-29 12:59:36',NULL,NULL,NULL,'0',2,'10','1','0',NULL,'1','0','0',NULL),(82,'ewwerwer',33,32131,23,NULL,109,1,'2020-07-29 13:04:02',NULL,NULL,NULL,'0',2,'10','1','0',NULL,'1','0','0',NULL),(83,'fsdffsdf',3423,2131321,23,NULL,108,1,'2020-07-29 13:21:25',NULL,22,NULL,'0',2,'10','1','0','','1','1','0',NULL),(84,'effdsf',21323,1233,76,NULL,93,1,'2020-07-29 13:35:30',NULL,74,NULL,'0',2,'10','1','0',NULL,'1','0','0',NULL),(85,'qqqqqqqqqqqqqqqqqq',312123,123123,76,NULL,108,1,'2020-07-29 13:36:40',NULL,74,NULL,'0',2,'10','1','0','','1','1','0',NULL),(86,'weqewe',32,2222222,21,NULL,301,1,'2020-07-29 13:38:37',NULL,22,NULL,'0',2,'10','1','0',NULL,'1','0','1',NULL),(87,'wwwwwwwwwwwwwwwwwwwww',222222,2222,21,NULL,301,1,'2020-07-29 14:26:03',NULL,22,NULL,'0',2,'10','1','0',NULL,'1','1','1',NULL),(88,'qqqqqqqqqqqq',21,333,315,NULL,97,1,'2020-07-29 14:27:46',NULL,22,NULL,'0',2,'10','1','0',NULL,'1','1','1',NULL),(89,'sdsdff',11111111,11111111,23,NULL,301,0,'2020-07-29 14:30:57',NULL,22,NULL,'0',2,'10','1','0','dffsdfsdf','1','1','1',NULL),(90,'Fiber7',97,346,NULL,'AVCBDbhsavdhasvjdjvasdj',1,1,'2020-07-30 13:06:06',246,NULL,'abc,bcd','0',2,'10','1','0',NULL,'1','1','1',NULL),(92,'Fiber7',97,346,76,'AVCBDbhsavdhasvjdjvasdj',301,1,'2020-07-30 13:06:06',246,22,'abc,bcd','0',2,'10','1','0',NULL,'1','1','1',NULL),(93,'Fiber7',97,346,NULL,'AVCBDbhsavdhasvjdjvasdj',310,1,'2020-07-30 13:06:06',246,NULL,'abc,bcd','0',2,'10','1','0',NULL,'1','1','1',NULL),(94,'Fiber7',97,346,NULL,'AVCBDbhsavdhasvjdjvasdj',1,0,'2020-07-30 13:06:06',246,NULL,'abc,bcd','0',2,'10','1','0',NULL,'1','1','1',NULL),(95,'Fiber7',97,346,315,'AVCBDbhsavdhasvjdjvasdj',301,1,'2020-07-30 13:06:06',246,22,'abc,bcd','0',2,'10','1','1','','1','1','1',NULL),(96,'Fiber7',97,346,21,'AVCBDbhsavdhasvjdjvasdj',301,0,'2020-07-30 13:06:06',246,22,'abc,bcd','0',2,'10','1','1',NULL,'1','1','1',NULL),(97,'Fiber',97,346,315,'sumit',1,1,'2020-07-30 13:06:06',246,22,'abc,bcd','0',2,'10','1','1','','1','1','1',NULL),(98,'Deep',234,23,21,'23',301,1,'2020-07-30 17:33:02',23,22,'23','0',2,'10','1','0',NULL,'1','1','1',NULL),(99,'New',10,12,21,'wqw',1,1,'2020-07-30 17:36:21',12,22,'e','0',2,'10','1','0',NULL,'1','1','1',NULL),(100,'Fiber7',97,346,NULL,'AVCBDbhsavdhasvjdjvasdj',1,1,'2020-07-31 06:13:27',246,NULL,'abc,bcd','0',2,'10','1','0',NULL,'1','1','1',NULL),(101,'Fiber7',97,346,542,'AVCBDbhsavdhasvjdjvasdj',301,1,'2020-07-31 06:13:27',246,22,'abc,bcd','0',2,'10','1','0',NULL,'1','1','1',NULL),(102,'Fiber7',97,346,21,'AVCBDbhsavdhasvjdjvasdj',301,1,'2020-07-31 06:13:27',246,22,'abc,bcd','0',2,'10','1','0','','1','1','1',NULL),(103,'Fiber7',97,346,NULL,'AVCBDbhsavdhasvjdjvasdj',1,1,'2020-07-31 06:13:27',246,NULL,'abc,bcd','0',2,'10','1','0',NULL,'1','1','1',NULL),(104,'Fiber7',97,346,NULL,'AVCBDbhsavdhasvjdjvasdj',1,1,'2020-07-31 06:13:27',246,NULL,'abc,bcd','0',2,'10','1','0',NULL,'1','1','0',NULL),(105,'Fiber7',97,346,NULL,'AVCBDbhsavdhasvjdjvasdj',1,1,'2020-07-31 06:13:27',246,NULL,'abc,bcd','0',2,'10','1','0',NULL,'1','1','0',NULL),(106,'Fiber73',97,346,23,'AVCBDbhsavdhasvjdjvasdj',1,1,'2020-07-31 06:13:27',246,74,'abc,bcd','0',2,'10','1','0',NULL,'1','1','0',NULL),(107,'Fiber72',97,346,23,'AVCBDbhsavdhasvjdjvasdj',1,1,'2020-07-31 06:13:27',246,22,'abc,bcd','0',8,'10','1','0','','1','1','1',NULL),(108,'UBUNTU',780,980,23,'Avrodh: The Siege Within\' is based oshashcasbhcbsajcbascsn',1,1,'2020-07-31 07:56:22',8767,22,'UBUNTU,UBUNTU2','0',2,'10','1','0','','1','1','1',NULL),(109,'test prod',10,100,21,'axcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxcaxca',1,0,'2020-08-01 07:27:12',2,22,'clock, cane, hello','0',58,'68','1','0','sdfdsfsdfsdfdsf','1','1','1',NULL),(111,'New Product',20,10,23,'b',1,1,'2020-08-07 18:18:17',8,74,'new tst','0',65,NULL,'1','0',NULL,'1','1','1',NULL),(112,'asdf',23,23,23,'23',1,1,'2020-08-07 18:59:11',23,22,'23','0',8,NULL,'1','0',NULL,'1','1','1',NULL),(113,'New',100,9,23,'n',1,1,'2020-08-07 18:59:57',12,22,'newn','0',5,NULL,'0','1','vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv','1','1','1',NULL),(114,'swtfgf;o',56,2,21,'zsdjkld;fdmbjhdvyuj bnnjhyiwlwqiastyrtyquioeowetyiopqewrkwemaweqe zsdjkld;fdmbjhdvyuj bnnjhyiwlwqiastyrtyquioeowetyiopqewrkwemaweqe zsdjkld;fdmbjhdvyuj bnnjhyiwlwqiastyrtyquioeowetyiopqewrkwemaweqe zsdjkld;fdmbjhdvyuj bnnjhyiwlwqiastyrtyquioeowetyiopqewrkwemaweqe zsdjkld;fdmbjhdvyuj bnnjhyiwlwqiastyrtyquioeowetyiopqewrkwemaweqe zsdjkld;fdmbjhdvyuj bnnjhyiwlwqiastyrtyquioeowetyiopqewrkwemaweqe zsdjkld;fdmbjhdvyuj bnnjhyiwlwqiastyrtyquioeowetyiopqewrkwemaweqe zsdjkld;fdmbjhdvyuj bnnjhyiwlwqiastyrtyquioeowetyiopqewrkwemaweqe zsdjkld;fdmbjhdvyuj bnnjhyiwlwqiastyrtyquioeowetyiopqewrkwemaweqe zsdjkld;fdmbjhdvyuj bnnjhyiwlwqiastyrtyquioeowetyiopqewrkwemaweqe zsdjkld;fdmbjhdvyuj bnnjhyiwlwqiastyrtyquioeowetyiopqewrkwemaweqe zsdjkld;fdmbjhdvyuj bnnjhyiwlwqiastyrtyquioeowetyiopqewrkwemaweqe',1,0,'2020-08-07 19:12:48',2,74,'qwr','0',9,NULL,'0','0',NULL,'1','1','0',NULL),(115,'ab',12,12,21,NULL,305,1,'2020-08-07 19:22:08',NULL,22,NULL,'0',NULL,NULL,'0','0',NULL,'1','1','1',NULL),(116,'qwerty',1111,122,315,NULL,154,1,'2020-08-07 19:25:00',NULL,22,NULL,'0',NULL,NULL,'0','0',NULL,'1','1','1',NULL),(117,'asd',123,12,76,NULL,152,1,'2020-08-07 19:25:41',NULL,22,NULL,'0',NULL,NULL,'0','0',NULL,'1','1','1',NULL),(118,'abhay',222,1111111111,542,NULL,154,1,'2020-08-07 19:27:35',NULL,22,NULL,'0',NULL,NULL,'0','0',NULL,'1','1','1',NULL),(119,'qwert',444,34,315,NULL,305,1,'2020-08-07 19:33:00',NULL,22,NULL,'0',NULL,NULL,'0','0',NULL,'1','1','1',NULL),(120,'sfsdf',23,23,23,'23',1,1,'2020-08-10 16:52:50',23,22,'23','0',58,NULL,'0','0',NULL,'1','1','1',NULL),(121,'VIP',87,76,76,NULL,301,1,'2020-08-11 11:34:35',NULL,22,NULL,'0',NULL,NULL,'0','0',NULL,'1','1','1',NULL),(122,'VIP2',3423,435345,23,'jhj',1,1,'2020-08-11 11:46:58',65,22,'t','0',9,NULL,'0','0',NULL,'1','1','0',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receipts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipts`
--

LOCK TABLES `receipts` WRITE;
/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','2020-07-13 10:48:35'),(2,'artisan','2020-07-13 10:48:35'),(3,'enduser','2020-07-13 10:48:35');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `description` longtext COLLATE utf8_bin,
  `type` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inventory_qty` varchar(255) COLLATE utf8_bin DEFAULT '0',
  `productId` int(10) unsigned NOT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `shop_productid_foreign` (`productId`),
  CONSTRAINT `shop_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `store` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `bussiness` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `postalCode` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `websiteUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` longtext COLLATE utf8_bin,
  `customerImportant` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `userId` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `annualSale` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_userid_foreign` (`userId`),
  CONSTRAINT `store_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (59,'Online Only','store 77','','cotton Product 123','','ksjdfjksd.com',NULL,'Home Made,Social Goods,Made In India,Made Locally',308,'2020-08-08 07:46:55',NULL),(60,NULL,'Techugo',NULL,NULL,NULL,NULL,NULL,NULL,310,'2020-08-10 06:50:10',NULL),(61,'Brick And Morter','34sdfsd','','cotton Product 123','201301','',NULL,'Home Made,Social Goods,Made In India,Eco Friendly',311,'2020-08-10 07:52:00',NULL),(62,'Others','qwdse','','cotton Product 123','','',NULL,'Social Goods,Made Locally,Eco Friendly,Not On Amazon',312,'2020-08-10 13:08:43',NULL),(63,'Online Only','wewew','','cotton Product 123','','www.techugo.com',NULL,'Home Made,Social Goods,Made Locally',313,'2020-08-10 13:57:53',NULL),(64,NULL,'Techugo',NULL,NULL,NULL,NULL,NULL,NULL,315,'2020-08-11 06:38:52',NULL),(65,NULL,'Testing',NULL,NULL,NULL,NULL,NULL,NULL,316,'2020-08-11 06:41:15',NULL),(66,NULL,'hello',NULL,NULL,NULL,NULL,NULL,NULL,318,'2020-08-11 12:22:32',NULL),(67,NULL,'tetch',NULL,NULL,NULL,NULL,NULL,NULL,319,'2020-08-11 12:41:02',NULL),(68,NULL,'jdbshbfj',NULL,NULL,NULL,NULL,NULL,NULL,320,'2020-08-11 12:56:09',NULL),(69,'Pop-Up Shop','rajpal1@gmail.com','','cotton Product 123','3242432','',NULL,'Social Goods',321,'2020-08-11 14:33:56',NULL),(70,'Brick And Morter','Brick Store','','cotton Product 123','201301','',NULL,'Home Made,Social Goods,Made In India,Made Locally,Eco Friendly,Not On Amazon',326,'2020-08-18 07:57:12',NULL),(71,'Online Only','wer','','cotton Product 123','','https://www.google.com',NULL,'Home Made,Social Goods,Made In India,Made Locally,Eco Friendly,Not On Amazon',327,'2020-08-18 07:59:52',NULL),(72,'Others','3414rqwqw','','cotton Product 123','','',NULL,'Home Made,Social Goods,Made In India,Made Locally,Eco Friendly,Not On Amazon',328,'2020-08-18 08:05:42',NULL),(73,'Brick And Morter','RAJPAL 123 PRIVATE limited','5 Year 123 ','cotton Product 123','898989 123','abc.com 123',NULL,'Home Made',343,'2020-08-30 14:06:31',NULL),(74,'Brick And Morter','RAJPAL 123 PRIVATE limited','5 Year 123 ','cotton Product 123','898989 123','abc.com 123',NULL,'Home Made',344,'2020-08-30 14:09:30',NULL),(75,'Brick And Morter','RAJPAL 123 PRIVATE limited','5 Year 123 ','cotton Product 123','898989 123','abc.com 123',NULL,'Home Made',345,'2020-08-30 15:17:21',NULL);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories`
--

DROP TABLE IF EXISTS `stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `description` longtext COLLATE utf8_bin,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories`
--

LOCK TABLES `stories` WRITE;
/*!40000 ALTER TABLE `stories` DISABLE KEYS */;
/*!40000 ALTER TABLE `stories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_type`
--

DROP TABLE IF EXISTS `sub_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `categoryId` int(10) unsigned NOT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `sub_type_categoryid_foreign` (`categoryId`),
  CONSTRAINT `sub_type_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_type`
--

LOCK TABLES `sub_type` WRITE;
/*!40000 ALTER TABLE `sub_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribe`
--

DROP TABLE IF EXISTS `subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->for active,0->Inactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribe`
--

LOCK TABLES `subscribe` WRITE;
/*!40000 ALTER TABLE `subscribe` DISABLE KEYS */;
INSERT INTO `subscribe` VALUES (1,'sdfierrkeur@ureirei.com','2020-07-21 09:31:59',1),(2,'Piyushahuja9797@gmail.com','2020-07-29 08:01:49',1),(3,'deep@techugo.com','2020-07-29 11:16:09',1);
/*!40000 ALTER TABLE `subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_of_store`
--

DROP TABLE IF EXISTS `type_of_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_of_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_of_store`
--

LOCK TABLES `type_of_store` WRITE;
/*!40000 ALTER TABLE `type_of_store` DISABLE KEYS */;
INSERT INTO `type_of_store` VALUES (4,'INDIA','https://res.cloudinary.com/techugonew/image/upload/v1596709920/l-mYtN-h2TCy_WCGj0JJ4LVC.png','Others',1,'2020-07-13 10:48:35'),(5,'INDIA3','https://res.cloudinary.com/techugonew/image/upload/v1596709081/KUED4PuetSpah5YXRNyHcTTo.png',NULL,NULL,'2020-08-06 10:15:02'),(6,'INDIA 5','https://res.cloudinary.com/techugonew/image/upload/v1597228100/Tulbp5h8D1XtIbZHg1jTLoRy.png',NULL,NULL,'2020-08-12 10:28:21'),(7,'Hello','https://res.cloudinary.com/techugonew/image/upload/v1597737054/Upjfr6PzSZ8KQwNFJJ35260g.jpg',NULL,NULL,'2020-08-18 07:50:54');
/*!40000 ALTER TABLE `type_of_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uploads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) COLLATE utf8_bin NOT NULL,
  `userId` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uploads_userid_foreign` (`userId`),
  CONSTRAINT `uploads_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploads`
--

LOCK TABLES `uploads` WRITE;
/*!40000 ALTER TABLE `uploads` DISABLE KEYS */;
/*!40000 ALTER TABLE `uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `profileImage` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `userId` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_details_userid_foreign` (`userId`),
  CONSTRAINT `user_details_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (7,'Admin',NULL,NULL,1,'2020-07-23 13:55:03',NULL,NULL,NULL),(33,'raj',NULL,NULL,308,'2020-08-08 07:46:55',NULL,'1','hello'),(34,'Deep verm',NULL,NULL,310,'2020-08-10 06:50:10',NULL,NULL,NULL),(35,'Deep Verma',NULL,NULL,311,'2020-08-10 07:52:00',NULL,'1',NULL),(36,'veer',NULL,NULL,312,'2020-08-10 13:08:43',NULL,'2',NULL),(37,'dfsdfsdfsdf',NULL,NULL,313,'2020-08-10 13:57:53',NULL,'1',NULL),(38,'Deep Verm',NULL,NULL,315,'2020-08-11 06:38:52',NULL,NULL,NULL),(39,'Akriti Sharma',NULL,NULL,316,'2020-08-11 06:41:15',NULL,NULL,NULL),(40,'Hello',NULL,NULL,318,'2020-08-11 12:22:32',NULL,NULL,NULL),(41,'Deep ',NULL,NULL,319,'2020-08-11 12:41:02',NULL,NULL,NULL),(42,'sdcbfdj',NULL,NULL,320,'2020-08-11 12:56:09',NULL,NULL,NULL),(43,'rajpal',NULL,NULL,321,'2020-08-11 14:33:56',NULL,'1',NULL),(44,'Shriyam',NULL,NULL,326,'2020-08-18 07:57:12',NULL,'1',NULL),(45,'werqw',NULL,NULL,327,'2020-08-18 07:59:52',NULL,'1',NULL),(46,'asdfsdf',NULL,NULL,328,'2020-08-18 08:05:42',NULL,'1',NULL),(47,'Mohan',NULL,NULL,343,'2020-08-30 14:06:30','8989898989','India',NULL),(48,'Mohan',NULL,NULL,344,'2020-08-30 14:09:29','8989898989','India','Kumar'),(49,'Mohan',NULL,NULL,345,'2020-08-30 15:17:21','8989898989','India','Kumar');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_product_sell`
--

DROP TABLE IF EXISTS `user_product_sell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_product_sell` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categoryId` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `userId` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_product_sell_userid_foreign` (`userId`),
  CONSTRAINT `user_product_sell_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_product_sell`
--

LOCK TABLES `user_product_sell` WRITE;
/*!40000 ALTER TABLE `user_product_sell` DISABLE KEYS */;
INSERT INTO `user_product_sell` VALUES (134,'307',308,'2020-08-08 07:46:55'),(135,'18',308,'2020-08-08 07:46:55'),(136,'17',308,'2020-08-08 07:46:55'),(137,'307',311,'2020-08-10 07:52:00'),(138,'77',311,'2020-08-10 07:52:00'),(139,'18',311,'2020-08-10 07:52:00'),(140,'17',311,'2020-08-10 07:52:00'),(141,'307',312,'2020-08-10 13:08:43'),(142,'77',312,'2020-08-10 13:08:43'),(143,'18',312,'2020-08-10 13:08:43'),(144,'17',312,'2020-08-10 13:08:43'),(145,'307',313,'2020-08-10 13:57:53'),(146,'77',313,'2020-08-10 13:57:53'),(147,'18',313,'2020-08-10 13:57:53'),(148,'17',313,'2020-08-10 13:57:53'),(149,'77',321,'2020-08-11 14:33:56'),(150,'307',326,'2020-08-18 07:57:12'),(151,'77',326,'2020-08-18 07:57:12'),(152,'18',326,'2020-08-18 07:57:12'),(153,'307',327,'2020-08-18 07:59:52'),(154,'77',327,'2020-08-18 07:59:52'),(155,'18',327,'2020-08-18 07:59:52'),(156,'17',327,'2020-08-18 07:59:52'),(157,'307',328,'2020-08-18 08:05:42'),(158,'77',328,'2020-08-18 08:05:42'),(159,'18',328,'2020-08-18 08:05:42'),(160,'17',328,'2020-08-18 08:05:42'),(161,'1',343,'2020-08-30 14:06:31'),(162,'2',343,'2020-08-30 14:06:31'),(163,'5',343,'2020-08-30 14:06:31'),(164,'1',344,'2020-08-30 14:09:30'),(165,'2',344,'2020-08-30 14:09:30'),(166,'5',344,'2020-08-30 14:09:30'),(167,'1',345,'2020-08-30 15:17:22'),(168,'2',345,'2020-08-30 15:17:22'),(169,'5',345,'2020-08-30 15:17:22');
/*!40000 ALTER TABLE `user_product_sell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `forgotToken` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `isOtpVerified` tinyint(1) DEFAULT NULL,
  `is_verified` enum('0','1') COLLATE utf8_bin DEFAULT '1' COMMENT '1->varified record ,0->unvarified',
  `deleted` enum('0','1') COLLATE utf8_bin DEFAULT '1' COMMENT '1->active record ,0->record deleted [soft delete]',
  `type` enum('email','lead','website') COLLATE utf8_bin DEFAULT NULL COMMENT 'email->for email users,lead->for lead users enquiry,websites->for website enquiry user unregistred',
  `verifyLink` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `verifyLinkUsed` tinyint(1) DEFAULT '0' COMMENT '1->used,0->unUsed',
  `forgotTokenUsed` tinyint(1) DEFAULT '0' COMMENT '1->used,0->unUsed',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@gmail.com','$2b$10$ufpbhEXpbZQYPUFO9gntuurcPa1y80wpA6g4IVERVdxfBK8.qGX5C','1',1,'2020-06-01 16:52:54','ImlkIjoxLCJlbWFpbCI6ImFkbWluQGxhbDEwLmNvbSIsInBhc3N3b3JkIjoiJDJiJDEwJGhWa2hhcnRLcW93NzlMcFJOSHUzeHVhRzJiaS5LNHMyQ2hHa0kwVlp2dXlNS3ZFdWVuWWJHIiwicm9sZSI6IjEiLCJpc0FjdGl2ZSI6MSwiY3',NULL,NULL,1,'0','1',NULL,NULL,0,0),(301,'aman@yahoo.com',NULL,'2',1,'2020-08-07 08:56:18','abdbnsdbfna122334hgghsdgfh',NULL,'7428612346',1,'1','1',NULL,NULL,0,0),(302,'',NULL,'2',1,'2020-08-07 09:41:15','abdbnsdbfna122334hgghsdgfh',NULL,'8439389857',1,'1','1',NULL,NULL,0,0),(303,'',NULL,'2',1,'2020-08-07 17:40:16',NULL,NULL,'8630943809',1,'1','1',NULL,NULL,0,0),(304,'akriti@techugo.com',NULL,'2',1,'2020-08-07 17:47:14',NULL,NULL,'9876543210',1,'1','1',NULL,NULL,0,0),(307,'',NULL,'2',1,'2020-08-08 05:59:56','abdbnsdbfna122334hgghsdgfh',NULL,'9717975161',1,'1','1',NULL,NULL,0,0),(308,'kuldeep@techugo.com','$2b$10$mw2wU7MUC2sU7gOHKw3exe4YM/9NJxcqntj8QiFPLjIeuEmHEGEzu','3',1,'2020-08-08 07:46:55',NULL,'918079','1234567890',1,'1','1',NULL,NULL,0,0),(310,'dp@yopmial.com',NULL,NULL,1,'2020-08-10 06:50:10',NULL,NULL,'9348023944',NULL,'1','1','website',NULL,0,0),(311,'dv@yopmail.com','$2b$10$KGeObwgD1EUZzWGTdflHneLuCayVkXpKfSlpwHHJWEz2pmEPVSUFm','3',1,'2020-08-10 07:52:00',NULL,NULL,'9717975161',1,'1','1',NULL,NULL,0,0),(312,'veeren.s13@gmail.com','$2b$10$WRqigcpBT7gO2Z0bcd6xbuW26BeClyXhzW5AHBVbfOetlHHgLLD7y','3',1,'2020-08-10 13:08:43',NULL,NULL,'123456788765341',1,'1','1',NULL,NULL,0,0),(313,'veeren.s13@gssm1ail.com','$2b$10$u2YLvCqfvotolFUt7iAL3.2UthV7PAtMXQMqjhieq3SgREJ6/biHe','3',1,'2020-08-10 13:57:53',NULL,NULL,'12345678909876',1,'1','1',NULL,NULL,0,0),(314,'amit@yopmail.com',NULL,'2',1,'2020-08-10 15:01:18',NULL,NULL,'987654325555',1,'1','1',NULL,NULL,0,0),(315,'de@yopmail.com',NULL,NULL,1,'2020-08-11 06:38:52',NULL,NULL,'9834720938',NULL,'1','1','website',NULL,0,0),(316,'dg@yopmail.com',NULL,NULL,1,'2020-08-11 06:41:15',NULL,NULL,'9128371283',NULL,'1','1','website',NULL,0,0),(318,'hello@gmail.com',NULL,NULL,1,'2020-08-11 12:22:32',NULL,NULL,'8989898989',NULL,'1','1','website',NULL,0,0),(319,'dv@yopmial.com',NULL,NULL,1,'2020-08-11 12:41:02',NULL,NULL,'8741892701',NULL,'1','1','website',NULL,0,0),(320,'asbchs@hjsd.com',NULL,NULL,1,'2020-08-11 12:56:09',NULL,NULL,'9789789734',NULL,'1','1','website',NULL,0,0),(321,'rajpal1@gmail.com','$2b$10$yqmaKFGl9eBawS9Kod4kd.QBJaPCu8FEU4A8rZRcojoheJ7ptznWG','3',1,'2020-08-11 14:33:56',NULL,NULL,'9898988989',1,'1','1',NULL,NULL,0,0),(322,NULL,NULL,'2',1,'2020-08-13 09:43:54','jasdsfnjsdfdjfj',NULL,'7417396365',1,'1','1',NULL,NULL,0,0),(323,NULL,NULL,'2',1,'2020-08-14 08:02:41',NULL,NULL,'8826063246',1,'1','1',NULL,NULL,0,0),(324,NULL,NULL,'2',1,'2020-08-14 08:44:49',NULL,NULL,'95807579464467',1,'1','1',NULL,NULL,0,0),(325,NULL,NULL,'2',1,'2020-08-14 12:18:16',NULL,NULL,'595998868968',1,'1','1',NULL,NULL,0,0),(326,'sd@gmial.com','$2b$10$6.XLmS4Az345NoK.X1xRy.lqolkfwhhwnSYGNLcS2FJIrNIfx/gv.','3',1,'2020-08-18 07:57:12',NULL,NULL,'43523423455',1,'1','1',NULL,NULL,0,0),(327,'wqer@gmail.com','$2b$10$D1Cu/ZArh240o7JyMVaTgObLCefNHu85k4ApyJVcmz2EE2ZvWGO9W','3',1,'2020-08-18 07:59:52',NULL,NULL,'23412341231',1,'1','1',NULL,NULL,0,0),(328,'asdf@yopmail.com','$2b$10$HUs7r0Z.3gDWAOGkpZXZS.u.04/D7o0u/Kz4jMCOVv.hFDaKwURkC','3',1,'2020-08-18 08:05:42',NULL,NULL,'345234534522',1,'1','1',NULL,NULL,0,0),(329,NULL,NULL,'2',1,'2020-08-18 13:11:47','abdbnsdbfna122334hgghsdgfh',NULL,'9717975163',1,'1','1',NULL,NULL,0,0),(330,NULL,NULL,'2',1,'2020-08-18 13:12:18','abdbnsdbfna122334hgghsdgfh',NULL,'9717975164',1,'1','1',NULL,NULL,0,0),(331,NULL,NULL,'2',1,'2020-08-18 13:21:48','abdbnsdbfna122334hgghsdgfh',NULL,'8527660715',1,'1','1',NULL,NULL,0,0),(332,NULL,NULL,'2',1,'2020-08-18 13:22:47',NULL,NULL,'8527660716',1,'1','1',NULL,NULL,0,0),(333,NULL,NULL,'2',1,'2020-08-18 13:30:40',NULL,NULL,'8527660732',1,'1','1',NULL,NULL,0,0),(334,NULL,NULL,'2',1,'2020-08-18 13:38:13',NULL,NULL,'1233211234121',1,'1','1',NULL,NULL,0,0),(335,NULL,NULL,'2',1,'2020-08-18 13:44:15',NULL,NULL,'12332112341211',1,'1','1',NULL,NULL,0,0),(336,NULL,NULL,'2',1,'2020-08-18 13:47:07','abdbnsdbfna122334hgghsdgfh',NULL,'9911061041',1,'1','1',NULL,NULL,0,0),(337,NULL,NULL,'2',1,'2020-08-18 14:06:26','abdbnsdbfna122334hgghsdgfh',NULL,'231241561231',1,'1','1',NULL,NULL,0,0),(338,NULL,NULL,'2',1,'2020-08-18 14:48:04','abdbnsdbfna122334hgghsdgfh',NULL,'7028714296',1,'1','1',NULL,NULL,0,0),(339,NULL,NULL,'2',1,'2020-08-19 07:20:51',NULL,NULL,'8950345345',1,'1','1',NULL,NULL,0,0),(340,NULL,NULL,'2',1,'2020-08-19 17:18:33',NULL,NULL,'8527769961',1,'1','1',NULL,NULL,0,0),(341,NULL,NULL,'2',1,'2020-08-19 17:19:32',NULL,NULL,'768999779',1,'1','1',NULL,NULL,0,0),(342,NULL,NULL,'2',1,'2020-08-26 16:03:17',NULL,NULL,'9632580741',1,'1','1',NULL,NULL,0,0),(343,'abc1@gmail.com1','$2b$10$5dm1cR50tK0A69n1pCyrCOPBu0ux1GV2319jvBNVu4oUKdkzUZUxq','3',1,'2020-08-30 14:06:30',NULL,NULL,'966747722682',1,'1','1',NULL,NULL,0,0),(344,'abc1@gmail.com11','$2b$10$EsRAnQi6oLgOoL3NXQEBX.oCQHQKUuQT9ltCxrICXX3Z5yuiPCxba','3',1,'2020-08-30 14:09:29',NULL,NULL,'9667477226822',1,'1','1',NULL,NULL,0,0),(345,'abc1@gmail.com1a1','$2b$10$Jpejc4U2vJRO4e7lGFpeWen0YsaDfjzUnCrUuEwUpM1a/RTWJTxM.','3',1,'2020-08-30 15:17:21',NULL,NULL,'966747722682e2',1,'1','1',NULL,'9PGnxEU28fs0qRj3ttmvf73pWcUYtafo',1,0);
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

-- Dump completed on 2020-09-04 19:37:43
