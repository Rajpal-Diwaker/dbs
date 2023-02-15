-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: Techugo_backend_db2
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
-- Current Database: `Techugo_backend_db2`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Techugo_backend_db2` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `Techugo_backend_db2`;

--
-- Table structure for table `tbl_access_token`
--

DROP TABLE IF EXISTS `tbl_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_access_token` (
  `token_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `access_token` varchar(800) DEFAULT NULL,
  `created_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expire_datetime` timestamp NULL DEFAULT NULL,
  `logout` enum('Y','N') DEFAULT 'N',
  `deleted` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`token_id`),
  KEY `user_Id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_access_token`
--

LOCK TABLES `tbl_access_token` WRITE;
/*!40000 ALTER TABLE `tbl_access_token` DISABLE KEYS */;
INSERT INTO `tbl_access_token` VALUES (1,1,'d41d8cd98f00b204e9800998ecf8427e','2020-01-08 17:27:47','2020-01-09 17:27:47','N','Y'),(2,1,'d41d8cd98f00b204e9800998ecf8427e','2020-01-08 19:05:08','2020-01-09 19:05:08','N','Y'),(3,1,'d41d8cd98f00b204e9800998ecf8427e','2020-01-09 14:16:20','2020-01-10 14:16:20','N','Y'),(4,1,'d41d8cd98f00b204e9800998ecf8427e','2020-01-09 14:20:38','2020-01-10 14:20:38','N','Y'),(5,1,'d41d8cd98f00b204e9800998ecf8427e','2020-01-10 12:20:11','2020-01-11 12:20:11','N','Y'),(6,1,'d41d8cd98f00b204e9800998ecf8427e','2020-01-10 13:12:56','2020-01-11 13:12:56','N','Y'),(7,1,'d41d8cd98f00b204e9800998ecf8427e','2020-01-10 15:06:57','2020-01-11 15:06:57','N','Y'),(8,1,'d41d8cd98f00b204e9800998ecf8427e','2020-01-10 15:09:33','2020-01-11 15:09:33','N','Y'),(9,1,'d41d8cd98f00b204e9800998ecf8427e','2020-01-10 15:38:39','2020-01-11 15:38:39','N','Y'),(10,1,'d41d8cd98f00b204e9800998ecf8427e','2020-01-10 16:08:56','2020-01-11 16:08:56','N','Y'),(11,1,'d41d8cd98f00b204e9800998ecf8427e','2020-01-10 11:04:56','2020-01-11 11:04:56','N','Y'),(12,1,'d41d8cd98f00b204e9800998ecf8427e','2020-01-12 15:48:57','2020-01-13 15:48:57','N','Y'),(13,1,'d41d8cd98f00b204e9800998ecf8427e','2020-01-12 15:53:08','2020-01-13 15:53:08','N','Y'),(14,1,'d41d8cd98f00b204e9800998ecf8427e','2020-01-13 04:24:26','2020-01-14 04:24:26','N','N');
/*!40000 ALTER TABLE `tbl_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_activity`
--

DROP TABLE IF EXISTS `tbl_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` enum('active','deactive') CHARACTER SET latin1 DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_activity`
--

LOCK TABLES `tbl_activity` WRITE;
/*!40000 ALTER TABLE `tbl_activity` DISABLE KEYS */;
INSERT INTO `tbl_activity` VALUES (1,'Project Started','active'),(2,'Project Manager Assigned','active'),(3,'Ios  Developer assign','active'),(4,'Android  Developer assign','active'),(5,'Backend Developer assign','active'),(6,'HTML  Developer assign','active'),(7,'Designer assign','active'),(8,'New Ios Developer assign','active'),(9,'New Android Developer assign','active'),(10,'New HTML Developer assign','active'),(11,'New Backend Developer assign','active'),(12,'New Project Manager assign','active'),(13,'New Designer assign','active'),(14,'Change Project Status','active'),(15,'Team Created','active'),(16,'QA Developer assign','active'),(17,'Project details updated','active'),(18,'Project Manager detail changed','active'),(19,'Ios developer detail changed','active'),(20,'Android developer detail changed','active'),(21,'Backend developer detail changed','active'),(22,'QA developer detail changed','active'),(23,'HTML developer detail changed','active'),(24,'Designer detail changed','active'),(25,'New QA developer assign','active'),(26,'Remove Team Member','active');
/*!40000 ALTER TABLE `tbl_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_activity_log`
--

DROP TABLE IF EXISTS `tbl_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_activity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `status` enum('active','deactive') CHARACTER SET latin1 DEFAULT 'active',
  `createdDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_activity_log`
--

LOCK TABLES `tbl_activity_log` WRITE;
/*!40000 ALTER TABLE `tbl_activity_log` DISABLE KEYS */;
INSERT INTO `tbl_activity_log` VALUES (1,14,1,'active','2020-01-12 16:28:17'),(2,14,15,'active','2020-01-12 16:28:18'),(3,14,2,'active','2020-01-12 16:28:18'),(4,14,3,'active','2020-01-12 16:28:18'),(5,14,4,'active','2020-01-12 16:28:18'),(6,14,5,'active','2020-01-12 16:28:18'),(7,14,6,'active','2020-01-12 16:28:18'),(8,14,17,'active','2020-01-12 16:47:30'),(9,14,18,'active','2020-01-12 16:47:30'),(10,14,19,'active','2020-01-12 16:47:30'),(11,14,20,'active','2020-01-12 16:47:30'),(12,14,21,'active','2020-01-12 16:47:30'),(13,14,23,'active','2020-01-12 16:47:30'),(14,14,25,'active','2020-01-12 16:47:30'),(15,14,13,'active','2020-01-12 16:47:31'),(16,14,26,'active','2020-01-12 16:53:06'),(17,NULL,26,'active','2020-01-12 17:22:28'),(18,14,26,'active','2020-01-12 17:25:09'),(19,14,26,'active','2020-01-12 17:29:12'),(20,14,26,'active','2020-01-12 17:29:16'),(21,14,26,'active','2020-01-12 17:29:19'),(22,14,26,'active','2020-01-12 17:29:27'),(23,14,26,'active','2020-01-12 17:29:30'),(24,14,26,'active','2020-01-12 17:29:35'),(25,14,17,'active','2020-01-13 05:44:01'),(26,14,18,'active','2020-01-13 05:44:01'),(27,14,8,'active','2020-01-13 05:44:01'),(28,14,9,'active','2020-01-13 05:44:01'),(29,14,11,'active','2020-01-13 05:44:01'),(30,14,10,'active','2020-01-13 05:44:01'),(31,14,25,'active','2020-01-13 05:44:01'),(32,14,13,'active','2020-01-13 05:44:01'),(33,14,17,'active','2020-01-13 06:20:04'),(34,14,18,'active','2020-01-13 06:20:04'),(35,14,19,'active','2020-01-13 06:20:04'),(36,14,20,'active','2020-01-13 06:20:04'),(37,14,21,'active','2020-01-13 06:20:04'),(38,14,23,'active','2020-01-13 06:20:05'),(39,14,22,'active','2020-01-13 06:20:05'),(40,14,24,'active','2020-01-13 06:20:05'),(41,14,17,'active','2020-01-13 06:24:20'),(42,14,18,'active','2020-01-13 06:24:20'),(43,14,19,'active','2020-01-13 06:24:20'),(44,14,20,'active','2020-01-13 06:24:20'),(45,14,21,'active','2020-01-13 06:24:20'),(46,14,23,'active','2020-01-13 06:24:20'),(47,14,22,'active','2020-01-13 06:24:21'),(48,14,24,'active','2020-01-13 06:24:21'),(49,14,17,'active','2020-01-13 06:24:30'),(50,14,18,'active','2020-01-13 06:24:30'),(51,14,19,'active','2020-01-13 06:24:30'),(52,14,20,'active','2020-01-13 06:24:30'),(53,14,21,'active','2020-01-13 06:24:31'),(54,14,23,'active','2020-01-13 06:24:31'),(55,14,22,'active','2020-01-13 06:24:31'),(56,14,24,'active','2020-01-13 06:24:31'),(57,14,17,'active','2020-01-13 06:24:40'),(58,14,18,'active','2020-01-13 06:24:40'),(59,14,19,'active','2020-01-13 06:24:40'),(60,14,20,'active','2020-01-13 06:24:40'),(61,14,21,'active','2020-01-13 06:24:40'),(62,14,23,'active','2020-01-13 06:24:40'),(63,14,22,'active','2020-01-13 06:24:40'),(64,14,24,'active','2020-01-13 06:24:41'),(65,14,26,'active','2020-01-13 06:26:29');
/*!40000 ALTER TABLE `tbl_activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_clients`
--

DROP TABLE IF EXISTS `tbl_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_clients` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Website` varchar(255) DEFAULT NULL,
  `Industry` varchar(255) DEFAULT NULL,
  `Revenue` varchar(255) DEFAULT NULL,
  `Description` varchar(512) DEFAULT '',
  `Phone` varchar(255) DEFAULT NULL,
  `Street1` varchar(255) DEFAULT NULL,
  `Street2` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Zip` int(11) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Notes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_clients`
--

LOCK TABLES `tbl_clients` WRITE;
/*!40000 ALTER TABLE `tbl_clients` DISABLE KEYS */;
INSERT INTO `tbl_clients` VALUES (1,'test',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Test 5',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Testing',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Price app',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'High performance computing applications run on massively parallel supercomputers consist of concurrent programs designed using multi-threaded, multi-process models. The applications may consist of various constructs (threads, local processes, distributed ',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'GOAL',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Deep ka project',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Project one',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'abcdd',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'testttt',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'tsvahdv',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Testinf abcle ',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'a',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'test',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contacts`
--

DROP TABLE IF EXISTS `tbl_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_contacts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Middle` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Occupation` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  `ClientID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_client` (`ClientID`),
  CONSTRAINT `fk_client` FOREIGN KEY (`ClientID`) REFERENCES `tbl_clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contacts`
--

LOCK TABLES `tbl_contacts` WRITE;
/*!40000 ALTER TABLE `tbl_contacts` DISABLE KEYS */;
INSERT INTO `tbl_contacts` VALUES (1,NULL,'test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(2,NULL,'Test_5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),(3,NULL,'Alen Walker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3),(4,NULL,'Ammie',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4),(5,NULL,'High performance computing applications run on massively parallel supercomputers consist of concurrent programs designed using multi-threaded, multi-process models. The applications may consist of various constructs (threads, local processes, distributed ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5),(6,NULL,'Amiay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6),(7,NULL,'Deep Ve',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7),(8,NULL,'Client One',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8),(9,NULL,'abb',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9),(10,NULL,'test11111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10),(11,NULL,'test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11),(12,NULL,'Rajpal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12),(13,NULL,'a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13),(14,NULL,'abcd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14);
/*!40000 ALTER TABLE `tbl_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_department`
--

DROP TABLE IF EXISTS `tbl_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_department` (
  `dId` int(11) NOT NULL AUTO_INCREMENT,
  `dName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `dDescription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status` enum('active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdAt` int(11) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `updatedAt` int(11) DEFAULT NULL,
  PRIMARY KEY (`dId`),
  KEY `createdAt` (`createdAt`),
  CONSTRAINT `tbl_department_ibfk_1` FOREIGN KEY (`createdAt`) REFERENCES `tbl_user` (`uId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_department`
--

LOCK TABLES `tbl_department` WRITE;
/*!40000 ALTER TABLE `tbl_department` DISABLE KEYS */;
INSERT INTO `tbl_department` VALUES (1,'IOS',NULL,'active','2019-12-18 09:31:49',NULL,NULL,NULL),(2,'Android',NULL,'active','2019-12-18 09:31:56',NULL,NULL,NULL),(3,'Backend','PHP+Node+Anguler','active','2019-12-18 09:32:02',NULL,NULL,NULL),(4,'QA',NULL,'active','2019-12-18 09:32:08',NULL,NULL,NULL),(5,'HTML','Angular + HTML','active','2019-12-18 09:32:13',NULL,NULL,NULL),(6,'Design',NULL,'active','2019-12-18 09:32:17',NULL,NULL,NULL),(7,'Project-Incharge',NULL,'active','2019-12-18 09:32:24',NULL,NULL,NULL),(8,'Sales-Marketing','','active','2019-12-18 09:33:46',NULL,NULL,NULL),(9,'Delivery',NULL,'active','2019-12-18 09:34:18',NULL,NULL,NULL),(10,'Network',NULL,'active','2019-12-18 09:34:22',NULL,NULL,NULL),(11,'HR',NULL,'active','2019-12-18 09:34:25',NULL,NULL,NULL),(12,'Management',NULL,'active','2019-12-18 11:04:20',NULL,NULL,NULL),(13,'Admin Staff',NULL,'active','2019-12-18 11:04:20',NULL,NULL,NULL),(14,'admin',NULL,'active','2019-12-20 06:33:11',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_milestone`
--

DROP TABLE IF EXISTS `tbl_milestone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_milestone` (
  `mId` int(11) NOT NULL AUTO_INCREMENT,
  `mName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `mProjectId` int(11) DEFAULT NULL,
  `mDueDate` datetime DEFAULT NULL,
  `mDeliveryDate` datetime DEFAULT NULL,
  `mDeliveryable` text,
  `mTotalHours` int(11) DEFAULT NULL,
  `status` enum('active','pending','completed','delay') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdAt` int(11) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `updatedAt` int(11) DEFAULT NULL,
  PRIMARY KEY (`mId`),
  KEY `mProjectId` (`mProjectId`),
  KEY `createdAt` (`createdAt`),
  CONSTRAINT `tbl_milestone_ibfk_1` FOREIGN KEY (`mProjectId`) REFERENCES `tbl_project` (`pId`),
  CONSTRAINT `tbl_milestone_ibfk_2` FOREIGN KEY (`createdAt`) REFERENCES `tbl_user` (`uId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_milestone`
--

LOCK TABLES `tbl_milestone` WRITE;
/*!40000 ALTER TABLE `tbl_milestone` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_milestone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_project`
--

DROP TABLE IF EXISTS `tbl_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_project` (
  `pId` int(11) NOT NULL AUTO_INCREMENT,
  `pUniqueId` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `pName` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `pDescription` text COLLATE utf8mb4_bin,
  `pDocument` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `pStartDate` date DEFAULT NULL,
  `pEndDate` date DEFAULT NULL,
  `pHourlyRate` float(15,2) DEFAULT NULL,
  `pTotalHours` int(5) DEFAULT NULL COMMENT 'Duration in Hours (working days)',
  `clientId` int(11) DEFAULT NULL,
  `status` enum('Sales','R&D','InProduction','PendingApproval','Complete') COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'which stage of the project',
  `tStatus` enum('OnHold','Initial','Complete','Delay','Terminate','Running') COLLATE utf8mb4_bin DEFAULT NULL,
  `deleted` enum('active','Inactive') COLLATE utf8mb4_bin DEFAULT 'active' COMMENT 'project is on or off status',
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdAt` int(11) DEFAULT NULL,
  `updatedDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` int(11) DEFAULT NULL,
  PRIMARY KEY (`pId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_project`
--

LOCK TABLES `tbl_project` WRITE;
/*!40000 ALTER TABLE `tbl_project` DISABLE KEYS */;
INSERT INTO `tbl_project` VALUES (14,NULL,'test',NULL,NULL,NULL,NULL,NULL,NULL,14,NULL,'Initial','active','2020-01-12 21:58:17',1,'2020-01-13 06:24:40',1);
/*!40000 ALTER TABLE `tbl_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_project_team`
--

DROP TABLE IF EXISTS `tbl_project_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_project_team` (
  `ptId` int(11) NOT NULL AUTO_INCREMENT,
  `ptProjectId` int(11) DEFAULT NULL,
  `ptTeamId` int(11) DEFAULT NULL,
  `ptTeamMemberId` int(11) DEFAULT NULL,
  `ptdailyHours` float(15,2) DEFAULT NULL,
  `status` enum('active','Inactive') DEFAULT 'active',
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdAt` int(11) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `updatedAt` int(11) DEFAULT NULL,
  PRIMARY KEY (`ptId`),
  KEY `ptProjectId` (`ptProjectId`),
  KEY `ptTeamId` (`ptTeamId`),
  KEY `createdAt` (`createdAt`),
  KEY `ptTeamMemberId` (`ptTeamMemberId`),
  CONSTRAINT `tbl_project_team_ibfk_1` FOREIGN KEY (`ptProjectId`) REFERENCES `tbl_project` (`pId`),
  CONSTRAINT `tbl_project_team_ibfk_2` FOREIGN KEY (`ptTeamId`) REFERENCES `tbl_team` (`tId`),
  CONSTRAINT `tbl_project_team_ibfk_3` FOREIGN KEY (`createdAt`) REFERENCES `tbl_user` (`uId`),
  CONSTRAINT `tbl_project_team_ibfk_4` FOREIGN KEY (`ptTeamMemberId`) REFERENCES `tbl_user` (`uId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_project_team`
--

LOCK TABLES `tbl_project_team` WRITE;
/*!40000 ALTER TABLE `tbl_project_team` DISABLE KEYS */;
INSERT INTO `tbl_project_team` VALUES (7,14,1,98,6.00,'active','2020-01-13 11:14:01',1,'2020-01-13 11:54:40',1),(8,14,1,107,6.00,'active','2020-01-13 11:14:01',1,'2020-01-13 11:54:40',1),(9,14,1,124,6.00,'active','2020-01-13 11:14:01',1,'2020-01-13 11:54:40',1),(10,14,1,164,6.00,'active','2020-01-13 11:14:01',1,'2020-01-13 11:54:40',1),(11,14,1,88,6.00,'active','2020-01-13 11:14:01',1,'2020-01-13 11:54:40',1),(12,14,1,102,8.00,'active','2020-01-13 11:14:01',1,'2020-01-13 11:56:29',1);
/*!40000 ALTER TABLE `tbl_project_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_projectmanger_project`
--

DROP TABLE IF EXISTS `tbl_projectmanger_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_projectmanger_project` (
  `ptId` int(11) NOT NULL AUTO_INCREMENT,
  `ptProjectId` int(11) DEFAULT NULL,
  `ptTeamId` int(11) DEFAULT NULL,
  `ptTeamMemberId` int(11) DEFAULT NULL,
  `ptdailyHours` float(15,2) DEFAULT NULL,
  `status` enum('active','Inactive') CHARACTER SET utf8mb4 DEFAULT 'active',
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdAt` int(11) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `updatedAt` int(11) DEFAULT NULL,
  PRIMARY KEY (`ptId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_projectmanger_project`
--

LOCK TABLES `tbl_projectmanger_project` WRITE;
/*!40000 ALTER TABLE `tbl_projectmanger_project` DISABLE KEYS */;
INSERT INTO `tbl_projectmanger_project` VALUES (1,14,1,75,6.00,'active','2020-01-12 21:58:18',1,'2020-01-13 11:54:40',1);
/*!40000 ALTER TABLE `tbl_projectmanger_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_resource`
--

DROP TABLE IF EXISTS `tbl_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_resource` (
  `rId` int(11) NOT NULL AUTO_INCREMENT,
  `rName` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `rDepartment` enum('ios','android','backend','designer','tester','sales','pmanager') COLLATE utf8mb4_bin DEFAULT NULL,
  `rlanguage` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` enum('active','Inactive') COLLATE utf8mb4_bin DEFAULT NULL,
  `creaetedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdAt` int(11) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `updatedAt` int(11) DEFAULT NULL,
  PRIMARY KEY (`rId`),
  KEY `createdAt` (`createdAt`),
  CONSTRAINT `tbl_resource_ibfk_1` FOREIGN KEY (`createdAt`) REFERENCES `tbl_user` (`uId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_resource`
--

LOCK TABLES `tbl_resource` WRITE;
/*!40000 ALTER TABLE `tbl_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_role`
--

DROP TABLE IF EXISTS `tbl_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_role` (
  `rId` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` enum('active','Inactive') COLLATE utf8mb4_bin DEFAULT 'active',
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdAt` int(11) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `updatedAt` int(11) DEFAULT NULL,
  PRIMARY KEY (`rId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_role`
--

LOCK TABLES `tbl_role` WRITE;
/*!40000 ALTER TABLE `tbl_role` DISABLE KEYS */;
INSERT INTO `tbl_role` VALUES (1,'admin','active','2019-12-16 17:37:02',1,NULL,NULL),(2,'user','active','2019-12-16 22:24:47',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tasks`
--

DROP TABLE IF EXISTS `tbl_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tasks` (
  `tId` int(11) NOT NULL AUTO_INCREMENT,
  `tName` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `tDescription` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `tTotalHours` int(11) DEFAULT NULL,
  `tProjectId` int(11) DEFAULT NULL,
  `tMileStoneId` int(11) DEFAULT NULL,
  `status` enum('Pendingstart','PendingFeedback','Active','Completed') COLLATE utf8mb4_bin DEFAULT NULL,
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdAt` int(11) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `updatedAt` int(11) DEFAULT NULL,
  PRIMARY KEY (`tId`),
  KEY `tProjectId` (`tProjectId`),
  KEY `createdAt` (`createdAt`),
  KEY `tMileStoneId` (`tMileStoneId`),
  CONSTRAINT `tbl_tasks_ibfk_1` FOREIGN KEY (`tProjectId`) REFERENCES `tbl_project` (`pId`),
  CONSTRAINT `tbl_tasks_ibfk_2` FOREIGN KEY (`createdAt`) REFERENCES `tbl_user` (`uId`),
  CONSTRAINT `tbl_tasks_ibfk_3` FOREIGN KEY (`tMileStoneId`) REFERENCES `tbl_milestone` (`mId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tasks`
--

LOCK TABLES `tbl_tasks` WRITE;
/*!40000 ALTER TABLE `tbl_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_team`
--

DROP TABLE IF EXISTS `tbl_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_team` (
  `tId` int(11) NOT NULL AUTO_INCREMENT,
  `tName` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `tDescription` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` enum('active','Inactive') COLLATE utf8mb4_bin DEFAULT NULL,
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdAt` int(11) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `updatedAt` int(11) DEFAULT NULL,
  PRIMARY KEY (`tId`),
  KEY `createdAt` (`createdAt`),
  CONSTRAINT `tbl_team_ibfk_2` FOREIGN KEY (`createdAt`) REFERENCES `tbl_user` (`uId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_team`
--

LOCK TABLES `tbl_team` WRITE;
/*!40000 ALTER TABLE `tbl_team` DISABLE KEYS */;
INSERT INTO `tbl_team` VALUES (1,'test','test','active','2020-01-12 21:58:17',1,'2020-01-13 11:54:40',1);
/*!40000 ALTER TABLE `tbl_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_team_members`
--

DROP TABLE IF EXISTS `tbl_team_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_team_members` (
  `tId` int(11) NOT NULL AUTO_INCREMENT,
  `tTeamId` int(11) DEFAULT NULL,
  `tTeamMemberId` int(11) DEFAULT NULL,
  `status` enum('active','Inactive') DEFAULT 'active',
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdAt` int(11) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `updatedAt` int(11) DEFAULT NULL,
  PRIMARY KEY (`tId`),
  KEY `ptTeamMemberId` (`tTeamMemberId`),
  KEY `createdAt` (`createdAt`),
  KEY `tTeamId` (`tTeamId`),
  CONSTRAINT `tbl_team_members_ibfk_1` FOREIGN KEY (`tTeamMemberId`) REFERENCES `tbl_user` (`uId`),
  CONSTRAINT `tbl_team_members_ibfk_2` FOREIGN KEY (`createdAt`) REFERENCES `tbl_user` (`uId`),
  CONSTRAINT `tbl_team_members_ibfk_3` FOREIGN KEY (`tTeamId`) REFERENCES `tbl_team` (`tId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_team_members`
--

LOCK TABLES `tbl_team_members` WRITE;
/*!40000 ALTER TABLE `tbl_team_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_team_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_timesheet`
--

DROP TABLE IF EXISTS `tbl_timesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_timesheet` (
  `tId` int(11) NOT NULL AUTO_INCREMENT,
  `times` float(15,2) DEFAULT NULL,
  `taskId` int(11) DEFAULT NULL,
  `projectId` int(11) DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` enum('active','Inactive') COLLATE utf8mb4_bin DEFAULT NULL,
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdAt` int(11) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `updatedAt` int(11) DEFAULT NULL,
  PRIMARY KEY (`tId`),
  KEY `taskId` (`taskId`),
  KEY `projectId` (`projectId`),
  KEY `createdAt` (`createdAt`),
  CONSTRAINT `tbl_timesheet_ibfk_1` FOREIGN KEY (`taskId`) REFERENCES `tbl_tasks` (`tId`),
  CONSTRAINT `tbl_timesheet_ibfk_2` FOREIGN KEY (`projectId`) REFERENCES `tbl_project` (`pId`),
  CONSTRAINT `tbl_timesheet_ibfk_3` FOREIGN KEY (`createdAt`) REFERENCES `tbl_user` (`uId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_timesheet`
--

LOCK TABLES `tbl_timesheet` WRITE;
/*!40000 ALTER TABLE `tbl_timesheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_timesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `uId` int(11) NOT NULL AUTO_INCREMENT,
  `uEmpId` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `uFirstName` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `uLastName` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `uEmail` varchar(76) COLLATE utf8mb4_bin DEFAULT NULL,
  `uMobileNo` bigint(11) DEFAULT NULL,
  `uPassword` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `uDeptId` int(11) DEFAULT NULL,
  `uRoleId` int(11) DEFAULT NULL,
  `status` enum('active','Inactive') COLLATE utf8mb4_bin DEFAULT 'active',
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdAt` int(11) DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `updatedAt` int(11) DEFAULT NULL,
  PRIMARY KEY (`uId`),
  KEY `roleId` (`uRoleId`),
  KEY `departmentId` (`uDeptId`),
  CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`uRoleId`) REFERENCES `tbl_role` (`rId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,NULL,'admin','admin','rajpaltechugo@gmail.com',989899989,'63a9f0ea7bb98050796b649e85481845',14,1,'active','2019-12-16 17:37:38',1,'2020-01-12 09:18:23',NULL),(65,'TUG001','Abhinav ','Kumar Singh','abhinav@techugo.com',8130300085,'e10adc3949ba59abbe56e057f20f883e',12,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(66,'TUG002','Preeti ','Singh','preeti@techugo.com',9910111669,'e10adc3949ba59abbe56e057f20f883e',7,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(67,'TUG004','Ankit ','Singh','ankit.singh@techugo.com',7042209821,'e10adc3949ba59abbe56e057f20f883e',12,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(68,'TUG005','Purushottam','Kumar','purushottam@techugo.com',9711340700,'e10adc3949ba59abbe56e057f20f883e',7,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(69,'TUG011','Lakshman','Kumar','lakshman@techugo.com',7028714296,'e10adc3949ba59abbe56e057f20f883e',9,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(70,'TUG014','Alok ','Kumar Jha','alok@techugo.com',8630461835,'e10adc3949ba59abbe56e057f20f883e',9,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(71,'TUG019','Ankit ','Malhotra','ankit.malhotra@techugo.com',8699424717,'e10adc3949ba59abbe56e057f20f883e',6,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(72,'TUG026','Md','Junaid','junaid@techugo.com',9971602039,'e10adc3949ba59abbe56e057f20f883e',2,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(73,'TUG028','Rahul ','Kumar','rahul@techugo.com',8802606239,'e10adc3949ba59abbe56e057f20f883e',1,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(74,'TUG029','Beenu ','Rai','beenu.rai@techugo.com',9717431052,'e10adc3949ba59abbe56e057f20f883e',6,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(75,'TUG035','Arun ','Sharma','arun.sharma@techugo.com',8744802351,'e10adc3949ba59abbe56e057f20f883e',7,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(76,'TUG038','Henna ','Zakir','henna@techugo.com',8586972527,'e10adc3949ba59abbe56e057f20f883e',8,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(77,'TUG042','Ravendra','Kumar Singh','ravendra.singh@techugo.com',7017526371,'e10adc3949ba59abbe56e057f20f883e',5,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(78,'TUG048','Gunjan','Manral','gunjan.manral@techugo.com',8447880473,'e10adc3949ba59abbe56e057f20f883e',2,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(79,'TUG050','Qamar ','Abbas','qamar.abbas@techugo.com',9910985450,'e10adc3949ba59abbe56e057f20f883e',7,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(80,'TUG060','Namrata ','Kumari','namrata@techugo.com',8447809442,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(81,'TUG061','Bhavna','Puri','bhavna@techugo.com',0,'e10adc3949ba59abbe56e057f20f883e',7,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(82,'TUG062','Harjot','Kaur','harjot@techugo.com',8744862506,'e10adc3949ba59abbe56e057f20f883e',8,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(83,'TUG066','Deepak','Kumar Sharma','deepak.sharma@techugo.com',7065286213,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(84,'TUG068','Sunil ','Kumar Tripathi','sunil@techugo.com',8052512968,'e10adc3949ba59abbe56e057f20f883e',1,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(85,'TUG072','Naveen ','Shahi','naveen@techugo.com',8506814629,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(86,'TUG073','Ajay ','Pal','',7678363352,'e10adc3949ba59abbe56e057f20f883e',13,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(87,'TUG081','Kashish','Makkar','Kashish@techugo.com',8054183455,'e10adc3949ba59abbe56e057f20f883e',1,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(88,'TUG084','Deep ','Verma','Deep@techugo.com',9717975164,'e10adc3949ba59abbe56e057f20f883e',4,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(89,'TUG087','Shubham','Singh','shubham@techugo.com',9911225601,'e10adc3949ba59abbe56e057f20f883e',1,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(90,'TUG088','Ashutosh','Kumar','ashuthosh@techugo.com',8743888923,'e10adc3949ba59abbe56e057f20f883e',2,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(91,'TUG090','Love','Mahajan','lovemahajan@techugo.com',9855989824,'e10adc3949ba59abbe56e057f20f883e',2,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(92,'TUG092','Jullie','Singh','jullie@techugo.com',8368897541,'e10adc3949ba59abbe56e057f20f883e',11,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(93,'TUG094','Somesh','Mendiratta','somesh@techugo.com',7988489232,'e10adc3949ba59abbe56e057f20f883e',8,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(94,'TUG101','Deepak ','Kumar','',7065286213,'e10adc3949ba59abbe56e057f20f883e',13,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(95,'TUG102','Abhay ','Narayan','abhay@techugo.com',7840033848,'e10adc3949ba59abbe56e057f20f883e',4,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(96,'TUG104','Jahar','Singh','Jahar@techugo.com',9588868150,'e10adc3949ba59abbe56e057f20f883e',11,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(97,'TUG105','Anuradha','Jaiswal','anuradha@techugo.com',9971636562,'e10adc3949ba59abbe56e057f20f883e',5,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(98,'TUG107','Himanshu','Gupta','himanshu@techugo.com',9917050982,'e10adc3949ba59abbe56e057f20f883e',1,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(99,'TUG111','Vivek ','Indra','vivek.indra@techugo.com',9334383025,'e10adc3949ba59abbe56e057f20f883e',1,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(100,'TUG113','Tripti ','Bhardwaj','tripti@techugo.com',7500670455,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(101,'TUG114','Khushboo','Mohila','khushboo@techugo.com',7668999834,'e10adc3949ba59abbe56e057f20f883e',1,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(102,'TUG115','Manish','Kumar','manish@techugo.com',9650323295,'e10adc3949ba59abbe56e057f20f883e',6,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(103,'TUG117','Deepak ','Bansal','deepak.bansal@techugo.com',9467168209,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(104,'TUG118','Rishabh','Anand','rishabh.anand@techugo.com',9012239952,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(105,'TUG119','Ambuj ','Srivastava','Ambuj@techugo.com',7568317186,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(106,'TUG121','Raghu','Thakur','raghu@techugo.com',8368809060,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(107,'TUG122','Rakesh','','rakesh@techugo.com',9917015570,'e10adc3949ba59abbe56e057f20f883e',2,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(108,'TUG123','Nirmala','Gond','nirmala@techugo.com',8527387857,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(109,'TUG124','Akriti','Sharma','akriti@techugo.com',8630943809,'e10adc3949ba59abbe56e057f20f883e',4,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(110,'TUG125','Amar','Singh','amar@techugo.com',9999897377,'e10adc3949ba59abbe56e057f20f883e',8,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(111,'TUG129','Varsha','','varsha@techugo.com',8373920080,'e10adc3949ba59abbe56e057f20f883e',11,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(112,'TUG131','Rishabh','Arora','rishabh_arora@techugo.com',8527769961,'e10adc3949ba59abbe56e057f20f883e',6,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(113,'TUG134','Nadiya','Khatoon','nadiya@techugo.com',7379205515,'e10adc3949ba59abbe56e057f20f883e',2,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(114,'TUG135','Anand','Yadav','anand@techugo.com',7800130710,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(115,'TUG136','Anshu ','Shukla','anshu@techugo.com',7860180457,'e10adc3949ba59abbe56e057f20f883e',4,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(116,'TUG137','Somya','Bodoniya','somya@techugo.com',9519176636,'e10adc3949ba59abbe56e057f20f883e',1,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(117,'TUG141','Sumit ','Ruhela','sumit@techugo.com',8439389857,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(118,'TUG146','Shally ','Pathak','shally.pathak@techugo.com',8318548835,'e10adc3949ba59abbe56e057f20f883e',2,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(119,'TUG148','Akanksha','Singh','akansha.singh@techugo.com',9161042548,'e10adc3949ba59abbe56e057f20f883e',1,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(120,'TUG149','Ashish','Mishra','ashish.mishra@techugo.com',8004386091,'e10adc3949ba59abbe56e057f20f883e',2,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(121,'TUG150','Bhavya','Khatri','bhavya.khatri@techugo.com',8743840495,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(122,'TUG151','Abhinav ','Gupta','abhinav.gupta@techugo.com',9910165698,'e10adc3949ba59abbe56e057f20f883e',7,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(123,'TUG152','Deeksha','Srivastav','deekhsa@techugo.com',8299066768,'e10adc3949ba59abbe56e057f20f883e',5,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(124,'TUG153','Arjun','Sisodiya','arjun.sisodia@techugo.com',7983292471,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(125,'TUG154','Ishu','Mishra','ishu@techugo.com',8755474229,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(126,'TUG156','Shubham','','shubham.tyagi@techugo.com',9716429352,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(127,'TUG157','Mohd ','Shahnazar','shahnazar@techugo.com',8006112812,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(128,'TUG158','Aishwarya','Agarwal','aishwarya@techugo.com',9560908303,'e10adc3949ba59abbe56e057f20f883e',9,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(129,'TUG159','Amandeep','','amandeep@techugo.com',7428612346,'e10adc3949ba59abbe56e057f20f883e',2,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(130,'TUG160','Deepshikha','Garg','deepshikha@techugo.com',9953126208,'e10adc3949ba59abbe56e057f20f883e',6,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(131,'TUG161','Prakhar','Anand','prakhar.anand@techugo.com',6200556460,'e10adc3949ba59abbe56e057f20f883e',7,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(132,'TUG163','Manish','Sharma','manish.sharma@techugo.com',9910628991,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(133,'TUG165','Archana ','Rathore','archana@techugo.com',8076810162,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(134,'TUG166','Kamal ','Sharma','kamal@techugo.com',9873057350,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(135,'TUG168','Anuj','Garg','anuj@techugo.com',7838896008,'e10adc3949ba59abbe56e057f20f883e',1,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(136,'TUG169','Kunal ','Panday','kunal@techugo.com',9910536202,'e10adc3949ba59abbe56e057f20f883e',2,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(137,'TUG170','Deeksha','Singh','deeksha.singh@techugo.com',9711002063,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(138,'TUG171','Aastha','Sharma','astha.sharma@techugo.com',8377030284,'e10adc3949ba59abbe56e057f20f883e',8,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(139,'TUG172','Abdul','Rehman','abdul.rehman@techugo.com',9582089810,'e10adc3949ba59abbe56e057f20f883e',2,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(140,'TUG173','Veerendra','Kumar','veerendra@techugo.com',8003280043,'e10adc3949ba59abbe56e057f20f883e',5,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(141,'TUG175','Shwet','Shreyansh','shwet.sreyansh@techugo.com',7091521418,'e10adc3949ba59abbe56e057f20f883e',8,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(142,'TUG177','Vishivdeep ','Singh Hanspal','vishivdeep.singh@techugo.com',8882434435,'e10adc3949ba59abbe56e057f20f883e',6,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(143,'TUG178','Kuldeep ','Singh','kuldeep.singh@techugo.com',9354010866,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(144,'TUG179','Akash ','Kaushik','akash.kaushik@techugo.com',9758979777,'e10adc3949ba59abbe56e057f20f883e',5,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(145,'TUG181','Pawan','Kumar Agrahari','pawan@techugo.com',9696031782,'e10adc3949ba59abbe56e057f20f883e',1,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(146,'TUG182','Sandeep ','Rai','sandeep@techugo.com',9999341373,'e10adc3949ba59abbe56e057f20f883e',8,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(147,'TUG183','Vikash','Kumar','vikas@techugo.com',8130927259,'e10adc3949ba59abbe56e057f20f883e',7,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(148,'TUG184','Devesh','Chitkara','devesh@techugo.com',8700308240,'e10adc3949ba59abbe56e057f20f883e',7,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(149,'TUG186','Indranil','Chatterjee','indranil@techugo.com',8130728411,'e10adc3949ba59abbe56e057f20f883e',2,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(150,'TUG187','Vijay','Nailwal','vijay@techugo.com',9582973777,'e10adc3949ba59abbe56e057f20f883e',2,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(151,'TUG188','Vishal','Kumar','vishal.rana@techugo.com',9654197004,'e10adc3949ba59abbe56e057f20f883e',7,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(152,'TUG190','Arpit','Javerya','arpit@techugo.com',8851108434,'e10adc3949ba59abbe56e057f20f883e',1,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(153,'TUG191','Akshay ','Kumar','akshay@techugo.com',8076519909,'e10adc3949ba59abbe56e057f20f883e',10,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(154,'TUG192','Rakesh','Kumar Singh','rakesh.singh@techugo.com',7387654180,'e10adc3949ba59abbe56e057f20f883e',2,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(155,'TUG194','Priya ','Kaushik','priya@techugo.com',8510012066,'e10adc3949ba59abbe56e057f20f883e',11,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(156,'TUG195','Sandeep','Vishwakarma','sandeep.vishwakarma@techugo.com',9540978586,'e10adc3949ba59abbe56e057f20f883e',1,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(157,'TUG196','Neha ','Chaudhary','neha@techugo.com',8512828745,'e10adc3949ba59abbe56e057f20f883e',7,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(158,'TUG197','Prakash','Singh','prakash@techugo.com',7303423430,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(159,'TUG202','Rajpal','','rajpal@tecugo.com',9667472268,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(160,'TUG203','Vishal','Rana','vishal@techugo.com',8789111455,'e10adc3949ba59abbe56e057f20f883e',2,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(161,'TUG204','Ram','Vinay Kumar','ram.vinay@techugo.com',9911620103,'e10adc3949ba59abbe56e057f20f883e',1,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(162,'TUG205','Kanchan ','Chauhan','kanchan@techugo.com',8178436983,'e10adc3949ba59abbe56e057f20f883e',8,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(163,'TUG206','Akshit','Chaku','akshit@techugo.com',9990769273,'e10adc3949ba59abbe56e057f20f883e',8,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(164,'TUG207','Priya ','Chaudhary','priya.chaudhary@techugo.com',8860098581,'e10adc3949ba59abbe56e057f20f883e',5,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(165,'TUG208','Fajal','Muhammad','fajal@techugo.com',8630047406,'e10adc3949ba59abbe56e057f20f883e',10,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(166,'TUG209','Siddiqui','Sazid Ali','siddiqui.sazid@techugo.com',7982649286,'e10adc3949ba59abbe56e057f20f883e',3,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(167,'','Hashim ','Ilyas','hashim@techugo.com',8929888242,'e10adc3949ba59abbe56e057f20f883e',8,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(168,'','Piyush','Ahuja','piyush@techugo.com',8950345345,'e10adc3949ba59abbe56e057f20f883e',7,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(169,'','Sachin ','Raghav','Sachin@techugo.com',9990756109,'e10adc3949ba59abbe56e057f20f883e',8,2,'active','2019-12-20 12:11:47',1,NULL,NULL),(170,'1','Priya','chaudhary','priya@techugo.com',9999999999,NULL,4,2,'active','2020-01-10 10:34:13',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_email`
--

DROP TABLE IF EXISTS `tbl_user_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user_email` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subject` text CHARACTER SET utf8,
  `to` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cc` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `message` text CHARACTER SET utf8,
  `status` enum('pending','sending','sent','failed') CHARACTER SET utf8 DEFAULT 'pending',
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_email`
--

LOCK TABLES `tbl_user_email` WRITE;
/*!40000 ALTER TABLE `tbl_user_email` DISABLE KEYS */;
INSERT INTO `tbl_user_email` VALUES (1,'Project Assign and Team Member Allocation','vishal.rana@techugo.com','purushottam@techugo.com,abhinav.gupta@techugo.com,ankit.singh@techugo.com,lakshman@techugo.com,','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Vishal Kumar,<br>\n    \n    Inform you that you have assign a New Project : <b>Solar</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-08 12:01:59'),(2,'New Team Member Allocation and changes Team Hours','vishal.rana@techugo.com','purushottam@techugo.com,abhinav.gupta@techugo.com,ankit.singh@techugo.com,lakshman@techugo.com,junaid@techugo.com,arun.sharma@techugo.com,Deep@techugo.com,anuradha@techugo.com,akansha.singh@techugo.com,arpit@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Vishal Kumar,<br>\n    \n    Inform you that some details are updated of your <b>Solar</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Md  Junaid<br>\n    Department: Android<br>\n    Assign Hours : 8 <br><br>\n    \n    \n    First Name: Arun   Sharma<br>\n    Department: Backend<br>\n    Assign Hours : 4 <br><br>\n    \n    \n    First Name: Deep   Verma<br>\n    Department: QA<br>\n    Assign Hours : 8 <br><br>\n    \n    \n    First Name: Anuradha  Jaiswal<br>\n    Department: HTML<br>\n    Assign Hours : 6 <br><br>\n    \n    \n    First Name: Akanksha  Singh<br>\n    Department: IOS<br>\n    Assign Hours : 2 <br><br>\n    \n    \n    First Name: Arpit  Javerya<br>\n    Department: IOS<br>\n    Assign Hours : 2 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-08 12:06:47'),(3,'Project Team Member deallocated','vishal.rana@techugo.com','purushottam@techugo.com,abhinav.gupta@techugo.com,ankit.singh@techugo.com,lakshman@techugo.com,arpit@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Vishal Kumar,<br>\n    \n    Inform you that your Project <b> Solar</b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Arpit Javerya<br>\n    Department: IOS<br>\n    Project : Solar<br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-08 12:09:55'),(4,'New Team Member Allocation and changes Team Hours','vishal.rana@techugo.com','purushottam@techugo.com,abhinav.gupta@techugo.com,ankit.singh@techugo.com,lakshman@techugo.com,junaid@techugo.com,arun.sharma@techugo.com,Deep@techugo.com,anuradha@techugo.com,akansha.singh@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Vishal Kumar,<br>\n    \n    Inform you that some details are updated of your <b>Solar</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Md  Junaid<br>\n    Department: Android<br>\n    Assign Hours : 8.00 <br><br>\n    \n    \n    First Name: Arun   Sharma<br>\n    Department: Backend<br>\n    Assign Hours : 8.00 <br><br>\n    \n    \n    First Name: Deep   Verma<br>\n    Department: QA<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    First Name: Anuradha  Jaiswal<br>\n    Department: HTML<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Akanksha  Singh<br>\n    Department: IOS<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-08 12:10:05'),(5,'New Team Member Allocation and changes Team Hours','vishal.rana@techugo.com','purushottam@techugo.com,abhinav.gupta@techugo.com,ankit.singh@techugo.com,lakshman@techugo.com,junaid@techugo.com,arun.sharma@techugo.com,Deep@techugo.com,anuradha@techugo.com,akansha.singh@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Vishal Kumar,<br>\n    \n    Inform you that some details are updated of your <b>Solar</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Md  Junaid<br>\n    Department: Android<br>\n    Assign Hours : 8.00 <br><br>\n    \n    \n    First Name: Arun   Sharma<br>\n    Department: Backend<br>\n    Assign Hours : 4 <br><br>\n    \n    \n    First Name: Deep   Verma<br>\n    Department: QA<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    First Name: Anuradha  Jaiswal<br>\n    Department: HTML<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Akanksha  Singh<br>\n    Department: IOS<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-08 12:12:50'),(6,'Project Assign and Team Member Allocation','qamar.abbas@techugo.com','purushottam@techugo.com,abhinav.gupta@techugo.com,ankit.singh@techugo.com,lakshman@techugo.com,ankit.malhotra@techugo.com,Deep@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Qamar  Abbas,<br>\n    \n    Inform you that you have assign a New Project : <b>test</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Ankit   Malhotra<br>\n    Department:  Design<br>\n    Assign Hours : 2 <br><br>\n\n    \n    First Name: Deep   Verma<br>\n    Department:  QA<br>\n    Assign Hours : 1 <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-08 12:14:54'),(7,'Project Assign and Team Member Allocation','bhavna@techugo.com','purushottam@techugo.com,abhinav.gupta@techugo.com,ankit.singh@techugo.com,lakshman@techugo.com,bhavna@techugo.com,Deep@techugo.com,manish@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Bhavna Puri,<br>\n    \n    Inform you that you have assign a New Project : <b>test_backend</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Bhavna  Puri<br>\n    Department:  Project-Incharge<br>\n    Assign Hours : 3 <br><br>\n\n    \n    First Name: Deep   Verma<br>\n    Department:  QA<br>\n    Assign Hours : 2 <br><br>\n\n    \n    First Name: Manish  Kumar<br>\n    Department:  Design<br>\n    Assign Hours : 2 <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-08 13:38:42'),(8,'Project Assign and Team Member Allocation','bhavna@techugo.com','beenu.rai@techugo.com,arun.sharma@techugo.com,sunil@techugo.com,akriti@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Bhavna Puri,<br>\n    \n    Inform you that you have assign a New Project : <b>backend_test</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Beenu   Rai<br>\n    Department:  Design<br>\n    Assign Hours : 2 <br><br>\n\n    \n    First Name: Arun   Sharma<br>\n    Department:  Backend<br>\n    Assign Hours : 3 <br><br>\n\n    \n    First Name: Sunil   Kumar Tripathi<br>\n    Department:  IOS<br>\n    Assign Hours : 3 <br><br>\n\n    \n    First Name: Akriti  Sharma<br>\n    Department:  QA<br>\n    Assign Hours : 4 <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-09 08:54:12'),(9,'Project Team Member deallocated',NULL,'arun.sharma@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear  ,<br>\n    \n    Inform you that your Project <b> </b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Arun  Sharma<br>\n    Department: Backend<br>\n    Project : <br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-09 08:56:08'),(10,'Project Assign and Team Member Allocation','bhavna@techugo.com','qamar.abbas@techugo.com,bhavna@techugo.com,anuradha@techugo.com,manish@techugo.com,anshu@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Bhavna Puri,<br>\n    \n    Inform you that you have assign a New Project : <b>backend</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Qamar   Abbas<br>\n    Department:  Project-Incharge<br>\n    Assign Hours : 4 <br><br>\n\n    \n    First Name: Bhavna  Puri<br>\n    Department:  Project-Incharge<br>\n    Assign Hours : 2 <br><br>\n\n    \n    First Name: Anuradha  Jaiswal<br>\n    Department:  HTML<br>\n    Assign Hours : 4 <br><br>\n\n    \n    First Name: Manish  Kumar<br>\n    Department:  Design<br>\n    Assign Hours : 2 <br><br>\n\n    \n    First Name: Anshu   Shukla<br>\n    Department:  QA<br>\n    Assign Hours : 3 <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-09 08:58:58'),(11,'New Team Member Allocation and changes Team Hours','bhavna@techugo.com','qamar.abbas@techugo.com,bhavna@techugo.com,anuradha@techugo.com,anshu@techugo.com,bhavya.khatri@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Bhavna Puri,<br>\n    \n    Inform you that some details are updated of your <b>backend</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Qamar   Abbas<br>\n    Department: Project-Incharge<br>\n    Assign Hours : 4.00 <br><br>\n    \n    \n    First Name: Bhavna  Puri<br>\n    Department: Project-Incharge<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Anuradha  Jaiswal<br>\n    Department: HTML<br>\n    Assign Hours : 5 <br><br>\n    \n    \n    First Name: Anshu   Shukla<br>\n    Department: QA<br>\n    Assign Hours : 4.00 <br><br>\n    \n    \n    First Name: Bhavya  Khatri<br>\n    Department: Backend<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-09 09:01:39'),(12,'Project Assign and Team Member Allocation','purushottam@techugo.com','','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Purushottam Kumar,<br>\n    \n    Inform you that you have assign a New Project : <b>tt</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-09 09:10:52'),(13,'New Team Member Allocation and changes Team Hours','purushottam@techugo.com','abhay@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Purushottam Kumar,<br>\n    \n    Inform you that some details are updated of your <b>tt</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Abhay   Narayan<br>\n    Department: QA<br>\n    Assign Hours : 2 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-09 09:22:09'),(14,'Project Assign and Team Member Allocation','arun.sharma@techugo.com','qamar.abbas@techugo.com,shubham@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Arun  Sharma,<br>\n    \n    Inform you that you have assign a New Project : <b>testing2</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Qamar   Abbas<br>\n    Department:  Project-Incharge<br>\n    Assign Hours : 2 <br><br>\n\n    \n    First Name: Shubham  Singh<br>\n    Department:  IOS<br>\n    Assign Hours : 2 <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-09 09:24:02'),(15,'Project Assign and Team Member Allocation','arun.sharma@techugo.com','arun.sharma@techugo.com,bhavna@techugo.com,lovemahajan@techugo.com,manish@techugo.com,akriti@techugo.com,akash.kaushik@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Arun  Sharma,<br>\n    \n    Inform you that you have assign a New Project : <b>own</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Arun   Sharma<br>\n    Department:  Project-Incharge<br>\n    Assign Hours : 4 <br><br>\n\n    \n    First Name: Bhavna  Puri<br>\n    Department:  Project-Incharge<br>\n    Assign Hours : 8 <br><br>\n\n    \n    First Name: Love  Mahajan<br>\n    Department:  Android<br>\n    Assign Hours : 4 <br><br>\n\n    \n    First Name: Manish  Kumar<br>\n    Department:  Design<br>\n    Assign Hours : 4 <br><br>\n\n    \n    First Name: Akriti  Sharma<br>\n    Department:  QA<br>\n    Assign Hours : 3 <br><br>\n\n    \n    First Name: Akash   Kaushik<br>\n    Department:  HTML<br>\n    Assign Hours : 3 <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-09 09:30:57'),(16,'Project Assign and Team Member Allocation','preeti@techugo.com','qamar.abbas@techugo.com,abhay@techugo.com,vivek.indra@techugo.com,rishabh_arora@techugo.com,deekhsa@techugo.com,ishu@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Preeti  Singh,<br>\n    \n    Inform you that you have assign a New Project : <b>test</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Qamar   Abbas<br>\n    Department:  Project-Incharge<br>\n    Assign Hours : 2 <br><br>\n\n    \n    First Name: Abhay   Narayan<br>\n    Department:  QA<br>\n    Assign Hours : 3 <br><br>\n\n    \n    First Name: Vivek   Indra<br>\n    Department:  IOS<br>\n    Assign Hours : 2 <br><br>\n\n    \n    First Name: Rishabh  Arora<br>\n    Department:  Design<br>\n    Assign Hours : 2 <br><br>\n\n    \n    First Name: Deeksha  Srivastav<br>\n    Department:  HTML<br>\n    Assign Hours : 2 <br><br>\n\n    \n    First Name: Ishu  Mishra<br>\n    Department:  Backend<br>\n    Assign Hours : 2 <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 07:00:54'),(17,'New Team Member Allocation and changes Team Hours','preeti@techugo.com','qamar.abbas@techugo.com,abhay@techugo.com,vivek.indra@techugo.com,deekhsa@techugo.com,manish.sharma@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Preeti  Singh,<br>\n    \n    Inform you that some details are updated of your <b>test</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Qamar   Abbas<br>\n    Department: Project-Incharge<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Abhay   Narayan<br>\n    Department: QA<br>\n    Assign Hours : 3.00 <br><br>\n    \n    \n    First Name: Vivek   Indra<br>\n    Department: IOS<br>\n    Assign Hours : 4 <br><br>\n    \n    \n    First Name: Deeksha  Srivastav<br>\n    Department: HTML<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Manish  Sharma<br>\n    Department: Backend<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 07:02:09'),(18,'Project Team Member deallocated','qamar.abbas@techugo.com','ishu@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Qamar  Abbas,<br>\n    \n    Inform you that your Project <b> test</b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Ishu Mishra<br>\n    Department: Backend<br>\n    Project : test<br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 07:41:31'),(19,'New Team Member Allocation and changes Team Hours','preeti@techugo.com','qamar.abbas@techugo.com,abhay@techugo.com,vivek.indra@techugo.com,deekhsa@techugo.com,manish.sharma@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Preeti  Singh,<br>\n    \n    Inform you that some details are updated of your <b>test</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Qamar   Abbas<br>\n    Department: Project-Incharge<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Abhay   Narayan<br>\n    Department: QA<br>\n    Assign Hours : 3.00 <br><br>\n    \n    \n    First Name: Vivek   Indra<br>\n    Department: IOS<br>\n    Assign Hours : 4.00 <br><br>\n    \n    \n    First Name: Deeksha  Srivastav<br>\n    Department: HTML<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Manish  Sharma<br>\n    Department: Backend<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 07:41:35'),(20,'Project Assign and Team Member Allocation','purushottam@techugo.com','','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Purushottam Kumar,<br>\n    \n    Inform you that you have assign a New Project : <b>Test 5</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 07:46:04'),(21,'New Team Member Allocation and changes Team Hours','purushottam@techugo.com','gunjan.manral@techugo.com,anuradha@techugo.com,himanshu@techugo.com,rishabh.anand@techugo.com,akriti@techugo.com,ashish.mishra@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Purushottam Kumar,<br>\n    \n    Inform you that some details are updated of your <b>Test 5</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Gunjan  Manral<br>\n    Department: Android<br>\n    Assign Hours : 8 <br><br>\n    \n    \n    First Name: Anuradha  Jaiswal<br>\n    Department: HTML<br>\n    Assign Hours : 8 <br><br>\n    \n    \n    First Name: Himanshu  Gupta<br>\n    Department: IOS<br>\n    Assign Hours : 4 <br><br>\n    \n    \n    First Name: Rishabh  Anand<br>\n    Department: Backend<br>\n    Assign Hours : 4 <br><br>\n    \n    \n    First Name: Akriti  Sharma<br>\n    Department: QA<br>\n    Assign Hours : 2 <br><br>\n    \n    \n    First Name: Ashish  Mishra<br>\n    Department: Android<br>\n    Assign Hours : 2 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 07:48:27'),(22,'New Team Member Allocation and changes Team Hours','purushottam@techugo.com','gunjan.manral@techugo.com,anuradha@techugo.com,himanshu@techugo.com,rishabh.anand@techugo.com,akriti@techugo.com,ashish.mishra@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Purushottam Kumar,<br>\n    \n    Inform you that some details are updated of your <b>Test 5</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Gunjan  Manral<br>\n    Department: Android<br>\n    Assign Hours : 8.00 <br><br>\n    \n    \n    First Name: Anuradha  Jaiswal<br>\n    Department: HTML<br>\n    Assign Hours : 4 <br><br>\n    \n    \n    First Name: Himanshu  Gupta<br>\n    Department: IOS<br>\n    Assign Hours : 4.00 <br><br>\n    \n    \n    First Name: Rishabh  Anand<br>\n    Department: Backend<br>\n    Assign Hours : 4.00 <br><br>\n    \n    \n    First Name: Akriti  Sharma<br>\n    Department: QA<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Ashish  Mishra<br>\n    Department: Android<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 07:52:31'),(23,'Project Assign and Team Member Allocation','abhinav.gupta@techugo.com','','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Abhinav  Gupta,<br>\n    \n    Inform you that you have assign a New Project : <b>Testing</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 09:45:27'),(24,'Project Assign and Team Member Allocation','purushottam@techugo.com','','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Purushottam Kumar,<br>\n    \n    Inform you that you have assign a New Project : <b>Price app</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:06:00'),(25,'New Team Member Allocation and changes Team Hours','prakhar.anand@techugo.com','lovemahajan@techugo.com,raghu@techugo.com,somya@techugo.com,deekhsa@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Prakhar Anand,<br>\n    \n    Inform you that some details are updated of your <b>Price app</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Love  Mahajan<br>\n    Department: Android<br>\n    Assign Hours : 1 <br><br>\n    \n    \n    First Name: Raghu  Thakur<br>\n    Department: Backend<br>\n    Assign Hours : 1 <br><br>\n    \n    \n    First Name: Somya  Bodoniya<br>\n    Department: IOS<br>\n    Assign Hours : 1 <br><br>\n    \n    \n    First Name: Deeksha  Srivastav<br>\n    Department: HTML<br>\n    Assign Hours : 1 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:10:44'),(26,'Project Team Member deallocated',NULL,'lovemahajan@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear  ,<br>\n    \n    Inform you that your Project <b> </b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Love Mahajan<br>\n    Department: Android<br>\n    Project : <br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:11:26'),(27,'New Team Member Allocation and changes Team Hours','prakhar.anand@techugo.com','raghu@techugo.com,somya@techugo.com,deekhsa@techugo.com,prakhar.anand@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Prakhar Anand,<br>\n    \n    Inform you that some details are updated of your <b>Price app</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Raghu  Thakur<br>\n    Department: Backend<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Somya  Bodoniya<br>\n    Department: IOS<br>\n    Assign Hours : 1 <br><br>\n    \n    \n    First Name: Deeksha  Srivastav<br>\n    Department: HTML<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Prakhar  Anand<br>\n    Department: Project-Incharge<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:12:09'),(28,'New Team Member Allocation and changes Team Hours','prakhar.anand@techugo.com','abhay@techugo.com,raghu@techugo.com,somya@techugo.com,deekhsa@techugo.com,prakhar.anand@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Prakhar Anand,<br>\n    \n    Inform you that some details are updated of your <b>Price app</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Abhay   Narayan<br>\n    Department: QA<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Raghu  Thakur<br>\n    Department: Backend<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Somya  Bodoniya<br>\n    Department: IOS<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Deeksha  Srivastav<br>\n    Department: HTML<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Prakhar  Anand<br>\n    Department: Project-Incharge<br>\n    Assign Hours : 1 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:13:41'),(29,'New Team Member Allocation and changes Team Hours','prakhar.anand@techugo.com','gunjan.manral@techugo.com,shubham@techugo.com,abhay@techugo.com,raghu@techugo.com,nirmala@techugo.com,somya@techugo.com,deekhsa@techugo.com,prakhar.anand@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Prakhar Anand,<br>\n    \n    Inform you that some details are updated of your <b>Price app</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Gunjan  Manral<br>\n    Department: Android<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Shubham  Singh<br>\n    Department: IOS<br>\n    Assign Hours : 1 <br><br>\n    \n    \n    First Name: Abhay   Narayan<br>\n    Department: QA<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Raghu  Thakur<br>\n    Department: Backend<br>\n    Assign Hours : 2 <br><br>\n    \n    \n    First Name: Nirmala  Gond<br>\n    Department: Backend<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Somya  Bodoniya<br>\n    Department: IOS<br>\n    Assign Hours : 2 <br><br>\n    \n    \n    First Name: Deeksha  Srivastav<br>\n    Department: HTML<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Prakhar  Anand<br>\n    Department: Project-Incharge<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:14:34'),(30,'Project Assign and Team Member Allocation','bhavna@techugo.com','','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Bhavna Puri,<br>\n    \n    Inform you that you have assign a New Project : <b>High performance computing applications run on massively parallel supercomputers consist of concurrent programs designed using multi-threaded, multi-process models. The applications may consist of various constructs (threads, local processes, distributed processes, etc.) with varying degree of parallelism. Although high performance concurrent programs use similar design patterns, models and principles as that of sequential programs, unlike sequential programs, they typically demonstrate non-deterministic behavior. The probability of bugs increases with the number of interactions between the various parallel constructs. Race conditions, data races, deadlocks, missed signals and live lock are common error types.   Contents 1	Challenges 1.1	Heisenbugs 1.2	Non-repeatability 1.3	Probe effect 2	Testing strategies 2.1	Deterministic scheduling / reproducible testing 2.2	Feedback-directed testing 2.3	Timing-related testing 2.3.1	Advantages 2.4	All Du-Path testing 3	Verification strategies 3.1	Test calculations 3.2	Symmetry tests 3.3	Parallel implementation tests 3.3.1	Global summation 4	Tools 4.1	Microsoft CHESS 5	References Challenges Parallel programs can be divided into two general categories: explicitly and implicitly parallel. Using parallel language constructs defined for process creation, communication and synchronization make an application explicitly parallel. Using a tool or parallelizing compiler to convert a serial program into a parallel one, makes it implicitly parallel. Both categories are equally bug-prone.  Heisenbugs Concurrent applications should execute correctly on every possible thread schedule in the underlying operating system. However, traditional testing methods detect few bugs, chiefly because of the Heisenbugs [1] problem. A Heisenbug is an error that changes or disappears when an attempt is made to isolate and probe them via debugger, by adding some constructs such as synchronization requests or delay statements.  Non-repeatability Another issue is caused due to the unpredictable behavior of the scheduler. Differences in system load influence scheduler behavior. This behavior cannot be changed manually. To counter this indeterminism, the program must be executed many times under various execution environments. Still, it is not guaranteed that a bug can be reproduced. Most of the time, the program runs correctly, and the bug is visible only when specific conditions are matched. As a result, non-repeatability of the concurrent programs is a major source of roadblock for detecting error. As an example, consider the following.  void thread1(void *t) {    mutex_lock(a);    mutex_lock(b);    // do some work    .    .    .    mutex_unlock(b);    mutex_unlock(a); } void thread2(void *t) {    mutex_lock(b);    mutex_lock(a);    // do some work    .    .    .    mutex_unlock(a);    mutex_unlock(b); } Clearly, this has a problem of causing deadlocks. Yet, it may cause deadlock in some runs of the program while in others, it may run successfully.  Probe effect Probe effect is seen in parallel programs when delay-statements are inserted in parallel programs facing synchronization problems. This effect, like Heisenbugs, alters behavior changes that may obscure problems. Detecting the source of a probe effect is a great challenge in testing parallel applications. The main difference between Probe effect and Heisenbugs is that Heisenbugs are seen when additional delay statements and/or synchronization requests are added to the concurrent application during testing, while probe effect is seen when the developer adds delay statements to concurrent applications with poor synchronization.  Testing strategies The differences between sequential and concurrent programs lead to the differences in their testing strategies. Strategies for sequential programs can be modified to make them suitable for concurrent applications. Specialized strategies have also been developed. Conventionally, testing includes designing test cases and checking that the program produces the expected results. Thus, errors in specification, functionality, etc. are detected by running the application and subjecting it to testing methods such as Functional Testing, White Box, Black Box and Grey Box Testing.[2] Static analysis is also used for detecting errors in high performance software using methods such as Data Flow Analysis, Control Flow Analysis, Cyclomatic Complexities, Thread Escape Analysis and Static Slicing Analysis to find problems. Using static analysis before functionality testing can save time. It can detect ‘what the error is’ find the error source. Static analysis techniques can detect problems like lack of synchronization, improper synchronizations, predict occurrence of deadlocks and post-wait errors in rendezvous requests.  Details:  Deterministic scheduling / reproducible testing The indeterminacy of scheduling has two sources.[1]  1. Time slicing Scheduler switches contexts at equal intervals of time. This interval depends on the speed of individual processors, memory-cache hierarchy state and system load. Even on the same processor, under the same load, the interval varies slightly due to minor variations in frequency of the system clock. 2. Page Faults Scheduler suspends a program if a page fault occurs, letting other threads proceed while the system fetches the page. As the occurrence of page faults depends upon what other processes are running, the timing of a context switch becomes indeterminate. To make concurrent programs repeatable, an external scheduler is used. The program under test is instrumented to add calls to this scheduler. Such calls are made at the beginning and end of each thread as well as before every synchronization request. This scheduler selectively blocks threads of execution by maintaining a semaphore associated with each thread, such that only one thread is ready for execution at any given time. Thus, it converts parallel non-deterministic application into a serial execution sequence in order to achieve repeatability. The number of scheduling decisions made by the serializing scheduler is given by –  (N * K / P)*{(N + P)!}  Where   N = number of threads  K = potential context switch points  P = budget of pre-emptive context switches Feedback-directed testing To obtain more accurate results using deterministic scheduling, an alternate approach can be chosen. A few properly-placed pre-emptions in the concurrent program can detect bugs related to data-races.[1] Bugs are found in clusters. The existence of one bug establishes a high probability of more bugs in the same region of code. Thus each pass of the testing process identifies sections of code with bugs. The next pass more thoroughly scrutinizes those sections by adding scheduler calls around them. Allowing the problematic locations to execute in a different order can reveal unexpected behavior.  Timing-related testing This strategy ensures that the application is not prone to the Probe Effect. Sources of errors that cause the Probe Effect can range from task creation issues to synchronization and communication problems. Requirements of timing related tests:[3]  Delay duration must vary Delay points must cover appropriate program locations Delay statements must be inserted, removed or relocated to induce Probe Effect The number of test cases per input data set is:  nC1 + nC1 + … + nC1 = 2n -1  Where n = total number of synchronization, process creation and communication calls. This equation has exponential order. In order to reduce the number of test cases, either Deterministic Execution Method (DET) or Multiple Execution Technique (MET) is used. Various issues must be handled:  Delayed execution Addition of delays is a straightforward task. A typical sleep() statement can be used to insert delays. Deciding where to insert delays Insertion locations are known as delay-points. As the objective of timing related test cases is to detect synchronization, communication and thread creation errors, delay statements are added just in front of these statements. Advantages Easy to implement on multiple processors without any need of ordering the synchronization requests. No need to generate concurrency graph More effective for fault detection Total number of test cases are less, yet code coverage is more, due to static analysis All Du-Path testing This method applies the concept of define-use pair, in order to determine the paths to be tested.  Verification strategies Software verification is a process that proves that software is working correctly and is performing the intended task as designed.  Test calculations Input is given to the system to generate a known result. This input-result pair can be obtained from previous empirical results and/or manual calculations.[4] This is a system-level test that can be performed only when all relevant modules are integrated. Moreover, it only shows that bugs exist. It offers no detailed information regarding the number of bugs, their location or nature.  Symmetry tests These tests are primarily used for scientific simulations. The output of the simulation often cannot be predicted. Since these simulations attempt to describe scientific laws, any symmetries in the theory must be honored by the simulation. Thus, by varying input conditions along the lines of symmetry and then comparing the obtained results with externally derived results, the existence of bugs can be detected.[4]   Figure 1 : Data Distribution In scientific computing most data lies in the central region of the simulation conditions. As a result, it is difficult to perform Boundary-value testing [2] with real time experimental data. Thus, center of simulation (for example, for data value of 10 in Figure 1) is shifted to one of the boundaries so as to test the boundary condition effectively.  Parallel implementation tests Parallel implementation tests are usually used for applications that use distributed memory programming models such as message passing. These tests are often applied to programs that use regular grids of processors.[4][clarification needed]  Global summation Many parallel databases use distributed parallel processing to execute the queries. While executing an aggregate function such as sum, the following strategy is used:[5]  Compute a partial sum locally and concurrently at each processor using the data present in the associated disk partition with it. Add these local subtotals to get the final result. The final result may contain some rounding error as each processor independently rounds-off local results. One test is to ensure that such errors do not occur. This requires showing that the aggregate sum is decomposition-independent. An alternate summation scheme is to send all of the individual values to one processor for summation. This result can be compared with the distributed result to ensure consistency.  Tools Microsoft CHESS This tool eliminates non-determinacy using deterministic scheduling. It tracks schedule paths executed previously and guarantees that each time a new schedule path is executed.[1][clarification needed]  References  Thomas Ball; Sebastian Burckhardt; Peli de Halleux; Madanlal Musuvathi; Shaz Qadeer (May–June 2011). \"Predictable and Progressive Testing of Multithreaded Code\". IEEE Software. 28 (3).  The Art of Software Testing, Second Edition. John Wiley and Sons. 2004. p. 256. ISBN 978-0-471-46912-4.  Cheer-Sun Yang; Lori L. Pollock (1997). \"The Challenges in Automated Testing of Multithreaded Programs\". Proceedings of the 14th International Conference on Testing Computer Software: 157–166. CiteSeerX 10.1.1.52.8791.  Stephen Booth; David Henty (2004). \"Verification strategies for high performance computing software\". \"Software Engineering for High Performance Computing System (HPCS) Applications\" W3S Workshop - 26th International Conference on Software Engineering. 2004. pp. 24–26. doi:10.1049/ic:20040413. ISBN 0-86341-418-4.  Korth, Henry. Database System Concepts. McGraw-Hill. Categories: Software testing Navigation menu Not logged inTalkContributionsCreate accountLog inArticleTalkReadEditView historySearch Search Wikipedia Main page Contents Featured content Current events Random article Donate to Wikipedia Wikipedia store Interaction Help About Wikipedia Community portal Recent changes Contact page Tools What links here Related changes Upload file Special pages Permanent link Page information Wikidata item Cite this page Print/export Download as PDF Printable version  Languages Add links This page was last edited on 24 November 2019, at 11:37 (UTC). Text is available under the Creative Commons Attribution-ShareAlike License; additional terms may apply. By using this site, you agree to the Terms of Use and Privacy Policy. Wikipedia® is a registered trademark of the Wikimedia Foundation, Inc., a non-profit organization. Privacy policyAbout WikipediaDisclaimersContact WikipediaDevelopersStatisticsCookie statementMobile view</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:15:18'),(31,'New Team Member Allocation and changes Team Hours','prakhar.anand@techugo.com','gunjan.manral@techugo.com,Kashish@techugo.com,shubham@techugo.com,abhay@techugo.com,raghu@techugo.com,nirmala@techugo.com,somya@techugo.com,deekhsa@techugo.com,shubham.tyagi@techugo.com,prakhar.anand@techugo.com,vishal@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Prakhar Anand,<br>\n    \n    Inform you that some details are updated of your <b>Price app</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Gunjan  Manral<br>\n    Department: Android<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Kashish  Makkar<br>\n    Department: IOS<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Shubham  Singh<br>\n    Department: IOS<br>\n    Assign Hours : 1 <br><br>\n    \n    \n    First Name: Abhay   Narayan<br>\n    Department: QA<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Raghu  Thakur<br>\n    Department: Backend<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Nirmala  Gond<br>\n    Department: Backend<br>\n    Assign Hours :  <br><br>\n    \n    \n    First Name: Somya  Bodoniya<br>\n    Department: IOS<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Deeksha  Srivastav<br>\n    Department: HTML<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Shubham  <br>\n    Department: Backend<br>\n    Assign Hours : 2 <br><br>\n    \n    \n    First Name: Prakhar  Anand<br>\n    Department: Project-Incharge<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Vishal  Rana<br>\n    Department: Android<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:16:00'),(32,'Project Assign and Team Member Allocation','devesh@techugo.com','rahul@techugo.com,shubham@techugo.com,lovemahajan@techugo.com,anuradha@techugo.com,deepak.bansal@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Devesh Chitkara,<br>\n    \n    Inform you that you have assign a New Project : <b>GOAL</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Rahul   Kumar<br>\n    Department:  IOS<br>\n    Assign Hours : 0.96 <br><br>\n\n    \n    First Name: Shubham  Singh<br>\n    Department:  IOS<br>\n    Assign Hours : 0.22 <br><br>\n\n    \n    First Name: Love  Mahajan<br>\n    Department:  Android<br>\n    Assign Hours : 0.12 <br><br>\n\n    \n    First Name: Anuradha  Jaiswal<br>\n    Department:  HTML<br>\n    Assign Hours : 7 <br><br>\n\n    \n    First Name: Deepak   Bansal<br>\n    Department:  Backend<br>\n    Assign Hours :  <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:16:08'),(33,'Project Team Member deallocated',NULL,'prakhar.anand@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear  ,<br>\n    \n    Inform you that your Project <b> </b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Prakhar Anand<br>\n    Department: Project-Incharge<br>\n    Project : <br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:16:48'),(34,'Project Team Member deallocated',NULL,'Kashish@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear  ,<br>\n    \n    Inform you that your Project <b> </b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Kashish Makkar<br>\n    Department: IOS<br>\n    Project : <br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:16:56'),(35,'New Team Member Allocation and changes Team Hours','prakhar.anand@techugo.com','gunjan.manral@techugo.com,shubham@techugo.com,abhay@techugo.com,raghu@techugo.com,nirmala@techugo.com,somya@techugo.com,deekhsa@techugo.com,shubham.tyagi@techugo.com,vishal@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Prakhar Anand,<br>\n    \n    Inform you that some details are updated of your <b>Price app</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Gunjan  Manral<br>\n    Department: Android<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Shubham  Singh<br>\n    Department: IOS<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Abhay   Narayan<br>\n    Department: QA<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Raghu  Thakur<br>\n    Department: Backend<br>\n    Assign Hours : 0.00 <br><br>\n    \n    \n    First Name: Nirmala  Gond<br>\n    Department: Backend<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Somya  Bodoniya<br>\n    Department: IOS<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Deeksha  Srivastav<br>\n    Department: HTML<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Shubham  <br>\n    Department: Backend<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Vishal  Rana<br>\n    Department: Android<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:17:10'),(36,'New Team Member Allocation and changes Team Hours','prakhar.anand@techugo.com','gunjan.manral@techugo.com,shubham@techugo.com,abhay@techugo.com,raghu@techugo.com,nirmala@techugo.com,somya@techugo.com,deekhsa@techugo.com,shubham.tyagi@techugo.com,vishal@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Prakhar Anand,<br>\n    \n    Inform you that some details are updated of your <b>Price app</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Gunjan  Manral<br>\n    Department: Android<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Shubham  Singh<br>\n    Department: IOS<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Abhay   Narayan<br>\n    Department: QA<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Raghu  Thakur<br>\n    Department: Backend<br>\n    Assign Hours : 0 <br><br>\n    \n    \n    First Name: Nirmala  Gond<br>\n    Department: Backend<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Somya  Bodoniya<br>\n    Department: IOS<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Deeksha  Srivastav<br>\n    Department: HTML<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Shubham  <br>\n    Department: Backend<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Vishal  Rana<br>\n    Department: Android<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:18:23'),(37,'New Team Member Allocation and changes Team Hours','bhavna@techugo.com','Deep@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Bhavna Puri,<br>\n    \n    Inform you that some details are updated of your <b>High performance computing applications run on massively parallel supercomputers consist of concurrent programs designed using multi-threaded, multi-process models. The applications may consist of various constructs (threads, local processes, distributed </b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Deep   Verma<br>\n    Department: QA<br>\n    Assign Hours : 12 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:22:33'),(38,'Project status changed','qamar.abbas@techugo.com',NULL,'<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\"style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Qamar  Abbas,<br><br>\n    \n    Inform you that your Project <b>test </b> status has changed to <b>Running</b>.<br><br>\n\n   <b>Thanks & Regards<br>\n   Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:22:52'),(39,'Project status changed','qamar.abbas@techugo.com',NULL,'<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\"style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Qamar  Abbas,<br><br>\n    \n    Inform you that your Project <b>test </b> status has changed to <b>Initial</b>.<br><br>\n\n   <b>Thanks & Regards<br>\n   Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:23:00'),(40,'Project status changed',NULL,NULL,'<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\"style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear  ,<br><br>\n    \n    Inform you that your Project <b> </b> status has changed to <b></b>.<br><br>\n\n   <b>Thanks & Regards<br>\n   Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:23:11'),(41,'Project status changed','qamar.abbas@techugo.com',NULL,'<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\"style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Qamar  Abbas,<br><br>\n    \n    Inform you that your Project <b>test </b> status has changed to <b>OnHold</b>.<br><br>\n\n   <b>Thanks & Regards<br>\n   Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:26:49'),(42,'Project status changed',NULL,NULL,'<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\"style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear  ,<br><br>\n    \n    Inform you that your Project <b> </b> status has changed to <b></b>.<br><br>\n\n   <b>Thanks & Regards<br>\n   Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:26:59'),(43,'Project Team Member deallocated',NULL,'shubham@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear  ,<br>\n    \n    Inform you that your Project <b> </b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Shubham Singh<br>\n    Department: IOS<br>\n    Project : <br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:27:15'),(44,'Project Team Member deallocated',NULL,'rahul@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear  ,<br>\n    \n    Inform you that your Project <b> </b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Rahul  Kumar<br>\n    Department: IOS<br>\n    Project : <br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:27:38'),(45,'Project Assign and Team Member Allocation','arun.sharma@techugo.com','','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Arun  Sharma,<br>\n    \n    Inform you that you have assign a New Project : <b>Deep ka project</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:30:53'),(46,'Project Assign and Team Member Allocation','preeti@techugo.com','priya@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://52.27.53.102/techugo_panel/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Preeti  Singh,<br>\n    \n    Inform you that you have assign a New Project : <b>Project one</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Priya  chaudhary<br>\n    Department:  QA<br>\n    Assign Hours : 2 <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 10:35:27'),(47,'Project Assign and Team Member Allocation','preeti@techugo.com','bhavna@techugo.com,ashuthosh@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Preeti  Singh,<br>\n    \n    Inform you that you have assign a New Project : <b>abcdd</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Bhavna  Puri<br>\n    Department:  Project-Incharge<br>\n    Assign Hours : 1 <br><br>\n\n    \n    First Name: Ashutosh  Kumar<br>\n    Department:  Android<br>\n    Assign Hours : 2 <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 16:22:09'),(48,'Project Team Member deallocated','bhavna@techugo.com','ashuthosh@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Bhavna Puri,<br>\n    \n    Inform you that your Project <b> abcdd</b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Ashutosh Kumar<br>\n    Department: Android<br>\n    Project : abcdd<br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 16:23:36'),(49,'Project Team Member deallocated','bhavna@techugo.com','akansha.singh@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Bhavna Puri,<br>\n    \n    Inform you that your Project <b> abcdd</b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Akanksha Singh<br>\n    Department: IOS<br>\n    Project : abcdd<br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 16:35:08'),(50,'New Team Member Allocation and changes Team Hours','bhavna@techugo.com','rahul@techugo.com,Deep@techugo.com,ashuthosh@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Bhavna Puri,<br>\n    \n    Inform you that some details are updated of your <b>High performance computing applications run on massively parallel supercomputers consist of concurrent programs designed using multi-threaded, multi-process models. The applications may consist of various constructs (threads, local processes, distributed </b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Rahul   Kumar<br>\n    Department: IOS<br>\n    Assign Hours : 8.00 <br><br>\n    \n    \n    First Name: Deep   Verma<br>\n    Department: QA<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Ashutosh  Kumar<br>\n    Department: Android<br>\n    Assign Hours : 12.00 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 16:50:38'),(51,'Project Assign and Team Member Allocation','preeti@techugo.com','ankit.malhotra@techugo.com,Kashish@techugo.com,lovemahajan@techugo.com,akriti@techugo.com,archana@techugo.com,veerendra@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Preeti  Singh,<br>\n    \n    Inform you that you have assign a New Project : <b>testttt</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Ankit   Malhotra<br>\n    Department:  Design<br>\n    Assign Hours : 1 <br><br>\n\n    \n    First Name: Kashish  Makkar<br>\n    Department:  IOS<br>\n    Assign Hours : 2 <br><br>\n\n    \n    First Name: Love  Mahajan<br>\n    Department:  Android<br>\n    Assign Hours : 3 <br><br>\n\n    \n    First Name: Akriti  Sharma<br>\n    Department:  QA<br>\n    Assign Hours : 3 <br><br>\n\n    \n    First Name: Archana   Rathore<br>\n    Department:  Backend<br>\n    Assign Hours : 4 <br><br>\n\n    \n    First Name: Veerendra  Kumar<br>\n    Department:  HTML<br>\n    Assign Hours : 4 <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 16:52:15'),(52,'New Team Member Allocation and changes Team Hours','preeti@techugo.com','Kashish@techugo.com,lovemahajan@techugo.com,abhay@techugo.com,deekhsa@techugo.com,archana@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Preeti  Singh,<br>\n    \n    Inform you that some details are updated of your <b>testttt</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Kashish  Makkar<br>\n    Department: IOS<br>\n    Assign Hours : 1.00 <br><br>\n    \n    \n    First Name: Love  Mahajan<br>\n    Department: Android<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Abhay   Narayan<br>\n    Department: QA<br>\n    Assign Hours : 3.00 <br><br>\n    \n    \n    First Name: Deeksha  Srivastav<br>\n    Department: HTML<br>\n    Assign Hours : 1 <br><br>\n    \n    \n    First Name: Archana   Rathore<br>\n    Department: Backend<br>\n    Assign Hours : 2 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 16:58:59'),(53,'Project Team Member deallocated',NULL,'archana@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear  ,<br>\n    \n    Inform you that your Project <b> </b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Archana  Rathore<br>\n    Department: Backend<br>\n    Project : <br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 16:59:12'),(54,'Project Team Member deallocated',NULL,'lovemahajan@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear  ,<br>\n    \n    Inform you that your Project <b> </b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Love Mahajan<br>\n    Department: Android<br>\n    Project : <br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 16:59:20'),(55,'Project Team Member deallocated',NULL,'Kashish@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear  ,<br>\n    \n    Inform you that your Project <b> </b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Kashish Makkar<br>\n    Department: IOS<br>\n    Project : <br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 16:59:24'),(56,'New Team Member Allocation and changes Team Hours','preeti@techugo.com','','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Preeti  Singh,<br>\n    \n    Inform you that some details are updated of your <b>testttt</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 17:06:55'),(57,'New Team Member Allocation and changes Team Hours','preeti@techugo.com','','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Preeti  Singh,<br>\n    \n    Inform you that some details are updated of your <b>testttt</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 17:07:24'),(58,'Project Assign and Team Member Allocation','abhinav.gupta@techugo.com','ravendra.singh@techugo.com,Kashish@techugo.com,lovemahajan@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Abhinav  Gupta,<br>\n    \n    Inform you that you have assign a New Project : <b>tsvahdv</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Ravendra  Kumar Singh<br>\n    Department:  HTML<br>\n    Assign Hours : 2 <br><br>\n\n    \n    First Name: Kashish  Makkar<br>\n    Department:  IOS<br>\n    Assign Hours : 3 <br><br>\n\n    \n    First Name: Love  Mahajan<br>\n    Department:  Android<br>\n    Assign Hours : 2 <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 17:47:27'),(59,'New Team Member Allocation and changes Team Hours','abhinav.gupta@techugo.com','ravendra.singh@techugo.com,Kashish@techugo.com,lovemahajan@techugo.com,somya@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Abhinav  Gupta,<br>\n    \n    Inform you that some details are updated of your <b>tsvahdv</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Ravendra  Kumar Singh<br>\n    Department: HTML<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Kashish  Makkar<br>\n    Department: IOS<br>\n    Assign Hours : 2 <br><br>\n    \n    \n    First Name: Love  Mahajan<br>\n    Department: Android<br>\n    Assign Hours : 3.00 <br><br>\n    \n    \n    First Name: Somya  Bodoniya<br>\n    Department: IOS<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 17:48:07'),(60,'Project Team Member deallocated',NULL,'somya@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear  ,<br>\n    \n    Inform you that your Project <b> </b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Somya Bodoniya<br>\n    Department: IOS<br>\n    Project : <br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 17:53:07'),(61,'Project Assign and Team Member Allocation','qamar.abbas@techugo.com','vivek.indra@techugo.com,rakesh@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Qamar  Abbas,<br>\n    \n    Inform you that you have assign a New Project : <b>Testinf abcle </b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Vivek   Indra<br>\n    Department:  IOS<br>\n    Assign Hours :  <br><br>\n\n    \n    First Name: Rakesh  <br>\n    Department:  Android<br>\n    Assign Hours :  <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 19:32:39'),(62,'Project Assign and Team Member Allocation','abhinav.gupta@techugo.com','','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Abhinav  Gupta,<br>\n    \n    Inform you that you have assign a New Project : <b>a</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-10 19:42:16'),(63,'New Team Member Allocation and changes Team Hours','qamar.abbas@techugo.com','qamar.abbas@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Qamar  Abbas,<br>\n    \n    Inform you that some details are updated of your <b>Testinf abcle </b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Qamar   Abbas<br>\n    Department: Project-Incharge<br>\n    Assign Hours : 2 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-12 21:24:22'),(64,'New Team Member Allocation and changes Team Hours','abhinav.gupta@techugo.com','ravendra.singh@techugo.com,Kashish@techugo.com,lovemahajan@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Abhinav  Gupta,<br>\n    \n    Inform you that some details are updated of your <b>teamMember Test</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Ravendra  Kumar Singh<br>\n    Department: HTML<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Kashish  Makkar<br>\n    Department: IOS<br>\n    Assign Hours : 3.00 <br><br>\n    \n    \n    First Name: Love  Mahajan<br>\n    Department: Android<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-12 21:24:53'),(65,'Project Assign and Team Member Allocation','arun.sharma@techugo.com','junaid@techugo.com,arun.sharma@techugo.com,ravendra.singh@techugo.com,bhavna@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Arun  Sharma,<br>\n    \n    Inform you that you have assign a New Project : <b>test</b> . <br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Md  Junaid<br>\n    Department:  Android<br>\n    Assign Hours : 2 <br><br>\n\n    \n    First Name: Arun   Sharma<br>\n    Department:  Project-Incharge<br>\n    Assign Hours : 3 <br><br>\n\n    \n    First Name: Ravendra  Kumar Singh<br>\n    Department:  HTML<br>\n    Assign Hours : 3 <br><br>\n\n    \n    First Name: Bhavna  Puri<br>\n    Department:  Project-Incharge<br>\n    Assign Hours : 2 <br><br>\n\n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-12 21:58:18'),(66,'New Team Member Allocation and changes Team Hours','arun.sharma@techugo.com','junaid@techugo.com,arun.sharma@techugo.com,ravendra.singh@techugo.com,bhavna@techugo.com,akriti@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Arun  Sharma,<br>\n    \n    Inform you that some details are updated of your <b>test</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Md  Junaid<br>\n    Department: Android<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Arun   Sharma<br>\n    Department: Project-Incharge<br>\n    Assign Hours : 3.00 <br><br>\n    \n    \n    First Name: Ravendra  Kumar Singh<br>\n    Department: HTML<br>\n    Assign Hours : 3.00 <br><br>\n    \n    \n    First Name: Bhavna  Puri<br>\n    Department: Project-Incharge<br>\n    Assign Hours : 2.00 <br><br>\n    \n    \n    First Name: Akriti  Sharma<br>\n    Department: QA<br>\n    Assign Hours : 4 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-12 22:17:31'),(67,'Project Team Member deallocated','bhavna@techugo.com','beenu.rai@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Bhavna Puri,<br>\n    \n    Inform you that your Project <b> test</b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Beenu  Rai<br>\n    Department: Design<br>\n    Project : test<br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-12 22:23:06'),(68,'Project Team Member deallocated',NULL,NULL,'<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear  ,<br>\n    \n    Inform you that your Project <b> </b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name:  <br>\n    Department: <br>\n    Project : <br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-12 22:52:28'),(69,'Project Team Member deallocated','bhavna@techugo.com','beenu.rai@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Bhavna Puri,<br>\n    \n    Inform you that your Project <b> test</b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Beenu  Rai<br>\n    Department: Design<br>\n    Project : test<br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-12 22:55:09'),(70,'Project Team Member deallocated','bhavna@techugo.com','ravendra.singh@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Bhavna Puri,<br>\n    \n    Inform you that your Project <b> test</b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Ravendra Kumar Singh<br>\n    Department: HTML<br>\n    Project : test<br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-12 22:59:12'),(71,'Project Team Member deallocated','bhavna@techugo.com','beenu.rai@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Bhavna Puri,<br>\n    \n    Inform you that your Project <b> test</b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Beenu  Rai<br>\n    Department: Design<br>\n    Project : test<br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-12 22:59:16'),(72,'Project Team Member deallocated','bhavna@techugo.com','akriti@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Bhavna Puri,<br>\n    \n    Inform you that your Project <b> test</b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Akriti Sharma<br>\n    Department: QA<br>\n    Project : test<br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-12 22:59:20'),(73,'Project Team Member deallocated','bhavna@techugo.com','arun.sharma@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Bhavna Puri,<br>\n    \n    Inform you that your Project <b> test</b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Arun  Sharma<br>\n    Department: Project-Incharge<br>\n    Project : test<br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-12 22:59:27'),(74,'Project Team Member deallocated','bhavna@techugo.com','junaid@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Bhavna Puri,<br>\n    \n    Inform you that your Project <b> test</b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Md Junaid<br>\n    Department: Android<br>\n    Project : test<br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-12 22:59:31'),(75,'Project Team Member deallocated',NULL,'bhavna@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear  ,<br>\n    \n    Inform you that your Project <b> </b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Bhavna Puri<br>\n    Department: Project-Incharge<br>\n    Project : <br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-12 22:59:35'),(76,'New Team Member Allocation and changes Team Hours','arun.sharma@techugo.com','Deep@techugo.com,himanshu@techugo.com,rakesh@techugo.com,arjun.sisodia@techugo.com,priya.chaudhary@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Arun  Sharma,<br>\n    \n    Inform you that some details are updated of your <b>test</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Deep   Verma<br>\n    Department: QA<br>\n    Assign Hours : 6 <br><br>\n    \n    \n    First Name: Himanshu  Gupta<br>\n    Department: IOS<br>\n    Assign Hours : 6 <br><br>\n    \n    \n    First Name: Rakesh  <br>\n    Department: Android<br>\n    Assign Hours : 6 <br><br>\n    \n    \n    First Name: Arjun  Sisodiya<br>\n    Department: Backend<br>\n    Assign Hours : 6 <br><br>\n    \n    \n    First Name: Priya   Chaudhary<br>\n    Department: HTML<br>\n    Assign Hours : 6 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-13 11:14:01'),(77,'New Team Member Allocation and changes Team Hours','arun.sharma@techugo.com','Deep@techugo.com,himanshu@techugo.com,rakesh@techugo.com,arjun.sisodia@techugo.com,priya.chaudhary@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Arun  Sharma,<br>\n    \n    Inform you that some details are updated of your <b>test</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Deep   Verma<br>\n    Department: QA<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    First Name: Himanshu  Gupta<br>\n    Department: IOS<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    First Name: Rakesh  <br>\n    Department: Android<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    First Name: Arjun  Sisodiya<br>\n    Department: Backend<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    First Name: Priya   Chaudhary<br>\n    Department: HTML<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-13 11:50:05'),(78,'New Team Member Allocation and changes Team Hours','arun.sharma@techugo.com','Deep@techugo.com,himanshu@techugo.com,rakesh@techugo.com,arjun.sisodia@techugo.com,priya.chaudhary@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Arun  Sharma,<br>\n    \n    Inform you that some details are updated of your <b>test</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Deep   Verma<br>\n    Department: QA<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    First Name: Himanshu  Gupta<br>\n    Department: IOS<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    First Name: Rakesh  <br>\n    Department: Android<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    First Name: Arjun  Sisodiya<br>\n    Department: Backend<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    First Name: Priya   Chaudhary<br>\n    Department: HTML<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-13 11:54:21'),(79,'New Team Member Allocation and changes Team Hours','arun.sharma@techugo.com','Deep@techugo.com,himanshu@techugo.com,rakesh@techugo.com,arjun.sisodia@techugo.com,priya.chaudhary@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Arun  Sharma,<br>\n    \n    Inform you that some details are updated of your <b>test</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Deep   Verma<br>\n    Department: QA<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    First Name: Himanshu  Gupta<br>\n    Department: IOS<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    First Name: Rakesh  <br>\n    Department: Android<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    First Name: Arjun  Sisodiya<br>\n    Department: Backend<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    First Name: Priya   Chaudhary<br>\n    Department: HTML<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-13 11:54:31'),(80,'New Team Member Allocation and changes Team Hours','arun.sharma@techugo.com','Deep@techugo.com,himanshu@techugo.com,rakesh@techugo.com,arjun.sisodia@techugo.com,priya.chaudhary@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear Arun  Sharma,<br>\n    \n    Inform you that some details are updated of your <b>test</b>  Project . <br><br>\n    These are the detail of your team <br><br>\n\n    \n    First Name: Deep   Verma<br>\n    Department: QA<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    First Name: Himanshu  Gupta<br>\n    Department: IOS<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    First Name: Rakesh  <br>\n    Department: Android<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    First Name: Arjun  Sisodiya<br>\n    Department: Backend<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    First Name: Priya   Chaudhary<br>\n    Department: HTML<br>\n    Assign Hours : 6.00 <br><br>\n    \n    \n    <br><br>\n\n   Thanks & Regards<br>\n   <b>Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-13 11:54:41'),(81,'Project Team Member deallocated',NULL,'manish@techugo.com','<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin:0 auto; border: 1px solid #ccc;\">\n<tbody>\n<tr>\n<td align=\"center\" bgcolor=\"#fff\" style=\"padding:20px 20px 20px 20px;border: 1px solid #ccc;\">\n   <img src=\"http://localhost/techugo_backend/upload/techugologo.jpg\" alt=\"ProUI Logo\" style=\"width:200px;\">\n</td>\n</tr> \n<tr>\n<td bgcolor=\"#ffffff\" style=\"padding:20px; color:#555555; font-family:Arial,sans-serif; font-size:14px; line-height:24px; border-bottom:1px solid #ccc\">\n	<p>Dear  ,<br>\n    \n    Inform you that your Project <b> </b>  one of your team member has <br> be deallocated from the Project. <br><br>\n    These are the detail are blow <br><br>\n\n    First Name: Manish Kumar<br>\n    Department: Design<br>\n    Project : <br>\n    \n    <br><br>\n\n    <b> Thanks & Regards<br>\n     Team Techugo</b>\n   </p>\n</td>\n</tr>\n</tbody>\n</table>\n\n','sent','2020-01-13 11:56:29');
/*!40000 ALTER TABLE `tbl_user_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_aboutus`
--

DROP TABLE IF EXISTS `tss_aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_aboutus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `deleted_status` enum('1','0') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_aboutus`
--

LOCK TABLES `tss_aboutus` WRITE;
/*!40000 ALTER TABLE `tss_aboutus` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_activity_type`
--

DROP TABLE IF EXISTS `tss_activity_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_activity_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(50) DEFAULT NULL,
  `deleted_status` enum('0','1') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_activity_type`
--

LOCK TABLES `tss_activity_type` WRITE;
/*!40000 ALTER TABLE `tss_activity_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_activity_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_admin`
--

DROP TABLE IF EXISTS `tss_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_firstname` varchar(50) DEFAULT NULL,
  `user_lastname` varchar(50) DEFAULT NULL,
  `user_mobile` varchar(20) DEFAULT NULL,
  `user_pin` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_status` enum('active','Inactive') DEFAULT 'active',
  `deleted_status` enum('1','0') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_admin`
--

LOCK TABLES `tss_admin` WRITE;
/*!40000 ALTER TABLE `tss_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_admin_auth`
--

DROP TABLE IF EXISTS `tss_admin_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_admin_auth` (
  `token_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `auth_token` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expire_token` datetime DEFAULT NULL,
  PRIMARY KEY (`token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_admin_auth`
--

LOCK TABLES `tss_admin_auth` WRITE;
/*!40000 ALTER TABLE `tss_admin_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_admin_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_admin_driver_rating`
--

DROP TABLE IF EXISTS `tss_admin_driver_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_admin_driver_rating` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `safety` int(11) DEFAULT NULL,
  `awareness` int(11) DEFAULT NULL,
  `pace` int(11) DEFAULT NULL,
  `track_competence` int(11) DEFAULT NULL,
  `car_control` int(11) DEFAULT NULL,
  `deleted_status` enum('0','1') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `creted_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`rating_id`),
  KEY `driver_id` (`driver_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `tss_admin_driver_rating_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `tss_user` (`user_id`),
  CONSTRAINT `tss_admin_driver_rating_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `tss_group` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_admin_driver_rating`
--

LOCK TABLES `tss_admin_driver_rating` WRITE;
/*!40000 ALTER TABLE `tss_admin_driver_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_admin_driver_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_advertisment`
--

DROP TABLE IF EXISTS `tss_advertisment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_advertisment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `deleted_status` enum('1','0') DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `tss_advertisment_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `tss_admin` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_advertisment`
--

LOCK TABLES `tss_advertisment` WRITE;
/*!40000 ALTER TABLE `tss_advertisment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_advertisment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_alarm`
--

DROP TABLE IF EXISTS `tss_alarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_alarm` (
  `alarm_id` int(11) NOT NULL AUTO_INCREMENT,
  `alarm_event_id` int(11) DEFAULT NULL,
  `alarm_snooze_time` enum('10','20','30') DEFAULT NULL COMMENT '10->before 10 min,20-before 20 min,30->before 30 min',
  `deleted_status` enum('0','1') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `creatd_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`alarm_id`),
  KEY `alarm_event_id` (`alarm_event_id`),
  CONSTRAINT `tss_alarm_ibfk_1` FOREIGN KEY (`alarm_event_id`) REFERENCES `tss_event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_alarm`
--

LOCK TABLES `tss_alarm` WRITE;
/*!40000 ALTER TABLE `tss_alarm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_alarm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_club_auth`
--

DROP TABLE IF EXISTS `tss_club_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_club_auth` (
  `token_id` int(11) NOT NULL AUTO_INCREMENT,
  `club_id` int(11) DEFAULT NULL,
  `auth_token` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expire_token` datetime DEFAULT NULL,
  PRIMARY KEY (`token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_club_auth`
--

LOCK TABLES `tss_club_auth` WRITE;
/*!40000 ALTER TABLE `tss_club_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_club_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_club_detail`
--

DROP TABLE IF EXISTS `tss_club_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_club_detail` (
  `club_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_name` varchar(255) DEFAULT NULL,
  `club_name` varchar(255) DEFAULT NULL,
  `club_email` varchar(96) DEFAULT NULL,
  `club_pin` varchar(50) DEFAULT NULL,
  `club_phone` varchar(20) DEFAULT NULL,
  `club_address` varchar(255) DEFAULT NULL,
  `club_url` varchar(100) DEFAULT NULL,
  `club_image` varchar(255) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `otp_verified` enum('Y','N') DEFAULT 'N',
  `admin_verfied` enum('Y','N') DEFAULT 'N',
  `club_status` enum('active','Inactive') DEFAULT 'active' COMMENT 'Y->verify,N->unverify',
  `deleted_status` enum('1','0') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`club_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_club_detail`
--

LOCK TABLES `tss_club_detail` WRITE;
/*!40000 ALTER TABLE `tss_club_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_club_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_club_driver_rating`
--

DROP TABLE IF EXISTS `tss_club_driver_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_club_driver_rating` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `safety` int(11) DEFAULT NULL,
  `awareness` int(11) DEFAULT NULL,
  `pace` int(11) DEFAULT NULL,
  `track_competence` int(11) DEFAULT NULL,
  `car_control` int(11) DEFAULT NULL,
  `deleted_status` enum('0','1') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `creted_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`rating_id`),
  KEY `driver_id` (`driver_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `tss_club_driver_rating_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `tss_user` (`user_id`),
  CONSTRAINT `tss_club_driver_rating_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `tss_group` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_club_driver_rating`
--

LOCK TABLES `tss_club_driver_rating` WRITE;
/*!40000 ALTER TABLE `tss_club_driver_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_club_driver_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_color`
--

DROP TABLE IF EXISTS `tss_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_type` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `deleted_status` enum('0','1') CHARACTER SET utf8 DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_color`
--

LOCK TABLES `tss_color` WRITE;
/*!40000 ALTER TABLE `tss_color` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_contactus`
--

DROP TABLE IF EXISTS `tss_contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(50) DEFAULT NULL,
  `message` text,
  `deleted_status` enum('1','0') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_contactus`
--

LOCK TABLES `tss_contactus` WRITE;
/*!40000 ALTER TABLE `tss_contactus` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_email_queue`
--

DROP TABLE IF EXISTS `tss_email_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_email_queue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subject` text CHARACTER SET utf8,
  `to` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cc` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `message` text CHARACTER SET utf8,
  `status` enum('pending','sending','sent','failed') CHARACTER SET utf8 DEFAULT 'pending',
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `sendDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_email_queue`
--

LOCK TABLES `tss_email_queue` WRITE;
/*!40000 ALTER TABLE `tss_email_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_email_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_event`
--

DROP TABLE IF EXISTS `tss_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `event_description` text,
  `event_type` varchar(255) DEFAULT NULL,
  `event_instruction` text,
  `event_location` varchar(255) DEFAULT NULL,
  `event_no_of_driver` int(11) DEFAULT NULL,
  `event_no_of_instructor` int(11) DEFAULT NULL,
  `event_roadmap` varchar(255) DEFAULT NULL,
  `club_user_id` int(11) DEFAULT NULL,
  `status` enum('active','Inactive') DEFAULT 'active',
  `deleted_status` enum('1','0') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `club_user_id` (`club_user_id`),
  CONSTRAINT `tss_event_ibfk_1` FOREIGN KEY (`club_user_id`) REFERENCES `tss_club_detail` (`club_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_event`
--

LOCK TABLES `tss_event` WRITE;
/*!40000 ALTER TABLE `tss_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_event_driver`
--

DROP TABLE IF EXISTS `tss_event_driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_event_driver` (
  `driver_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_email` varchar(50) DEFAULT NULL,
  `driver_mobile` varchar(12) DEFAULT NULL,
  `insctructor_id` int(11) DEFAULT NULL,
  `group_name` varchar(20) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '0' COMMENT '0->Unassign,1->assign',
  `deleted_status` enum('1','0') CHARACTER SET utf8 DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_event_driver`
--

LOCK TABLES `tss_event_driver` WRITE;
/*!40000 ALTER TABLE `tss_event_driver` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_event_driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_event_instructor`
--

DROP TABLE IF EXISTS `tss_event_instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_event_instructor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `deleted_status` enum('1','0') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  KEY `instructor_id` (`instructor_id`),
  CONSTRAINT `tss_event_instructor_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `tss_event` (`event_id`),
  CONSTRAINT `tss_event_instructor_ibfk_2` FOREIGN KEY (`instructor_id`) REFERENCES `tss_instructor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_event_instructor`
--

LOCK TABLES `tss_event_instructor` WRITE;
/*!40000 ALTER TABLE `tss_event_instructor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_event_instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_event_time`
--

DROP TABLE IF EXISTS `tss_event_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_event_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `activity_type` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `group_name` varchar(50) DEFAULT NULL,
  `color_name` varchar(50) DEFAULT NULL,
  `status` enum('active','Inactive') CHARACTER SET utf8 DEFAULT 'active',
  `deleted_status` enum('1','0') CHARACTER SET utf8 DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `tss_event_time_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `tss_event` (`event_id`),
  CONSTRAINT `tss_event_time_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `tss_club_detail` (`club_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_event_time`
--

LOCK TABLES `tss_event_time` WRITE;
/*!40000 ALTER TABLE `tss_event_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_event_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_event_type`
--

DROP TABLE IF EXISTS `tss_event_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_event_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_type` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `deleted_status` enum('0','1') CHARACTER SET utf8 DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_event_type`
--

LOCK TABLES `tss_event_type` WRITE;
/*!40000 ALTER TABLE `tss_event_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_event_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_feedback`
--

DROP TABLE IF EXISTS `tss_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_desc` text,
  `deleted_status` enum('1','0') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_feedback`
--

LOCK TABLES `tss_feedback` WRITE;
/*!40000 ALTER TABLE `tss_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_group`
--

DROP TABLE IF EXISTS `tss_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) DEFAULT NULL,
  `group_color` varchar(20) DEFAULT NULL,
  `deleted_status` enum('1','0') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_group`
--

LOCK TABLES `tss_group` WRITE;
/*!40000 ALTER TABLE `tss_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_instructor`
--

DROP TABLE IF EXISTS `tss_instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_instructor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ins_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `deleted_status` enum('0','1') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ins_id` (`ins_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `tss_instructor_ibfk_1` FOREIGN KEY (`ins_id`) REFERENCES `tss_user` (`user_id`),
  CONSTRAINT `tss_instructor_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `tss_group` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_instructor`
--

LOCK TABLES `tss_instructor` WRITE;
/*!40000 ALTER TABLE `tss_instructor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_instructor_driver_rating`
--

DROP TABLE IF EXISTS `tss_instructor_driver_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_instructor_driver_rating` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `safety` int(11) DEFAULT NULL,
  `awareness` int(11) DEFAULT NULL,
  `pace` int(11) DEFAULT NULL,
  `track_competence` int(11) DEFAULT NULL,
  `car_control` int(11) DEFAULT NULL,
  `deleted_status` enum('0','1') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `creted_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`rating_id`),
  KEY `driver_id` (`driver_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `tss_instructor_driver_rating_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `tss_user` (`user_id`),
  CONSTRAINT `tss_instructor_driver_rating_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `tss_group` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_instructor_driver_rating`
--

LOCK TABLES `tss_instructor_driver_rating` WRITE;
/*!40000 ALTER TABLE `tss_instructor_driver_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_instructor_driver_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_instructor_request`
--

DROP TABLE IF EXISTS `tss_instructor_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_instructor_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `status` enum('0','1','2') DEFAULT '0' COMMENT '0->pending,1->approved,2->Reject',
  `deleted_status` enum('0','1') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `tss_instructor_request_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `tss_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_instructor_request`
--

LOCK TABLES `tss_instructor_request` WRITE;
/*!40000 ALTER TABLE `tss_instructor_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_instructor_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_location`
--

DROP TABLE IF EXISTS `tss_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_location` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `deleted_status` enum('0','1') CHARACTER SET utf8 DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_location`
--

LOCK TABLES `tss_location` WRITE;
/*!40000 ALTER TABLE `tss_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_notification`
--

DROP TABLE IF EXISTS `tss_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_notification` (
  `notificationId` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sendStatus` enum('Y','N') DEFAULT 'N',
  `gcmId` text,
  `createdDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `imageUrl` varchar(255) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `deleted` enum('1') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  PRIMARY KEY (`notificationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_notification`
--

LOCK TABLES `tss_notification` WRITE;
/*!40000 ALTER TABLE `tss_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_payment`
--

DROP TABLE IF EXISTS `tss_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_payment` (
  `payement_id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) DEFAULT NULL,
  `amount_paid` int(11) DEFAULT NULL,
  `deleted_status` enum('0','1') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`payement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_payment`
--

LOCK TABLES `tss_payment` WRITE;
/*!40000 ALTER TABLE `tss_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_schedule_notification`
--

DROP TABLE IF EXISTS `tss_schedule_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_schedule_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_type` enum('all','driver','club') DEFAULT 'all',
  `message` varchar(255) DEFAULT NULL,
  `deleted_status` enum('0','1') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_schedule_notification`
--

LOCK TABLES `tss_schedule_notification` WRITE;
/*!40000 ALTER TABLE `tss_schedule_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_schedule_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_subscription_plan`
--

DROP TABLE IF EXISTS `tss_subscription_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_subscription_plan` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(255) DEFAULT NULL,
  `plan_desc` text,
  `plan_validity` int(11) DEFAULT NULL,
  `plan_amount` int(11) DEFAULT NULL,
  `status_deleted` enum('1','0') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_subscription_plan`
--

LOCK TABLES `tss_subscription_plan` WRITE;
/*!40000 ALTER TABLE `tss_subscription_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_subscription_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_type`
--

DROP TABLE IF EXISTS `tss_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `deleted_status` enum('0','1') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='this table used for all project drop down values stored ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_type`
--

LOCK TABLES `tss_type` WRITE;
/*!40000 ALTER TABLE `tss_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_user`
--

DROP TABLE IF EXISTS `tss_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(50) DEFAULT NULL,
  `user_firstname` varchar(50) DEFAULT NULL,
  `user_lastname` varchar(50) DEFAULT NULL,
  `user_mobile` varchar(20) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_pin` varchar(50) DEFAULT NULL,
  `fb_id` varchar(50) DEFAULT NULL,
  `google_id` varchar(50) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `otp_verified` enum('Y','N') DEFAULT 'N' COMMENT 'Y->otpverify,N->unverify',
  `admin_verified` enum('Y','N') DEFAULT 'N' COMMENT 'Y->adminverify,N->unverify',
  `user_status` enum('active','Inactive') DEFAULT 'active',
  `deleted_status` enum('1','0') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_user`
--

LOCK TABLES `tss_user` WRITE;
/*!40000 ALTER TABLE `tss_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_user_auth`
--

DROP TABLE IF EXISTS `tss_user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_user_auth` (
  `token_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `auth_token` varchar(100) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expire_token` datetime DEFAULT NULL,
  PRIMARY KEY (`token_id`),
  KEY `user_Id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_user_auth`
--

LOCK TABLES `tss_user_auth` WRITE;
/*!40000 ALTER TABLE `tss_user_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tss_user_other_details`
--

DROP TABLE IF EXISTS `tss_user_other_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tss_user_other_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_pic` varchar(50) DEFAULT NULL,
  `user_address` text,
  `car_company` varchar(50) DEFAULT NULL,
  `car_model` varchar(50) DEFAULT NULL,
  `car_color` varchar(50) DEFAULT NULL,
  `car_year` varchar(50) DEFAULT NULL,
  `car_modification` text,
  `car_hourse_power` varchar(50) DEFAULT NULL,
  `car_muffer` enum('Y','N') DEFAULT 'N',
  `deleted_status` enum('0','1') DEFAULT '1' COMMENT '0->Deleted, 1->Not Deleted',
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `tss_user_other_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tss_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tss_user_other_details`
--

LOCK TABLES `tss_user_other_details` WRITE;
/*!40000 ALTER TABLE `tss_user_other_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tss_user_other_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-04 19:37:37
