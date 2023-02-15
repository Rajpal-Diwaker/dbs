-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: webrtc
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
-- Current Database: `webrtc`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `webrtc` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `webrtc`;

--
-- Table structure for table `notif`
--

DROP TABLE IF EXISTS `notif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notif_msg` varchar(255) DEFAULT NULL,
  `notif_time` datetime DEFAULT NULL,
  `notif_repeat` int(1) DEFAULT NULL,
  `notif_loop` int(1) DEFAULT NULL,
  `publish_date` timestamp NULL DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notif`
--

LOCK TABLES `notif` WRITE;
/*!40000 ALTER TABLE `notif` DISABLE KEYS */;
INSERT INTO `notif` VALUES (1,'hello','2020-04-09 18:29:34',1,1,'2020-04-09 12:59:11','rajpal'),(2,'chllo','2020-04-09 18:29:38',1,2,'2020-04-09 12:59:14','sonu'),(4,'Hello Rajpal Hiow can i Helip u','2020-04-09 18:50:52',3,0,'2020-04-09 13:17:52','donald'),(5,'Hi Rajpal Diwaker Kese ho ','2020-04-10 10:01:34',1,0,'2020-04-10 04:30:34','admin'),(6,'Hi Rajpal Diwaker Kese ho\r\nHi Rajpal Diwaker Kese ho\r\nHi Rajpal Diwaker Kese ho\r\nHi Rajpal Diwaker Kese ho\r\nHi Rajpal Diwaker Kese ho','2020-04-10 10:02:56',1,0,'2020-04-10 04:31:56','donald'),(7,'ssssssssssss','2020-04-10 10:02:56',1,0,'2020-04-10 04:31:56','donald'),(8,'','2020-04-10 10:01:06',1,1,NULL,'ronaldo'),(9,'ddddddddddddddddd','2020-04-10 10:01:12',1,1,NULL,'ronaldo'),(10,'hello','2020-04-10 10:24:03',1,0,NULL,'admin'),(11,'hello','2020-04-10 10:24:06',1,0,NULL,'admin'),(12,'','2020-04-10 10:24:38',1,0,NULL,'admin'),(13,'xsdsssssssssssssss','2020-04-10 10:24:46',1,1,NULL,'ronaldo'),(14,'cccccccccccccccccccccccccccc','2020-04-10 10:29:01',1,0,'2020-04-10 04:58:01','donald');
/*!40000 ALTER TABLE `notif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_personal_chat`
--

DROP TABLE IF EXISTS `tbl_personal_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_personal_chat` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `files` varchar(255) DEFAULT NULL,
  `type` varchar(35) DEFAULT NULL,
  `read_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `deleted` enum('Y','N') DEFAULT 'N',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`chat_id`),
  KEY `from_user_Id` (`from_user_id`),
  KEY `to_user_Id` (`to_user_id`),
  CONSTRAINT `tbl_personal_chat_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `tbl_user` (`user_id`),
  CONSTRAINT `tbl_personal_chat_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `tbl_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=839 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_personal_chat`
--

