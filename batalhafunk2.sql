-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: batalhafunk2
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
-- Current Database: `batalhafunk2`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `batalhafunk2` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `batalhafunk2`;

--
-- Table structure for table `add_times`
--

DROP TABLE IF EXISTS `add_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `add_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `song_time` int(11) NOT NULL,
  `battle_time` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_times`
--

LOCK TABLES `add_times` WRITE;
/*!40000 ALTER TABLE `add_times` DISABLE KEYS */;
INSERT INTO `add_times` VALUES (1,2,2,'2019-05-22 09:31:10','2019-06-19 11:56:49');
/*!40000 ALTER TABLE `add_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `description` text,
  `image` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
INSERT INTO `admin_notifications` VALUES (1,2,'test','test again','http://54.207.50.247/batalhafunk/img/notification/1575262758.png','2019-12-02 04:59:18','0000-00-00 00:00:00'),(2,3,'test','test again','http://54.207.50.247/batalhafunk/img/notification/1575262758.png','2019-12-02 04:59:18','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `type` int(11) NOT NULL COMMENT '0=admin,1=superadmin,2=subadmin',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'BatalhaFUNK','batalhafunk@gmail.com','c087489579242a3165107b9702801a66b8eaf031',1,0,'2018-10-12 11:39:36','2018-11-17 07:37:05'),(2,'superadmin','superadmin@gmail.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',1,1,'2018-11-17 07:36:54','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisement_rewards`
--

DROP TABLE IF EXISTS `advertisement_rewards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertisement_rewards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adv_reward` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisement_rewards`
--

LOCK TABLES `advertisement_rewards` WRITE;
/*!40000 ALTER TABLE `advertisement_rewards` DISABLE KEYS */;
INSERT INTO `advertisement_rewards` VALUES (1,10,'2019-04-04 19:13:38','2019-04-04 14:00:27');
/*!40000 ALTER TABLE `advertisement_rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisements`
--

DROP TABLE IF EXISTS `advertisements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL COMMENT '1=brand,2=music,3=video',
  `brand_name` varchar(255) DEFAULT NULL,
  `brand_image` varchar(255) DEFAULT NULL,
  `post_image` varchar(255) DEFAULT NULL,
  `description` text,
  `music_id` int(1) NOT NULL DEFAULT '0',
  `music_name` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `video_name` varchar(255) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `video_image` varchar(255) DEFAULT NULL,
  `video_thumb` varchar(255) DEFAULT NULL,
  `view_count` int(11) NOT NULL,
  `top_value` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisements`
--

LOCK TABLES `advertisements` WRITE;
/*!40000 ALTER TABLE `advertisements` DISABLE KEYS */;
INSERT INTO `advertisements` VALUES (2,1,'End game','1556533967.jpeg','1556533967.jpeg','Just for testing...',0,NULL,NULL,NULL,NULL,NULL,NULL,28,2,'2019-04-29 10:32:47','2020-05-03 11:30:27'),(3,1,'Rickshaw','1557188838.JPG','1557188838.JPG','Just for testing...',0,NULL,NULL,NULL,NULL,NULL,NULL,20,1,'2019-05-07 00:27:18','2020-05-11 19:14:00');
/*!40000 ALTER TABLE `advertisements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batal_requests`
--

DROP TABLE IF EXISTS `batal_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batal_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_of_request_batal` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batal_requests`
--

LOCK TABLES `batal_requests` WRITE;
/*!40000 ALTER TABLE `batal_requests` DISABLE KEYS */;
INSERT INTO `batal_requests` VALUES (1,15,'2019-04-26 07:21:24','2019-07-02 18:29:42');
/*!40000 ALTER TABLE `batal_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batals`
--

DROP TABLE IF EXISTS `batals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beat_file` varchar(255) DEFAULT NULL,
  `batal_file` varchar(255) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `challenge_to` int(11) NOT NULL DEFAULT '0',
  `name2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batal_file2` varchar(255) DEFAULT NULL,
  `type` int(1) DEFAULT '0' COMMENT '0=challenge,1=batal,2=Decline',
  `round` int(11) NOT NULL DEFAULT '1',
  `top_value` int(11) NOT NULL DEFAULT '0',
  `challenge_status` int(1) NOT NULL DEFAULT '0' COMMENT '0=request,1=accept,2=Decline',
  `read_status` int(1) NOT NULL DEFAULT '0' COMMENT '0=unread,1=read',
  `batal_status` int(1) NOT NULL DEFAULT '0' COMMENT '0=undeclare,1=declare,2=tie',
  `winner_id` int(11) NOT NULL,
  `batal_date` date NOT NULL,
  `accepted_date` datetime NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batals`
--

LOCK TABLES `batals` WRITE;
/*!40000 ALTER TABLE `batals` DISABLE KEYS */;
INSERT INTO `batals` VALUES (1,'http://54.207.50.247/batalhafunk/img/audio/5d41fb7ec9ea4.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5deaaadd6ca21.mp3','a famosa yasmim',13,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-12-06 19:24:20','2019-12-06 19:24:20'),(2,'http://54.207.50.247/batalhafunk/img/audio/5d41fb7ec9ea4.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5deaab8ac491d.mp3','nome',13,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-12-06 19:27:09','2019-12-06 19:27:09'),(3,'http://54.207.50.247/batalhafunk/img/audio/5d8132a938ced.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5deaac37df152.mp3','rebola mulher',13,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-12-06 19:30:03','2019-12-06 19:30:03'),(4,'http://54.207.50.247/batalhafunk/img/audio/5d8132a938ced.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5deaac55d3263.mp3','rebola mulher',13,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-12-06 19:30:32','2019-12-06 19:30:32'),(5,'http://54.207.50.247/batalhafunk/img/audio/5d8132a938ced.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5deaac722383e.mp3','rebola mulher',13,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-12-06 19:31:01','2019-12-06 19:31:01'),(7,'http://54.207.50.247/batalhafunk/img/audio/5d8b55e0026d9.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5df97eb5acccd.mp3','teste',27,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-12-18 01:19:56','2019-12-18 01:19:56'),(8,'http://54.207.50.247/batalhafunk/img/audio/5d41fa62ec204.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5dfb35d1f1161.mp3','ghhh',9,7,'ghj','http://54.207.50.247/batalhafunk/img/batal/batal_file/5dfb364def288.mp3',1,1,11,1,1,0,0,'2019-12-19','2019-12-19 08:35:29','2019-12-19 08:33:25','2020-05-08 23:38:27'),(9,'http://54.207.50.247/batalhafunk/img/audio/5d8b55e0026d9.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5dfc2d157b7b8.mp3','@ofc_rb\ndesse e sobi',27,7,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-12-20 02:08:28','2019-12-20 02:08:43'),(10,'http://54.207.50.247/batalhafunk/img/audio/5d483116a93f2.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5dfec8d067d77.mp3','sentado',27,7,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-12-22 01:37:25','2019-12-22 01:37:35'),(11,'http://54.207.50.247/batalhafunk/img/audio/5d517b1bdf772.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5e1c8b1649ec2.mp3','mafu',33,14,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-01-13 15:22:04','2020-01-13 15:22:04'),(12,'http://54.207.50.247/batalhafunk/img/audio/5d517b1bdf772.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5e34764fbf673.mp3','bailão hoje e escola',37,36,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-01-31 18:47:48','2020-01-31 18:47:48'),(13,'http://54.207.50.247/batalhafunk/img/audio/5d41fa62ec204.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5e60a0ad8e152.mp3','Myfunk',40,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-03-05 06:48:17','2020-03-05 06:48:17'),(14,'http://54.207.50.247/batalhafunk/img/audio/5d4830e7f3215.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5e617d5168c3a.mp3','mc heric',42,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-03-05 22:29:44','2020-03-05 22:29:44'),(15,'http://54.207.50.247/batalhafunk/img/audio/5d41fa62ec204.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5e6185068ce28.mp3','batalha',42,7,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-03-05 23:02:37','2020-03-05 23:02:38'),(16,'http://54.207.50.247/batalhafunk/img/audio/5d4830e7f3215.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5e63c33e6c8d8.mp3','mc heric',42,7,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-03-07 15:52:35','2020-03-07 15:52:44'),(17,'http://54.207.50.247/batalhafunk/img/audio/5d8b55e0026d9.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5e63c53b02f62.mp3','m heric',42,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-03-07 16:01:03','2020-03-07 16:01:03'),(18,'http://54.207.50.247/batalhafunk/img/audio/5d48317e7b910.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5e63da4d6956a.mp3','mc heric',42,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-03-07 17:30:58','2020-03-07 17:30:58'),(19,'http://54.207.50.247/batalhafunk/img/audio/5d4830e7f3215.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5e7e43d8d4394.mp3','te taco tudo',44,14,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-03-27 18:20:15','2020-03-27 18:20:15'),(20,'http://54.207.50.247/batalhafunk/img/audio/5d5455aa06152.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5e7e44fe5e29b.mp3','toma com vontade',44,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-03-27 18:25:09','2020-03-27 18:25:09'),(21,'http://54.207.50.247/batalhafunk/img/audio/5d8b55e0026d9.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5ea1a8eb5bb6e.mp3','ugvg',67,6,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-04-23 14:40:46','2020-04-23 14:40:46'),(22,'http://54.207.50.247/batalhafunk/img/audio/5d8b55e0026d9.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5eaeacaf06eac.mp3','test',84,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-05-03 11:36:18','2020-05-03 11:36:18'),(23,'http://54.207.50.247/batalhafunk/img/audio/5d8132a938ced.mp3','http://54.207.50.247/batalhafunk/img/batal/batal_file/5eaeaf8e42adf.mp3','hi',84,7,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-05-03 11:48:34','2020-05-03 11:48:34');
/*!40000 ALTER TABLE `batals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beat_lists`
--

DROP TABLE IF EXISTS `beat_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beat_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `audio_file` varchar(255) DEFAULT NULL,
  `audio_image` varchar(255) DEFAULT NULL,
  `song_name` varchar(255) DEFAULT NULL,
  `artist_name` varchar(255) DEFAULT NULL,
  `type` int(1) NOT NULL COMMENT '0=free,1=premium,2=purchase',
  `music_type` int(1) NOT NULL COMMENT '0=batal,1=music',
  `price` varchar(255) DEFAULT NULL,
  `view_count` int(11) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0=inactive,1=active',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beat_lists`
--

LOCK TABLES `beat_lists` WRITE;
/*!40000 ALTER TABLE `beat_lists` DISABLE KEYS */;
INSERT INTO `beat_lists` VALUES (26,'5c541d92bf612.mp3','1549016476.jpg','Bonde','BatalhaFUNK',1,1,'50',6,1,'2019-02-01 10:21:16','2019-09-26 06:51:06'),(27,'5c541e098491a.mp3','1549016595.jpg','Sentadinha','BatalhaFUNK',1,1,'63',1,1,'2019-02-01 10:23:15','2019-07-20 17:33:57'),(28,'5c541e8eeb95d.mp3','1549016728.jpg','Start na Hornet','BatalhaFUNK',1,1,'41',1,1,'2019-02-01 10:25:28','2019-07-20 17:33:32'),(29,'5c541ee013ab6.mp3','1549016809.jpg','Tango Funk','BatalhaFUNK',0,1,NULL,41,1,'2019-02-01 10:26:49','2020-01-04 17:33:30'),(33,'5cca7ef342827.mp3','1556774652.png','Game over','BatalhaFUNK',0,1,NULL,13,1,'2019-05-02 05:24:12','2020-05-03 11:32:01'),(47,'5d41fa62ec204.mp3','1564605030.jpg','Game','DJ Seduty',0,0,NULL,17,1,'2019-07-31 20:30:30','2020-03-05 23:02:37'),(48,'5d41fb132cf95.mp3','1564605206.jpg','Box','DJ Seduty',0,0,NULL,5,1,'2019-07-31 20:33:26','2019-10-01 19:41:12'),(49,'5d41fb7ec9ea4.mp3','1564605314.jpg','Neurotico','DJ Seduty',0,0,NULL,3,1,'2019-07-31 20:35:14','2019-12-06 19:40:33'),(62,'5d4830e7f3215.mp3','1565012203.jpg','Mandelão','DJ Lucas',0,0,NULL,5,1,'2019-08-05 13:36:43','2020-03-27 18:20:15'),(63,'5d483116a93f2.mp3','1565012249.jpg','Bem bolado','DJ Lucas',0,0,NULL,1,1,'2019-08-05 13:37:29','2019-12-22 01:37:25'),(64,'5d48313f2c9fc.mp3','1565012290.jpg','Trem bala','DJ Lucas',0,0,NULL,1,1,'2019-08-05 13:38:10','2019-08-08 22:25:01'),(65,'5d48317e7b910.mp3','1565012353.jpg','Estilo','DJ Lucas',0,0,NULL,1,1,'2019-08-05 13:39:13','2020-03-07 17:30:58'),(66,'5d483215b0931.mp3','1565012505.jpg','Maffia','BatalhaFUNK',0,0,NULL,0,1,'2019-08-05 13:41:45','2019-08-05 13:41:45'),(67,'5d4832736cf60.mp3','1565012599.jpg','Tenso','BatalhaFUNK',0,0,NULL,0,1,'2019-08-05 13:43:19','2019-08-05 13:43:19'),(68,'5d4832b211fa8.mp3','1565012660.png','Batidão','BatalhaFUNK',0,0,NULL,0,1,'2019-08-05 13:44:20','2019-08-05 13:44:20'),(69,'5d4832edd8547.mp3','1565012721.jpg','Acelera','BatalhaFUNK',0,0,NULL,1,1,'2019-08-05 13:45:21','2019-10-01 19:22:54'),(70,'5d48339638db6.mp3','1565012900.jpg','Bem bolado','DJ Lucas',0,1,NULL,26,1,'2019-08-05 13:48:20','2020-03-05 22:44:18'),(71,'5d51759084e09.mp3','1565619603.jpeg','Megatron','Rei dos Beats',0,0,NULL,1,1,'2019-08-12 14:20:03','2019-09-18 16:55:24'),(72,'5d517a575f188.mp3','1565620836.jpeg','Made in Rio 2019','Rei dos Beats',0,1,NULL,10,1,'2019-08-12 14:40:36','2020-03-05 06:49:34'),(73,'5d517a88c5efe.mp3','1565620875.jpeg','Made in Rio 2019','Rei dos Beats',0,0,NULL,0,1,'2019-08-12 14:41:15','2019-08-12 14:41:15'),(74,'5d517b1bdf772.mp3','1565621022.jpeg','Rasteiro','Rei dos Beats',0,0,NULL,4,1,'2019-08-12 14:43:42','2020-01-31 18:47:48'),(75,'5d517ba682425.mp3','1565621171.jpeg','Rasteiro','Rei dos Beats',0,1,NULL,26,1,'2019-08-12 14:46:11','2020-01-27 00:13:57'),(76,'5d5455aa06152.mp3','1565808045.jpg','Batidao Arabia','Dj Teoh',0,0,NULL,1,1,'2019-08-14 18:40:45','2020-03-27 18:25:09'),(77,'5d5bbad991542.mp3','1566292710.png','Erik Teste','Erik',0,1,NULL,10,1,'2019-08-20 09:18:30','2020-04-23 14:40:04'),(78,'5d778cd5891a2.mp3','1568115928.jpg','BEATZ','Arijit',1,0,'10',0,1,'2019-09-10 11:45:28','2019-09-10 11:45:28'),(79,'5d8132a938ced.mp3','1568748204.jpg','Pam Pam','DJ Lucas',0,0,NULL,7,1,'2019-09-17 19:23:24','2020-05-03 11:48:34'),(80,'5d8b55e0026d9.mp3','1569412579.jpg','Vai quebrando','DJ Swed',0,0,NULL,7,1,'2019-09-25 11:56:19','2020-05-03 11:36:18');
/*!40000 ALTER TABLE `beat_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_commentbatals`
--

DROP TABLE IF EXISTS `block_commentbatals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_commentbatals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `block_by` int(11) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0=block,1=unblock',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_commentbatals`
--

LOCK TABLES `block_commentbatals` WRITE;
/*!40000 ALTER TABLE `block_commentbatals` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_commentbatals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_comments`
--

DROP TABLE IF EXISTS `block_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `block_by` int(11) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0=block,1=unblock',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_comments`
--

LOCK TABLES `block_comments` WRITE;
/*!40000 ALTER TABLE `block_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block_users`
--

DROP TABLE IF EXISTS `block_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block_by` int(11) NOT NULL,
  `block_to` int(11) NOT NULL,
  `status` int(1) NOT NULL COMMENT '1=block,0=unblock',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_users`
--

LOCK TABLES `block_users` WRITE;
/*!40000 ALTER TABLE `block_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `block_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `challenge_users`
--

DROP TABLE IF EXISTS `challenge_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `challenge_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge_by` int(11) NOT NULL,
  `challenge_to` int(11) NOT NULL,
  `batal_id` int(11) NOT NULL,
  `beat_url` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0=request,1=accept,2=reject',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challenge_users`
--

LOCK TABLES `challenge_users` WRITE;
/*!40000 ALTER TABLE `challenge_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `challenge_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `read_status` int(1) NOT NULL DEFAULT '1' COMMENT '1=unread,0=read',
  `chat_status` enum('active','inactive') CHARACTER SET latin1 NOT NULL,
  `date_added` datetime NOT NULL,
  `message` text CHARACTER SET utf8mb4,
  `image` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `media` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `delete_chat_for` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL,
  `block_status` int(1) NOT NULL DEFAULT '0' COMMENT '0=unblock,1=block',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
INSERT INTO `chats` VALUES (1,7,9,0,'active','2019-12-09 06:18:34','testing chat',NULL,NULL,0,'2019-12-09 06:18:34','2019-12-19 10:47:20',0,0),(2,6,9,0,'active','2019-12-09 06:24:41','hjj',NULL,NULL,0,'2019-12-09 06:24:41','2019-12-09 06:24:41',0,0),(3,42,7,0,'active','2020-03-05 23:03:44','blz bora pra batalha',NULL,NULL,0,'2020-03-05 23:03:44','2020-03-07 15:55:59',0,0),(4,67,6,0,'active','2020-04-23 14:40:23','teste',NULL,NULL,0,'2020-04-23 14:40:23','2020-04-23 14:40:27',0,0),(5,7,89,0,'active','2020-05-11 17:25:09','hey',NULL,NULL,0,'2020-05-11 17:25:09','2020-05-11 17:25:14',0,0);
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_lists`
--

DROP TABLE IF EXISTS `coin_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(255) DEFAULT NULL,
  `coin` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_lists`
--

LOCK TABLES `coin_lists` WRITE;
/*!40000 ALTER TABLE `coin_lists` DISABLE KEYS */;
INSERT INTO `coin_lists` VALUES (1,'150','50','2020-04-16 12:48:14','2020-04-16 12:48:14'),(2,'200','100','2020-04-16 12:57:18','2020-04-16 12:57:18'),(3,'250','150','2020-04-16 12:57:45','2020-04-16 12:57:45'),(4,'300','200','2020-04-16 12:58:32','2020-04-16 12:58:32'),(5,'350','250','2020-04-16 12:59:05','2020-04-16 12:59:05'),(6,'400','300','2020-04-16 12:59:31','2020-04-16 12:59:31');
/*!40000 ALTER TABLE `coin_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_lists_16Apr20`
--

DROP TABLE IF EXISTS `coin_lists_16Apr20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_lists_16Apr20` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(255) DEFAULT NULL,
  `coin` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_lists_16Apr20`
--

LOCK TABLES `coin_lists_16Apr20` WRITE;
/*!40000 ALTER TABLE `coin_lists_16Apr20` DISABLE KEYS */;
INSERT INTO `coin_lists_16Apr20` VALUES (1,'1','50','2018-11-29 16:46:00','0000-00-00 00:00:00'),(2,'2','100','2018-11-29 16:46:00','0000-00-00 00:00:00'),(3,'3','300','2018-11-29 16:46:56','2018-12-26 10:01:21'),(4,'4','500','2018-11-29 16:46:56','2018-11-29 16:48:17'),(5,'5','1000','2018-11-29 16:46:56','2018-11-29 16:48:21'),(6,'10','100000','2019-02-23 08:01:50','2019-02-23 08:01:50'),(10,'1599','159999','2019-02-27 17:59:51','2019-02-27 18:01:21');
/*!40000 ALTER TABLE `coin_lists_16Apr20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coins`
--

DROP TABLE IF EXISTS `coins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(200) DEFAULT NULL,
  `coin_type` int(1) NOT NULL,
  `coin_value` int(11) NOT NULL,
  `frequency` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coins`
--

LOCK TABLES `coins` WRITE;
/*!40000 ALTER TABLE `coins` DISABLE KEYS */;
INSERT INTO `coins` VALUES (1,'DownloadApp',1,5,1,'2018-11-29 13:18:53','2019-06-29 10:01:16'),(2,'Login',2,5,1,'2018-11-29 13:23:08','2019-06-29 10:04:11'),(3,'LikeBatal',3,5,4,'2018-11-29 13:23:21','2019-06-29 10:45:33'),(4,'Invite',4,20,0,'2018-11-29 13:23:35','2019-06-29 10:07:51'),(5,'Review',5,20,1,'2018-11-29 13:23:51','2019-06-29 10:08:02'),(6,'TagAdd',6,10,2,'2018-11-29 13:24:01','2019-06-29 10:44:50'),(7,'WinBatal',7,150,1,'2019-05-01 06:22:34','2019-06-29 10:08:41');
/*!40000 ALTER TABLE `coins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_advertisements`
--

DROP TABLE IF EXISTS `comment_advertisements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_advertisements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `tag_user_id` varchar(255) DEFAULT NULL,
  `adv_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `status` int(1) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_advertisements`
--

LOCK TABLES `comment_advertisements` WRITE;
/*!40000 ALTER TABLE `comment_advertisements` DISABLE KEYS */;
INSERT INTO `comment_advertisements` VALUES (1,0,NULL,0,'',0,'2019-12-06 19:34:16','2019-12-06 19:34:16'),(2,84,NULL,3,'hii',0,'2020-05-03 11:33:28','2020-05-03 11:33:28');
/*!40000 ALTER TABLE `comment_advertisements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_batals`
--

DROP TABLE IF EXISTS `comment_batals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_batals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `tag_user_id` varchar(255) NOT NULL,
  `batal_id` int(11) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_batals`
--

LOCK TABLES `comment_batals` WRITE;
/*!40000 ALTER TABLE `comment_batals` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_batals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_blockusers`
--

DROP TABLE IF EXISTS `comment_blockusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_blockusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block_by` int(11) NOT NULL,
  `block_to` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_blockusers`
--

LOCK TABLES `comment_blockusers` WRITE;
/*!40000 ALTER TABLE `comment_blockusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_blockusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_musics`
--

DROP TABLE IF EXISTS `comment_musics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_musics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `tag_user_id` varchar(255) DEFAULT NULL,
  `music_id` int(11) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_musics`
--

LOCK TABLES `comment_musics` WRITE;
/*!40000 ALTER TABLE `comment_musics` DISABLE KEYS */;
INSERT INTO `comment_musics` VALUES (1,7,NULL,1,'Help',0,'2019-12-06 04:41:00','2019-12-06 04:41:00'),(3,9,NULL,1,'bebeb',0,'2020-02-14 12:20:45','2020-02-14 12:20:45'),(4,9,NULL,1,'dhhdhr',0,'2020-02-14 12:20:53','2020-02-14 12:20:53'),(5,90,NULL,1,'Oi ',0,'2020-05-11 18:46:06','2020-05-11 18:46:06');
/*!40000 ALTER TABLE `comment_musics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drafts`
--

DROP TABLE IF EXISTS `drafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `beat_file` varchar(255) DEFAULT NULL,
  `voice_file` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beat_volume` varchar(255) DEFAULT NULL,
  `voice_volume` varchar(255) DEFAULT NULL,
  `beat_image` varchar(255) DEFAULT NULL,
  `run_time` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drafts`
--

LOCK TABLES `drafts` WRITE;
/*!40000 ALTER TABLE `drafts` DISABLE KEYS */;
INSERT INTO `drafts` VALUES (2,25,'http://54.207.50.247/batalhafunk/img/audio/5d517ba682425.mp3','http://54.207.50.247/batalhafunk/img/voice_file/1576508759.mp3','mc bl','1.0','1.0','http://54.207.50.247/batalhafunk/img/artist_image/1565621171.jpeg','13','2019-12-16 15:05:59','2019-12-16 15:05:59'),(3,32,'http://54.207.50.247/batalhafunk/img/audio/5c541ee013ab6.mp3','http://54.207.50.247/batalhafunk/img/voice_file/1578159210.mp3','2','0.13380313','1.0','http://54.207.50.247/batalhafunk/img/artist_image/1549016809.jpg','19','2020-01-04 17:33:30','2020-01-04 17:33:30'),(5,29,'http://54.207.50.247/batalhafunk/img/audio/5d517ba682425.mp3','http://54.207.50.247/batalhafunk/img/voice_file/1578253105.mp3','dis','0.33889037','1.0','http://54.207.50.247/batalhafunk/img/artist_image/1565621171.jpeg','22','2020-01-05 19:38:25','2020-01-05 19:38:25'),(6,29,'http://54.207.50.247/batalhafunk/img/audio/5d517ba682425.mp3','http://54.207.50.247/batalhafunk/img/voice_file/1578253452.mp3','diz 2','0.11828601','1.0','http://54.207.50.247/batalhafunk/img/artist_image/1565621171.jpeg','23','2020-01-05 19:44:12','2020-01-05 19:44:12'),(7,33,'http://54.207.50.247/batalhafunk/img/audio/5d517ba682425.mp3','http://54.207.50.247/batalhafunk/img/voice_file/1578921108.mp3','Fuma fuma','1.0','1.0','http://54.207.50.247/batalhafunk/img/artist_image/1565621171.jpeg','91','2020-01-13 13:11:48','2020-01-13 13:11:48'),(8,42,'http://54.207.50.247/batalhafunk/img/audio/5d48339638db6.mp3','http://54.207.50.247/batalhafunk/img/voice_file/1583448258.mp3','mc heric tá bolado','1.0','1.0','http://54.207.50.247/batalhafunk/img/artist_image/1565012900.jpg','210','2020-03-05 22:44:18','2020-03-05 22:44:18'),(9,42,'http://54.207.50.247/batalhafunk/img/audio/5cca7ef342827.mp3','http://54.207.50.247/batalhafunk/img/voice_file/1583451156.mp3','mc heric mc Lucas','1.0','1.0','http://54.207.50.247/batalhafunk/img/artist_image/1556774652.png','210','2020-03-05 23:32:36','2020-03-05 23:32:36');
/*!40000 ALTER TABLE `drafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `var` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'registration','Registration','Registration','{from},{to},{name},{link}','<p>Hello {name},&nbsp;<br />\r\n<br />\r\nTo activate your account please {link}<br />\r\n<br />\r\nThanks<br />\r\nBatalhaFUNK</p>\r\n','2018-06-22 07:21:31','2019-02-28 10:22:10'),(2,'forgot_password','Forgot Password','Forgot Password','{from},{to},{name},{pin}','<p>Hello {name},&nbsp;<br />\r\n<br />\r\nYour Pin : {pin}<br />\r\n<br />\r\nThanks<br />\r\nBatalhaFUNK</p>\r\n','2018-06-22 10:58:17','2019-02-28 10:22:36'),(3,'update_email','Email Update','Email Update','{from},{to},{name},{link}','<div style=\"margin:20px 5px 5px 5px;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#000000;\">Hello {name},&nbsp;<br/>\r\n<br/>\r\nTo activate your account please {link}\r\n\r\n<br/><br/>\r\nThanks<br/>\r\nBatalhaFUNK\r\n</div>','2018-07-13 05:57:49','2018-07-30 10:12:04'),(4,'registration_Portuguese','Confirmação de cadastro','Confirmação de cadastro','{from},{to},{name},{link}','<div style=\"margin:20px 5px 5px 5px;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#000000;\">Oi {name},&nbsp;<br/>\r\n<br/>\r\nPara ativar sua conta, {link}\r\n\r\n<br/><br/>\r\nObrigado<br/>\r\nBatalhaFUNK\r\n</div>','2018-07-16 10:13:44','2018-12-18 08:48:00'),(5,'update_email_Portuguese','Atualização de email','Atualização de email','{from},{to},{name},{link}','<div style=\"margin:20px 5px 5px 5px;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#000000;\">Oi {name},&nbsp;<br/>\r\n<br/>\r\nPara ativar sua conta, {link}\r\n\r\n<br/><br/>\r\nObrigado<br/>\r\nBatalhaFUNK\r\n</div>','2018-07-16 10:21:22','2018-07-26 13:06:57'),(6,'registration_spanish','Registro','Registro','{from},{to},{name},{link}','<div style=\"margin:20px 5px 5px 5px;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#000000;\">Hola {name},&nbsp;<br/>\r\n<br/>\r\nPara activar tu cuenta, haga {link}\r\n\r\n<br/><br/>\r\nGracias<br/>\r\nBatalhaFUNK\r\n</div>','2018-07-16 10:37:56','2018-12-17 06:32:24'),(7,'update_email_spanish','Actualización de correo electrónico','Actualización de correo electrónico','{from},{to},{name},{link}','<div style=\"margin:20px 5px 5px 5px;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#000000;\">Oi {name},&nbsp;<br/>\n<br/>\nPara ativar sua conta, {link}\n\n<br/><br/>\nObrigado<br/>\nBatalhaFUNK\n</div>','2018-07-16 10:40:44','2018-12-17 09:21:53'),(8,'forgot_password_Portuguese','Esqueci a senha','Esqueci a senha','{from},{to},{name},{pin}','<p>Olá {name},&nbsp;<br />\r\n<br />\r\nSeu Pin : {pin}<br />\r\n<br />\r\nObrigado!<br />\r\nBatalhaFUNK</p>\r\n','2018-07-30 08:55:53','2019-07-24 12:27:39'),(9,'forgot_password_spanish','Olvidé la contraseña','Olvidé la contraseña','{from},{to},{name},{pin}','<div style=\"margin:20px 5px 5px 5px;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#000000;\">Hola {name},&nbsp;<br/>\r\n<br/>\r\nTu Pin : {pin}\r\n\r\n<br/>\r\n<br/>\r\nGracias!<br/>\r\nBatalhaFUNK\r\n</div>','2018-07-30 08:57:24','2019-07-24 13:10:32'),(10,'subAdmin','SubAdmin','SubAdmin','{from},{to},{username},{password}','<p><strong>Hello,</strong>&nbsp;<br />\r\n<br />\r\n<strong>Superadmin creates you as Subadmin.</strong>&nbsp;<br />\r\n<br />\r\n<strong>Your account detail is:</strong>&nbsp;<br />\r\n<strong>Username</strong> : {username}&nbsp;<br />\r\n<strong>Password</strong> : {password}<br />\r\n<br />\r\nThanks<br />\r\nBatalhaFUNK</p>\r\n','2018-11-17 07:33:09','2019-02-28 10:20:00');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follow_users`
--

DROP TABLE IF EXISTS `follow_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `follow_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `follow_by` int(11) NOT NULL,
  `follow_to` int(11) NOT NULL,
  `status` int(1) NOT NULL COMMENT '1=follow,0=unfollow',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow_users`
--

LOCK TABLES `follow_users` WRITE;
/*!40000 ALTER TABLE `follow_users` DISABLE KEYS */;
INSERT INTO `follow_users` VALUES (3,7,2,1,'2019-12-04 19:37:48','2019-12-04 19:37:48'),(4,7,5,1,'2019-12-04 19:38:10','2019-12-04 19:38:10'),(5,7,6,1,'2019-12-04 19:38:16','2019-12-04 19:38:16'),(6,7,8,1,'2019-12-04 19:38:21','2019-12-04 19:38:21'),(7,7,3,1,'2019-12-04 19:38:27','2019-12-04 19:39:56'),(9,6,9,1,'2019-12-05 10:41:47','2019-12-05 10:41:47'),(12,9,7,1,'2019-12-06 11:30:12','2019-12-06 11:30:12'),(13,7,9,1,'2019-12-06 11:32:21','2019-12-06 11:32:21'),(15,13,2,1,'2019-12-06 19:37:34','2019-12-06 19:37:34'),(16,13,6,1,'2019-12-06 19:37:50','2019-12-06 19:37:50'),(17,13,12,1,'2019-12-06 19:38:10','2019-12-06 19:38:10'),(19,14,2,1,'2019-12-06 19:58:08','2019-12-06 19:58:08'),(20,14,3,1,'2019-12-06 19:58:13','2019-12-06 19:59:23'),(21,15,2,1,'2019-12-06 20:32:34','2019-12-06 20:32:34'),(22,18,9,1,'2019-12-08 02:31:23','2019-12-08 02:31:23'),(23,7,13,1,'2019-12-08 18:59:09','2019-12-08 18:59:09'),(24,7,18,1,'2019-12-08 18:59:22','2019-12-08 18:59:22'),(26,7,14,1,'2019-12-08 19:00:42','2019-12-08 19:00:42'),(27,7,15,1,'2019-12-08 19:00:48','2019-12-08 19:00:48'),(28,7,16,1,'2019-12-08 19:00:53','2019-12-08 19:00:53'),(29,7,17,1,'2019-12-08 19:01:00','2019-12-08 19:01:00'),(30,7,19,1,'2019-12-08 19:01:14','2019-12-08 19:01:14'),(31,20,7,1,'2019-12-09 06:21:50','2019-12-09 06:21:50'),(32,7,20,1,'2019-12-09 06:22:26','2019-12-09 06:22:26'),(33,7,21,1,'2019-12-18 07:09:23','2019-12-18 07:09:23'),(34,7,22,1,'2019-12-18 07:09:35','2019-12-18 07:09:35'),(35,7,23,1,'2019-12-18 07:09:41','2019-12-18 07:09:41'),(36,7,24,1,'2019-12-18 07:09:47','2019-12-18 07:09:47'),(37,7,25,1,'2019-12-18 07:09:53','2019-12-18 07:09:53'),(38,7,27,1,'2019-12-18 07:09:58','2019-12-18 07:09:58'),(41,33,6,1,'2020-01-13 10:24:59','2020-01-13 10:24:59'),(42,33,14,1,'2020-01-13 15:20:02','2020-01-13 15:20:02'),(43,37,36,1,'2020-01-31 18:41:40','2020-01-31 18:41:40'),(44,42,7,1,'2020-03-05 23:01:04','2020-03-05 23:01:04'),(45,66,2,1,'2020-04-23 22:29:45','2020-04-23 22:29:45'),(46,71,7,1,'2020-04-28 16:31:45','2020-04-28 16:31:45'),(47,84,9,1,'2020-05-03 11:47:04','2020-05-03 11:47:04'),(48,84,42,2,'2020-05-03 11:47:07','2020-05-03 11:47:07'),(49,84,71,2,'2020-05-03 11:47:10','2020-05-03 11:47:10'),(51,7,89,1,'2020-05-11 17:15:09','2020-05-11 17:15:09');
/*!40000 ALTER TABLE `follow_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_advertisements`
--

DROP TABLE IF EXISTS `like_advertisements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `like_advertisements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adv_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0=like,1=unlike',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_advertisements`
--

LOCK TABLES `like_advertisements` WRITE;
/*!40000 ALTER TABLE `like_advertisements` DISABLE KEYS */;
INSERT INTO `like_advertisements` VALUES (2,2,13,0,'2019-12-06 19:34:23','2019-12-06 19:34:23'),(3,3,13,0,'2019-12-06 19:34:26','2019-12-06 19:34:26'),(4,2,18,0,'2019-12-08 00:23:03','2019-12-08 00:23:03'),(5,3,18,0,'2019-12-08 02:31:35','2019-12-08 02:31:35'),(6,2,7,1,'2019-12-08 18:59:47','2019-12-08 18:59:59'),(7,2,24,0,'2019-12-14 13:57:23','2019-12-14 13:57:23'),(8,3,24,0,'2019-12-14 13:57:26','2019-12-14 13:57:26'),(9,2,27,0,'2019-12-18 01:20:18','2019-12-18 01:20:19'),(10,3,27,0,'2019-12-18 01:20:24','2019-12-18 01:20:27'),(11,2,2,0,'2019-12-28 01:45:09','2019-12-28 01:45:09'),(12,3,2,0,'2019-12-28 01:45:12','2019-12-28 01:45:12'),(13,2,67,0,'2020-04-23 14:40:54','2020-04-23 14:40:54'),(14,2,71,0,'2020-04-28 16:28:56','2020-04-28 16:28:56'),(15,2,84,0,'2020-05-03 11:30:27','2020-05-03 11:30:27');
/*!40000 ALTER TABLE `like_advertisements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_batals`
--

DROP TABLE IF EXISTS `like_batals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `like_batals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `like_by` int(11) NOT NULL,
  `coin_status` int(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0=like,1=unlike',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_batals`
--

LOCK TABLES `like_batals` WRITE;
/*!40000 ALTER TABLE `like_batals` DISABLE KEYS */;
INSERT INTO `like_batals` VALUES (1,8,9,9,0,0,'2019-12-19 08:35:56','2019-12-19 08:35:56'),(2,8,9,27,1,1,'2019-12-20 02:00:07','2019-12-20 02:00:49'),(3,8,7,27,1,0,'2019-12-20 02:00:48','2019-12-20 02:00:49'),(4,8,9,2,1,0,'2020-03-02 06:00:27','2020-03-02 06:00:27');
/*!40000 ALTER TABLE `like_batals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_musics`
--

DROP TABLE IF EXISTS `like_musics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `like_musics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `music_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0=like,1=unlike',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_musics`
--

LOCK TABLES `like_musics` WRITE;
/*!40000 ALTER TABLE `like_musics` DISABLE KEYS */;
INSERT INTO `like_musics` VALUES (1,1,6,0,'2019-12-05 10:42:02','2019-12-05 10:42:02'),(2,1,7,0,'2019-12-06 04:41:03','2019-12-06 04:41:03'),(3,1,13,0,'2019-12-06 19:20:08','2019-12-06 19:20:08'),(4,1,18,0,'2019-12-08 02:31:26','2019-12-08 02:31:26'),(5,6,3,0,'2020-01-28 19:45:17','2020-01-28 19:45:17'),(6,6,36,1,'2020-01-28 19:45:58','2020-01-28 19:45:59'),(7,7,84,1,'2020-05-03 11:40:25','2020-05-03 11:40:29'),(8,1,90,0,'2020-05-11 18:45:59','2020-05-11 18:45:59');
/*!40000 ALTER TABLE `like_musics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musics`
--

DROP TABLE IF EXISTS `musics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `music_file` varchar(255) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `top_value` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musics`
--

LOCK TABLES `musics` WRITE;
/*!40000 ALTER TABLE `musics` DISABLE KEYS */;
INSERT INTO `musics` VALUES (1,'http://54.207.50.247/batalhafunk/img/music/5de897fbb2443.mp3','gh',9,24,'2019-12-05 05:39:17','2020-05-11 18:46:06'),(4,'http://54.207.50.247/batalhafunk/img/music/5e10cc153f429.mp3','1',32,3,'2020-01-04 17:32:15','2020-03-27 18:27:29'),(6,'http://54.207.50.247/batalhafunk/img/music/5e2e2b3032c72.mp3','sabadão chegou',36,9,'2020-01-27 00:13:57','2020-05-11 18:45:13'),(7,'http://54.207.50.247/batalhafunk/img/music/5e60a0f0556dc.mp3','myfunk',40,5,'2020-03-05 06:49:34','2020-05-03 11:40:29'),(8,'http://54.207.50.247/batalhafunk/img/music/5ea1a8b73835c.mp3','ghcuu',67,1,'2020-04-23 14:40:04','2020-04-28 16:29:20'),(9,'http://54.207.50.247/batalhafunk/img/music/5eaeaba6701f5.mp3','test',84,3,'2020-05-03 11:32:01','2020-05-08 17:35:27');
/*!40000 ALTER TABLE `musics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_settings`
--

DROP TABLE IF EXISTS `notification_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_settings` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `user_id` tinyint(4) NOT NULL,
  `chat_noti` int(1) NOT NULL DEFAULT '1' COMMENT '0=off,1=on',
  `batal_req` int(1) NOT NULL DEFAULT '1' COMMENT '0=off,1=on',
  `follow_req` int(1) NOT NULL DEFAULT '1' COMMENT '0=off,1=on',
  `like_music` int(1) NOT NULL DEFAULT '1' COMMENT '0=off,1=on',
  `comment_music` int(1) NOT NULL DEFAULT '1' COMMENT '0=off,1=on',
  `tag_music` int(1) NOT NULL DEFAULT '1' COMMENT '0=off,1=on',
  `like_batal` int(1) NOT NULL DEFAULT '1' COMMENT '0=off,1=on',
  `comment_batal` int(1) NOT NULL DEFAULT '1' COMMENT '0=off,1=on',
  `tag_batal` int(1) NOT NULL DEFAULT '1' COMMENT '0=off,1=on',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_settings`
--

LOCK TABLES `notification_settings` WRITE;
/*!40000 ALTER TABLE `notification_settings` DISABLE KEYS */;
INSERT INTO `notification_settings` VALUES (2,2,1,1,1,1,1,1,1,1,1,'2019-11-13 08:14:50','2020-05-11 19:18:52'),(3,3,1,1,1,1,1,1,1,1,1,'2019-11-13 12:41:30','2019-12-06 18:35:27'),(4,2,1,1,1,1,1,1,1,1,1,'2019-11-20 23:46:38','2019-11-20 23:46:38'),(6,5,1,1,1,1,1,1,1,1,1,'2019-12-02 05:16:55','2019-12-02 05:16:55'),(7,6,1,1,1,1,1,1,1,1,1,'2019-12-03 04:06:48','2019-12-03 04:06:48'),(8,7,1,1,1,1,1,1,1,1,1,'2019-12-03 04:59:51','2019-12-18 07:32:30'),(9,8,1,1,1,1,1,1,1,1,1,'2019-12-03 21:26:43','2019-12-03 21:26:43'),(10,9,1,1,1,1,1,1,1,1,1,'2019-12-05 04:21:43','2019-12-19 08:42:00'),(11,10,1,1,1,1,1,1,1,1,1,'2019-12-06 03:08:00','2019-12-06 03:08:00'),(13,12,1,1,1,1,1,1,1,1,1,'2019-12-06 19:15:52','2019-12-06 19:15:52'),(14,13,1,1,1,1,1,1,1,1,1,'2019-12-06 19:19:34','2019-12-06 19:19:34'),(15,14,1,1,1,1,1,1,1,1,1,'2019-12-06 19:53:08','2019-12-06 19:53:08'),(16,15,1,1,1,1,1,1,1,1,1,'2019-12-06 20:31:34','2019-12-06 20:31:34'),(17,16,1,1,1,1,1,1,1,1,1,'2019-12-07 12:28:08','2019-12-07 12:28:08'),(18,17,1,1,1,1,1,1,1,1,1,'2019-12-07 23:53:48','2019-12-07 23:53:48'),(19,18,1,1,1,1,1,1,1,1,1,'2019-12-08 00:20:21','2019-12-08 00:20:21'),(20,18,1,1,1,1,1,1,1,1,1,'2019-12-08 00:22:33','2019-12-08 00:22:33'),(21,19,1,1,1,1,1,1,1,1,1,'2019-12-08 15:36:01','2019-12-08 15:36:01'),(22,20,1,1,1,1,1,1,1,1,1,'2019-12-09 06:20:37','2019-12-09 06:20:37'),(23,21,1,1,1,1,1,1,1,1,1,'2019-12-09 20:53:32','2019-12-09 20:53:32'),(24,21,1,1,1,1,1,1,1,1,1,'2019-12-09 20:54:24','2019-12-09 20:54:24'),(25,22,1,1,1,1,1,1,1,1,1,'2019-12-10 00:07:13','2019-12-10 00:07:13'),(26,23,1,1,1,1,1,1,1,1,1,'2019-12-11 15:17:46','2019-12-11 15:17:46'),(27,24,1,1,1,1,1,1,1,1,1,'2019-12-14 13:54:56','2019-12-14 13:54:56'),(28,25,1,1,1,1,1,1,1,1,1,'2019-12-16 15:02:24','2019-12-16 15:02:24'),(29,26,1,1,1,1,1,1,1,1,1,'2019-12-17 00:24:37','2019-12-17 00:24:37'),(30,27,1,1,1,1,1,1,1,1,1,'2019-12-17 00:42:27','2019-12-17 00:42:27'),(31,28,1,1,1,1,1,1,1,1,1,'2019-12-18 23:01:46','2019-12-18 23:01:46'),(32,29,1,1,1,1,1,1,1,1,1,'2019-12-19 20:30:19','2019-12-19 20:30:19'),(33,30,1,1,1,1,1,1,1,1,1,'2019-12-20 00:48:23','2019-12-20 00:48:23'),(34,31,1,1,1,1,1,1,1,1,1,'2019-12-29 02:29:57','2019-12-29 02:29:57'),(35,32,1,1,1,1,1,1,1,1,1,'2020-01-04 17:26:09','2020-01-04 17:26:09'),(36,33,1,1,1,1,1,1,1,1,1,'2020-01-13 09:58:52','2020-01-13 09:58:52'),(37,33,1,1,1,1,1,1,1,1,1,'2020-01-13 10:02:28','2020-01-13 10:02:28'),(38,34,1,1,1,1,1,1,1,1,1,'2020-01-16 12:56:39','2020-01-16 12:56:39'),(39,34,1,1,1,1,1,1,1,1,1,'2020-01-16 13:00:58','2020-01-16 13:00:58'),(40,35,1,1,1,1,1,1,1,1,1,'2020-01-23 08:37:27','2020-01-23 08:37:27'),(41,36,1,1,1,1,1,1,1,1,1,'2020-01-27 00:03:16','2020-01-27 00:03:16'),(42,37,1,1,1,1,1,1,1,1,1,'2020-01-31 18:17:11','2020-01-31 18:17:11'),(43,37,1,1,1,1,1,1,1,1,1,'2020-01-31 18:19:05','2020-01-31 18:19:05'),(44,38,1,1,1,1,1,1,1,1,1,'2020-02-11 23:20:41','2020-02-11 23:20:41'),(45,39,1,1,1,1,1,1,1,1,1,'2020-02-28 21:16:02','2020-02-28 21:16:02'),(46,40,1,1,1,1,1,1,1,1,1,'2020-03-05 06:39:20','2020-03-05 06:39:20'),(47,41,1,1,1,1,1,1,1,1,1,'2020-03-05 22:16:10','2020-03-05 22:16:10'),(48,42,1,1,1,1,1,1,1,1,1,'2020-03-05 22:18:12','2020-03-05 23:41:17'),(49,43,1,1,1,1,1,1,1,1,1,'2020-03-16 03:50:16','2020-03-16 03:50:16'),(50,44,1,1,1,1,1,1,1,1,1,'2020-03-27 18:09:44','2020-03-27 18:09:44'),(51,45,1,1,1,1,1,1,1,1,1,'2020-04-16 12:19:12','2020-04-16 12:19:12'),(52,46,1,1,1,1,1,1,1,1,1,'2020-04-16 12:21:10','2020-04-16 12:21:10'),(53,47,1,1,1,1,1,1,1,1,1,'2020-04-16 12:21:59','2020-04-16 12:21:59'),(54,48,1,1,1,1,1,1,1,1,1,'2020-04-16 12:24:07','2020-04-16 12:24:07'),(55,49,1,1,1,1,1,1,1,1,1,'2020-04-16 12:25:01','2020-04-16 12:25:01'),(56,50,1,1,1,1,1,1,1,1,1,'2020-04-16 12:50:09','2020-04-16 12:50:09'),(57,52,1,1,1,1,1,1,1,1,1,'2020-04-17 11:13:49','2020-04-17 11:13:49'),(58,54,1,1,1,1,1,1,1,1,1,'2020-04-17 11:18:44','2020-04-17 11:18:44'),(59,55,1,1,1,1,1,1,1,1,1,'2020-04-17 11:19:59','2020-04-17 11:19:59'),(60,56,1,1,1,1,1,1,1,1,1,'2020-04-17 11:20:46','2020-04-17 11:20:46'),(61,57,1,1,1,1,1,1,1,1,1,'2020-04-17 11:21:45','2020-04-17 11:21:45'),(62,58,1,1,1,1,1,1,1,1,1,'2020-04-17 11:22:57','2020-04-17 11:22:57'),(63,59,1,1,1,1,1,1,1,1,1,'2020-04-17 11:29:01','2020-04-17 11:29:01'),(64,60,1,1,1,1,1,1,1,1,1,'2020-04-17 12:57:25','2020-04-17 12:57:25'),(65,61,1,1,1,1,1,1,1,1,1,'2020-04-17 12:58:31','2020-04-17 12:58:31'),(66,62,1,1,1,1,1,1,1,1,1,'2020-04-17 13:01:52','2020-04-17 13:01:52'),(67,63,1,1,1,1,1,1,1,1,1,'2020-04-17 13:02:24','2020-04-17 13:02:24'),(68,64,1,1,1,1,1,1,1,1,1,'2020-04-17 13:07:17','2020-04-17 13:07:17'),(69,65,1,1,1,1,1,1,1,1,1,'2020-04-17 13:08:01','2020-04-17 13:08:01'),(70,66,1,1,1,1,1,1,1,1,1,'2020-04-23 02:00:17','2020-04-23 02:00:17'),(71,67,1,1,1,1,1,1,1,1,1,'2020-04-23 14:38:05','2020-04-23 14:38:05'),(72,68,1,1,1,1,1,1,1,1,1,'2020-04-24 03:51:20','2020-04-24 03:51:20'),(73,69,1,1,1,1,1,1,1,1,1,'2020-04-24 03:52:59','2020-04-24 03:52:59'),(74,70,1,1,1,1,1,1,1,1,1,'2020-04-24 04:06:30','2020-04-24 04:06:30'),(75,71,1,1,1,1,1,1,1,1,1,'2020-04-27 18:37:59','2020-04-28 16:15:55'),(76,74,1,1,1,1,1,1,1,1,1,'2020-04-28 04:53:10','2020-04-28 04:53:10'),(77,75,1,1,1,1,1,1,1,1,1,'2020-04-28 04:54:56','2020-04-28 04:54:56'),(78,76,1,1,1,1,1,1,1,1,1,'2020-04-28 05:06:57','2020-04-28 05:06:57'),(79,77,1,1,1,1,1,1,1,1,1,'2020-04-28 05:07:22','2020-04-28 05:07:22'),(80,78,1,1,1,1,1,1,1,1,1,'2020-04-28 14:22:37','2020-04-28 14:22:37'),(81,79,1,1,1,1,1,1,1,1,1,'2020-04-28 14:24:16','2020-04-28 14:24:16'),(82,80,1,1,1,1,1,1,1,1,1,'2020-04-29 13:03:22','2020-04-29 13:03:22'),(83,81,1,1,1,1,1,1,1,1,1,'2020-04-29 13:05:47','2020-04-29 13:05:47'),(84,82,1,1,1,1,1,1,1,1,1,'2020-04-30 06:14:16','2020-04-30 06:14:16'),(85,83,1,1,1,1,1,1,1,1,1,'2020-04-30 06:19:28','2020-04-30 06:19:28'),(86,84,1,1,1,1,1,1,1,1,1,'2020-05-03 11:29:37','2020-05-03 11:29:37'),(87,85,1,1,1,1,1,1,1,1,1,'2020-05-04 18:52:31','2020-05-04 18:52:31'),(88,86,1,1,1,1,1,1,1,1,1,'2020-05-08 17:06:11','2020-05-08 17:06:11'),(91,89,1,1,1,1,1,1,1,1,1,'2020-05-11 17:00:16','2020-05-11 17:00:16'),(92,90,1,1,1,1,1,1,1,1,1,'2020-05-11 18:15:26','2020-05-11 18:15:26'),(93,2,1,1,1,1,1,1,1,1,1,'2020-05-11 19:15:27','2020-05-11 19:15:27'),(94,91,1,1,1,1,1,1,1,1,1,'2020-05-12 01:20:08','2020-05-12 01:20:08'),(95,92,1,1,1,1,1,1,1,1,1,'2020-05-14 10:38:00','2020-05-14 10:38:00'),(96,2,1,1,1,1,1,1,1,1,1,'2020-05-14 12:01:28','2020-05-14 12:01:28'),(97,93,1,1,1,1,1,1,1,1,1,'2020-05-27 06:30:26','2020-05-27 06:30:26'),(98,94,1,1,1,1,1,1,1,1,1,'2020-05-27 06:34:34','2020-05-27 06:34:34');
/*!40000 ALTER TABLE `notification_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text,
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(200) NOT NULL,
  `music_id` varchar(11) DEFAULT NULL,
  `batal_id` varchar(11) DEFAULT NULL,
  `advertisement_id` varchar(11) DEFAULT NULL,
  `follow_status` int(2) NOT NULL DEFAULT '0' COMMENT '0=requested,1=accepted,2=TagUser(Comment),3=challengeUser(BatalRequest),4=AcceptBatal,5=Winner,6=LikeMusic,7=LikeBatal,8=TagCommentAdvertisement,9=DeclineBatal,10=drawBatal,11=declineBatalChance',
  `read_status` int(1) NOT NULL DEFAULT '0' COMMENT '0=unread,1=read',
  `badge_status` int(1) NOT NULL DEFAULT '0' COMMENT '0=unread,1=read',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (3,7,2,'abhay',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-12-04 19:37:48','2019-12-05 01:21:21'),(4,7,5,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-12-04 19:38:10','2019-12-04 19:38:10'),(5,7,6,'abhay',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-12-04 19:38:16','2019-12-05 10:45:51'),(6,7,8,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-12-04 19:38:21','2019-12-04 19:38:21'),(7,7,3,'You are followed by abhay',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-12-04 19:38:27','2019-12-04 19:39:56'),(9,6,9,'batalhafunk',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-12-05 10:41:47','2019-12-06 09:58:59'),(10,6,9,'batalhafunk',1,'LikeMusic','1',NULL,NULL,6,1,0,'2019-12-05 10:42:02','2019-12-06 09:58:59'),(11,7,9,'abhay',2,'LikeMusic','1',NULL,NULL,6,1,0,'2019-12-06 04:41:03','2019-12-06 09:58:59'),(12,7,9,'abhay',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-12-06 11:27:53','2019-12-08 04:32:47'),(13,7,7,'abhay',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-12-06 11:28:16','2019-12-06 11:29:50'),(14,9,7,'love',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-12-06 11:30:12','2019-12-06 11:30:22'),(15,7,9,'abhay',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-12-06 11:32:21','2019-12-08 04:32:47'),(16,13,9,NULL,3,'LikeMusic','1',NULL,NULL,6,1,0,'2019-12-06 19:20:08','2019-12-08 04:32:47'),(18,13,2,NULL,0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-12-06 19:37:34','2019-12-06 19:47:48'),(19,13,6,NULL,0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-12-06 19:37:50','2019-12-09 08:21:48'),(20,13,12,NULL,0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-12-06 19:38:10','2019-12-06 19:38:10'),(23,14,2,'flavinha',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-12-06 19:58:08','2019-12-06 20:00:18'),(24,14,3,'You are followed by flavinha',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-12-06 19:58:13','2019-12-06 19:59:23'),(25,15,2,'freya',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-12-06 20:32:34','2019-12-06 21:02:22'),(26,18,9,'veronica',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-12-08 02:31:23','2019-12-08 04:32:47'),(27,18,9,'veronica',4,'LikeMusic','1',NULL,NULL,6,1,0,'2019-12-08 02:31:26','2019-12-08 04:32:47'),(28,7,13,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-12-08 18:59:09','2019-12-08 18:59:09'),(29,7,18,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-12-08 18:59:22','2019-12-08 18:59:22'),(31,7,14,'abhay',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-12-08 19:00:42','2019-12-16 18:02:59'),(32,7,15,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-12-08 19:00:48','2019-12-08 19:00:48'),(33,7,16,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-12-08 19:00:53','2019-12-08 19:00:53'),(34,7,17,'abhay',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-12-08 19:01:00','2019-12-08 19:01:31'),(35,7,19,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-12-08 19:01:14','2019-12-08 19:01:14'),(36,20,7,'john',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-12-09 06:21:50','2019-12-18 07:16:29'),(37,7,20,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-12-09 06:22:26','2019-12-09 06:22:26'),(38,7,21,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-12-18 07:09:23','2019-12-18 07:09:23'),(39,7,22,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-12-18 07:09:35','2019-12-18 07:09:35'),(40,7,23,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-12-18 07:09:41','2019-12-18 07:09:41'),(41,7,24,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-12-18 07:09:47','2019-12-18 07:09:47'),(42,7,25,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-12-18 07:09:53','2019-12-18 07:09:53'),(43,7,27,'abhay',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-12-18 07:09:58','2019-12-18 12:24:09'),(45,9,7,'love',0,'ChallengeUser',NULL,'8',NULL,3,1,0,'2019-12-19 08:34:24','2020-01-23 05:02:09'),(46,7,9,'abhay',0,'AcceptBatal',NULL,'8',NULL,4,1,0,'2019-12-19 08:35:29','2019-12-19 08:41:07'),(49,27,7,'ramon',3,'LikeBatal',NULL,'8',NULL,7,1,0,'2019-12-20 02:00:48','2020-01-23 05:02:09'),(50,27,7,'ramon',0,'ChallengeUser',NULL,'9',NULL,3,1,0,'2019-12-20 02:08:43','2020-01-23 05:02:09'),(51,27,7,'ramon',0,'ChallengeUser',NULL,'10',NULL,3,1,0,'2019-12-22 01:37:35','2020-01-23 05:02:09'),(52,27,7,'ramon',0,'ChallengeUser',NULL,'10',NULL,3,1,0,'2019-12-22 01:37:35','2020-01-23 05:02:09'),(53,31,14,NULL,0,'FollowUser',NULL,NULL,NULL,1,1,0,'2020-01-10 10:04:03','2020-01-12 02:23:57'),(54,33,6,'mcpethy',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2020-01-13 10:24:59','2020-01-13 10:24:59'),(55,33,14,'mcpethy',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2020-01-13 15:20:02','2020-01-13 15:20:16'),(56,33,14,'mcpethy',0,'ChallengeUser',NULL,'11',NULL,3,1,0,'2020-01-13 15:22:04','2020-01-13 15:24:16'),(57,3,36,'erick33',5,'LikeMusic','6',NULL,NULL,6,1,0,'2020-01-28 19:45:17','2020-01-28 19:46:26'),(58,37,36,'luanoliveira',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2020-01-31 18:41:40','2020-02-07 02:54:09'),(59,37,36,'luanoliveira',0,'ChallengeUser',NULL,'12',NULL,3,1,0,'2020-01-31 18:47:48','2020-02-07 02:54:09'),(60,2,9,'kelvinlopes',4,'LikeBatal',NULL,'8',NULL,7,0,0,'2020-03-02 06:00:27','2020-03-02 06:00:27'),(61,42,7,NULL,0,'FollowUser',NULL,NULL,NULL,1,1,0,'2020-03-05 23:01:04','2020-05-11 17:15:19'),(62,42,7,NULL,0,'ChallengeUser',NULL,'15',NULL,3,1,0,'2020-03-05 23:02:38','2020-05-11 17:15:19'),(63,42,7,NULL,0,'ChallengeUser',NULL,'16',NULL,3,1,0,'2020-03-07 15:52:44','2020-05-11 17:15:19'),(64,44,14,'renato',0,'ChallengeUser',NULL,'19',NULL,3,0,0,'2020-03-27 18:20:15','2020-03-27 18:20:15'),(65,67,6,'renan',0,'ChallengeUser',NULL,'21',NULL,3,0,0,'2020-04-23 14:40:46','2020-04-23 14:40:46'),(66,66,2,'danilo',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2020-04-23 22:29:45','2020-05-08 01:03:59'),(67,71,7,'cadu',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2020-04-28 16:31:45','2020-05-11 17:15:19'),(70,84,9,'harjot',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2020-05-03 11:47:04','2020-05-03 11:47:04'),(71,84,42,'harjot',0,'FollowUser',NULL,NULL,NULL,0,0,0,'2020-05-03 11:47:07','2020-05-03 11:47:07'),(72,84,71,'harjot',0,'FollowUser',NULL,NULL,NULL,0,0,0,'2020-05-03 11:47:10','2020-05-03 11:47:10'),(73,84,7,'harjot',0,'ChallengeUser',NULL,'23',NULL,3,1,0,'2020-05-03 11:48:34','2020-05-11 17:15:19'),(74,7,89,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2020-05-11 17:09:06','2020-05-11 17:09:06'),(75,7,89,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2020-05-11 17:15:09','2020-05-11 17:15:09'),(77,90,9,'kelvinlopessurmesur',8,'LikeMusic','1',NULL,NULL,6,0,0,'2020-05-11 18:45:59','2020-05-11 18:45:59'),(78,91,5,'josivaldo',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2020-05-12 01:27:57','2020-05-12 01:27:57');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_histories`
--

DROP TABLE IF EXISTS `payment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `plan_identifier` varchar(100) DEFAULT NULL,
  `payment_id` text,
  `price` float NOT NULL,
  `status` varchar(100) NOT NULL,
  `due_date` date NOT NULL,
  `expires_at` date NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_histories`
--

LOCK TABLES `payment_histories` WRITE;
/*!40000 ALTER TABLE `payment_histories` DISABLE KEYS */;
INSERT INTO `payment_histories` VALUES (2,50,'livePlan','29D8E29B800742DE9027993382FEE8E1',150,'pending','2020-04-16','0000-00-00','2020-04-16 12:52:07','2020-04-16 12:52:07'),(3,50,'liveplan2','7B4BDC1D74AF435EB62D870F0436BB4C',200,'pending','2020-04-16','0000-00-00','2020-04-16 13:05:43','2020-04-16 13:05:43'),(4,67,'livePlan','83D79D2EB442412E8C2F0DC6A9C98A46',150,'pending','2020-04-23','0000-00-00','2020-04-23 14:41:55','2020-04-23 14:41:55');
/*!40000 ALTER TABLE `payment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_plans`
--

DROP TABLE IF EXISTS `payment_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) NOT NULL COMMENT 'purchase id like beat,coin,plan unique id for join',
  `plan_id` text,
  `name` varchar(255) DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `plan_interval` int(11) NOT NULL,
  `interval_type` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `new_price` float NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_plans`
--

LOCK TABLES `payment_plans` WRITE;
/*!40000 ALTER TABLE `payment_plans` DISABLE KEYS */;
INSERT INTO `payment_plans` VALUES (1,1,'5D77F39A078E450D83A3C8D88050B695','livePlan','livePlan',1,'months',150,0,'2020-04-16 12:48:14','2020-04-16 12:48:14'),(2,2,'F2475580DF7B43FAAF75959D2C8E673A','liveplan2','liveplan2',1,'months',200,0,'2020-04-16 12:57:18','2020-04-16 12:57:18'),(3,3,'CF0A418A4B6E48D8850B1AB3F502747A','liveplan3','liveplan3',1,'months',250,0,'2020-04-16 12:57:46','2020-04-16 12:57:46'),(4,4,'6147A3CC6B40494C8C8359C481DDB47B','liveplan4','liveplan4',1,'months',300,0,'2020-04-16 12:58:32','2020-04-16 12:58:32'),(5,5,'A6E0E2C488824A2C97645E076B7EF7E7','liveplan5','liveplan5',1,'weeks',350,0,'2020-04-16 12:59:05','2020-04-16 12:59:05'),(6,7,'591A749223E44BCA87742BEB0F81F582','liveplan6','liveplan6',1,'months',400,0,'2020-04-16 12:59:45','2020-04-16 12:59:45');
/*!40000 ALTER TABLE `payment_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `nonce` text NOT NULL,
  `coin` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,3,'8d545a00-6c50-0d9a-68bb-b97f7b5c010d','50','1','g2vf4mm7','USD','2019-12-18 13:37:53','2019-12-18 13:37:53'),(2,3,'785abdc5-60ab-0b14-51f9-fcc2043b75cb','50','1','cbk3v0dt','USD','2019-12-18 13:40:18','2019-12-18 13:40:18'),(3,3,'aab47311-1fff-0157-572d-da475220bc30','50','1','0asgjzgt','USD','2019-12-18 13:45:25','2019-12-18 13:45:25'),(4,49,'','50','150','B4D27EA27D6D4B3DB63813690612D048','BRL','2020-04-16 12:40:35','2020-04-16 12:40:35'),(5,71,'tokencc_bc_7kzjy7_7r4mkr_m5997r_69h25j_bt5','50','150','qr8s8mg1','USD','2020-04-27 21:43:47','2020-04-27 21:43:47'),(6,71,'64966E69-D587-42A3-B1A1-DA9E297700E5','50','1','1000000657416626','BRL','2020-04-27 23:46:24','2020-04-27 23:46:24'),(7,71,'0323C1F7-9F52-415E-9ACA-8BA7E3BCA1B0','50','1','1000000657416694','BRL','2020-04-27 23:47:02','2020-04-27 23:47:02'),(8,71,'CDD410E7-92C3-4671-9FA4-2D360C726F83','100','1','1000000657417690','BRL','2020-04-27 23:50:05','2020-04-27 23:50:05'),(9,71,'D036CA1D-AF1C-4F87-8072-EB2F964E28DF','150','1','1000000657417792','BRL','2020-04-27 23:51:19','2020-04-27 23:51:19'),(10,71,'CD5D4094-D4B9-4737-A8AB-673B9E810088','250','1','1000000657419392','BRL','2020-04-27 23:59:04','2020-04-27 23:59:04'),(11,71,'8267D4DA-66DD-4DFB-A6A1-F57399E3380D','300','1','1000000657419471','BRL','2020-04-27 23:59:27','2020-04-27 23:59:27'),(12,71,'CC1FC6F3-AA85-4273-8467-95F817A132C3','200','1','1000000657419662','BRL','2020-04-28 00:00:33','2020-04-28 00:00:33'),(13,71,'A6248CE5-B401-4911-8286-79E043108AB1','300','1','1000000657420338','BRL','2020-04-28 00:05:30','2020-04-28 00:05:30'),(14,71,'F751EA79-2518-4A98-A943-581B4F08D677','300','1','1000000657420463','BRL','2020-04-28 00:06:35','2020-04-28 00:06:35'),(15,71,'AD0CC06A-30F5-4D36-A3BE-8527914C75AA','100','1','1000000657421027','BRL','2020-04-28 00:08:58','2020-04-28 00:08:58'),(16,71,'ABB2490B-9827-4A3F-A59A-17777DCE0250','300','1','1000000657421749','BRL','2020-04-28 00:12:20','2020-04-28 00:12:20'),(17,71,'9B85978A-E79D-430C-8326-3C6ACC673F10','50','1','1000000657501406','BRL','2020-04-28 04:50:43','2020-04-28 04:50:43');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_lists`
--

DROP TABLE IF EXISTS `plan_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_lists` (
  `plan_type` int(11) NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(255) DEFAULT NULL,
  `plan_time` int(11) NOT NULL,
  `plan_value` varchar(255) DEFAULT NULL,
  `coin_multiple` int(11) NOT NULL,
  `trophy_multiple` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`plan_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_lists`
--

LOCK TABLES `plan_lists` WRITE;
/*!40000 ALTER TABLE `plan_lists` DISABLE KEYS */;
INSERT INTO `plan_lists` VALUES (1,'Plan 1',3,'1000',3,2,1,'2018-12-04 18:05:10','2018-12-10 11:42:27'),(2,'Plan 2',5,'1500',3,2,1,'2018-12-04 18:05:10','2018-12-10 11:43:38');
/*!40000 ALTER TABLE `plan_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_beats`
--

DROP TABLE IF EXISTS `purchase_beats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_beats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(1) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_beats`
--

LOCK TABLES `purchase_beats` WRITE;
/*!40000 ALTER TABLE `purchase_beats` DISABLE KEYS */;
INSERT INTO `purchase_beats` VALUES (1,26,71,2,'2020-04-28 00:13:14','2020-04-28 00:13:14'),(2,27,71,2,'2020-04-28 00:13:42','2020-04-28 00:13:42'),(3,28,71,2,'2020-04-28 00:13:46','2020-04-28 00:13:46'),(4,78,71,2,'2020-04-28 00:14:32','2020-04-28 00:14:32');
/*!40000 ALTER TABLE `purchase_beats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking_levels`
--

DROP TABLE IF EXISTS `ranking_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ranking_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `description_portu` text NOT NULL,
  `description_eng` text NOT NULL,
  `description_spanish` text NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `male_title_portu` varchar(255) DEFAULT NULL,
  `male_title_eng` varchar(255) DEFAULT NULL,
  `male_title_spanish` varchar(255) DEFAULT NULL,
  `female_title_portu` varchar(255) DEFAULT NULL,
  `female_title_eng` varchar(255) DEFAULT NULL,
  `female_title_spanish` varchar(255) DEFAULT NULL,
  `no_of_batal` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1=active,2=Inactive',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_levels`
--

LOCK TABLES `ranking_levels` WRITE;
/*!40000 ALTER TABLE `ranking_levels` DISABLE KEYS */;
INSERT INTO `ranking_levels` VALUES (1,'1542706572.png','Todos que iniciam sua jornada no Funk!','Everyone who starts their journey at Funk!','Todos los que inician su viaje en el funk!','1','Level 1 - Novinho','Level 1 - Novinho','Level 1 - novinho','Level 1 - Novinha','Level 1 - Novinha','Level 1 - Novinha',0,1,'2018-11-20 09:19:02','2019-10-31 03:05:10'),(2,'1542705640.png','Vença 5 Batalhas para alcançar esse level!','Win 5 Battles to reach this level!','¡Gana 5 batallas para alcanzar este nivel!','2','Level 2 - Parça','Level 2 - Parça','Level 2 - Parça','Level 2 - Parca','Level 2 - Parca','Level 2 - Parca',5,1,'2018-11-20 09:20:40','2019-10-31 03:05:15'),(3,'1542705681.png','Vença 15 Batalhas para alcançar esse level!','Win 15 Battles to reach this level!','¡Gana 15 batallas para alcanzar este nivel!','3','Level 3 - Tigrão','Level 3 - Tigrão','Level 3 - Tigrão','Level 3 - Tigrona','Level 3 - Tigrona','Level 3 - Tigrona',15,1,'2018-11-20 09:21:21','2019-10-31 03:05:20'),(4,'1542706070.png','Vença 30 Batalhas para alcançar esse level!','Win 30 Battles to reach this level!','¡Gana 30 batallas para alcanzar este nivel!','4','Level 4 - Bolado','Level 4 - Bolado','Level 4 - Bolado','Level 4 - Bolada','Level 4 - Bolada','Level 4 - Bolada',30,1,'2018-11-20 09:22:01','2019-10-31 03:05:25'),(5,'1542706085.png','Vença 50 Batalhas para alcançar esse level!','Win 50 Battles to reach this level!','¡Gana 50 batallas para alcanzar este nivel!','5','Level 5 - Profissa','Level 5 - Profissa','Level 5 - Profissa','Level 5 - Profissa','Level 5 - Profissa','Level 5 - Profissa',50,1,'2018-11-20 09:22:39','2019-10-31 03:05:31'),(6,'1542705816.png','Vença 80 Batalhas para alcançar esse level!','Win 80 Battles to reach this level!','¡Gana 80 batallas para alcanzar este nivel!','6','Level 6 - TERROR','Level 6 - TERROR','Level 6 - TERROR','Level 6 - TERROR','Level 6 - TERROR','Level 6 - TERROR',80,1,'2018-12-19 08:36:36','2019-10-31 03:05:36'),(7,'1542705851.png','Vença 120 Batalhas para alcançar esse level!','Win 120 Battles to reach this level!','¡Gana 120 batallas para alcanzar este nivel!','7','Level 7 - ZIKA','Level 7 - ZIKA','Level 7 - ZIKA','Level 7 - ZIKA','Level 7 - ZIKA','Level 7 - ZIKA',120,1,'2018-11-20 09:24:11','2019-10-31 03:05:55'),(8,'1542705884.png','Vença 150 Batalhas e seja uma LENDA DO FUNK!','Win 150 Battles and be a FUNK LEGEND!','¡Gana 150 batallas y sé una LEYENDA FUNK!','8','Level 8 - PATRÃO','Level 8 - PATRON','Level 8 - PATRÓN','Level 8 - PODEROSA','Level 8 - PODEROSA','Level 8 - PODEROSA',150,1,'2018-11-20 09:24:44','2019-10-31 03:06:12');
/*!40000 ALTER TABLE `ranking_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_batals`
--

DROP TABLE IF EXISTS `report_batals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_batals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batal_id` int(11) NOT NULL,
  `reported_by` int(11) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0=reported,1=unreported',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_batals`
--

LOCK TABLES `report_batals` WRITE;
/*!40000 ALTER TABLE `report_batals` DISABLE KEYS */;
INSERT INTO `report_batals` VALUES (1,8,71,0,'2020-04-29 16:05:00','2020-04-29 16:05:00');
/*!40000 ALTER TABLE `report_batals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_commentadvts`
--

DROP TABLE IF EXISTS `report_commentadvts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_commentadvts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `reported_by` int(11) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0=reported,1=unreported',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_commentadvts`
--

LOCK TABLES `report_commentadvts` WRITE;
/*!40000 ALTER TABLE `report_commentadvts` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_commentadvts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_commentbatals`
--

DROP TABLE IF EXISTS `report_commentbatals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_commentbatals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `reported_by` int(11) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0=reported,1=unreported',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_commentbatals`
--

LOCK TABLES `report_commentbatals` WRITE;
/*!40000 ALTER TABLE `report_commentbatals` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_commentbatals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_comments`
--

DROP TABLE IF EXISTS `report_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `reported_by` int(11) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0=reported,1=unreported',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_comments`
--

LOCK TABLES `report_comments` WRITE;
/*!40000 ALTER TABLE `report_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_musics`
--

DROP TABLE IF EXISTS `report_musics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_musics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `music_id` int(11) NOT NULL,
  `reported_by` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0=reported,1=unreported',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_musics`
--

LOCK TABLES `report_musics` WRITE;
/*!40000 ALTER TABLE `report_musics` DISABLE KEYS */;
INSERT INTO `report_musics` VALUES (1,6,71,0,'2020-04-29 16:03:57','2020-04-29 16:03:57');
/*!40000 ALTER TABLE `report_musics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_users`
--

DROP TABLE IF EXISTS `report_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_by` int(11) NOT NULL,
  `report_to` int(11) NOT NULL,
  `status` int(1) NOT NULL COMMENT '1=report,0=unreport',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_users`
--

LOCK TABLES `report_users` WRITE;
/*!40000 ALTER TABLE `report_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_timers`
--

DROP TABLE IF EXISTS `request_timers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_timers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(11) NOT NULL,
  `time_period` int(1) NOT NULL COMMENT '1=day,2=week',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_timers`
--

LOCK TABLES `request_timers` WRITE;
/*!40000 ALTER TABLE `request_timers` DISABLE KEYS */;
INSERT INTO `request_timers` VALUES (1,1,2,'2019-05-09 07:41:39','2019-05-09 08:50:33');
/*!40000 ALTER TABLE `request_timers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_plans`
--

DROP TABLE IF EXISTS `user_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `plan_type` int(11) NOT NULL,
  `plan_time` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_plans`
--

LOCK TABLES `user_plans` WRITE;
/*!40000 ALTER TABLE `user_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_winners`
--

DROP TABLE IF EXISTS `user_winners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_winners` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` tinyint(3) unsigned NOT NULL,
  `win_trophy` tinyint(3) unsigned NOT NULL,
  `win_coin` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_winners`
--

LOCK TABLES `user_winners` WRITE;
/*!40000 ALTER TABLE `user_winners` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_winners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_id` text CHARACTER SET latin1,
  `gplus_id` text CHARACTER SET latin1,
  `first_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `user_image` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `gender` int(1) NOT NULL,
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `city` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `term_condition` int(1) NOT NULL,
  `access_key` text CHARACTER SET latin1 NOT NULL,
  `status` int(1) NOT NULL,
  `profile_status` int(1) NOT NULL DEFAULT '1' COMMENT '1=public,2=private',
  `forgot_pin` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `device_id` text CHARACTER SET latin1,
  `device_type` int(1) NOT NULL DEFAULT '1' COMMENT '1=android,2=IOS',
  `lang_type` int(1) NOT NULL DEFAULT '1' COMMENT '1=portuguse,2=Eng,3=spanish',
  `coin` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `trophy` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `ranking` int(11) NOT NULL DEFAULT '0',
  `ranking_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `win` int(11) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '1',
  `top_value` int(11) NOT NULL,
  `ranking_index` int(11) NOT NULL,
  `winning_status` int(11) NOT NULL,
  `win_trophy` int(11) NOT NULL,
  `win_coin` int(11) NOT NULL,
  `reg_coin` int(1) NOT NULL DEFAULT '1',
  `tag_adv_coin` int(2) NOT NULL,
  `referal_coin` int(1) NOT NULL,
  `plan_type` int(11) NOT NULL,
  `plan_time` int(11) NOT NULL,
  `referral_code` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `song_time` datetime NOT NULL,
  `battle_time` datetime NOT NULL,
  `badgeDate` datetime NOT NULL,
  `verified_badge` int(1) NOT NULL DEFAULT '0',
  `admin_verify` int(1) NOT NULL DEFAULT '0' COMMENT '0=not,1=yes',
  `customer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,NULL,NULL,NULL,NULL,'erick33','http://54.207.50.247/batalhafunk/img/user/1573649223.png','ericklopes@hotmail.com','9ad9e16a29e82c18cca52b05bff3ebc289b88074',1,'Agora vai ...','Brasil','São Bernardo do Campo',1,'a4913b149da37f3cfcb6883511ebeb15',1,2,NULL,'dkOXuPhTKeQ:APA91bFj0ByqFVX7P356dLW68vYZPCPqIAgOm8WcDzXtvSiQLnlYxqzN9X-B1weA1eP165-MCn_kFhadMJcjExaqxb2Z4cbrnfL_UAbzSXs8Io6EJvUhvM8V2UHck2cm7RufywqH1dTQ',1,1,'215','0',0,NULL,0,1,0,10,0,0,0,0,0,0,0,0,'wvo1zn','2020-01-28 19:47:47','2020-01-28 19:47:47','2020-01-28 19:43:38',0,0,NULL,'2019-11-13 12:41:30','2020-05-11 18:50:03'),(5,'1649625808490664',NULL,NULL,NULL,'shubham','https://graph.facebook.com/v2.12/1649625808490664/picture?type=large&width=600&height=600','zombie.singh96@gmail.com',NULL,1,'IOS Developer','Brasil','Digite o nome de sua cidade',1,'10cb9ad0d7ccefb18eec1a3bd1e32fd1',1,1,NULL,'cIEdYeVerwQ:APA91bG7XZ57QIDACY-ef-Gljxzq4PXn5hDZuPqPvp69DFt84pT2ultyU0Y9xO-IHf_42MO28yOSG3J_5a9bMFfWpHWcYjPtmr-n-nYmoSXGCw-ArFx058d9Z88gjUyTKzZ1eeYkMQeW',2,1,'5','0',0,NULL,0,1,0,11,0,0,0,0,0,0,0,0,'5nvzbo','2019-12-02 05:16:58','2019-12-02 05:16:58','2019-12-02 05:16:59',0,0,NULL,'2019-12-02 05:16:55','2020-05-12 01:27:58'),(6,NULL,NULL,NULL,NULL,'batalhafunk','http://54.207.50.247/batalhafunk/img/user/1575346084.file','batalhafunkbrasil@gmail.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',1,'REI DO FUNK ?','Brasil','SP',1,'d691187ef2edc162479a74c2c2d3bf6f',1,1,NULL,'dFZ06AOVqUsFvuUv_cyj58:APA91bG-Bj7tt4lX2POrllYNkMAYZeg0niJTzbfYKrHQADWt0u5Xt1hzcjeSmsKIgB9F3bIG0NhsCnEE_QENvFgMgm07JYctoxQ8gt5dcfqkOIO4cpKLYjT9GM7sAEZGCxfWQ4JNPfEK',2,1,'50','0',0,NULL,0,1,0,12,0,0,0,0,0,0,0,0,'7j1q7j','2020-05-11 06:32:57','2020-05-11 06:32:57','2020-05-11 18:32:59',0,0,NULL,'2019-12-03 04:06:48','2020-05-11 18:50:03'),(7,NULL,NULL,NULL,NULL,'abhay','http://54.207.50.247/batalhafunk/img/user/1575349191.file','abhay@techugo.com','9bb48ff5c97a25121fd7847b181251084b98476f',1,'Musica','Brasil','Noida',1,'0',1,1,'2724','0',1,1,'55','0',0,NULL,0,1,11,2,0,0,0,0,0,0,0,0,'zbo0y7','2020-05-11 17:26:39','2020-05-11 17:26:39','2020-05-11 16:25:19',0,0,NULL,'2019-12-03 04:59:51','2020-05-11 18:50:03'),(8,NULL,NULL,NULL,NULL,'grace','http://54.207.50.247/batalhafunk/img/user/1575408403.file','gracegarcia76@icloud.com','5194722070b92ed47877645927d85f3b445b1c33',1,'Test','Brasil','Rio',1,'ad1930dfc6b039e5043b218a016fbcba',1,1,NULL,NULL,1,1,'5','0',0,NULL,0,1,0,13,0,0,0,5,0,0,0,0,'1c7kpd','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,NULL,'2019-12-03 21:26:43','2020-05-11 18:50:03'),(9,'2850645581665083',NULL,NULL,NULL,'love','https://graph.facebook.com/2850645581665083/picture?type=large&redirect=true&width=600&height=600','loveinside2012@gmail.com',NULL,1,'Northern','Brasil','North',1,'bfaf1b9ff4bdbe63778ec3b4d6c0bb5a',1,1,NULL,'dmn5_hHG2yo:APA91bH2BrzzBIWaJKV9EgujoooSDqoKnxV9jAJW15WuJObgaYtSOh2BSJbTXgAzllex2ZKUPQ-Lt4NQWZr2qd4W3WU9AVu6_oZHSy--DM_Qm3Irm3mna4cKjIzDxuiyj321sN3LRBPW',1,2,'65','0',0,NULL,0,1,35,1,0,0,0,0,0,0,0,0,'od0ko6','2020-02-14 12:54:33','2020-02-14 12:54:33','2020-02-14 12:20:34',0,0,NULL,'2019-12-05 04:21:43','2020-05-11 18:50:03'),(12,NULL,NULL,NULL,NULL,'yasmimverneck',NULL,'ys339895@mail.com','4cb9318230749935088a7d9faac4680dedcb1175',1,'YouTube Instagram:@yasmim_verneck','Brasil','Rio de janeiro',1,'6b5860306dee72faefbf8c9577ed0eb7',0,1,NULL,NULL,1,1,'5','0',0,NULL,0,1,0,14,0,0,0,5,0,0,0,0,'opyl7r','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,NULL,'2019-12-06 19:15:52','2020-05-11 18:50:03'),(13,NULL,'108032644857012893385',NULL,NULL,'yasmimsouza','https://lh3.googleusercontent.com/a-/AAuE7mBW8J0vQuoFrQRjNGMbmkErB-EB-WZ_NQ2J0wf7','yasmimsouza057@gmail.com',NULL,1,'YouTube Yasmim verneck','Brasil','Rio de janeiro',1,'f214101903763df6659b94b5148f828a',1,1,NULL,'fp6bJjxn27Q:APA91bGyDx_O0DASF_Q_w6V3PF-eXJQTHJgcU-8oZmcQjDcXJqEfb0kbZVMUS2aSyoeRl3M-G5-pwDNpBz3yRgpKTd4gq0DMy7LsW4sBemd2Xqrux7lzkqOwy8ckA32p_B_pWUfC6DHj',1,1,'15','0',0,NULL,0,1,0,15,0,0,0,0,0,0,0,0,'w9mnhc','2019-12-06 19:34:08','2019-12-06 19:34:08','2019-12-06 19:19:35',0,0,NULL,'2019-12-06 19:19:34','2020-05-11 18:50:03'),(14,NULL,NULL,NULL,NULL,'flavinha','http://54.207.50.247/batalhafunk/img/user/1575662154.png','flavia.suster@outlook.com','32b325444262e7e0b8462d9a2ec89ff2fb3720d6',2,'ciclonada','Brasil','São Bernardo do Campo',1,'01e8c46aa22069967a19dcc174bfa650',1,1,NULL,'f0sZJ_9eTiw:APA91bEp6RpaDg_wO-awWgk5EXkQz1zGLIipZCgmN7JcTfOiJ_mqth_g6f5Ux1vNCxfam3KIe9Z6NteT5AlpERPNa2dP2aAZUHC0O1vPFRlyTZH0i8Svrr7T6lkaf20TAU9B6tIEA3UY',1,1,'50','0',0,NULL,0,1,0,16,0,0,0,0,0,0,0,0,'h1bk2d','2020-03-07 02:15:28','2020-03-07 02:15:28','2020-03-07 02:15:29',0,0,NULL,'2019-12-06 19:53:08','2020-05-11 18:50:03'),(15,NULL,'104818040692670931567',NULL,NULL,'freya',NULL,'shopsomethingwithlace@gmail.com',NULL,2,'freya','Canadá','freya',1,'e88d64aacb622efe85727ddc6dd3a072',1,1,NULL,'dUCO7-2qK-Y:APA91bEYzKtQQDKxcz4RB4AeoC3X1hiUZsBHWprryOCSjjOaihopa4MLomebOudJEkiPvdwRuVYWe0-eQBAhudfbasAtAHhawSLGAum7nCAiOLLNESMXOvREGlPPGqP6GmUxOlf7lC_z',1,1,'10','0',0,NULL,0,1,0,17,0,0,0,0,0,0,0,0,'up3yvw','2020-04-01 07:18:05','2020-04-01 07:18:05','2020-04-01 07:18:07',0,0,NULL,'2019-12-06 20:31:34','2020-05-11 18:50:03'),(16,NULL,'107371699882823796228',NULL,NULL,'liamagalhaes','https://lh3.googleusercontent.com/a-/AAuE7mAfNzUNxhClimaSEFQEq0xQvrlbI8tvTUGqJMPZ_aA','lia.magalhaes.737@gmail.com',NULL,2,'foda se','Brasil','Guaramiranga',1,'a747f35ad0188be801545eda2a75ba1d',1,1,NULL,'dZk4eee4YtI:APA91bH5QBSDHT244dQIs0x2FRs-QunoXMch-borlEkNVjsXRv1mNsQ7DYXoISxDTeIHacVapRu-KCjC6Epp-M8tulf01QiKdFK0YFESmGNzIcSzvaxtHJxpBBm-7h6cbSGZLzLbzlpf',1,1,'5','0',0,NULL,0,1,0,18,0,0,0,0,0,0,0,0,'aysa46','2019-12-07 12:32:58','2019-12-07 12:32:58','2019-12-07 12:28:09',0,0,NULL,'2019-12-07 12:28:08','2020-05-11 18:50:03'),(17,'10214140629689899',NULL,NULL,NULL,'cinmeira','https://graph.facebook.com/v2.12/10214140629689899/picture?type=large&width=600&height=600','cinmeira@gmail.com',NULL,1,'Nóix','Brasil','São Paulo ',1,'552b2be3b1603d1b13cceb7ae397e4cb',1,1,NULL,'fZeJbG7fMFg:APA91bHnKZDWwuikqF9URyY_Rs2Y_dqUW860kK0MtA6KLriJj9xPM__iG8OrUu0O6tRzP_NrtMnnq_Cvug0XF59Ad95Mgvvmqc-z18zARndsO5dDvPnFZQdWL8h9Nmzeqy8kpMwY2AOr',2,1,'5','0',0,NULL,0,1,0,19,0,0,0,0,0,0,0,0,'8e46oz','2019-12-08 07:01:16','2019-12-08 07:01:16','2019-12-07 23:53:51',0,0,NULL,'2019-12-07 23:53:48','2020-05-11 18:50:03'),(18,NULL,'106281624006000259514',NULL,NULL,'veronica',NULL,'veronicadc2005@gmail.com','69cef1104f69e934620fbf26138b96248911096d',2,'amor sempre','Brasil','dois córregos',1,'0ac49c4929fa88dacb1edbf4721de661',1,1,NULL,'eiBB2ohZaRo:APA91bHb5gxLPDUgwHs8VjIgr2hyHA6r_v891OvwnjcYNMfiw5Q5iF-WUPBlgvv4xDW96ttRrk-y6JfwmnFJ91_JWJk1-_wptcV2sXLzqNyeiDgI_Q93Uz5wyP4H69S3noSpH2fgwNjE',1,1,'15','0',0,NULL,0,1,0,20,0,0,0,0,0,0,0,0,'9jhmpj','2019-12-13 03:32:35','2019-12-13 03:32:35','2019-12-12 17:25:16',0,0,NULL,'2019-12-08 00:20:21','2020-05-11 18:50:03'),(19,NULL,'102644594394987175771',NULL,NULL,'fabriciosuster','https://lh3.googleusercontent.com/a-/AAuE7mBqIAY5zzPEGfdrtEOqHj_zKiAgxYAXYGYNG6naUQ','fabricio.suster@gmail.com',NULL,1,'Fé','Brasil','São Bernardo do Campo',1,'cafcb5859157db2641284f897031c77b',1,1,NULL,'fWhB9EPR-iA:APA91bGunP38NLJAsycpVnF9-E6ufm4qNipH1K1QyGHrWUH79pb6xNarg4gRIKq6GCikap3m5_QtNS0is7z_FBs_uo6hMzTD0xMHfpSbCkqbBEIqNcbt7ZY-QTX406w5QuyxF5sB_pUV',1,1,'5','0',0,NULL,0,1,0,21,0,0,0,0,0,0,0,0,'q35yf4','2019-12-08 17:01:07','2019-12-08 17:01:07','2019-12-08 15:36:02',0,0,NULL,'2019-12-08 15:36:01','2020-05-11 18:50:03'),(21,NULL,'111140458253755105699',NULL,NULL,'patriciaelem',NULL,'patriciaelem0@gmail.com','a23bc65f9e4e07e9e5e61f7185a81e694120265d',1,'humildade','Brasil','Grajaú',1,'b6edf3f0c8d09a5b1b57bf090e2c82ff',1,1,NULL,'dp0yKnF8TCA:APA91bGnEXFDV791KQBeeIbTOfTVNQ1pt21qFnMOIwzvliVtmq-2zgwktN2epWFcJ0l-bXJktl2FIbPAaPsFuTEj6dnuNTNVvIvczXuEBmqiOm3KW90RqrfpGqUtw_NKYijR1x6l46tT',1,1,'5','0',0,NULL,0,1,0,22,0,0,0,0,0,0,0,0,'etsow2','2019-12-09 21:04:22','2019-12-09 21:04:22','2019-12-09 20:54:25',0,0,NULL,'2019-12-09 20:53:32','2020-05-11 18:50:03'),(22,NULL,NULL,NULL,NULL,'mcmenorzinha',NULL,'alveskevely9@gmai.com','d5fb16653553e26f3f36c5d0fb8e77795987be50',1,'Bora progrediir','Brasil','Brasília',1,'3ad24f06cf9b822c5b753445b5c083bf',1,1,'3842',NULL,1,1,'5','0',0,NULL,0,1,0,23,0,0,0,5,0,0,0,0,'y761tg','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,NULL,'2019-12-10 00:07:13','2020-05-11 18:50:03'),(23,NULL,'106071111251183148534',NULL,NULL,'dtongame','https://lh3.googleusercontent.com/a-/AAuE7mDPXi_Ka0wk5qzWT0aDaI3RHD_yZ19uDSvDiXv8uQ','marcelodayamaha@gmail.com',NULL,1,'viva lá vida ?','Brasil','santo André',1,'682c018772c1e0a199b76b03ac5bb5cc',1,1,NULL,'duAD_3ZW0Wc:APA91bGGDLiFUVS5kvhPhb7KremsOwQ1Fa_jpsDgo6PllT8_mhhUoa5rHoYq1PXAJPdxv6o6kkcmF0AK9ms9FimDndaIFUfrMZuSinPEZGccmBerd_DHa0x7JYp7Y6-OaAaBGfWOX0X8',1,1,'15','0',0,NULL,0,1,1,8,0,0,0,0,0,0,0,0,'88ldi0','2020-01-01 02:06:59','2020-01-01 02:06:59','2020-01-01 01:37:45',0,0,NULL,'2019-12-11 15:17:46','2020-05-11 18:50:03'),(24,NULL,'110400585633969779579',NULL,NULL,'kauebraga','https://lh3.googleusercontent.com/a-/AAuE7mAGugGe5BdCGC71YnuNcwn-1ELH2K6zyIujX9XKjg','kauelindo796@gmail.com',NULL,1,'lindo','Brasil','itapipoca-ce',1,'20ebcbc7b0816c5a47da6ec4ea0ed463',1,1,NULL,'d6LOMRCq8tw:APA91bHdGpB1L7b2AquUBoOZ9PoD25Vko0Vw8NxJCQToRBtD_iI4gtnXgrL45L3qMqGPGEytm_oXFHkErAibBZNqNKCMoY6nr5u5dz3TfOCn-YgNvIF3QJIsRJvfLzPf9r3k_Uc2oH3c',1,1,'5','0',0,NULL,0,1,0,24,0,0,0,0,0,0,0,0,'vadd2i','2019-12-14 12:57:41','2019-12-14 12:57:41','2019-12-14 13:54:59',0,0,NULL,'2019-12-14 13:54:56','2020-05-11 18:50:03'),(25,NULL,'117492349378494328758',NULL,NULL,'mcbl_dazo','https://lh3.googleusercontent.com/a-/AAuE7mAz5XdBNl3h0Pi7k3NoOUivrQ_wT__rBRRS_Ane_ls','brunoleonor6@gmail.com',NULL,1,'funk minha história','Brasil','Osasco',1,'2658e3c9b21ad575535565cfc6f1501e',1,1,NULL,'f5Q0KpPnta0:APA91bGY692lo8YpF2aaKGsp_M6r4f7qGyk1ECymFtVpCmZwlje2K9mADimyU93CTkJPBEbG8fxeSYzgseZBt8hzObqNEgyiy8cL9X6FtbtpqfmTGm_N3jxvJg5r4RsYnCxsq4ZQf-p8',1,1,'5','0',0,NULL,0,1,0,25,0,0,0,0,0,0,0,0,'lpjkni','2019-12-16 15:06:59','2019-12-16 15:06:59','2019-12-16 15:02:26',0,0,NULL,'2019-12-16 15:02:24','2020-05-11 18:50:03'),(26,NULL,NULL,NULL,NULL,'mcramonyure',NULL,'sousa.ramon12@outlook.com','553ef0cbc56dd6ac101fd1505fe6231cc95c2484',1,'tá fuleiro','Brasil','caxias-ma',1,'58ce3896b8937ec07b81b4c1ba301946',0,1,NULL,NULL,1,1,'5','0',0,NULL,0,1,0,26,0,0,0,5,0,0,0,0,'e6osei','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,NULL,'2019-12-17 00:24:37','2020-05-11 18:50:03'),(27,NULL,'113593762744123266624',NULL,NULL,'ramon',NULL,'sousaramon12lindo@gmail.com',NULL,1,'tá fuleiro','Brasil','Caxias',1,'eec7fbfae2dd2785093086abbb7a62f6',1,1,NULL,'fxs2By5lLEc:APA91bEZtRMGwsR-Oe271NicI6Xardxb5XmhD51DoG9f3G8gXim1vpcKU174N99RnHskULryt4XWDE_MNgZiQ8JmzVKrVhMb9SiAmTEzeJOIwIasLDqfeJdLYZfRlqBbsipDFoDwuCoO',1,1,'30','0',0,NULL,0,1,0,27,0,0,0,0,0,0,0,0,'0ofswn','2019-12-23 01:55:52','2019-12-23 01:55:52','2019-12-23 01:52:47',0,0,NULL,'2019-12-17 00:42:27','2020-05-11 18:50:03'),(28,NULL,NULL,NULL,NULL,'fly','http://54.207.50.247/batalhafunk/img/user/1576710106.file','florencefern76@icloud.com','2e94626f8507d2d371fe0b6b05eb34a19a1d78c1',1,'Flyerson','Brasil','Rio De Janeiro',1,'2e5b52fa096c20ad6f548ee6854ae4a7',0,1,NULL,NULL,1,1,'5','0',0,NULL,0,1,0,28,0,0,0,5,0,0,0,0,'ey8tjd','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,NULL,'2019-12-18 23:01:46','2020-05-11 18:50:03'),(29,NULL,NULL,NULL,NULL,'mrdonn','http://54.207.50.247/batalhafunk/img/user/1576789214.png','BreenDon.CR@gmail.com','99f3f752066550143329e8d70ceeaaddbda5b5a5',1,'Mr Donn Oficial','Brasil','Cidade Tiradentes',1,'a0c94aa269c358028f3805a6ea2a5d16',1,2,'0','fpgxlXub_-o:APA91bEQaGJB1HNGcfz8mPKNVtvpubMY6L7f2gvtH65urDnNabYfNrLA2kbrNS_NZnCTlGk_epmxR48aIc70oeNiGra_q-a-aL--HCGWdvbXr3j-7CCZbl-Lj54VHIKqlglZidU-XD_x',1,1,'25','0',0,NULL,0,1,0,29,0,0,0,0,0,0,0,0,'agr796','2020-02-07 19:49:51','2020-02-07 19:49:51','2020-02-07 19:41:29',0,0,NULL,'2019-12-19 20:30:19','2020-05-11 18:50:03'),(30,NULL,NULL,NULL,NULL,'wingzao','http://54.207.50.247/batalhafunk/img/user/1576803036.png','clesiostankovict@gmail.com','4e17a1d3c3e20c81ce4adf13e4c1df60899614ec',1,'Sou funkeiro ,sou Tricolor Paulista','Brasil','Monte Carmelo MG',1,'2e1a1ed7df29a1a92035c3e1f85fca8b',1,1,NULL,'dMsm_xPZAfM:APA91bFJJCvp3rd-f13fLbTCd61jx7R4q29Wrt9tvV3XEkLaTQ23xnzmRa2aF-Z0wgR8sRsWGYzhDAHa9ZMbE-lPQ9s6fTcWpHRxuhGJTVRcCTafauJ3Ayu-ebJHiqYXw6AICDcQpwJ0',1,1,'5','0',0,NULL,0,1,0,30,0,0,0,0,0,0,0,0,'cdc6vh','2019-12-20 00:52:14','2019-12-20 00:52:14','2019-12-20 00:48:58',0,0,NULL,'2019-12-20 00:48:23','2020-05-11 18:50:03'),(31,NULL,'110124647404834683575',NULL,NULL,'mccesinha','http://54.207.50.247/batalhafunk/img/user/1578650765.png','radiofavelaofc@gmail.com',NULL,1,'foda-se?','Brasil','indaiatuba',1,'a362d1a6869a58f541af59ad5c0ab663',1,1,NULL,'f4t0r977eVM:APA91bHptmAH2yk7jA9qMxyMzbFlvzOoFEL_6bDfRsY1ewRl2OWVzfB_M8qbNYdkzt-8dfHnMjvC7VJTzJB6iM4CAsJvQS1j9yoGetATfxnHFX8XEDUh_fzhruKhL1vhwn8ZJziHOFYm',1,1,'20','0',0,NULL,0,1,0,31,0,0,0,0,0,0,0,0,'11x364','2020-02-20 22:11:29','2020-02-20 22:11:29','2020-02-20 22:11:27',0,0,NULL,'2019-12-29 02:29:57','2020-05-11 18:50:03'),(32,NULL,NULL,NULL,NULL,'caiio',NULL,'caiom8790@gmail.com','014658aaab8f2112f81454001a63381987af867c',1,'Humildade e Lealdade','Brasil','indaiatuba\nindaiatuba',1,'9cb17a43f78a98e2867ad62600b8f0e7',1,1,NULL,'dTFxGZG8R4o:APA91bHHekSr5QUD3ImQlJ0jYtrJJZp6evx0oUmFETrrvsvSjcEQmYdLilOVhwWT18XtQgXFYb18G0PT7jVT0870JbtUabMUm8ieSMAmRc9U_M9dbAty06AnpwOBpJLYPS1LqA9qkMX3',1,1,'5','0',0,NULL,0,1,3,5,0,0,0,0,0,0,0,0,'s0nsnq','2020-01-04 17:32:16','2020-01-04 17:32:16','2020-01-04 17:28:37',0,0,NULL,'2020-01-04 17:26:09','2020-05-11 18:50:03'),(33,NULL,'100931310167959211250',NULL,NULL,'mcpethy','http://54.207.50.247/batalhafunk/img/user/1578909930.png','everaldopatrickdelimasouza@gmail.com','9d2a85e207d4d8be13845a136bfa56f857adcadc',1,'Determinado','Brasil','Presidente Prudente',1,'30565998c138ebaa52e118ecbcf88e40',1,2,NULL,'eTOcd7X7CXY:APA91bGkSrDbJnO95_KPd0TO-vwK47Mq6FTPbwNeyFZXydLs71G6dAGzsVMnyIwhDywKViYQpApW8wsdfzyAlNiwsoblFjN-dZByz1xn8dVtSiKKeGw2fcGyvPfxIV-qKdBcPPy2YmQW',1,1,'5','0',0,NULL,0,1,0,32,0,0,0,0,0,0,0,0,'8xdqo9','2020-01-13 15:22:08','2020-01-13 15:22:08','2020-01-13 10:02:31',0,0,NULL,'2020-01-13 09:58:52','2020-05-11 18:50:03'),(34,NULL,'113996269215744560716',NULL,NULL,'mcmth','http://54.207.50.247/batalhafunk/img/user/1579179399.png','mcmthoficial@gmail.com','09e4d4df6aa87a3d9e80088ae7c96c3f7c24dcc4',1,'mundão girou','Brasil','campo limpo paulista',1,'cdbcb7e08f67fbcf69f9fe38d7aa360e',1,1,NULL,'dxXE0vZXH0A:APA91bEYpWXfhARwDu3M7DkftE8I4ttr6knr8Q_JMKzp6UwRfUv1huI4veJrydPOKl1_ENsEtxCr23Tz-i5NQMZccbIKP_Wp5ru10C9xzIlpGzaXBxCAloWQGTK4-ZcXpI0FZDczO_XP',1,1,'5','0',0,NULL,0,1,0,33,0,0,0,0,0,0,0,0,'7i7ycf','2020-01-16 13:14:22','2020-01-16 13:14:22','2020-01-16 13:01:00',0,0,NULL,'2020-01-16 12:56:39','2020-05-11 18:50:03'),(35,NULL,NULL,NULL,NULL,'prakhar',NULL,'prakhar.anand@techugo.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',1,'dwedwe','Brasil','sadsd',1,'b493b851269b3c8e8462814f7a463439',1,1,NULL,'f6ukxZFFRe8:APA91bFc_t6irqnNZFhpav2HA76wKIrCfiHIKZGJzIDflPpF8wJGv0BufPklREAtJmARevQrra1jBC7HfPj0YNDAv7IVDak88JMSBHMy9vSEd92poANY9z0oADwN1D-gsSToRfl_oI4H',1,2,'5','0',0,NULL,0,1,0,34,0,0,0,0,0,0,0,0,'o1bime','2020-01-23 08:39:58','2020-01-23 08:39:58','2020-01-23 08:39:58',0,0,NULL,'2020-01-23 08:37:27','2020-05-11 18:50:03'),(36,NULL,'100361783513638661557',NULL,NULL,'mcckdotrembala','https://lh3.googleusercontent.com/a-/AAuE7mBzE2I_75ZxyEBehZU9wC89Zoipu8DU3nSTeJRhuw','ericksoares2511@gmail.com',NULL,1,'macha na boneca','Brasil','Magé',1,'0',1,1,NULL,'0',1,1,'15','0',0,NULL,0,1,9,3,0,0,0,0,0,0,0,0,'lqeowm','2020-02-07 02:53:42','2020-02-07 02:53:42','2020-02-07 02:53:43',0,0,NULL,'2020-01-27 00:03:16','2020-05-11 18:50:03'),(37,NULL,'106141346908165451805',NULL,NULL,'luanoliveira','http://54.207.50.247/batalhafunk/img/user/1580494817.png','lo6550132@gmail.com','1bd7ccd39d4690c0d00f444e2de55d8a1a822f05',1,'ainda tem tempo de realizar','Brasil','reserva',1,'53ff329e35f4c7bd421f41b7e2a6e617',1,1,NULL,'dbsANB8xSRM:APA91bEUxgnn0gDRTPaBcF61xd58w7lMS2Z9I0vGqLWo79bE9MIxw5TbUZd5xSVXspb9rFKN-8Epa1kijX5ci_txDCm7koRa7W8zVqTW21Zi-EEj5nqbLoYt1KywIXt4k7KCleOsj992',1,1,'5','0',0,NULL,0,1,0,35,0,0,0,0,0,0,0,0,'ab436h','2020-01-31 18:52:57','2020-01-31 18:52:57','2020-01-31 18:19:06',0,0,NULL,'2020-01-31 18:17:11','2020-05-11 18:50:03'),(38,NULL,'108219899686342940559',NULL,NULL,'talia','https://lh3.googleusercontent.com/a-/AAuE7mAi2Mopiu9U_QHLKj-x0JEGqTYniFwGDNvD98cGIA','taliapipoka@gmail.com',NULL,2,'sou oq sou, ñ oq vc quer que eu seja.','Brasil','Ituporanga',1,'512a2289af17a43c833600d6f8f815c6',1,1,NULL,'d22fOrZzorw:APA91bHAWDBQVY0vccftumyZ5mXkFs0V9IJy-C2N_vNthw9W-IW__zZT3xVNXWVVj7emcvCVOiE4KRUMq61dgZoRtDUIwO4BkKpa_8e6RjCndtzqUf8yEvb1-jgOz6qyiV_2zHCKdEm4',1,1,'5','0',0,NULL,0,1,0,36,0,0,0,0,0,0,0,0,'zte6mc','2020-02-11 22:19:08','2020-02-11 22:19:08','2020-02-11 23:20:42',0,0,NULL,'2020-02-11 23:20:41','2020-05-11 18:50:03'),(39,NULL,NULL,NULL,NULL,'eriklima','http://54.207.50.247/batalhafunk/img/user/1582924562.png','erik.alves253@gmail.com','3fae248645503c90a47fd4f23156251a2eab690f',1,'Quack quack','Canadá','Vancouver',1,'a7edae2ef8f539f8a52f2dfb7a9e199b',1,1,NULL,'eD2W4DBY-VI:APA91bHmVuK7JphFq-loLyD3uYh7VqLOe8RuEtRjkjNd28nYxE2eAwyEwghbXZNwZ3zyOCmymVXdbkKKRehBELRDMhADWPS1GOroWfEXrUvo5lr2vs--aPHp9FN6FjVMZB_I6X-cS13V',1,1,'20','0',0,NULL,0,1,0,37,0,0,0,0,0,0,0,0,'nhxtff','2020-03-08 00:50:25','2020-03-08 00:50:25','2020-03-08 00:44:29',0,0,NULL,'2020-02-28 21:16:02','2020-05-11 18:50:03'),(40,'10206544460886196',NULL,NULL,NULL,'namrata','https://graph.facebook.com/10206544460886196/picture?type=large&redirect=true&width=600&height=600','namrata_best_1990@yahoo.com',NULL,2,'qwerty','Índia','testing',1,'356813089cd36ef7fdd44b758ac54b96',1,1,NULL,'dwpt4Q45RQSO3xA82-Sqew:APA91bFIQA7WKKp2XEcOHW-UV70FQxXujd__FLWHQQEOOI34bl_Qky0WIlpyMeTi-LGGwJrbwYXTuZkgWkMDbdMZ0TXa4_7TupZfTxFOx8DHwruq8XKPwLLTtofIXcEh2f_e76N61XnZ',1,1,'30','0',0,NULL,0,1,5,4,0,0,0,0,0,0,0,0,'raiczk','2020-05-11 17:12:51','2020-05-11 17:12:51','2020-05-11 17:12:52',0,0,NULL,'2020-03-05 06:39:20','2020-05-11 18:50:03'),(41,NULL,NULL,NULL,NULL,'heric',NULL,'Isabel.40batista@gmail.com','ef0710ee7b6f879f280f561200da195e162be27e',1,'fank','Brasil','Campo Alegre de Lurdes ba',1,'38249ba7682ebbebdc67e53eb9395b78',0,1,NULL,NULL,1,1,'5','0',0,NULL,0,1,0,38,0,0,0,5,0,0,0,0,'mk4wr6','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,NULL,'2020-03-05 22:16:10','2020-05-11 18:50:03'),(42,NULL,'116344554328661015104',NULL,NULL,NULL,NULL,'hericdesousacavalcante92@gmail.com',NULL,1,'mc heric','Brasil','Campo Alegre de Lurdes ba',1,'ff526689698d5eacbc0eea59c56abad0',1,2,NULL,'fvdO-wgFN18:APA91bGRGuQ9wtu24fmOkj-Px75rz-gq7SOFHzkO8LpvdJiN8q7Qs7NGbuHyg2nHQ6mjAXitlrKEAKqvDbWFKmpFjGZTomfSo6RhybOSK0oA5UA3gLuAmbrcvWdeY0wApXH0trgavrKW',1,1,'10','0',0,NULL,0,1,0,39,0,0,0,0,0,0,0,0,'re56uq','2020-03-07 17:35:11','2020-03-07 17:35:11','2020-03-07 15:12:51',0,0,NULL,'2020-03-05 22:18:12','2020-05-11 18:50:03'),(43,NULL,NULL,NULL,NULL,'mcshurekgvs','http://54.207.50.247/batalhafunk/img/user/1584331663.png','Jackson.shurek7@gmail.com','86c0cdd64ccfd04086a9909c18f9e67e393b9b05',1,'com muita fê em Deus eu vou seguindo meu destino','Brasil','Palmares Do Sul',1,'4af0545125f7d67a142b715e82899236',1,1,NULL,'fen5M5y53bk:APA91bELD-9lXCg147SSfKldMTfNMH2rahhi5IViEMZERG7gO2MUpKjLRBfawc-adHlhex4kksdr--hjjYRtGwzeeUSJXG-1iBqkh-6UyjPnnpWL2osywlP605fFJ-L4awi8OH4c3-2U',1,1,'5','0',0,NULL,0,1,0,40,0,0,0,0,0,0,0,0,'airvcj','2020-03-16 04:11:58','2020-03-16 04:11:58','2020-03-16 04:05:17',0,0,NULL,'2020-03-16 03:50:16','2020-05-11 18:50:03'),(44,NULL,'108682010251872396750',NULL,NULL,'renato',NULL,'rr0092992@gmail.com',NULL,1,'Ribeiro','Brasil','contagem',1,'ec107796c676f8db6d7779686dffff76',1,1,NULL,'c0tpyJ9sPKk:APA91bG-Xl2DnOAuuX6oDi2WlUS-T0SPX6oxPIi_miHzAy1rjHpKjkY7E7qX1jk0foJ_Yk3aePYkVo9pj5GeVVhDR3mEimv7A2YqtJ_a15TbXq_IBpakay2O9r4MzI2K3oJN3pA5pfl7',1,1,'5','0',0,NULL,0,1,0,41,0,0,0,0,0,0,0,0,'l4t0z0','2020-03-27 18:28:12','2020-03-27 18:28:12','2020-03-27 18:09:47',0,0,NULL,'2020-03-27 18:09:44','2020-05-11 18:50:03'),(56,NULL,NULL,NULL,NULL,'deepak22',NULL,'deepak22@yopmail.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',0,'',NULL,NULL,1,'911892f28cc9ff343a01382b4abf4299',0,1,NULL,NULL,1,1,'5','0',0,NULL,0,1,0,42,0,0,0,5,0,0,0,0,'tmibmu','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,NULL,'2020-04-17 11:20:46','2020-05-11 18:50:03'),(59,NULL,NULL,NULL,NULL,'deepak2b1',NULL,'deepak.bansal1@techugo.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',0,'',NULL,NULL,1,'d312ac2c52a142dc95a615f655083908',0,1,NULL,NULL,1,1,'5','0',0,NULL,0,1,0,43,0,0,0,5,0,0,0,0,'5zozfb','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,NULL,'2020-04-17 11:29:01','2020-05-11 18:50:03'),(66,NULL,NULL,NULL,NULL,'danilo',NULL,'yg192250@gmail.com','10340c92a6b8cffebc93f6592f735d3a8fc92156',1,'meu sonho e ser mc','Brasil','piripiri',1,'7f205ba7e235537ffff1d1d6765cdb26',1,1,NULL,'dSIfIjbFM4s:APA91bGtNPClszZplWaPuoL5fC8uzuW5plimoLZ0lK696G6iQCMPnKFgTsdHdOpRoUYHBsYFFCyB3XavAdr06X1TABzH33lHhrMM-LpGTbHPlr5v9Ne_MNd_EmhmpC5PJN8Eeu8e-kFT',1,1,'10','0',0,NULL,0,1,0,44,0,0,0,0,0,0,0,0,'j2l67i','2020-04-28 11:54:16','2020-04-28 11:54:16','2020-04-28 11:54:15',0,0,'47C615C4C0D043DA87B5B3C18B92731D','2020-04-23 02:00:17','2020-05-11 18:50:03'),(67,NULL,NULL,NULL,NULL,'renan',NULL,'renan.cardoso@appfactory.com.br','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',1,'vivj','Brasil','sao paulo',1,'10b7826a316b05fe661229d19c9452d5',1,1,NULL,NULL,1,1,'5','0',0,NULL,0,1,1,9,0,0,0,0,0,0,0,0,'ca2y0e','2020-04-23 14:40:49','2020-04-23 14:40:49','2020-04-23 14:38:49',0,0,'C21047700B2543C5911EBBD69E8E661C','2020-04-23 14:38:05','2020-05-11 18:50:03'),(71,NULL,NULL,NULL,NULL,'cadu','http://54.207.50.247/batalhafunk/img/user/1588176329.file','ricardo_rms@me.com','a7c79a85f031a43b59abb5ff950f074fbead7053',1,'Dev','Brasil','Santo André ',1,'0c0f3b420dba5c9358f76f0602ba1fe3',1,2,NULL,'eGiOU580k6g:APA91bGipv0Ek0AKi6SzFjJJD6CgkLHEx4i51XNLy-ZuOXf4MRUWp3eVLAdxzarDRA1RW-6yG48-Af-S6UxlR3hmybIN4B9cmXGO2FuHybWoTlvo0ycMHBQLrmVoHnZ3Cp_TgofRZgrI',2,1,'1376','0',0,NULL,0,1,0,45,0,0,0,0,0,0,0,0,'1fsmzc','2020-05-08 11:38:23','2020-05-08 11:38:23','2020-05-08 23:38:23',0,0,'92672BDEB5784320A436D466B75317E7','2020-04-27 18:37:59','2020-05-11 18:50:03'),(84,NULL,'102056770645530663116',NULL,NULL,'harjot',NULL,'harjot.jot37@gmail.com',NULL,2,'8700084279','Índia','india\nindia',1,'bc2679bc908fec6f45786ba0db1f0b52',1,1,NULL,'ejyH57N6RQ6il8zQJdQKmj:APA91bER9S586VHVKOa2oyVncbEz3qnxiYlhKSc_kXggyU4TW0PkZbPrZhkr5GyuZCii9mXkO-KRw8Um6lYvnbgqDT10WUdEVaTllNNrrW19hXVlp5UMxkAuiKY5L7pEcCZbZFM1VqsP',1,2,'5','0',0,NULL,0,1,3,6,0,0,0,0,0,0,0,0,'zld3lk','2020-05-03 12:50:25','2020-05-03 12:50:25','2020-05-03 11:29:40',0,0,'D70A6061308C4203948A79F12BB0446C','2020-05-03 11:29:37','2020-05-11 18:50:03'),(85,NULL,NULL,NULL,NULL,'ricardooo','http://54.207.50.247/batalhafunk/img/user/1588618351.file','ricardo@mailinator.com','a7c79a85f031a43b59abb5ff950f074fbead7053',0,'Abused','Brasil','Santos',1,'8e413da83440fc4ca08bb8bfed2c4460',1,1,NULL,NULL,1,1,'20','0',0,NULL,0,1,0,46,0,0,0,0,0,0,0,0,'olafm9','2020-05-08 10:00:19','2020-05-08 10:00:19','2020-05-07 22:35:39',0,0,'0FEE4F22861C4790AA2F318E2FA96A91','2020-05-04 18:52:31','2020-05-11 18:50:03'),(86,NULL,NULL,NULL,NULL,'kelvinlopess','http://54.207.50.247/batalhafunk/img/user/1588957571.file','kelvin.lopesms@gmail.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',0,'Funk ','Brasil','Oi',1,'0',1,1,NULL,'0',2,1,'15','0',0,NULL,0,1,0,47,0,0,0,0,0,0,0,0,'ymq3yr','2020-05-11 06:11:59','2020-05-11 06:11:59','2020-05-11 18:05:25',0,0,'B8EF1635158049A9B726CE5BD168744E','2020-05-08 17:06:11','2020-05-11 18:50:03'),(89,NULL,NULL,NULL,NULL,'narayan',NULL,'abhaynarayan95@gmail.com','9bb48ff5c97a25121fd7847b181251084b98476f',1,'footballer','Brasil','ind',1,'0',1,1,NULL,'0',2,1,'5','0',0,NULL,0,1,0,48,0,0,0,0,0,0,0,0,'ih64gy','2020-05-11 05:26:41','2020-05-11 05:26:41','2020-05-11 17:01:38',0,0,'BAFBE5396E6D46A49C5E8DAC6735AA8C','2020-05-11 17:00:16','2020-05-11 18:50:03'),(90,NULL,NULL,NULL,NULL,'kelvinlopessurmesur','http://54.207.50.247/batalhafunk/img/user/1589220926.file','kelvin@surmesur.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',0,'Oi','Brasil','Teste',1,'0',1,2,NULL,'0',1,1,'5','0',0,NULL,0,1,0,49,0,0,0,0,0,0,0,0,'cya1nr','2020-05-11 19:13:37','2020-05-11 19:13:37','2020-05-11 18:20:14',0,0,'6879956CED73411EBC5137CAF548770D','2020-05-11 18:15:26','2020-05-11 19:14:07'),(91,NULL,'100688770346497680672',NULL,NULL,'josivaldo',NULL,'1000santojosivaldo@gmail.com',NULL,1,'sou menor','Brasil','aracaju',1,'91a751dbfbb50790e54f669e189055f4',1,1,NULL,'cg9G6HrsTOm66oqMjFtLAg:APA91bGwOKwFd4t0oXBtQZthCuoXs7fPAHXUnAlH_cxvj2LcsuGwSixOazVgVyrn62BOhaMWsPJWC2lgrqK9W3jWkpQeeNn3GIC4Nehq6biYFT7-oLry0OYYI5QX8526DFGqmEtZR15k',1,1,'5','0',0,NULL,0,1,0,0,0,0,0,0,0,0,0,0,'fmydtj','2020-05-12 01:28:24','2020-05-12 01:28:24','2020-05-12 01:20:10',0,0,'FBFA6E71EA2C4F4B9A052AC1A2F37F0F','2020-05-12 01:20:08','2020-05-12 01:28:25'),(92,NULL,NULL,NULL,NULL,'raj',NULL,'rajpal@gmail.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',0,'',NULL,NULL,0,'92d542b5976e883b93a06454c92d635b',0,1,NULL,NULL,1,1,'5','0',0,NULL,0,1,0,0,0,0,0,5,0,0,0,0,'ez2wfr','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,NULL,'2020-05-14 05:08:00','2020-05-14 10:38:10'),(94,NULL,NULL,NULL,NULL,'raj1',NULL,'rajpaltechugo@gmail.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',0,'',NULL,NULL,0,'8c245ca7bea2b5a2ad67b37056a8360b',0,1,NULL,NULL,1,1,'5','0',0,NULL,0,1,0,0,0,0,0,5,0,0,0,0,'dace2i','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,NULL,'2020-05-27 10:34:34','2020-07-06 13:47:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verifiedbadge_values`
--

DROP TABLE IF EXISTS `verifiedbadge_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verifiedbadge_values` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `verified_value` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verifiedbadge_values`
--

LOCK TABLES `verifiedbadge_values` WRITE;
/*!40000 ALTER TABLE `verifiedbadge_values` DISABLE KEYS */;
INSERT INTO `verifiedbadge_values` VALUES (1,'5','2019-04-15 08:58:45','2019-04-15 09:32:33');
/*!40000 ALTER TABLE `verifiedbadge_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `view_advertisements`
--

DROP TABLE IF EXISTS `view_advertisements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `view_advertisements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adv_id` int(11) NOT NULL,
  `viewed_by` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_advertisements`
--

LOCK TABLES `view_advertisements` WRITE;
/*!40000 ALTER TABLE `view_advertisements` DISABLE KEYS */;
INSERT INTO `view_advertisements` VALUES (1,2,9,'2019-12-05 05:05:48','2019-12-05 05:05:48'),(2,2,13,'2019-12-06 19:20:19','2019-12-06 19:20:19'),(3,3,13,'2019-12-06 19:20:21','2019-12-06 19:20:21'),(4,2,7,'2019-12-08 19:00:05','2019-12-08 19:00:05'),(5,3,23,'2019-12-11 15:18:13','2019-12-11 15:18:13'),(6,2,23,'2019-12-11 15:18:20','2019-12-11 15:18:20'),(7,2,24,'2019-12-14 13:57:20','2019-12-14 13:57:20'),(8,3,24,'2019-12-14 13:57:27','2019-12-14 13:57:27'),(9,3,27,'2019-12-17 11:09:37','2019-12-17 11:09:37'),(10,2,27,'2019-12-17 11:09:40','2019-12-17 11:09:40'),(11,2,29,'2019-12-19 21:40:45','2019-12-19 21:40:45'),(12,3,29,'2019-12-19 21:40:56','2019-12-19 21:40:56'),(13,3,30,'2019-12-20 00:52:18','2019-12-20 00:52:18'),(14,2,30,'2019-12-20 00:52:20','2019-12-20 00:52:20'),(15,3,33,'2020-01-13 10:03:35','2020-01-13 10:03:35'),(16,2,36,'2020-01-27 00:03:40','2020-01-27 00:03:40'),(17,3,37,'2020-01-31 18:41:26','2020-01-31 18:41:26'),(18,2,37,'2020-01-31 18:48:06','2020-01-31 18:48:06'),(19,2,39,'2020-03-01 03:45:31','2020-03-01 03:45:31'),(20,2,43,'2020-03-16 04:12:02','2020-03-16 04:12:02'),(21,3,15,'2020-04-01 07:18:14','2020-04-01 07:18:14'),(22,2,67,'2020-04-23 14:40:53','2020-04-23 14:40:53'),(23,2,84,'2020-05-03 11:30:25','2020-05-03 11:30:25'),(24,3,84,'2020-05-03 11:30:28','2020-05-03 11:30:28'),(25,3,90,'2020-05-11 19:14:00','2020-05-11 19:14:00');
/*!40000 ALTER TABLE `view_advertisements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `view_batals`
--

DROP TABLE IF EXISTS `view_batals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `view_batals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batal_id` int(11) NOT NULL,
  `viewed_by` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_batals`
--

LOCK TABLES `view_batals` WRITE;
/*!40000 ALTER TABLE `view_batals` DISABLE KEYS */;
INSERT INTO `view_batals` VALUES (1,8,9,'2019-12-19 08:41:38','2019-12-19 08:41:38'),(2,8,29,'2019-12-19 21:41:19','2019-12-19 21:41:19'),(3,8,30,'2019-12-20 00:50:53','2019-12-20 00:50:53'),(4,8,27,'2019-12-20 02:00:09','2019-12-20 02:00:09'),(5,8,2,'2020-01-17 00:16:50','2020-01-17 00:16:50'),(6,8,42,'2020-03-05 23:00:03','2020-03-05 23:00:03'),(7,8,84,'2020-05-03 11:40:49','2020-05-03 11:40:49'),(8,8,71,'2020-05-08 23:38:27','2020-05-08 23:38:27');
/*!40000 ALTER TABLE `view_batals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `view_musics`
--

DROP TABLE IF EXISTS `view_musics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `view_musics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `music_id` int(11) NOT NULL,
  `viewed_by` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_musics`
--

LOCK TABLES `view_musics` WRITE;
/*!40000 ALTER TABLE `view_musics` DISABLE KEYS */;
INSERT INTO `view_musics` VALUES (2,1,9,'2019-12-05 10:44:57','2019-12-05 10:44:57'),(3,1,13,'2019-12-06 19:20:13','2019-12-06 19:20:13'),(4,1,16,'2019-12-07 12:28:32','2019-12-07 12:28:32'),(5,2,2,'2019-12-07 20:56:29','2019-12-07 20:56:29'),(6,1,2,'2019-12-07 20:57:33','2019-12-07 20:57:33'),(7,1,18,'2019-12-08 00:22:55','2019-12-08 00:22:55'),(8,1,6,'2019-12-10 03:42:34','2019-12-10 03:42:34'),(9,1,23,'2019-12-11 15:18:06','2019-12-11 15:18:06'),(10,3,23,'2019-12-11 15:40:49','2019-12-11 15:40:49'),(11,4,32,'2020-01-04 17:32:26','2020-01-04 17:32:26'),(12,4,2,'2020-01-17 01:49:04','2020-01-17 01:49:04'),(13,6,36,'2020-01-27 00:14:02','2020-01-27 00:14:02'),(14,6,3,'2020-01-28 19:45:21','2020-01-28 19:45:21'),(15,6,37,'2020-01-31 18:41:01','2020-01-31 18:41:01'),(16,1,29,'2020-02-07 19:51:54','2020-02-07 19:51:54'),(17,6,29,'2020-02-07 19:52:18','2020-02-07 19:52:18'),(18,7,40,'2020-03-05 06:49:41','2020-03-05 06:49:41'),(19,7,42,'2020-03-05 22:23:45','2020-03-05 22:23:45'),(20,1,42,'2020-03-07 15:57:05','2020-03-07 15:57:05'),(21,7,39,'2020-03-08 00:43:51','2020-03-08 00:43:51'),(22,1,39,'2020-03-08 00:46:42','2020-03-08 00:46:42'),(23,7,44,'2020-03-27 18:26:38','2020-03-27 18:26:38'),(24,6,44,'2020-03-27 18:27:02','2020-03-27 18:27:02'),(25,4,44,'2020-03-27 18:27:29','2020-03-27 18:27:29'),(26,1,44,'2020-03-27 18:28:05','2020-03-27 18:28:05'),(27,8,71,'2020-04-28 16:29:20','2020-04-28 16:29:20'),(28,1,71,'2020-04-29 16:03:35','2020-04-29 16:03:35'),(29,6,71,'2020-04-29 16:03:40','2020-04-29 16:03:40'),(30,9,84,'2020-05-03 11:32:06','2020-05-03 11:32:06'),(31,1,84,'2020-05-03 11:40:03','2020-05-03 11:40:03'),(32,7,84,'2020-05-03 11:40:13','2020-05-03 11:40:13'),(33,9,85,'2020-05-07 22:38:53','2020-05-07 22:38:53'),(34,9,86,'2020-05-08 17:35:27','2020-05-08 17:35:27'),(35,6,86,'2020-05-10 19:12:44','2020-05-10 19:12:44'),(36,1,90,'2020-05-11 18:42:19','2020-05-11 18:42:19'),(37,6,90,'2020-05-11 18:45:13','2020-05-11 18:45:13');
/*!40000 ALTER TABLE `view_musics` ENABLE KEYS */;
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