LOCK TABLES `tbl_personal_chat` WRITE;
/*!40000 ALTER TABLE `tbl_personal_chat` DISABLE KEYS */;
INSERT INTO `tbl_personal_chat` VALUES (819,2,3,'dd',NULL,NULL,'N','N','2020-01-17 04:07:11'),(820,3,2,'dd',NULL,NULL,'N','N','2020-01-17 04:07:15'),(821,3,2,'dd',NULL,NULL,'N','N','2020-01-17 04:09:11'),(822,2,3,'dd',NULL,NULL,'N','N','2020-01-17 04:09:13'),(823,3,4,'Codeucbe',NULL,NULL,'N','N','2020-01-23 08:51:36'),(824,4,3,'Techugo',NULL,NULL,'N','N','2020-01-23 08:51:48'),(825,3,4,'Codeucbe',NULL,NULL,'N','N','2020-01-23 08:56:32'),(826,4,3,'undefined',NULL,NULL,'N','N','2020-01-23 09:00:55'),(827,3,4,'undefined',NULL,NULL,'N','N','2020-01-23 10:01:38'),(828,3,4,'undefined',NULL,NULL,'N','N','2020-01-23 10:09:30'),(829,4,3,'undefined',NULL,NULL,'N','N','2020-01-23 10:10:54'),(830,5,2,'undefined',NULL,NULL,'N','N','2020-01-24 03:32:26'),(831,5,2,'undefined',NULL,NULL,'N','N','2020-01-24 03:33:01'),(832,2,3,'undefined',NULL,NULL,'N','N','2020-01-24 03:33:12'),(833,3,2,'undefined',NULL,NULL,'N','N','2020-01-24 03:36:49'),(834,2,3,'undefined',NULL,NULL,'N','N','2020-01-24 03:37:16'),(835,5,2,'undefined',NULL,NULL,'N','N','2020-01-24 03:37:33'),(836,5,3,'undefined',NULL,NULL,'N','N','2020-01-24 03:37:49'),(837,3,5,'undefined',NULL,NULL,'N','N','2020-01-24 03:38:01'),(838,2,3,'undefined',NULL,NULL,'N','N','2020-01-24 05:19:16');
/*!40000 ALTER TABLE `tbl_personal_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_react`
--

DROP TABLE IF EXISTS `tbl_react`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_react` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `error` varchar(100) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `mailSent` varchar(100) DEFAULT NULL,
  `msg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_react`
--

LOCK TABLES `tbl_react` WRITE;
/*!40000 ALTER TABLE `tbl_react` DISABLE KEYS */;
INSERT INTO `tbl_react` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,'0',NULL);
/*!40000 ALTER TABLE `tbl_react` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `user_type` enum('admin','user') DEFAULT 'user',
  `email_id` varchar(50) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gcm_id` varchar(255) DEFAULT NULL,
  `device_type` enum('A','I') DEFAULT NULL,
  `deleted` enum('Y','N') DEFAULT 'N' COMMENT 'Y->deleted Record,N->active Record',
  `socket_id` varchar(40) NOT NULL,
  `online_status` varchar(35) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `deleted` (`deleted`),
  KEY `created_by` (`created_by`),
  FULLTEXT KEY `first_name` (`first_name`),
  FULLTEXT KEY `last_name` (`last_name`),
  FULLTEXT KEY `email_id` (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'Raj','Pal','admin','admin@gmail.com','+91-9667472268','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','Moee2kqjKC84DxrLAAAE','online',NULL,'2019-09-29 09:03:47',1,'2019-10-25 05:42:58'),(2,'Akirti','Techugo','user','test.techugo@gmail.com','+91-8630943809','e10adc3949ba59abbe56e057f20f883e','','','N','','offline',NULL,'2019-10-03 06:04:46',1,'2019-10-25 05:42:58'),(3,'QA','Tester','user','deep@techugo.com','+91-8383838383','e10adc3949ba59abbe56e057f20f883e','','','N','','offline',NULL,'2019-10-04 11:45:54',3,'2019-11-18 10:55:44'),(4,'Abdur','Rehman','user','abrehmangaur@live.com','+91-9898989898','d41d8cd98f00b204e9800998ecf8427e',NULL,NULL,'N','PPXQsW3iqiEdy4zHAAAF','online',NULL,'2019-10-08 06:54:39',4,'2019-11-18 09:48:33'),(5,'Vivek','Indra','user','vivek@techugo.com','+91-9334383027','e10adc3949ba59abbe56e057f20f883e','eplnn-QgE4E:APA91bF2sXK9SDxspiiMhE3MDdLlHV_94GCsi0N4bU0rv9pg9vOIS7oU59rYtc6hBYbVxdPp7a1xiUYyUqy7kju6lMeS0TPMfHwRUwPr3q9pjBoXTAg95T9eWDlOrX1pwO-5e9adQ4eB','I','N','','offline',NULL,'2019-10-09 06:20:37',5,'2019-11-09 12:42:42'),(6,'Raj','Pal','user','rajpalpy@gmail.com','+91-1231231231','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-10-12 10:41:10',6,'2019-11-18 10:12:41'),(7,'Test1','Test2','user','test1@gmail.com','+91-1212121212','e10adc3949ba59abbe56e057f20f883e','dJi-Fzmc0vw:APA91bGhfQhei2hbcOrc4v_N7nw_UCiIO2_XTgbQ3MIlvoVHLEiaL6E_oCNMiViFZMQw9rmZwlaLxF2yJdJXD4CAOPUI8Bixh_98UnI3Ngoxq-JIWvn_8fILQdyEh9LMsn7s8Nu2sjXD','A','N','','offline',NULL,'2019-10-25 03:45:53',7,'2019-11-14 12:34:29'),(8,NULL,NULL,'user',NULL,'+91-8810537309','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-10-25 04:37:10',NULL,NULL),(9,'Brandon','Pickett','user','brandonpickett@msn.com ','+1-6138780070','d0d2b883ffe11676af7e678cf45a36fa','dgeDGhHIT-s:APA91bHUwK3fEuWlOz4yMQQxF2PSQH4NBEQLTTVDCXnXuOz7kBAlqhqd7e9_g6b0P5sQa1ICiAhj5_-35OBztSC9VRRaXx8qBc0WugytcikPvHMwnnxF98AF8SOxrhFl69zTpDXtDae5','A','N','','offline',NULL,'2019-11-01 02:14:54',9,'2019-11-01 08:29:28'),(10,NULL,NULL,'user',NULL,'+1-6134102955','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-01 02:31:35',NULL,NULL),(11,NULL,NULL,'user',NULL,'+1-123456789','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-01 05:53:49',NULL,NULL),(12,NULL,NULL,'user',NULL,'+91-9582089810','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-01 06:29:18',NULL,NULL),(13,'Lucky','Tester','user','test.techugo@gmail.com','+91-837584866823','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-01 06:34:43',13,'2019-11-01 12:10:30'),(14,'Harry','Harjot','user','harjot.jot37@gmail.com','+91-83758486683','e10adc3949ba59abbe56e057f20f883e','','','N','','offline',NULL,'2019-11-01 07:01:41',14,'2019-11-01 12:34:05'),(15,NULL,NULL,'user',NULL,'+91-8375848668','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-01 10:39:26',NULL,NULL),(16,NULL,NULL,'user',NULL,'+1-7669212151','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-01 11:14:16',NULL,NULL),(17,NULL,NULL,'user',NULL,'+1-8787878787','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-01 11:16:09',NULL,NULL),(18,NULL,NULL,'user',NULL,'+1-7669212141','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-01 11:24:22',NULL,NULL),(19,NULL,NULL,'user',NULL,'+1-787787877887','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-01 11:29:26',NULL,NULL),(20,NULL,NULL,'user',NULL,'+1-7878787878','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-01 11:32:56',NULL,NULL),(21,NULL,NULL,'user',NULL,'+1-78787878787','e10adc3949ba59abbe56e057f20f883e','','','N','','offline',NULL,'2019-11-01 11:35:41',NULL,NULL),(22,NULL,NULL,'user',NULL,'+1-89898989898','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-01 11:36:57',NULL,NULL),(23,NULL,NULL,'user',NULL,'+1-12345678','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-01 11:38:40',NULL,NULL),(24,NULL,NULL,'user',NULL,'+1-55555556555','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-01 11:39:11',NULL,NULL),(25,NULL,NULL,'user',NULL,'+919998989898','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-01 11:42:17',NULL,NULL),(26,NULL,NULL,'user',NULL,'+1-9898989898','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-01 11:43:14',NULL,NULL),(27,NULL,NULL,'user',NULL,'+1-78789789789','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-01 11:48:55',NULL,NULL),(28,NULL,NULL,'user',NULL,'+1-7676767676','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-01 11:50:08',NULL,NULL),(29,NULL,NULL,'user',NULL,'+1-78778787878','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-01 11:52:10',NULL,NULL),(30,NULL,NULL,'user',NULL,'+1-6363636363','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-01 11:53:10',NULL,NULL),(31,'Shah','Altamash','user','shahaltamash93@gmail.com','+91-9582588029','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'Y','','offline',NULL,'2019-11-02 05:27:10',31,'2019-11-07 09:34:56'),(32,NULL,NULL,'user',NULL,'+1-45678909876543','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-04 03:30:30',NULL,NULL),(33,NULL,NULL,'user',NULL,'+1-9765434567','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-04 03:40:49',NULL,NULL),(34,NULL,NULL,'user',NULL,'+1-97654345678','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-04 03:41:09',NULL,NULL),(35,NULL,NULL,'user',NULL,'+91-7428612346','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'N','','offline',NULL,'2019-11-05 03:58:56',NULL,NULL),(36,NULL,NULL,'user',NULL,'+91-7669212151','e10adc3949ba59abbe56e057f20f883e','c7qsYoO0_JI:APA91bEm9i17-yJfADzOcGliWdZefk2v_YOhq_4U_TyhMGzIugkzNK-Geypv9gNtWzmQK4GGUo_mjjGxDv6xSnj4n6VAppmHX1J1ZWJmBKP2ZAIWPOz4b5NmZCNFS4jvot9BVEi0k9xe','A','N','','offline',NULL,'2019-11-05 11:13:35',NULL,NULL),(37,NULL,NULL,'user',NULL,'+91-9711340700',NULL,NULL,NULL,'N','','offline',NULL,'2019-11-07 11:07:53',NULL,NULL);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_image`
--

DROP TABLE IF EXISTS `tbl_user_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `images` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `verify_pic` enum('Y','N','S') DEFAULT 'N',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `tbl_user_image_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_image`
--

LOCK TABLES `tbl_user_image` WRITE;
/*!40000 ALTER TABLE `tbl_user_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_user_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `NAMEs` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','123',NULL),('donald','123',NULL),('ronaldo','123',NULL),('messi','123',NULL);
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

-- Dump completed on 2020-09-04 19:37:55
