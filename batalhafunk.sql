-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: batalhafunk
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
-- Current Database: `batalhafunk`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `batalhafunk` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `batalhafunk`;

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
INSERT INTO `add_times` VALUES (1,5,5,'2019-05-22 09:31:10','2020-04-08 19:47:03');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
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
INSERT INTO `advertisements` VALUES (1,1,'ewfc','dsds','ds','ds',0,'ds','d','ds','ds','ds','ds',12,4,'2019-04-29 06:20:24','2020-04-02 14:04:29'),(2,1,'Nike','1556533967.jpeg','1556533967.jpeg','new',0,NULL,NULL,'','',NULL,NULL,16,1,'2019-04-29 10:32:47','2020-03-30 22:54:31'),(3,1,'OK','1557188838.JPG','1557188838.JPG','TEST',0,NULL,NULL,'','',NULL,NULL,12,1,'2019-05-07 00:27:18','2020-03-30 22:54:33');
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
) ENGINE=InnoDB AUTO_INCREMENT=356 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batals`
--

LOCK TABLES `batals` WRITE;
/*!40000 ALTER TABLE `batals` DISABLE KEYS */;
INSERT INTO `batals` VALUES (8,'http://52.27.53.102/batalhafunk/img/audio/5c541cab043d6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ca60454026d6.mp3','new',2,1,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-04-04 13:19:18','2019-04-04 13:19:18'),(21,'http://52.27.53.102/batalhafunk/img/audio/5c541cab043d6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cb451b47d1e1.mp3','and1',14,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-04-15 09:41:10','2019-04-15 09:41:10'),(26,'http://52.27.53.102/batalhafunk/img/audio/5c541cab043d6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cb45cacb3288.mp3','1',12,1,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-04-15 10:27:59','2019-04-15 10:27:59'),(28,'http://52.27.53.102/batalhafunk/img/audio/5c541cab043d6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cb45d9de0284.mp3','2',12,1,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-04-15 10:32:00','2019-04-15 10:32:03'),(30,'http://52.27.53.102/batalhafunk/img/audio/5c541cab043d6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cb45e306902c.mp3','1',14,1,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-04-15 10:34:26','2019-04-15 10:34:26'),(32,'http://52.27.53.102/batalhafunk/img/audio/5c541cab043d6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cb45eda6660d.mp3','3',12,1,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-04-15 10:37:16','2019-04-15 10:37:33'),(35,'http://52.27.53.102/batalhafunk/img/audio/5c541cab043d6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cb46156183ea.mp3','1',14,2,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-04-15 10:47:52','2019-04-15 10:47:52'),(39,'http://52.27.53.102/batalhafunk/img/audio/5c541cab043d6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cb465abd169e.mp3','20',12,14,'qwer','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cb4671c30e84.mp3',1,1,24,1,1,1,12,'2019-04-15','2019-04-15 11:12:30','2019-04-15 11:06:22','2019-09-27 23:34:19'),(40,'http://52.27.53.102/batalhafunk/img/audio/5c541cab043d6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cb465e33c9dd.mp3','21',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-04-15 11:07:17','2019-04-15 11:07:17'),(41,'http://52.27.53.102/batalhafunk/img/audio/5c541cab043d6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cb4664f9f5b6.mp3','21',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-04-15 11:09:05','2019-04-15 11:09:05'),(42,'http://52.27.53.102/batalhafunk/img/audio/5c541cab043d6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cb4678ec71d4.mp3','7',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-04-15 11:14:25','2019-04-15 11:14:25'),(43,'http://52.27.53.102/batalhafunk/img/audio/5c541cab043d6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cb46838c9f5e.mp3','7',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-04-15 11:17:14','2019-04-15 11:17:14'),(49,'http://52.27.53.102/batalhafunk/img/audio/5c541cab043d6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cb490d2ae32c.mp3','21',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-04-15 14:10:29','2019-04-15 14:10:29'),(50,'http://52.27.53.102/batalhafunk/img/audio/5c541cab043d6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cb55ea0564f1.mp3','shubha12',1,2,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-04-16 04:48:35','2019-04-16 04:48:39'),(63,'http://52.27.53.102/batalhafunk/img/audio/5c541cab043d6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cb5b8a4242f1.mp3','25',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-04-16 11:12:38','2019-04-16 11:12:38'),(64,'http://52.27.53.102/batalhafunk/img/audio/5c541cab043d6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cb5d29dce73b.mp3','abhay1',12,2,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-04-16 13:03:28','2019-04-16 13:03:28'),(65,'http://52.27.53.102/batalhafunk/img/audio/5c541cab043d6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cb5d2da261d0.mp3','abhay2',12,2,NULL,NULL,0,2,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-04-16 13:04:28','2019-04-16 13:04:28'),(66,'http://52.27.53.102/batalhafunk/img/audio/5c541cab043d6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cb5d30ce4bee.mp3','abhay3',12,2,NULL,NULL,0,3,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-04-16 13:05:19','2019-04-16 13:05:19'),(67,'http://52.27.53.102/batalhafunk/img/audio/5c541cab043d6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cb75de7199c2.mp3','sem fone',5,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-04-17 17:10:01','2019-04-17 17:10:01'),(81,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ccad11e60995.mp3','qee',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-02 11:14:40','2019-05-02 11:14:40'),(82,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ccbe1827f1ff.mp3','bat',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-03 06:36:53','2019-05-03 06:36:53'),(84,'http://52.27.53.102/batalhafunk/img/audio/5cca95c5d4b13.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ccbe31c89a3e.mp3','VA',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-03 06:43:44','2019-05-03 06:43:44'),(85,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ccbe37e8a64e.mp3','rat',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-03 06:45:21','2019-05-03 06:45:21'),(94,'http://52.27.53.102/batalhafunk/img/audio/5cca95c5d4b13.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ccbe5846cbd4.mp3','y',14,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-03 06:53:59','2019-05-03 06:53:59'),(98,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ccbf0be30c80.mp3','u',12,1,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-03 07:41:52','2019-05-03 07:43:04'),(99,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ccbf3fb3f553.mp3','you',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-03 07:55:41','2019-05-03 07:55:41'),(105,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ccc06337f809.mp3','love',1,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-03 09:13:25','2019-05-03 09:13:25'),(106,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ccc09ef9d091.mp3','hekko9',1,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-03 09:29:22','2019-05-03 09:29:22'),(143,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cd0b792cc951.mp3','10',5,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-06 22:39:16','2019-05-06 22:39:16'),(180,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cd16da5f0142.mp3','q',12,14,NULL,NULL,0,9,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-07 11:36:08','2020-04-07 12:40:58'),(182,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cd17161ef67c.mp3','hd',12,14,NULL,NULL,0,9,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-07 11:52:04','2020-04-07 12:40:58'),(183,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cd171a15a4a3.mp3','dx',12,14,NULL,NULL,0,9,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-07 11:53:07','2020-04-07 12:40:58'),(184,'http://52.27.53.102/batalhafunk/img/audio/5cca95c5d4b13.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cd171e18bc33.mp3','ty',12,14,NULL,NULL,0,9,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-07 11:54:13','2020-04-07 12:40:58'),(186,'http://52.27.53.102/batalhafunk/img/audio/5cca95c5d4b13.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cd172200be0e.mp3','ty',12,14,NULL,NULL,0,9,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-07 11:55:15','2020-04-07 12:40:58'),(235,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ce396745355f.mp3','battle',12,1,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-21 06:11:02','2019-05-21 06:11:10'),(242,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ced31938daa0.mp3','yyy',5,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-28 13:03:28','2019-05-28 13:03:28'),(243,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cf0cd6abb8eb.mp3','test',14,12,'ten','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d3571c33f828.mp3',1,3,2,1,1,1,12,'2019-07-22','2019-07-22 08:20:21','2019-05-31 06:45:00','2020-04-25 00:54:09'),(245,'http://52.27.53.102/batalhafunk/img/audio/5cca95c5d4b13.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cf0e8a77f1fd.mp3','tu',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-31 08:41:14','2019-05-31 08:41:14'),(246,'http://52.27.53.102/batalhafunk/img/audio/5cca95c5d4b13.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cf0e9a0c3396.mp3','tui',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-31 08:45:24','2019-05-31 08:45:24'),(247,'http://52.27.53.102/batalhafunk/img/audio/5cca95c5d4b13.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cf0ea03043f8.mp3','gh',12,14,'test','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d3050b680de7.mp3',1,2,5,1,1,1,12,'2019-07-18','2019-07-18 10:58:01','2019-05-31 08:47:02','2019-09-18 17:27:55'),(248,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cf0ee2245b11.mp3','shubham',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-31 09:04:40','2019-05-31 09:04:40'),(249,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cf0eeaa34a4f.mp3','shy ham',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-31 09:06:56','2019-05-31 09:06:56'),(250,'http://52.27.53.102/batalhafunk/img/audio/5cca95c5d4b13.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cf1197c2a97a.mp3','dghhj',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-31 12:09:35','2019-05-31 12:09:35'),(251,'http://52.27.53.102/batalhafunk/img/audio/5cca95c5d4b13.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cf119c479537.mp3','rhjccg',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-31 12:10:47','2019-05-31 12:10:47'),(252,'http://52.27.53.102/batalhafunk/img/audio/5cca95c5d4b13.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cf119fc729f8.mp3','rhjccg',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-31 12:11:43','2019-05-31 12:11:43'),(254,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cf12ef890aca.mp3','shubham',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-31 13:41:15','2019-05-31 13:41:15'),(255,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5cf1334d5b4c8.mp3','qwwwer',12,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-05-31 13:59:43','2019-05-31 13:59:43'),(257,'http://52.27.53.102/batalhafunk/img/audio/5cca95c5d4b13.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d009b160f46a.mp3','#Bekhayali',32,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-06-12 06:26:35','2019-06-12 06:26:35'),(258,'http://52.27.53.102/batalhafunk/img/audio/5cca95c5d4b13.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d009c1c525f7.mp3','#Bekhayali',32,1,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-06-12 06:30:57','2019-06-12 06:31:43'),(264,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d1590a66c76d.mp3','.',56,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-06-28 03:59:36','2019-06-28 03:59:36'),(265,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d1591b8f0e69.mp3','.',56,14,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-06-28 04:04:11','2019-06-28 04:04:11'),(267,'http://52.27.53.102/batalhafunk/img/audio/5d168a8489e8c.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d17996785b3a.mp3','sem fone',5,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-06-29 17:01:31','2019-06-29 17:01:31'),(268,'http://52.27.53.102/batalhafunk/img/audio/5d168a8489e8c.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d1a9d4530a4d.mp3','vai aya vai',66,56,NULL,NULL,0,4,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-07-01 23:54:49','2019-07-19 20:49:54'),(269,'http://52.27.53.102/batalhafunk/img/audio/5d168a8489e8c.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d1aa0965a6b8.mp3','Onanana',66,56,'Vem que vem','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d322cef294ad.mp3',1,3,14,1,1,1,56,'2019-07-19','2019-07-19 20:49:54','2019-07-02 00:08:58','2020-04-11 03:39:10'),(270,'http://52.27.53.102/batalhafunk/img/audio/5cca95c5d4b13.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d1aa814868a3.mp3','Até rouk ixculaxa',56,66,'lãlãlãlãiiii','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d1aac8eb149f.mp3',1,2,14,1,1,1,66,'2019-07-02','2019-07-02 01:00:03','2019-07-02 00:40:58','2020-04-11 03:38:43'),(272,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d1b62b4edfa7.mp3','adventure',67,32,'payback','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d1b62e023edd.mp3',1,2,7,1,1,1,32,'2019-07-02','2019-07-02 13:57:54','2019-07-02 13:57:11','2019-09-18 17:27:48'),(273,'http://52.27.53.102/batalhafunk/img/audio/5cca95c5d4b13.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d1b9d4822705.mp3','Music Wars',32,67,'huhhhh','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d1ba050f1594.mp3',1,3,0,1,1,2,0,'2019-07-02','2019-07-02 18:20:04','2019-07-02 18:07:07','2019-07-05 11:55:02'),(274,'http://52.27.53.102/batalhafunk/img/audio/5cca95c5d4b13.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d1b9d77bfaa8.mp3','we',32,1,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-07-02 18:07:54','2019-07-02 18:08:23'),(276,'http://52.27.53.102/batalhafunk/img/audio/5cca95c5d4b13.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d1ba2785aa66.mp3','we',32,67,NULL,NULL,0,5,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-07-02 18:29:15','2019-07-02 18:29:15'),(278,'http://52.27.53.102/batalhafunk/img/audio/5d1689cea2531.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d2dd8e3ce460.mp3','ola',32,67,NULL,NULL,0,4,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-07-16 14:02:15','2019-07-16 14:02:22'),(280,'http://52.27.53.102/batalhafunk/img/audio/5d1689cea2531.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d323654df882.mp3','Na sentada',56,69,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-07-19 21:30:00','2019-07-19 21:30:30'),(281,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d32619b52808.mp3','funk da Ana',71,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-07-20 00:34:38','2019-07-20 00:34:38'),(282,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d3314eab9171.mp3','funk da tia Ana',71,56,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-07-20 13:19:41','2019-07-20 13:19:41'),(284,'http://52.27.53.102/batalhafunk/img/audio/5d335284e0fb6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d379c1cbfc43.mp3','Kahn’s',73,74,'ok','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d379c5cc7f5f.mp3',1,1,7,1,1,2,0,'2019-07-23','2019-07-23 23:46:38','2019-07-23 23:45:34','2019-10-25 16:55:08'),(285,'http://52.27.53.102/batalhafunk/img/audio/5d335284e0fb6.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d3827df1c9c0.mp3','oye',75,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-07-24 09:41:53','2019-07-24 09:41:53'),(286,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d389d88935fc.mp3','battla',20,14,'testè','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d389eb8c4d07.mp3',1,1,10,1,1,1,14,'2019-07-24','2019-07-24 18:08:59','2019-07-24 18:03:55','2020-04-08 06:54:21'),(287,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d396ae6482ab.mp3','ten',12,14,NULL,NULL,0,9,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-07-25 08:40:08','2020-04-07 12:40:58'),(288,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d396b3dbfb0a.mp3','you',12,20,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-07-25 08:41:35','2019-07-25 08:41:41'),(289,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d39b3fcf057c.mp3','gg',12,14,NULL,NULL,0,9,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-07-25 13:51:59','2020-04-07 12:40:58'),(290,'http://52.27.53.102/batalhafunk/img/audio/5d168a8489e8c.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d3a7fef8c587.mp3','Tá Tenso BB ?',55,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-07-26 04:22:11','2019-07-26 04:22:11'),(294,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d3ec7fadcfe2.mp3','yes',12,14,NULL,NULL,0,9,1,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-07-29 10:18:37','2020-04-07 12:40:58'),(295,'http://52.27.53.102/batalhafunk/img/audio/5cca958907f9e.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d4812dc9789e.mp3','Sagar Limbani',83,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-08-05 11:28:31','2019-08-05 11:28:31'),(298,'http://52.27.53.102/batalhafunk/img/audio/5d48313f2c9fc.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d4ca1396bf74.mp3','Desce na reboladinha',56,81,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-08-08 22:25:01','2019-08-08 22:25:01'),(299,'http://52.27.53.102/batalhafunk/img/audio/5d4830b822afd.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d56fed1aff0a.mp3','hagaj',5,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-08-16 19:07:01','2019-08-16 19:07:01'),(300,'http://52.27.53.102/batalhafunk/img/audio/5d4830b822afd.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d7fd27006e47.mp3','mc boladao',9,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-09-16 18:20:35','2019-09-16 18:20:35'),(301,'http://52.27.53.102/batalhafunk/img/audio/5d41fb132cf95.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d825ea77f105.mp3','Reboladinha',91,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-09-18 16:43:23','2019-09-18 16:43:23'),(302,'http://52.27.53.102/batalhafunk/img/audio/5d51759084e09.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d826178d2b08.mp3','É o fluxo',9,91,'Rainha do combate','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d8261d585e8a.mp3',1,1,9,1,1,1,9,'2019-09-18','2019-09-18 16:56:56','2019-09-18 16:55:24','2019-11-24 17:09:05'),(303,'http://52.27.53.102/batalhafunk/img/audio/5d4830e7f3215.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d8279a0ddca9.mp3','Vem pro baile',5,9,'Naquele pique','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d827a60d0c01.mp3',1,1,17,1,1,1,5,'2019-09-18','2019-09-18 18:41:40','2019-09-18 18:38:28','2019-09-27 23:34:28'),(305,'http://52.27.53.102/batalhafunk/img/audio/5d8132a938ced.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d84da082afb5.mp3','Chamando as novinhas',5,91,'Desce desce','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d84dcab9775b.mp3',1,1,11,1,1,1,5,'2019-09-20','2019-09-20 14:05:35','2019-09-20 13:54:20','2020-04-11 03:35:51'),(308,'http://52.27.53.102/batalhafunk/img/audio/5d8b55e0026d9.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d8b9cdc72ac3.mp3','Agora vaaiiii',5,73,NULL,NULL,0,1,1,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-09-25 16:59:12','2019-09-25 17:08:30'),(309,'http://52.27.53.102/batalhafunk/img/audio/5d8132a938ced.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d8ba02a3abf5.mp3','teste',5,73,NULL,NULL,0,1,1,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-09-25 17:13:19','2019-09-25 17:13:29'),(310,'http://52.27.53.102/batalhafunk/img/audio/5d41fb132cf95.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d8e43db6671b.mp3','trt',5,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-09-27 17:16:14','2019-09-27 17:16:14'),(314,'http://52.27.53.102/batalhafunk/img/audio/5d4832edd8547.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d93a78990600.mp3','~Chamando as NOVINHA',56,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-10-01 19:22:54','2019-10-01 19:22:54'),(315,'http://52.27.53.102/batalhafunk/img/audio/5d8b55e0026d9.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d93a8622a346.mp3','Chamando as NOVINHA!',56,92,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-10-01 19:26:29','2019-10-01 19:26:56'),(316,'http://52.27.53.102/batalhafunk/img/audio/5d41fb132cf95.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5d93abd4e94d9.mp3','Chamando as NOVINHA!',56,92,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-10-01 19:41:12','2019-10-01 19:41:33'),(317,'http://52.27.53.102/batalhafunk/img/audio/5d51759084e09.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ddab90dbb849.mp3','oh novinha',97,91,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-11-24 17:08:33','2019-11-24 17:08:37'),(318,'http://52.27.53.102/batalhafunk/img/audio/5d517b1bdf772.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ddc05df39d1e.mp3','malloy',97,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-11-25 16:48:33','2019-11-25 16:48:33'),(319,'http://52.27.53.102/batalhafunk/img/audio/5d41fb132cf95.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ddc33f4bca1b.mp3','vem lava a louça',97,91,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-11-25 20:05:14','2019-11-25 20:05:18'),(320,'http://52.27.53.102/batalhafunk/img/audio/5d5455aa06152.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ddc352ba3de0.mp3','vem sarrando',97,91,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-11-25 20:10:26','2019-11-25 20:10:37'),(321,'http://52.27.53.102/batalhafunk/img/audio/5d41fa62ec204.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ddc35b10dcdf.mp3','Minecraft',97,91,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-11-25 20:12:40','2019-11-25 20:12:43'),(322,'http://52.27.53.102/batalhafunk/img/audio/5d4830e7f3215.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ddc37bd63519.mp3','toma ta',97,91,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-11-25 20:21:23','2019-11-25 20:21:30'),(323,'http://52.27.53.102/batalhafunk/img/audio/5d48313f2c9fc.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ddc38a7d9ee7.mp3','e o Fábio chris',97,91,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-11-25 20:25:17','2019-11-25 20:25:20'),(324,'http://52.27.53.102/batalhafunk/img/audio/5d48317e7b910.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5debf5c71f335.mp3','sai',97,91,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2019-12-07 18:56:13','2019-12-07 18:56:16'),(325,'http://52.27.53.102/batalhafunk/img/audio/5d41fa62ec204.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8275fe5775d.mp3','teste',101,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-03-30 22:43:13','2020-03-30 22:43:13'),(326,'http://52.27.53.102/batalhafunk/img/audio/5d41fa62ec204.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e82781045780.mp3','tedte',101,1,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-03-30 22:52:03','2020-03-30 22:52:03'),(327,'http://52.27.53.102/batalhafunk/img/audio/5d41fa62ec204.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e828a9a39a4f.mp3','ficha',102,1,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-03-31 00:11:07','2020-03-31 00:11:07'),(328,'http://52.27.53.102/batalhafunk/img/audio/5d41fa62ec204.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e85f15b374cf.mp3','SuperBlow',99,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-04-02 14:06:25','2020-04-02 14:06:25'),(331,'http://52.27.53.102/batalhafunk/img/audio/5d517b1bdf772.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8be30ed766f.mp3','batalha ',106,73,'resposta batalha','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8be34e58283.mp3',1,2,3,1,1,2,0,'2020-04-07','2020-04-07 02:20:01','2020-04-07 02:18:58','2020-04-10 11:55:01'),(332,'http://52.27.53.102/batalhafunk/img/audio/5d41fa62ec204.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8be419936e5.mp3','test 2',106,73,'resposta 2','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8be46414d7f.mp3',1,3,2,1,1,2,0,'2020-04-07','2020-04-07 02:24:40','2020-04-07 02:23:25','2020-04-10 11:55:01'),(333,'http://52.27.53.102/batalhafunk/img/audio/5d483116a93f2.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8be52eb87a4.mp3','test 3',106,73,'answer 3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8be59036cbd.mp3',1,4,1,1,1,2,0,'2020-04-07','2020-04-07 02:29:41','2020-04-07 02:28:04','2020-04-10 11:55:01'),(334,'http://52.27.53.102/batalhafunk/img/audio/5d48313f2c9fc.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8be5f2938c6.mp3','4',106,73,'Hey','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8be63a3129c.mp3',1,5,2,1,1,2,0,'2020-04-07','2020-04-07 02:32:30','2020-04-07 02:31:19','2020-04-10 11:55:01'),(335,'http://52.27.53.102/batalhafunk/img/audio/5d4832736cf60.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8be7c25440f.mp3','movement',73,106,'respondendo ','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8be7f746bca.mp3',1,6,3,1,1,2,0,'2020-04-07','2020-04-07 02:39:54','2020-04-07 02:39:01','2020-04-10 11:55:01'),(336,'http://52.27.53.102/batalhafunk/img/audio/5d41fa62ec204.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8c66ba173f7.mp3','wetter',12,14,NULL,NULL,0,9,1,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-04-07 11:40:45','2020-04-07 12:40:58'),(338,'http://52.27.53.102/batalhafunk/img/audio/5d41fb7ec9ea4.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8c705748859.mp3','rtfff',12,14,'we’re','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8c70dc0a301.mp3',1,6,1,1,1,2,0,'2020-04-07','2020-04-07 12:23:59','2020-04-07 12:21:46','2020-04-25 00:53:50'),(339,'http://52.27.53.102/batalhafunk/img/audio/5d41fb132cf95.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8c7140f1bb2.mp3','fggg',14,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-04-07 12:25:40','2020-04-07 12:25:40'),(340,'http://52.27.53.102/batalhafunk/img/audio/5d41fb132cf95.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8c71551a5e4.mp3','fggg',14,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-04-07 12:26:00','2020-04-07 12:26:00'),(341,'http://52.27.53.102/batalhafunk/img/audio/5d41fa62ec204.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8c745f5ac62.mp3','hdhdhdh',12,14,NULL,NULL,0,9,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-04-07 12:38:58','2020-04-07 12:40:58'),(342,'http://52.27.53.102/batalhafunk/img/audio/5d41fa62ec204.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8c74ade60a8.mp3','fhhh',14,12,'gg','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8c74d6f1e01.mp3',1,8,2,1,1,1,14,'2020-04-07','2020-04-07 12:40:58','2020-04-07 12:40:17','2020-04-25 00:52:54'),(347,'http://52.27.53.102/batalhafunk/img/audio/5d41fb132cf95.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8e2bc9e848c.mp3','bcc',106,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-04-08 19:53:47','2020-04-08 19:53:47'),(348,'http://52.27.53.102/batalhafunk/img/audio/5d41fa62ec204.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e8e2befce42e.mp3','e aí DJ SEDUTY ',106,73,NULL,NULL,0,12,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-04-08 19:54:25','2020-04-20 00:19:24'),(349,'http://52.27.53.102/batalhafunk/img/audio/5d41fa62ec204.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e972fa012740.mp3','tests',101,115,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-04-15 16:00:35','2020-04-15 16:00:35'),(350,'http://52.27.53.102/batalhafunk/img/audio/5d41fa62ec204.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e9730d818b33.mp3','tets',101,115,NULL,NULL,0,2,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-04-15 16:05:47','2020-04-15 16:05:47'),(351,'http://52.27.53.102/batalhafunk/img/audio/5d41fb7ec9ea4.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e9cd291c5e85.mp3','Se liga ',73,106,'Agora eu quero ver','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e9cd2c82a414.mp3',1,8,0,1,1,2,0,'2020-04-19','2020-04-19 22:38:03','2020-04-19 22:37:08','2020-04-22 11:55:02'),(352,'http://52.27.53.102/batalhafunk/img/audio/5d41fb132cf95.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e9cd342df980.mp3','Desiste mané',73,106,'???','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e9cd36d98c62.mp3',1,9,0,1,1,2,0,'2020-04-19','2020-04-19 22:40:48','2020-04-19 22:40:05','2020-04-22 11:55:02'),(353,'http://52.27.53.102/batalhafunk/img/audio/5d41fb7ec9ea4.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e9ce5248c7eb.mp3','Se liga',73,106,'Só vaiiiii ','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e9ce94bc4615.mp3',1,10,3,1,1,1,73,'2020-04-20','2020-04-20 00:14:06','2020-04-19 23:56:24','2020-04-26 20:12:13'),(354,'http://52.27.53.102/batalhafunk/img/audio/5d41fb7ec9ea4.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e9cea4a45ef6.mp3','Agora é guerra ',106,73,'Desafio aceito ??','http://52.27.53.102/batalhafunk/img/batal/batal_file/5e9cea8949e36.mp3',1,11,1,1,1,1,106,'2020-04-20','2020-04-20 00:19:24','2020-04-20 00:18:21','2020-04-23 11:55:02'),(355,'http://52.27.53.102/batalhafunk/img/audio/5ea050fc71096.mp3','http://52.27.53.102/batalhafunk/img/batal/batal_file/5ea61959a8455.mp3','pancadão ',117,0,NULL,NULL,0,1,0,0,0,0,0,'0000-00-00','0000-00-00 00:00:00','2020-04-26 23:29:37','2020-04-26 23:29:37');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beat_lists`
--

LOCK TABLES `beat_lists` WRITE;
/*!40000 ALTER TABLE `beat_lists` DISABLE KEYS */;
INSERT INTO `beat_lists` VALUES (26,'5c541d92bf612.mp3','1549016476.jpg','Bonde','BatalhaFUNK',1,1,'50',6,1,'2019-02-01 10:21:16','2019-09-26 06:51:06'),(27,'5c541e098491a.mp3','1549016595.jpg','Sentadinha','BatalhaFUNK',1,1,'63',1,1,'2019-02-01 10:23:15','2019-07-20 17:33:57'),(28,'5c541e8eeb95d.mp3','1549016728.jpg','Start na Hornet','BatalhaFUNK',1,1,'41',1,1,'2019-02-01 10:25:28','2019-07-20 17:33:32'),(29,'5c541ee013ab6.mp3','1549016809.jpg','Tango Funk','BatalhaFUNK',0,1,NULL,44,1,'2019-02-01 10:26:49','2020-04-19 22:32:37'),(33,'5cca7ef342827.mp3','1556774652.png','Game over','BatalhaFUNK',0,1,NULL,12,1,'2019-05-02 05:24:12','2020-04-05 10:27:45'),(47,'5d41fa62ec204.mp3','1564605030.jpg','Game','DJ Seduty',0,0,NULL,26,1,'2019-07-31 20:30:30','2020-04-15 16:05:47'),(48,'5d41fb132cf95.mp3','1564605206.jpg','Box','DJ Seduty',0,0,NULL,14,1,'2019-07-31 20:33:26','2020-04-19 22:40:05'),(49,'5d41fb7ec9ea4.mp3','1564605314.jpg','Neurotico','DJ Seduty',0,0,NULL,5,1,'2019-07-31 20:35:14','2020-04-20 00:18:21'),(62,'5d4830e7f3215.mp3','1565012203.jpg','Mandelão','DJ Lucas',0,0,NULL,4,1,'2019-08-05 13:36:43','2020-04-07 16:18:15'),(63,'5d483116a93f2.mp3','1565012249.jpg','Bem bolado','DJ Lucas',0,0,NULL,1,1,'2019-08-05 13:37:29','2020-04-07 02:28:04'),(64,'5d48313f2c9fc.mp3','1565012290.jpg','Trem bala','DJ Lucas',0,0,NULL,3,1,'2019-08-05 13:38:10','2020-04-07 02:31:19'),(65,'5d48317e7b910.mp3','1565012353.jpg','Estilo','DJ Lucas',0,0,NULL,1,1,'2019-08-05 13:39:13','2019-12-07 18:56:13'),(66,'5d483215b0931.mp3','1565012505.jpg','Maffia','BatalhaFUNK',0,0,NULL,0,1,'2019-08-05 13:41:45','2019-08-05 13:41:45'),(67,'5d4832736cf60.mp3','1565012599.jpg','Tenso','BatalhaFUNK',0,0,NULL,1,1,'2019-08-05 13:43:19','2020-04-07 02:39:01'),(68,'5d4832b211fa8.mp3','1565012660.png','Batidão','BatalhaFUNK',0,0,NULL,0,1,'2019-08-05 13:44:20','2019-08-05 13:44:20'),(69,'5d4832edd8547.mp3','1565012721.jpg','Acelera','BatalhaFUNK',0,0,NULL,1,1,'2019-08-05 13:45:21','2019-10-01 19:22:54'),(70,'5d48339638db6.mp3','1565012900.jpg','Bem bolado','DJ Lucas',0,1,NULL,22,1,'2019-08-05 13:48:20','2019-10-22 06:38:20'),(71,'5d51759084e09.mp3','1565619603.jpeg','Megatron','Rei dos Beats',0,0,NULL,2,1,'2019-08-12 14:20:03','2019-11-24 17:08:33'),(72,'5d517a575f188.mp3','1565620836.jpeg','Made in Rio 2019','Rei dos Beats',0,1,NULL,10,1,'2019-08-12 14:40:36','2020-04-26 23:32:16'),(73,'5d517a88c5efe.mp3','1565620875.jpeg','Made in Rio 2019','Rei dos Beats',0,0,NULL,0,1,'2019-08-12 14:41:15','2019-08-12 14:41:15'),(74,'5d517b1bdf772.mp3','1565621022.jpeg','Rasteiro','Rei dos Beats',0,0,NULL,5,1,'2019-08-12 14:43:42','2020-04-07 02:18:58'),(75,'5d517ba682425.mp3','1565621171.jpeg','Rasteiro','Rei dos Beats',0,1,NULL,17,1,'2019-08-12 14:46:11','2020-04-07 02:12:09'),(76,'5d5455aa06152.mp3','1565808045.jpg','Batidao Arabia','Dj Teoh',0,0,NULL,1,1,'2019-08-14 18:40:45','2019-11-25 20:10:26'),(77,'5d5bbad991542.mp3','1566292710.png','Erik Teste','Erik',0,1,NULL,10,1,'2019-08-20 09:18:30','2020-04-27 18:15:11'),(78,'5d778cd5891a2.mp3','1568115928.jpg','BEATZ','Arijit',1,0,'10',0,1,'2019-09-10 11:45:28','2020-03-27 13:00:39'),(79,'5d8132a938ced.mp3','1568748204.jpg','Pam Pam','DJ Lucas',0,0,NULL,3,1,'2019-09-17 19:23:24','2019-09-25 17:13:19'),(80,'5d8b55e0026d9.mp3','1569412579.jpg','Vai quebrando','DJ Swed',0,0,NULL,2,1,'2019-09-25 11:56:19','2019-10-01 19:26:29'),(81,'5e79f18e110a7.mp3','1585050001.png','test beat','artist name',1,0,'100',0,1,'2020-03-24 11:40:01','2020-04-29 18:51:42'),(83,'5ea050fc71096.mp3','1587564799.jpg','Maloka','DJ RN',0,0,NULL,1,0,'2020-04-22 14:13:19','2020-04-29 18:51:30');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_commentbatals`
--

LOCK TABLES `block_commentbatals` WRITE;
/*!40000 ALTER TABLE `block_commentbatals` DISABLE KEYS */;
INSERT INTO `block_commentbatals` VALUES (1,42,32,0,'2019-06-27 13:13:37','2019-06-27 13:13:37');
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
) ENGINE=InnoDB AUTO_INCREMENT=515 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
INSERT INTO `chats` VALUES (51,12,14,0,'active','2019-04-29 08:00:43','xggxgx',NULL,NULL,14,'2019-04-29 08:00:43','2019-05-03 09:58:44',0,0),(52,12,14,0,'active','2019-04-29 08:00:48','hhv',NULL,NULL,14,'2019-04-29 08:00:48','2019-05-03 09:58:44',0,0),(53,14,12,0,'active','2019-04-29 08:00:57','Chug ',NULL,NULL,14,'2019-04-29 08:00:57','2019-05-03 09:58:44',0,0),(54,14,12,0,'active','2019-04-29 08:00:59','HD',NULL,NULL,14,'2019-04-29 08:00:59','2019-05-03 09:58:44',0,0),(55,12,14,0,'active','2019-04-29 08:01:50','xhhxhhhx',NULL,NULL,14,'2019-04-29 08:01:50','2019-05-03 09:58:44',0,0),(56,12,14,0,'active','2019-04-29 08:02:02','chhchcchchc',NULL,NULL,14,'2019-04-29 08:02:02','2019-05-03 09:58:44',0,0),(57,14,10,0,'active','2019-04-29 08:05:36','Dyyd',NULL,NULL,0,'2019-04-29 08:05:36','2019-05-03 10:26:33',0,0),(58,12,14,0,'active','2019-04-29 11:11:04','Hello',NULL,NULL,14,'2019-04-29 11:11:04','2019-05-03 09:58:44',0,0),(59,12,14,0,'active','2019-04-29 11:11:34','Abhay aa toh rhi h image bhai',NULL,NULL,14,'2019-04-29 11:11:34','2019-05-03 09:58:44',0,0),(60,1,12,0,'active','2019-04-29 11:34:10','Gzzgzzgxg',NULL,NULL,1,'2019-04-29 11:34:10','2019-05-01 09:49:01',0,0),(61,1,12,0,'active','2019-04-29 11:34:15','Dhhdh',NULL,NULL,1,'2019-04-29 11:34:15','2019-05-01 09:49:01',0,0),(62,12,1,0,'active','2019-04-29 11:34:50','Dhdhd',NULL,NULL,1,'2019-04-29 11:34:50','2019-05-01 09:49:01',0,0),(63,1,12,0,'active','2019-04-29 11:35:12','H. G',NULL,NULL,1,'2019-04-29 11:35:12','2019-05-01 09:49:01',0,0),(64,12,1,0,'active','2019-04-29 11:36:57','Hrlllj',NULL,NULL,1,'2019-04-29 11:36:57','2019-05-01 09:49:01',0,0),(65,12,1,0,'active','2019-04-29 11:36:57','Fun',NULL,NULL,1,'2019-04-29 11:36:57','2019-05-01 09:49:01',0,0),(66,12,1,0,'active','2019-04-29 11:36:57','Can',NULL,NULL,1,'2019-04-29 11:36:57','2019-05-01 09:49:01',0,0),(67,1,12,0,'active','2019-04-29 11:46:01','Hcch h',NULL,NULL,1,'2019-04-29 11:46:01','2019-05-01 09:49:01',0,0),(68,1,12,0,'active','2019-04-29 11:46:04','Jfjf',NULL,NULL,1,'2019-04-29 11:46:04','2019-05-01 09:49:01',0,0),(69,12,12,0,'active','2019-04-29 12:05:42','Hello',NULL,NULL,12,'2019-04-29 12:05:42','2019-05-23 07:29:54',0,0),(70,12,12,0,'active','2019-04-29 12:06:03','Hi Gigi',NULL,NULL,12,'2019-04-29 12:06:03','2019-05-23 07:29:54',0,0),(71,12,12,0,'active','2019-04-29 12:06:43','High I',NULL,NULL,12,'2019-04-29 12:06:43','2019-05-23 07:29:54',0,0),(72,12,12,0,'active','2019-04-29 12:06:43','Uglglgljglj',NULL,NULL,12,'2019-04-29 12:06:43','2019-05-23 07:29:54',0,0),(73,12,12,0,'active','2019-04-29 12:06:46','Bfjhbfjhfjblfjbjf',NULL,NULL,12,'2019-04-29 12:06:46','2019-05-23 07:29:54',0,0),(74,12,12,0,'active','2019-04-29 12:06:56','Hello',NULL,NULL,12,'2019-04-29 12:06:56','2019-05-23 07:29:54',0,0),(75,12,12,0,'active','2019-04-29 12:07:11','Hello',NULL,NULL,12,'2019-04-29 12:07:11','2019-05-23 07:29:54',0,0),(76,12,12,0,'active','2019-04-29 12:07:18','Jade',NULL,NULL,12,'2019-04-29 12:07:18','2019-05-23 07:29:54',0,0),(77,12,12,0,'active','2019-04-29 12:07:33','4334',NULL,NULL,12,'2019-04-29 12:07:33','2019-05-23 07:29:54',0,0),(78,12,1,0,'active','2019-04-29 12:08:13','Hello',NULL,NULL,1,'2019-04-29 12:08:13','2019-05-01 09:49:01',0,0),(79,0,12,1,'active','2019-05-01 09:48:37','Bbj',NULL,NULL,0,'2019-05-01 09:48:37','0000-00-00 00:00:00',0,0),(81,14,12,0,'active','2019-05-02 12:06:25','Qwerty',NULL,NULL,14,'2019-05-02 12:06:25','2019-05-03 09:58:44',0,0),(82,14,12,0,'active','2019-05-03 07:07:55','gzzzgzgx',NULL,NULL,14,'2019-05-03 07:07:55','2019-05-03 09:58:44',0,0),(83,14,12,0,'active','2019-05-03 07:07:58','xtxt',NULL,NULL,14,'2019-05-03 07:07:58','2019-05-03 09:58:44',0,0),(84,14,12,0,'active','2019-05-03 07:08:05','txxgxxt',NULL,NULL,14,'2019-05-03 07:08:05','2019-05-03 09:58:44',0,0),(85,12,14,0,'active','2019-05-03 07:08:54','H h',NULL,NULL,14,'2019-05-03 07:08:54','2019-05-03 09:58:44',0,0),(86,12,14,0,'active','2019-05-03 07:08:56','Sts',NULL,NULL,14,'2019-05-03 07:08:56','2019-05-03 09:58:44',0,0),(87,14,12,0,'active','2019-05-03 07:08:58','cycy',NULL,NULL,14,'2019-05-03 07:08:58','2019-05-03 09:58:44',0,0),(88,12,14,0,'active','2019-05-03 07:09:00','Test',NULL,NULL,14,'2019-05-03 07:09:00','2019-05-03 09:58:44',0,0),(89,14,12,0,'active','2019-05-03 07:09:03','ucuc',NULL,NULL,14,'2019-05-03 07:09:03','2019-05-03 09:58:44',0,0),(90,14,12,0,'active','2019-05-03 07:09:12','ch ch',NULL,NULL,14,'2019-05-03 07:09:12','2019-05-03 09:58:44',0,0),(91,14,12,0,'active','2019-05-03 07:09:23','uff ydyxy',NULL,NULL,14,'2019-05-03 07:09:23','2019-05-03 09:58:44',0,0),(92,12,12,0,'active','2019-05-03 09:54:32','Did just have eryyff',NULL,NULL,12,'2019-05-03 09:54:32','2019-05-23 07:29:54',0,0),(93,12,12,0,'active','2019-05-03 09:54:43','Did he just was u ',NULL,NULL,12,'2019-05-03 09:54:43','2019-05-23 07:29:54',0,0),(94,12,12,0,'active','2019-05-03 09:54:53','Did he just was ',NULL,NULL,12,'2019-05-03 09:54:53','2019-05-23 07:29:54',0,0),(95,12,12,0,'active','2019-05-03 09:54:57','Try',NULL,NULL,12,'2019-05-03 09:54:57','2019-05-23 07:29:54',0,0),(96,12,12,0,'active','2019-05-03 09:57:03','Did he just ',NULL,NULL,12,'2019-05-03 09:57:03','2019-05-23 07:29:54',0,0),(97,12,12,0,'active','2019-05-03 09:57:11','Did just ',NULL,NULL,12,'2019-05-03 09:57:11','2019-05-23 07:29:54',0,0),(98,12,14,0,'active','2019-05-03 09:57:32','Hhhi',NULL,NULL,14,'2019-05-03 09:57:32','2019-05-03 09:58:44',0,0),(99,12,12,0,'active','2019-05-03 09:57:57','Fggvv',NULL,NULL,12,'2019-05-03 09:57:57','2019-05-23 07:29:54',0,0),(100,12,12,0,'active','2019-05-03 09:58:02','Dgggg',NULL,NULL,12,'2019-05-03 09:58:02','2019-05-23 07:29:54',0,0),(101,12,12,0,'active','2019-05-03 09:58:13','Hi',NULL,NULL,12,'2019-05-03 09:58:13','2019-05-23 07:29:54',0,0),(102,12,12,0,'active','2019-05-03 09:58:30','Hi',NULL,NULL,12,'2019-05-03 09:58:30','2019-05-23 07:29:54',0,0),(103,12,12,0,'active','2019-05-03 09:58:34','Hyee',NULL,NULL,12,'2019-05-03 09:58:34','2019-05-23 07:29:54',0,0),(104,12,14,0,'active','2019-05-03 09:58:51','Hrllo',NULL,NULL,0,'2019-05-03 09:58:51','2019-05-03 09:59:00',0,0),(105,12,12,0,'active','2019-05-03 09:59:19','Hi',NULL,NULL,12,'2019-05-03 09:59:19','2019-05-23 07:29:54',0,0),(106,12,14,0,'active','2019-05-03 10:00:52','Google',NULL,NULL,0,'2019-05-03 10:00:52','2019-05-03 10:10:51',0,0),(107,12,14,0,'active','2019-05-03 10:03:38','Gkkdkd',NULL,NULL,0,'2019-05-03 10:03:38','2019-05-03 10:10:51',0,0),(108,12,14,0,'active','2019-05-03 10:11:49','Hhhhh',NULL,NULL,0,'2019-05-03 10:11:49','2019-05-03 10:18:19',0,0),(109,12,14,0,'active','2019-05-03 10:11:49','Hxjdj',NULL,NULL,0,'2019-05-03 10:11:49','2019-05-03 10:18:19',0,0),(110,12,14,0,'active','2019-05-03 10:11:49','Hejd',NULL,NULL,0,'2019-05-03 10:11:49','2019-05-03 10:18:19',0,0),(111,12,14,0,'active','2019-05-03 10:18:22','Bfnd',NULL,NULL,0,'2019-05-03 10:18:22','2019-05-03 10:22:58',0,0),(112,12,14,0,'active','2019-05-03 10:23:00','Ngvixb',NULL,NULL,0,'2019-05-03 10:23:00','2019-05-03 10:23:36',0,0),(113,12,14,0,'active','2019-05-03 10:23:00','Bxhx',NULL,NULL,0,'2019-05-03 10:23:00','2019-05-03 10:23:36',0,0),(114,12,14,0,'active','2019-05-03 10:23:01','Dbbdbd',NULL,NULL,0,'2019-05-03 10:23:01','2019-05-03 10:23:36',0,0),(115,12,12,0,'active','2019-05-03 10:24:43','Hdhd',NULL,NULL,12,'2019-05-03 10:24:43','2019-05-23 07:29:54',0,0),(116,12,14,0,'active','2019-05-03 10:26:03','Nznzn',NULL,NULL,0,'2019-05-03 10:26:03','2019-05-03 10:27:40',0,0),(117,12,10,0,'active','2019-05-03 10:27:34','Banana',NULL,NULL,0,'2019-05-03 10:27:34','2019-05-17 09:15:06',0,0),(118,12,14,0,'active','2019-05-03 10:30:15','Bb',NULL,NULL,0,'2019-05-03 10:30:15','2019-05-03 12:18:34',0,0),(123,0,12,1,'active','2019-05-17 09:15:00','heloo',NULL,NULL,0,'2019-05-17 09:15:00','0000-00-00 00:00:00',0,0),(124,0,10,1,'active','2019-05-17 09:15:10','GUI',NULL,NULL,0,'2019-05-17 09:15:10','0000-00-00 00:00:00',0,0),(125,0,1,1,'active','2019-05-17 09:15:20','Gig',NULL,NULL,0,'2019-05-17 09:15:20','0000-00-00 00:00:00',0,0),(126,0,14,1,'active','2019-05-17 09:15:27','Hello',NULL,NULL,0,'2019-05-17 09:15:27','0000-00-00 00:00:00',0,0),(127,0,14,1,'active','2019-05-17 09:15:32','Jijiji',NULL,NULL,0,'2019-05-17 09:15:32','0000-00-00 00:00:00',0,0),(128,0,10,1,'active','2019-05-17 09:16:08','Hello',NULL,NULL,0,'2019-05-17 09:16:08','0000-00-00 00:00:00',0,0),(129,0,12,1,'active','2019-05-17 09:16:14','Kid add',NULL,NULL,0,'2019-05-17 09:16:14','0000-00-00 00:00:00',0,0),(130,12,14,0,'active','2019-05-17 09:41:52','Dhccc',NULL,NULL,0,'2019-05-17 09:41:52','2019-05-17 10:12:55',0,0),(131,12,14,0,'active','2019-05-17 09:41:55','Cvvv',NULL,NULL,0,'2019-05-17 09:41:55','2019-05-17 10:12:55',0,0),(132,0,10,1,'active','2019-05-17 10:12:45','Twetrwet',NULL,NULL,0,'2019-05-17 10:12:45','0000-00-00 00:00:00',0,0),(133,0,1,1,'active','2019-05-17 10:12:50','Etsy',NULL,NULL,0,'2019-05-17 10:12:50','0000-00-00 00:00:00',0,0),(134,0,14,1,'active','2019-05-17 10:12:59','Wettest',NULL,NULL,0,'2019-05-17 10:12:59','0000-00-00 00:00:00',0,0),(135,12,14,0,'active','2019-05-23 06:06:20','fcgvvyv',NULL,NULL,0,'2019-05-23 06:06:20','2019-05-23 06:49:50',0,0),(136,12,14,0,'active','2019-05-23 06:06:22','cttct',NULL,NULL,0,'2019-05-23 06:06:22','2019-05-23 06:49:50',0,0),(137,12,12,0,'active','2019-05-23 06:29:04','ggxgxxggxgcc',NULL,NULL,12,'2019-05-23 06:29:04','2019-05-23 07:29:54',0,0),(138,12,12,0,'active','2019-05-23 06:29:09','yccycyx',NULL,NULL,12,'2019-05-23 06:29:09','2019-05-23 07:29:54',0,0),(139,12,14,0,'active','2019-05-23 06:49:53','ftxtx',NULL,NULL,0,'2019-05-23 06:49:53','2019-05-23 06:50:00',0,0),(140,12,14,0,'active','2019-05-23 06:49:54','txctxx',NULL,NULL,0,'2019-05-23 06:49:54','2019-05-23 06:50:00',0,0),(141,12,14,0,'active','2019-05-23 06:49:58','cttcctc',NULL,NULL,0,'2019-05-23 06:49:58','2019-05-23 06:50:00',0,0),(142,0,12,1,'active','2019-05-23 07:28:56','Hdhdh',NULL,NULL,0,'2019-05-23 07:28:56','0000-00-00 00:00:00',0,0),(143,0,12,1,'active','2019-05-23 07:28:59','Hdhdhdh',NULL,NULL,0,'2019-05-23 07:28:59','0000-00-00 00:00:00',0,0),(144,0,12,1,'active','2019-05-23 07:29:29','Chcxhx',NULL,NULL,0,'2019-05-23 07:29:29','0000-00-00 00:00:00',0,0),(145,0,12,1,'active','2019-05-23 07:29:32','Hccxh',NULL,NULL,0,'2019-05-23 07:29:32','0000-00-00 00:00:00',0,0),(146,0,12,1,'active','2019-05-23 07:29:35','Hdhdhdh',NULL,NULL,0,'2019-05-23 07:29:35','0000-00-00 00:00:00',0,0),(147,0,12,1,'active','2019-05-23 07:29:39','Hddhdyxty',NULL,NULL,0,'2019-05-23 07:29:39','0000-00-00 00:00:00',0,0),(148,0,12,1,'active','2019-05-23 07:29:57','Dhhdhd',NULL,NULL,0,'2019-05-23 07:29:57','0000-00-00 00:00:00',0,0),(149,0,12,1,'active','2019-05-23 07:30:05','Yddyd',NULL,NULL,0,'2019-05-23 07:30:05','0000-00-00 00:00:00',0,0),(150,12,14,0,'active','2019-05-23 07:30:10','hxchhxhx',NULL,NULL,0,'2019-05-23 07:30:10','2019-05-23 07:30:36',0,0),(151,12,14,0,'active','2019-05-23 07:30:12','gxxxgx',NULL,NULL,0,'2019-05-23 07:30:12','2019-05-23 07:30:36',0,0),(152,12,14,0,'active','2019-05-23 07:30:14','gdgxh',NULL,NULL,0,'2019-05-23 07:30:14','2019-05-23 07:30:36',0,0),(153,0,12,1,'active','2019-05-23 07:30:43','Dhddd',NULL,NULL,0,'2019-05-23 07:30:43','0000-00-00 00:00:00',0,0),(154,0,12,1,'active','2019-05-23 07:30:45','Dhd',NULL,NULL,0,'2019-05-23 07:30:45','0000-00-00 00:00:00',0,0),(155,12,14,0,'active','2019-05-23 07:31:49','chhchc',NULL,NULL,0,'2019-05-23 07:31:49','2019-05-23 07:31:51',0,0),(156,0,12,0,'active','2019-05-23 07:31:58','Dhhdhd',NULL,NULL,0,'2019-05-23 07:31:58','2019-05-23 07:31:58',0,0),(157,0,12,0,'active','2019-05-23 07:32:00','Hddhd',NULL,NULL,0,'2019-05-23 07:32:00','2019-05-23 07:32:00',0,0),(158,0,12,0,'active','2019-05-23 07:32:02','Hddhd',NULL,NULL,0,'2019-05-23 07:32:02','2019-05-23 07:32:02',0,0),(159,0,12,0,'active','2019-05-23 07:32:03','Hddhd',NULL,NULL,0,'2019-05-23 07:32:03','2019-05-23 07:32:03',0,0),(160,12,14,0,'active','2019-05-23 07:32:05','dgzxg',NULL,NULL,0,'2019-05-23 07:32:05','2019-05-23 07:32:13',0,0),(161,12,14,0,'active','2019-05-23 07:32:06','hchd',NULL,NULL,0,'2019-05-23 07:32:06','2019-05-23 07:32:13',0,0),(162,12,14,0,'active','2019-05-23 07:32:08','hfhchfd',NULL,NULL,0,'2019-05-23 07:32:08','2019-05-23 07:32:13',0,0),(163,0,12,0,'active','2019-05-23 08:29:57','Gdzgxgx',NULL,NULL,0,'2019-05-23 08:29:57','2019-05-23 08:29:57',0,0),(164,0,12,0,'active','2019-05-23 08:29:59','Hdhdh',NULL,NULL,0,'2019-05-23 08:29:59','2019-05-23 08:29:59',0,0),(165,12,14,0,'active','2019-05-23 08:30:04','vxvb',NULL,NULL,0,'2019-05-23 08:30:04','2019-05-23 08:30:27',0,0),(166,12,14,0,'active','2019-05-23 08:30:07','xhhxhx',NULL,NULL,0,'2019-05-23 08:30:07','2019-05-23 08:30:27',0,0),(167,12,14,0,'active','2019-05-23 08:30:08','xhhx',NULL,NULL,0,'2019-05-23 08:30:08','2019-05-23 08:30:27',0,0),(168,0,12,1,'active','2019-05-23 10:08:32','Hdhdhdh',NULL,NULL,0,'2019-05-23 10:08:32','0000-00-00 00:00:00',0,0),(169,0,12,1,'active','2019-05-23 10:08:52','Dhhdhd',NULL,NULL,0,'2019-05-23 10:08:52','0000-00-00 00:00:00',0,0),(182,12,14,0,'active','2019-05-23 10:33:48','Hello',NULL,NULL,0,'2019-05-23 10:33:48','2019-05-23 10:34:57',0,0),(183,12,12,0,'active','2019-05-23 10:43:12','Hiii babu',NULL,NULL,12,'2019-05-23 10:43:12','2019-05-30 13:58:47',0,0),(184,12,12,0,'active','2019-05-23 10:46:31','Heidi’s',NULL,NULL,12,'2019-05-23 10:46:31','2019-05-30 13:58:47',0,0),(185,12,12,0,'active','2019-05-23 10:48:39','Koi',NULL,NULL,12,'2019-05-23 10:48:39','2019-05-30 13:58:47',0,0),(186,12,12,0,'active','2019-05-23 10:51:53','Outing',NULL,NULL,12,'2019-05-23 10:51:53','2019-05-30 13:58:47',0,0),(187,12,12,0,'active','2019-05-23 10:53:03','Bsjhfgjl',NULL,NULL,12,'2019-05-23 10:53:03','2019-05-30 13:58:47',0,0),(188,12,12,0,'active','2019-05-23 10:55:46','Hwlloooooooooo',NULL,NULL,12,'2019-05-23 10:55:46','2019-05-30 13:58:47',0,0),(189,12,12,0,'active','2019-05-23 10:58:17','Hgvjhgcghkchkgckhgchl',NULL,NULL,12,'2019-05-23 10:58:17','2019-05-30 13:58:47',0,0),(190,12,12,0,'active','2019-05-23 11:02:37','High DNS’s',NULL,NULL,12,'2019-05-23 11:02:37','2019-05-30 13:58:47',0,0),(191,14,12,0,'active','2019-05-23 11:08:05','Kdkjfhaskjfd',NULL,NULL,0,'2019-05-23 11:08:05','2019-05-23 11:11:27',0,0),(192,14,12,0,'active','2019-05-23 11:08:10','Edge',NULL,NULL,0,'2019-05-23 11:08:10','2019-05-23 11:11:27',0,0),(193,12,14,0,'active','2019-05-23 11:11:37','Dhhdhd',NULL,NULL,0,'2019-05-23 11:11:37','2019-05-23 11:11:42',0,0),(194,14,12,0,'active','2019-05-23 11:12:09','Hdhdh',NULL,NULL,0,'2019-05-23 11:12:09','2019-05-23 11:12:09',0,0),(195,14,10,0,'active','2019-05-23 11:12:17','Dhhdhd',NULL,NULL,0,'2019-05-23 11:12:17','2019-05-23 11:13:02',0,0),(196,14,12,0,'active','2019-05-23 11:12:54','Chechen',NULL,NULL,0,'2019-05-23 11:12:54','2019-05-23 11:12:54',0,0),(197,14,12,0,'active','2019-05-23 11:12:56','Hdhdh',NULL,NULL,0,'2019-05-23 11:12:56','2019-05-23 11:12:56',0,0),(198,14,12,0,'active','2019-05-23 11:12:58','Had',NULL,NULL,0,'2019-05-23 11:12:58','2019-05-23 11:12:58',0,0),(199,12,14,0,'active','2019-05-23 12:39:26','bxbxbx',NULL,NULL,0,'2019-05-23 12:39:26','2019-05-23 12:39:33',0,0),(200,12,14,0,'active','2019-05-23 12:39:28','bxxbxbx',NULL,NULL,0,'2019-05-23 12:39:28','2019-05-23 12:39:33',0,0),(201,12,14,0,'active','2019-05-23 12:39:29','bxbxb',NULL,NULL,0,'2019-05-23 12:39:29','2019-05-23 12:39:33',0,0),(202,14,12,0,'active','2019-05-23 12:39:35','Hxxhx',NULL,NULL,0,'2019-05-23 12:39:35','2019-05-23 12:39:35',0,0),(203,14,12,0,'active','2019-05-23 12:39:38','He’d',NULL,NULL,0,'2019-05-23 12:39:38','2019-05-23 12:39:38',0,0),(204,14,12,0,'active','2019-05-23 12:39:39','Dhd',NULL,NULL,0,'2019-05-23 12:39:39','2019-05-23 12:39:39',0,0),(205,12,14,0,'active','2019-05-23 12:39:41','hxhxh',NULL,NULL,0,'2019-05-23 12:39:41','2019-05-23 12:39:41',0,0),(206,12,14,0,'active','2019-05-23 12:39:42','bxxbxh',NULL,NULL,0,'2019-05-23 12:39:42','2019-05-23 12:39:42',0,0),(207,12,14,0,'active','2019-05-23 12:39:43','hdhdh',NULL,NULL,0,'2019-05-23 12:39:43','2019-05-23 12:39:43',0,0),(208,12,14,0,'active','2019-05-23 12:48:05','bbxbxb',NULL,NULL,0,'2019-05-23 12:48:05','2019-05-23 13:46:49',0,0),(209,12,14,0,'active','2019-05-23 13:52:15','hcchc',NULL,NULL,0,'2019-05-23 13:52:15','2019-05-23 13:52:57',0,0),(210,12,14,0,'active','2019-05-23 13:52:18','hcc',NULL,NULL,0,'2019-05-23 13:52:18','2019-05-23 13:52:57',0,0),(211,12,14,0,'active','2019-05-23 13:52:27','gxgxx',NULL,NULL,0,'2019-05-23 13:52:27','2019-05-23 13:52:57',0,0),(212,12,14,0,'active','2019-05-23 13:52:51','xggxggx',NULL,NULL,0,'2019-05-23 13:52:51','2019-05-23 13:52:57',0,0),(213,14,12,0,'active','2019-05-23 13:53:21','Hdhdhdh',NULL,NULL,0,'2019-05-23 13:53:21','2019-05-23 13:53:21',0,0),(214,14,12,0,'active','2019-05-23 13:53:22','Hdhd',NULL,NULL,0,'2019-05-23 13:53:22','2019-05-23 13:53:22',0,0),(215,12,14,0,'active','2019-05-23 13:53:24','chhchcc',NULL,NULL,0,'2019-05-23 13:53:24','2019-05-23 13:53:24',0,0),(216,12,14,0,'active','2019-05-23 13:53:26','chcchh',NULL,NULL,0,'2019-05-23 13:53:26','2019-05-23 13:53:26',0,0),(217,14,12,0,'active','2019-05-23 13:53:27','Chic',NULL,NULL,0,'2019-05-23 13:53:27','2019-05-23 13:53:27',0,0),(218,12,14,0,'active','2019-05-23 13:56:16','vxxgxhx',NULL,NULL,0,'2019-05-23 13:56:16','2019-05-23 13:56:16',0,0),(219,14,12,0,'active','2019-05-23 13:56:28','Gfff',NULL,NULL,0,'2019-05-23 13:56:28','2019-05-23 13:56:28',0,0),(220,14,12,0,'active','2019-05-23 13:56:29','Hxhhx',NULL,NULL,0,'2019-05-23 13:56:29','2019-05-23 13:56:29',0,0),(221,14,12,0,'active','2019-05-23 13:56:31','HFC',NULL,NULL,0,'2019-05-23 13:56:31','2019-05-23 13:56:31',0,0),(228,12,1,0,'active','2019-05-31 05:38:24','fgg',NULL,NULL,0,'2019-05-31 05:38:24','2019-06-28 05:54:20',0,0),(229,14,12,0,'active','2019-05-31 06:35:18','bshhxbxh',NULL,NULL,0,'2019-05-31 06:35:18','2019-05-31 08:01:28',0,0),(230,14,12,0,'active','2019-05-31 06:35:19','dhhdhd',NULL,NULL,0,'2019-05-31 06:35:19','2019-05-31 08:01:28',0,0),(231,14,12,0,'active','2019-05-31 06:35:21','hdhd',NULL,NULL,0,'2019-05-31 06:35:21','2019-05-31 08:01:28',0,0),(232,14,12,0,'active','2019-05-31 06:35:22','hshye',NULL,NULL,0,'2019-05-31 06:35:22','2019-05-31 08:01:28',0,0),(233,12,14,0,'active','2019-05-31 08:01:32','Xrtxgx',NULL,NULL,0,'2019-05-31 08:01:32','2019-05-31 08:24:18',0,0),(234,12,14,0,'active','2019-05-31 08:01:34',' Gxx',NULL,NULL,0,'2019-05-31 08:01:34','2019-05-31 08:24:18',0,0),(235,12,14,0,'active','2019-05-31 08:01:35','Gxxx',NULL,NULL,0,'2019-05-31 08:01:35','2019-05-31 08:24:18',0,0),(236,14,12,0,'active','2019-05-31 08:24:37','cgxgggg',NULL,NULL,0,'2019-05-31 08:24:37','2019-05-31 08:24:46',0,0),(237,14,12,0,'active','2019-05-31 08:24:39','yfyycch',NULL,NULL,0,'2019-05-31 08:24:39','2019-05-31 08:24:46',0,0),(238,14,12,0,'active','2019-05-31 08:24:40','dyxyxxy',NULL,NULL,0,'2019-05-31 08:24:40','2019-05-31 08:24:46',0,0),(239,14,12,0,'active','2019-05-31 08:24:41','yxxggx',NULL,NULL,0,'2019-05-31 08:24:41','2019-05-31 08:24:46',0,0),(240,12,14,0,'active','2019-05-31 08:24:48','Chch',NULL,NULL,0,'2019-05-31 08:24:48','2019-05-31 08:24:48',0,0),(241,12,14,0,'active','2019-05-31 08:24:50','Ccxcg',NULL,NULL,0,'2019-05-31 08:24:50','2019-05-31 08:24:50',0,0),(242,12,14,0,'active','2019-05-31 08:24:51','Cyc',NULL,NULL,0,'2019-05-31 08:24:51','2019-05-31 08:24:51',0,0),(243,12,14,0,'active','2019-05-31 08:24:52','Ffc',NULL,NULL,0,'2019-05-31 08:24:52','2019-05-31 08:24:52',0,0),(244,12,14,0,'active','2019-05-31 08:24:53','Cc',NULL,NULL,0,'2019-05-31 08:24:53','2019-05-31 08:24:53',0,0),(250,1,12,0,'active','2019-06-28 05:54:29','Jcjcu',NULL,NULL,0,'2019-06-28 05:54:29','2019-06-29 08:32:02',0,0),(251,1,12,0,'active','2019-06-28 05:54:32','J j. ',NULL,NULL,0,'2019-06-28 05:54:32','2019-06-29 08:32:02',0,0),(252,32,1,0,'active','2019-06-28 08:05:18','hey',NULL,NULL,0,'2019-06-28 08:05:18','2019-07-02 19:13:52',0,0),(253,12,14,0,'active','2019-06-29 08:33:49','gd xx',NULL,NULL,0,'2019-06-29 08:33:49','2019-06-29 08:33:49',0,0),(254,12,14,0,'active','2019-06-29 08:33:51','dhgdzg',NULL,NULL,0,'2019-06-29 08:33:51','2019-06-29 08:33:51',0,0),(255,12,14,0,'active','2019-06-29 08:33:53','fydx',NULL,NULL,0,'2019-06-29 08:33:53','2019-06-29 08:33:53',0,0),(256,14,12,0,'active','2019-06-29 08:34:32',' Chchc',NULL,NULL,0,'2019-06-29 08:34:32','2019-06-29 08:34:32',0,0),(257,14,12,0,'active','2019-06-29 08:34:34','Chchc',NULL,NULL,0,'2019-06-29 08:34:34','2019-06-29 08:34:34',0,0),(258,14,12,0,'active','2019-06-29 08:34:35','Hfjf',NULL,NULL,0,'2019-06-29 08:34:35','2019-06-29 08:34:35',0,0),(259,14,12,0,'active','2019-06-29 08:34:40','Dtd',NULL,NULL,0,'2019-06-29 08:34:40','2019-06-29 08:34:45',0,0),(276,14,12,0,'active','2019-07-01 12:40:12','vxbxbxbx',NULL,NULL,0,'2019-07-01 12:40:12','2019-07-01 12:40:12',0,0),(277,14,12,0,'active','2019-07-01 12:40:14','hxhxbxb',NULL,NULL,0,'2019-07-01 12:40:14','2019-07-01 12:40:14',0,0),(278,14,12,0,'active','2019-07-01 12:40:16','hxhxhx',NULL,NULL,0,'2019-07-01 12:40:16','2019-07-01 12:40:16',0,0),(279,14,12,0,'active','2019-07-01 12:41:01','xgxgz',NULL,NULL,0,'2019-07-01 12:41:01','2019-07-01 12:41:01',0,0),(280,12,14,0,'active','2019-07-01 12:41:05','Hdhdhdh',NULL,NULL,0,'2019-07-01 12:41:05','2019-07-01 12:41:05',0,0),(281,12,14,0,'active','2019-07-01 12:41:07','Hdhd',NULL,NULL,0,'2019-07-01 12:41:07','2019-07-01 12:41:07',0,0),(282,56,66,0,'active','2019-07-02 00:38:04','eaiiii',NULL,NULL,0,'2019-07-02 00:38:04','2019-07-02 01:02:41',0,0),(283,66,56,0,'active','2019-07-02 01:02:46','eaiii',NULL,NULL,0,'2019-07-02 01:02:46','2019-07-02 01:10:58',0,0),(284,66,56,0,'active','2019-07-02 01:02:58','Vai amarela',NULL,NULL,0,'2019-07-02 01:02:58','2019-07-02 01:10:58',0,0),(285,66,56,0,'active','2019-07-02 01:03:04','bora abala',NULL,NULL,0,'2019-07-02 01:03:04','2019-07-02 01:10:58',0,0),(286,66,56,0,'active','2019-07-02 01:03:12','eu só vim aqui',NULL,NULL,0,'2019-07-02 01:03:12','2019-07-02 01:10:58',0,0),(287,66,56,0,'active','2019-07-02 01:03:24','pra ouvir vc rimaá',NULL,NULL,0,'2019-07-02 01:03:24','2019-07-02 01:10:58',0,0),(288,66,56,0,'active','2019-07-02 01:03:34','paaaa',NULL,NULL,0,'2019-07-02 01:03:34','2019-07-02 01:10:58',0,0),(289,66,56,0,'active','2019-07-02 01:03:46','tchum tcha tcha tchum tcha',NULL,NULL,0,'2019-07-02 01:03:46','2019-07-02 01:10:58',0,0),(290,56,66,0,'active','2019-07-02 01:11:07','hahahahah',NULL,NULL,0,'2019-07-02 01:11:07','2019-07-02 01:11:57',0,0),(291,32,67,0,'active','2019-07-02 19:14:09','Hey Bon',NULL,NULL,0,'2019-07-02 19:14:09','2019-07-02 19:14:31',0,0),(292,32,67,0,'active','2019-07-02 19:15:12','http://52.27.53.102/batalhafunk/img/chat/1562094912.png',NULL,NULL,0,'2019-07-02 19:15:12','2019-07-02 19:16:56',0,0),(293,32,56,0,'active','2019-07-02 19:17:56','hey',NULL,NULL,0,'2019-07-02 19:17:56','2019-07-02 19:21:03',0,0),(294,14,12,0,'active','2019-07-18 10:56:24','fufuff',NULL,NULL,0,'2019-07-18 10:56:24','2019-07-22 08:18:23',0,0),(295,1,12,0,'active','2019-07-18 12:19:28','Hello',NULL,NULL,0,'2019-07-18 12:19:28','2019-07-18 12:20:30',0,0),(296,12,1,0,'active','2019-07-18 12:20:33','hcchchx',NULL,NULL,0,'2019-07-18 12:20:33','2019-07-26 07:11:56',0,0),(297,12,1,0,'active','2019-07-18 12:20:39','xgxxgx',NULL,NULL,0,'2019-07-18 12:20:39','2019-07-26 07:11:56',0,0),(298,12,1,0,'active','2019-07-18 12:20:53','tsstxgx',NULL,NULL,0,'2019-07-18 12:20:53','2019-07-26 07:11:56',0,0),(299,12,14,0,'active','2019-07-22 08:18:27','qwwerr',NULL,NULL,0,'2019-07-22 08:18:27','2019-07-22 11:22:37',0,0),(300,12,14,0,'active','2019-07-22 11:22:40','xgxgzx',NULL,NULL,0,'2019-07-22 11:22:40','2019-07-22 11:26:56',0,0),(301,12,14,0,'active','2019-07-22 11:25:32','fhhhd',NULL,NULL,0,'2019-07-22 11:25:32','2019-07-22 11:26:56',0,0),(302,9,5,0,'active','2019-07-23 14:20:46','teste',NULL,NULL,0,'2019-07-23 14:20:46','2019-07-23 14:22:47',0,0),(303,9,5,0,'active','2019-07-23 14:20:56','oii',NULL,NULL,0,'2019-07-23 14:20:56','2019-07-23 14:22:47',0,0),(304,5,9,0,'active','2019-07-23 14:22:51','test2',NULL,NULL,0,'2019-07-23 14:22:51','2019-07-23 14:24:53',0,0),(305,5,9,0,'active','2019-07-23 14:23:25','oii2',NULL,NULL,0,'2019-07-23 14:23:25','2019-07-23 14:24:53',0,0),(306,9,5,0,'active','2019-07-23 14:24:56','kkk',NULL,NULL,0,'2019-07-23 14:24:56','2019-07-23 14:25:04',0,0),(307,5,9,0,'active','2019-07-23 14:25:06','jaja',NULL,NULL,0,'2019-07-23 14:25:06','2019-07-23 16:36:17',0,0),(318,9,5,0,'active','2019-07-23 16:36:20','jhhh',NULL,NULL,0,'2019-07-23 16:36:20','2019-07-24 00:52:32',0,0),(319,73,74,0,'active','2019-07-23 23:37:59','Oi',NULL,NULL,0,'2019-07-23 23:37:59','2019-07-23 23:38:51',0,0),(320,73,74,0,'active','2019-07-23 23:38:03','Hv',NULL,NULL,0,'2019-07-23 23:38:03','2019-07-23 23:38:51',0,0),(321,73,74,0,'active','2019-07-23 23:38:06','Hv',NULL,NULL,0,'2019-07-23 23:38:06','2019-07-23 23:38:51',0,0),(322,73,74,0,'active','2019-07-23 23:38:34','Hey',NULL,NULL,0,'2019-07-23 23:38:34','2019-07-23 23:38:51',0,0),(323,73,74,0,'active','2019-07-23 23:38:37','By',NULL,NULL,0,'2019-07-23 23:38:37','2019-07-23 23:38:51',0,0),(324,73,74,0,'active','2019-07-23 23:38:41','Jhhggg',NULL,NULL,0,'2019-07-23 23:38:41','2019-07-23 23:38:51',0,0),(325,73,74,0,'active','2019-07-23 23:38:44','Guy',NULL,NULL,0,'2019-07-23 23:38:44','2019-07-23 23:38:51',0,0),(326,74,73,0,'active','2019-07-23 23:38:54','wihshsi',NULL,NULL,0,'2019-07-23 23:38:54','2019-07-23 23:38:54',0,0),(327,74,73,0,'active','2019-07-23 23:38:59','hwjiwej',NULL,NULL,0,'2019-07-23 23:38:59','2019-07-31 19:07:53',0,0),(328,74,73,0,'active','2019-07-23 23:39:02','hwujsbehe',NULL,NULL,0,'2019-07-23 23:39:02','2019-07-31 19:07:53',0,0),(329,74,73,0,'active','2019-07-23 23:39:05','bsuuheehhevs',NULL,NULL,0,'2019-07-23 23:39:05','2019-07-31 19:07:53',0,0),(333,14,12,0,'active','2019-07-25 08:52:09','dfxgxfx',NULL,NULL,0,'2019-07-25 08:52:09','2019-07-25 08:52:27',0,0),(334,14,12,0,'active','2019-07-25 08:52:20','?????',NULL,NULL,0,'2019-07-25 08:52:20','2019-07-25 08:52:27',0,0),(335,78,1,0,'active','2019-07-25 12:08:23','hii',NULL,NULL,0,'2019-07-25 12:08:23','2019-07-25 12:08:49',0,0),(336,78,1,0,'active','2019-07-25 12:08:44','☺️??????????',NULL,NULL,0,'2019-07-25 12:08:44','2019-07-25 12:08:49',0,0),(337,78,1,0,'active','2019-07-25 12:09:14','???????',NULL,NULL,0,'2019-07-25 12:09:14','2019-07-25 12:09:19',0,0),(338,78,1,0,'active','2019-07-25 12:12:24','?????',NULL,NULL,0,'2019-07-25 12:12:24','2019-07-25 12:12:28',0,0),(339,78,1,0,'active','2019-07-25 12:12:54','?????????????????????????????????????????????????????????????????????????????????????????????????????????????⛹️?????????????⛷️???⛷️?⛷️???⛷️????????????????????????',NULL,NULL,0,'2019-07-25 12:12:54','2019-07-25 12:13:12',0,0),(340,78,1,0,'active','2019-07-25 12:13:09','nxnxnxxnnxnxn',NULL,NULL,0,'2019-07-25 12:13:09','2019-07-25 12:13:12',0,0),(341,78,1,0,'active','2019-07-25 12:14:04','?????????????????????????????????????????????️???????????????????????????????????????????????️??️????????????⛽?????????????????????️??️????????️?️???????⌨️⌨️???☎️??????️??????????♓♏?❤️??⏺️⏫⏺️⏫◀️⏫⏯️?⏹️☢️☢️?☢️?⏺️?⏺️????????????????????????????????????????',NULL,NULL,0,'2019-07-25 12:14:04','2019-11-08 08:59:00',0,0),(342,14,12,0,'active','2019-07-25 12:45:49',',☺???',NULL,NULL,0,'2019-07-25 12:45:49','2019-07-25 12:45:56',0,0),(343,14,12,0,'active','2019-07-25 12:46:21',',????????????????????????????????????????????????????????????????????????????????????????',NULL,NULL,0,'2019-07-25 12:46:21','2019-07-25 12:47:58',0,0),(344,14,12,0,'active','2019-07-25 12:47:47','⚽?????????????????????????????????????????????✨????????????????????????????????????????⛔?⛔?⛔?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????✨????????????????????????????????????????⛔?⛔?⛔?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????⚽????????????????????????????????????✨????????????????????????????????????????⛔?⛔?⛔?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????',NULL,NULL,0,'2019-07-25 12:47:47','2019-07-25 12:47:58',0,0),(345,78,14,0,'active','2019-07-25 12:52:48','http://52.27.53.102/batalhafunk/img/chat/1564059167.png',NULL,NULL,0,'2019-07-25 12:52:48','2019-07-25 12:53:02',0,0),(346,78,14,0,'active','2019-07-25 12:53:31','hii',NULL,NULL,0,'2019-07-25 12:53:31','2019-07-25 12:53:31',0,0),(347,78,14,0,'active','2019-07-25 12:53:38','hello',NULL,NULL,0,'2019-07-25 12:53:38','2019-07-25 12:54:10',0,0),(348,78,14,0,'active','2019-07-25 12:53:47','hii',NULL,NULL,0,'2019-07-25 12:53:47','2019-07-25 12:53:47',0,0),(349,78,14,0,'active','2019-07-25 12:54:22','hii',NULL,NULL,0,'2019-07-25 12:54:22','2019-07-25 12:54:30',0,0),(350,78,14,0,'active','2019-07-25 12:54:36','hello',NULL,NULL,0,'2019-07-25 12:54:36','2019-07-25 12:54:36',0,0),(351,14,78,0,'active','2019-07-25 12:54:42','hii',NULL,NULL,0,'2019-07-25 12:54:42','2019-07-25 12:54:42',0,0),(352,78,14,0,'active','2019-07-25 12:54:46','hiiigdhdhd',NULL,NULL,0,'2019-07-25 12:54:46','2019-07-25 12:54:46',0,0),(353,78,14,0,'active','2019-07-25 12:54:59','hello',NULL,NULL,0,'2019-07-25 12:54:59','2019-07-25 12:54:59',0,0),(354,78,14,0,'active','2019-07-25 12:56:36','http://52.27.53.102/batalhafunk/img/chat/1564059395.png',NULL,NULL,0,'2019-07-25 12:56:36','2019-07-25 12:57:27',0,0),(355,78,14,0,'active','2019-07-25 12:57:18','kuku',NULL,NULL,0,'2019-07-25 12:57:18','2019-07-25 12:57:18',0,0),(356,78,14,0,'active','2019-07-25 12:57:52','http://52.27.53.102/batalhafunk/img/chat/1564059471.png',NULL,NULL,0,'2019-07-25 12:57:52','2019-07-25 13:00:22',0,0),(358,12,14,0,'active','2019-07-25 13:04:50','????',NULL,NULL,0,'2019-07-25 13:04:50','2019-07-25 13:04:55',0,0),(359,14,12,0,'active','2019-07-25 13:34:31','hii',NULL,NULL,0,'2019-07-25 13:34:31','2019-07-26 05:55:16',0,0),(360,14,78,0,'active','2019-07-25 13:34:51','hii',NULL,NULL,0,'2019-07-25 13:34:51','2019-07-26 05:54:07',0,0),(361,14,78,0,'active','2019-07-25 13:35:03','hhh',NULL,NULL,0,'2019-07-25 13:35:03','2019-07-26 05:54:07',0,0),(362,9,5,0,'active','2019-07-25 18:28:16','hhh',NULL,NULL,0,'2019-07-25 18:28:16','2019-07-25 18:28:26',0,0),(363,5,9,0,'active','2019-07-25 18:28:31','ssss',NULL,NULL,0,'2019-07-25 18:28:31','2019-07-25 18:29:56',0,0),(364,9,5,0,'active','2019-07-25 18:31:28','kkkk',NULL,NULL,0,'2019-07-25 18:31:28','2019-07-25 18:48:29',0,0),(365,9,5,0,'active','2019-07-25 18:31:56','hhhh',NULL,NULL,0,'2019-07-25 18:31:56','2019-07-25 18:48:29',0,0),(366,9,5,0,'active','2019-07-25 18:32:11','ghh',NULL,NULL,0,'2019-07-25 18:32:11','2019-07-25 18:48:29',0,0),(367,9,5,0,'active','2019-07-25 18:48:31','yyyh',NULL,NULL,0,'2019-07-25 18:48:31','2019-07-25 18:49:10',0,0),(368,9,5,0,'active','2019-07-25 18:48:37','gggg',NULL,NULL,0,'2019-07-25 18:48:37','2019-07-25 18:49:10',0,0),(369,9,5,0,'active','2019-07-25 18:48:44','gvc',NULL,NULL,0,'2019-07-25 18:48:44','2019-07-25 18:49:10',0,0),(370,5,9,0,'active','2019-07-25 18:49:13','hhhh',NULL,NULL,0,'2019-07-25 18:49:13','2019-07-25 18:51:05',0,0),(371,5,9,0,'active','2019-07-25 18:49:20','hhh',NULL,NULL,0,'2019-07-25 18:49:20','2019-07-25 18:51:05',0,0),(372,9,5,0,'active','2019-07-25 18:51:09','hhhh',NULL,NULL,0,'2019-07-25 18:51:09','2019-07-25 20:11:34',0,0),(373,5,56,0,'active','2019-07-26 13:42:55','hhhhh',NULL,NULL,0,'2019-07-26 13:42:55','2019-07-26 13:43:27',0,0),(374,5,56,0,'active','2019-07-26 13:43:07','teste',NULL,NULL,0,'2019-07-26 13:43:07','2019-07-26 13:43:27',0,0),(375,5,56,0,'active','2019-07-26 13:43:16','hhh',NULL,NULL,0,'2019-07-26 13:43:16','2019-07-26 13:43:27',0,0),(376,56,5,0,'active','2019-07-26 13:43:29','iei',NULL,NULL,0,'2019-07-26 13:43:29','2019-07-26 13:43:59',0,0),(377,5,56,0,'active','2019-07-26 13:44:01','vaban',NULL,NULL,0,'2019-07-26 13:44:01','2019-07-26 13:44:01',0,0),(378,12,14,0,'active','2019-07-29 10:16:11','dygdtd',NULL,NULL,0,'2019-07-29 10:16:11','2019-07-29 10:27:38',0,0),(379,12,14,0,'active','2019-07-29 10:16:18','gydydyydtdttd',NULL,NULL,0,'2019-07-29 10:16:18','2019-07-29 10:27:38',0,0),(380,12,14,0,'active','2019-07-29 10:27:42','stgstdst',NULL,NULL,0,'2019-07-29 10:27:42','2019-07-29 10:30:26',0,0),(381,12,14,0,'active','2019-07-29 10:29:09','hxxx',NULL,NULL,0,'2019-07-29 10:29:09','2019-07-29 10:30:26',0,0),(382,12,14,0,'active','2019-07-29 10:29:13','hhfhfu',NULL,NULL,0,'2019-07-29 10:29:13','2019-07-29 10:30:26',0,0),(383,12,14,0,'active','2019-07-29 10:30:48','gg xgxggx',NULL,NULL,0,'2019-07-29 10:30:48','2019-07-29 10:33:47',0,0),(384,12,14,0,'active','2019-07-29 10:31:01','xgdgxgdgd',NULL,NULL,0,'2019-07-29 10:31:01','2019-07-29 10:33:47',0,0),(385,12,14,0,'active','2019-07-29 10:33:51','cxggxgfx',NULL,NULL,0,'2019-07-29 10:33:51','2020-04-04 11:26:19',0,0),(386,12,14,0,'active','2019-07-29 10:33:57','fdfggx',NULL,NULL,0,'2019-07-29 10:33:57','2020-04-04 11:26:19',0,0),(387,5,82,0,'active','2019-07-30 13:37:02','Salve Seduty! ✌',NULL,NULL,0,'2019-07-30 13:37:02','2019-07-30 14:11:08',0,0),(388,5,82,0,'active','2019-07-30 13:37:19','tiver alguma dica ou digestão.. só falar',NULL,NULL,0,'2019-07-30 13:37:19','2019-07-30 14:11:08',0,0),(389,5,82,0,'active','2019-07-30 13:37:44','sugestão *',NULL,NULL,0,'2019-07-30 13:37:44','2019-07-30 14:11:08',0,0),(390,73,74,1,'active','2019-08-02 01:31:06','Hug',NULL,NULL,0,'2019-08-02 01:31:06','0000-00-00 00:00:00',0,0),(391,73,73,0,'active','2019-08-02 06:20:44','Ohh',NULL,NULL,0,'2019-08-02 06:20:44','2019-08-02 06:20:44',0,0),(392,73,73,0,'active','2019-08-02 06:20:52','Veggie',NULL,NULL,0,'2019-08-02 06:20:52','2019-08-02 06:20:52',0,0),(407,5,73,0,'active','2019-08-05 02:02:02','jajak',NULL,NULL,0,'2019-08-05 02:02:02','2019-08-05 02:02:26',0,0),(408,5,73,0,'active','2019-08-05 02:02:06','cavah',NULL,NULL,0,'2019-08-05 02:02:06','2019-08-05 02:02:26',0,0),(409,5,73,0,'active','2019-08-05 02:02:10','jsjajai',NULL,NULL,0,'2019-08-05 02:02:10','2019-08-05 02:02:26',0,0),(410,5,73,0,'active','2019-08-05 02:02:14','hajak',NULL,NULL,0,'2019-08-05 02:02:14','2019-08-05 02:02:26',0,0),(411,73,5,0,'active','2019-08-05 02:02:28','HHS',NULL,NULL,0,'2019-08-05 02:02:28','2019-08-06 13:30:35',0,0),(412,73,5,0,'active','2019-08-05 02:02:31','Juruense',NULL,NULL,0,'2019-08-05 02:02:31','2019-08-06 13:30:35',0,0),(413,73,5,0,'active','2019-08-05 02:02:38','Ujsbush',NULL,NULL,0,'2019-08-05 02:02:38','2019-08-06 13:30:35',0,0),(414,9,5,0,'active','2019-08-07 18:12:21','hhh',NULL,NULL,0,'2019-08-07 18:12:21','2019-08-07 18:13:14',0,0),(415,9,5,0,'active','2019-08-07 18:12:28','rr',NULL,NULL,0,'2019-08-07 18:12:28','2019-08-07 18:13:14',0,0),(416,9,5,0,'active','2019-08-07 18:12:33','qqq',NULL,NULL,0,'2019-08-07 18:12:33','2019-08-07 18:13:14',0,0),(417,9,5,0,'active','2019-08-07 18:12:38','ee',NULL,NULL,0,'2019-08-07 18:12:38','2019-08-07 18:13:14',0,0),(418,9,5,0,'active','2019-08-07 18:12:41','hshs',NULL,NULL,0,'2019-08-07 18:12:41','2019-08-07 18:13:14',0,0),(419,9,5,0,'active','2019-08-07 18:12:45','nan',NULL,NULL,0,'2019-08-07 18:12:45','2019-08-07 18:13:14',0,0),(420,9,5,0,'active','2019-08-07 18:12:49','aa',NULL,NULL,0,'2019-08-07 18:12:49','2019-08-07 18:13:14',0,0),(421,9,5,0,'active','2019-08-07 18:12:54','qq',NULL,NULL,0,'2019-08-07 18:12:54','2019-08-07 18:13:14',0,0),(422,5,9,0,'active','2019-08-07 18:13:16','baha',NULL,NULL,0,'2019-08-07 18:13:16','2019-08-11 14:12:38',0,0),(423,5,9,0,'active','2019-08-07 18:13:19','qq',NULL,NULL,0,'2019-08-07 18:13:19','2019-08-11 14:12:38',0,0),(424,5,9,0,'active','2019-08-07 18:13:23','rr',NULL,NULL,0,'2019-08-07 18:13:23','2019-08-11 14:12:38',0,0),(425,5,9,0,'active','2019-08-07 18:13:26','pp',NULL,NULL,0,'2019-08-07 18:13:26','2019-08-11 14:12:38',0,0),(426,75,12,0,'active','2019-10-30 04:14:35','hellloooo',NULL,NULL,0,'2019-10-30 04:14:35','2019-10-30 04:15:35',0,0),(427,5,91,0,'active','2019-10-30 12:37:39','Salve salvee Flavinha',NULL,NULL,0,'2019-10-30 12:37:39','2019-10-30 12:52:37',0,0),(428,91,5,0,'active','2019-10-30 12:53:57','Você também por aqui, MC?',NULL,NULL,0,'2019-10-30 12:53:57','2019-10-30 12:53:57',0,0),(429,5,91,0,'active','2019-10-30 12:54:28','Claro! Não vou perder .. App ta bombando',NULL,NULL,0,'2019-10-30 12:54:28','2019-10-30 12:54:28',0,0),(430,91,5,0,'active','2019-10-30 12:55:09','Já mandei uma rima top... Geral curtiu',NULL,NULL,0,'2019-10-30 12:55:09','2019-10-30 12:55:09',0,0),(431,5,91,0,'active','2019-10-30 12:55:30','Demoro! Vou chamar logo na Batalha',NULL,NULL,0,'2019-10-30 12:55:30','2019-10-30 12:55:30',0,0),(432,104,2,0,'active','2020-04-04 06:49:18','hi',NULL,NULL,0,'2020-04-04 06:49:18','2020-04-07 08:50:43',0,0),(433,104,2,0,'active','2020-04-04 06:50:33','http://52.27.53.102/batalhafunk/img/chat/1585983030.png',NULL,NULL,0,'2020-04-04 06:50:33','2020-04-07 08:50:43',0,0),(434,12,14,0,'active','2020-04-04 11:26:47','Good bansal ',NULL,NULL,0,'2020-04-04 11:26:47','2020-04-05 10:44:39',0,0),(435,12,14,0,'active','2020-04-04 11:27:13','now Sockit working',NULL,NULL,0,'2020-04-04 11:27:13','2020-04-05 10:44:39',0,0),(436,12,1,0,'active','2020-04-05 10:44:55','Ttttttt',NULL,NULL,0,'2020-04-05 10:44:55','2020-04-07 07:57:00',0,0),(437,12,1,0,'active','2020-04-05 10:45:02','Testing',NULL,NULL,0,'2020-04-05 10:45:02','2020-04-07 07:57:00',0,0),(438,103,5,0,'active','2020-04-06 14:54:39','teste1',NULL,NULL,0,'2020-04-06 14:54:39','2020-04-06 14:55:04',0,0),(439,103,5,0,'active','2020-04-06 14:54:57','http://52.27.53.102/batalhafunk/img/chat/1586184897.png',NULL,NULL,0,'2020-04-06 14:54:57','2020-04-06 14:55:04',0,0),(440,73,106,0,'active','2020-04-07 01:59:59','ola',NULL,NULL,0,'2020-04-07 01:59:59','2020-04-07 01:59:59',0,0),(441,73,106,0,'active','2020-04-07 02:00:11','kbg',NULL,NULL,0,'2020-04-07 02:00:11','2020-04-07 02:00:22',0,0),(442,73,106,0,'active','2020-04-07 02:00:25','bgff',NULL,NULL,0,'2020-04-07 02:00:25','2020-04-07 02:00:25',0,0),(443,73,106,0,'active','2020-04-07 02:00:33','hcff',NULL,NULL,0,'2020-04-07 02:00:33','2020-04-07 02:01:13',0,0),(444,73,106,0,'active','2020-04-07 02:00:40','ggvv',NULL,NULL,0,'2020-04-07 02:00:40','2020-04-07 02:01:13',0,0),(445,106,73,0,'active','2020-04-07 02:01:16','Oi ',NULL,NULL,0,'2020-04-07 02:01:16','2020-04-07 02:02:35',0,0),(446,106,73,0,'active','2020-04-07 02:01:35','Hv',NULL,NULL,0,'2020-04-07 02:01:35','2020-04-07 02:02:35',0,0),(447,106,73,0,'active','2020-04-07 02:01:39','Gccc',NULL,NULL,0,'2020-04-07 02:01:39','2020-04-07 02:02:35',0,0),(448,106,73,0,'active','2020-04-07 02:02:21','Oi',NULL,NULL,0,'2020-04-07 02:02:21','2020-04-07 02:02:35',0,0),(449,106,73,0,'active','2020-04-07 02:02:38','Big',NULL,NULL,0,'2020-04-07 02:02:38','2020-04-07 02:02:38',0,0),(450,106,73,0,'active','2020-04-07 02:02:48','Olá ',NULL,NULL,0,'2020-04-07 02:02:48','2020-04-07 02:05:00',0,0),(451,73,106,0,'active','2020-04-07 02:05:06','pls',NULL,NULL,0,'2020-04-07 02:05:06','2020-04-07 02:06:35',0,0),(452,73,106,0,'active','2020-04-07 02:05:10','vc',NULL,NULL,0,'2020-04-07 02:05:10','2020-04-07 02:06:35',0,0),(453,73,106,0,'active','2020-04-07 02:05:30','pls',NULL,NULL,0,'2020-04-07 02:05:30','2020-04-07 02:06:35',0,0),(454,73,106,0,'active','2020-04-07 02:05:41','hgf',NULL,NULL,0,'2020-04-07 02:05:41','2020-04-07 02:06:35',0,0),(455,106,73,0,'active','2020-04-07 02:06:38','Olá ',NULL,NULL,0,'2020-04-07 02:06:38','2020-04-07 02:07:31',0,0),(456,73,106,0,'active','2020-04-07 02:07:26','http://52.27.53.102/batalhafunk/img/chat/1586225246.png',NULL,NULL,0,'2020-04-07 02:07:26','2020-04-07 02:07:31',0,0),(457,73,106,0,'active','2020-04-07 02:08:12','hgf',NULL,NULL,0,'2020-04-07 02:08:12','2020-04-07 02:08:27',0,0),(458,106,73,0,'active','2020-04-07 02:08:18','Jeff',NULL,NULL,0,'2020-04-07 02:08:18','2020-04-07 02:08:27',0,0),(459,73,106,0,'active','2020-04-07 02:35:36','http://52.27.53.102/batalhafunk/img/chat/1586226935.png',NULL,NULL,0,'2020-04-07 02:35:36','2020-04-07 02:35:42',0,0),(460,12,1,0,'active','2020-04-07 08:22:58','http://52.27.53.102/batalhafunk/img/chat/1586247776.file',NULL,NULL,0,'2020-04-07 08:22:58','2020-04-07 08:24:25',0,0),(461,104,12,0,'active','2020-04-07 08:52:48','hello',NULL,NULL,0,'2020-04-07 08:52:48','2020-04-07 08:52:48',0,0),(462,104,12,0,'active','2020-04-07 08:56:09','http://52.27.53.102/batalhafunk/img/chat/1586249769.png',NULL,NULL,0,'2020-04-07 08:56:09','2020-04-07 09:41:59',0,0),(463,12,104,0,'active','2020-04-07 09:42:33','http://52.27.53.102/batalhafunk/img/chat/1586252551.file',NULL,NULL,0,'2020-04-07 09:42:33','2020-04-07 15:59:36',0,0),(464,12,104,0,'active','2020-04-07 09:42:42','Hello ma’am\n',NULL,NULL,0,'2020-04-07 09:42:42','2020-04-07 15:59:36',0,0),(465,12,14,0,'active','2020-04-07 12:07:45','ggdchj',NULL,NULL,0,'2020-04-07 12:07:45','2020-04-07 12:11:09',0,0),(466,12,14,0,'active','2020-04-07 12:08:07','http://52.27.53.102/batalhafunk/img/chat/1586261286.png',NULL,NULL,0,'2020-04-07 12:08:07','2020-04-07 12:11:09',0,0),(467,14,12,0,'active','2020-04-07 12:11:13','Hii',NULL,NULL,0,'2020-04-07 12:11:13','2020-04-07 12:13:44',0,0),(468,14,12,0,'active','2020-04-07 12:42:35','http://52.27.53.102/batalhafunk/img/chat/1586263355.file',NULL,NULL,0,'2020-04-07 12:42:35','2020-04-07 15:49:18',0,0),(469,14,12,0,'active','2020-04-07 12:42:39','Bxbxb',NULL,NULL,0,'2020-04-07 12:42:39','2020-04-07 15:49:18',0,0),(470,12,14,0,'active','2020-04-07 15:49:29','Hhhh',NULL,NULL,0,'2020-04-07 15:49:29','2020-04-07 15:50:41',0,0),(471,12,14,0,'active','2020-04-07 15:49:29','Vhhgg',NULL,NULL,0,'2020-04-07 15:49:29','2020-04-07 15:50:41',0,0),(472,12,14,0,'active','2020-04-07 15:49:29','Hhh',NULL,NULL,0,'2020-04-07 15:49:29','2020-04-07 15:50:41',0,0),(473,12,14,0,'active','2020-04-07 15:50:05','Ggg',NULL,NULL,0,'2020-04-07 15:50:05','2020-04-07 15:50:41',0,0),(474,12,14,0,'active','2020-04-07 15:50:07','Ggg',NULL,NULL,0,'2020-04-07 15:50:07','2020-04-07 15:50:41',0,0),(475,12,14,0,'active','2020-04-07 15:50:44','Hhhh',NULL,NULL,0,'2020-04-07 15:50:44','2020-04-07 15:51:15',0,0),(476,12,14,0,'active','2020-04-07 15:50:46','Hhgg',NULL,NULL,0,'2020-04-07 15:50:46','2020-04-07 15:51:15',0,0),(477,12,14,0,'active','2020-04-07 15:50:48','Gets',NULL,NULL,0,'2020-04-07 15:50:48','2020-04-07 15:51:15',0,0),(478,12,14,0,'active','2020-04-07 15:50:54','Gggg',NULL,NULL,0,'2020-04-07 15:50:54','2020-04-07 15:51:15',0,0),(479,12,14,0,'active','2020-04-07 15:51:20','H was u ',NULL,NULL,0,'2020-04-07 15:51:20','2020-04-07 15:51:26',0,0),(480,12,14,0,'active','2020-04-07 15:51:54','http://52.27.53.102/batalhafunk/img/chat/1586274714.file',NULL,NULL,0,'2020-04-07 15:51:54','2020-04-07 15:52:22',0,0),(481,12,14,0,'active','2020-04-07 15:52:39','http://52.27.53.102/batalhafunk/img/chat/1586274759.file',NULL,NULL,0,'2020-04-07 15:52:39','2020-04-07 15:52:48',0,0),(482,12,14,0,'active','2020-04-07 15:52:51',' Xbxbx',NULL,NULL,0,'2020-04-07 15:52:51','2020-04-07 15:53:17',0,0),(483,12,14,0,'active','2020-04-07 15:52:53','Hdhdhdh',NULL,NULL,0,'2020-04-07 15:52:53','2020-04-07 15:53:17',0,0),(484,12,14,0,'active','2020-04-07 15:53:02','Sweet and wI year later and I did not make wtueiwtuwwtuwowywuiwueu',NULL,NULL,0,'2020-04-07 15:53:02','2020-04-07 15:53:17',0,0),(485,12,14,0,'active','2020-04-07 15:59:51','hello abhay',NULL,NULL,0,'2020-04-07 15:59:51','2020-04-07 16:07:57',0,0),(486,14,12,1,'active','2020-04-07 16:08:34','Have you received the message',NULL,NULL,0,'2020-04-07 16:08:34','0000-00-00 00:00:00',0,0),(487,14,12,1,'active','2020-04-07 16:09:04','http://52.27.53.102/batalhafunk/img/chat/1586275743.file',NULL,NULL,0,'2020-04-07 16:09:04','0000-00-00 00:00:00',0,0),(488,14,12,1,'active','2020-04-07 16:09:28','http://52.27.53.102/batalhafunk/img/chat/1586275768.file',NULL,NULL,0,'2020-04-07 16:09:28','0000-00-00 00:00:00',0,0),(489,14,12,1,'active','2020-04-07 16:09:36','Sani chal raha hai ab',NULL,NULL,0,'2020-04-07 16:09:36','0000-00-00 00:00:00',0,0),(511,101,115,0,'active','2020-04-15 15:28:35','Ola!',NULL,NULL,0,'2020-04-15 15:28:35','2020-04-15 15:28:52',0,0),(512,101,115,0,'active','2020-04-15 15:28:57','Tudo Ben?',NULL,NULL,0,'2020-04-15 15:28:57','2020-04-15 15:29:31',0,0),(513,101,115,0,'active','2020-04-15 15:29:25','T',NULL,NULL,0,'2020-04-15 15:29:25','2020-04-15 15:29:31',0,0),(514,101,115,1,'active','2020-04-15 16:05:07','ola',NULL,NULL,0,'2020-04-15 16:05:07','0000-00-00 00:00:00',0,0);
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
INSERT INTO `coin_lists` VALUES (1,'150','50','2020-04-02 10:16:10','2020-04-02 10:16:10'),(2,'200','100','2020-04-02 10:16:57','2020-04-02 10:16:57'),(3,'250','150','2020-04-02 10:17:46','2020-04-02 10:17:46'),(4,'300','200','2020-04-02 10:18:19','2020-04-02 10:18:19'),(5,'350','250','2020-04-02 10:18:49','2020-04-02 10:18:49'),(6,'400','300','2020-04-02 10:19:50','2020-04-02 10:19:50');
/*!40000 ALTER TABLE `coin_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_lists_28Mar20`
--

DROP TABLE IF EXISTS `coin_lists_28Mar20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_lists_28Mar20` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(255) DEFAULT NULL,
  `coin` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_lists_28Mar20`
--

LOCK TABLES `coin_lists_28Mar20` WRITE;
/*!40000 ALTER TABLE `coin_lists_28Mar20` DISABLE KEYS */;
INSERT INTO `coin_lists_28Mar20` VALUES (1,'110','50','2018-11-29 16:46:00','2020-03-28 07:58:09'),(2,'2','100','2018-11-29 16:46:00','0000-00-00 00:00:00'),(3,'3','300','2018-11-29 16:46:56','2018-12-26 10:01:21'),(4,'4','500','2018-11-29 16:46:56','2018-11-29 16:48:17'),(5,'5','1000','2018-11-29 16:46:56','2018-11-29 16:48:21'),(6,'10','100000','2019-02-23 08:01:50','2019-02-23 08:01:50'),(10,'1599','159999','2019-02-27 17:59:51','2019-02-27 18:01:21'),(11,'.50','10','2019-03-01 07:16:12','2019-03-01 07:16:12'),(12,'55','55','2019-03-01 07:16:41','2019-03-01 07:16:41');
/*!40000 ALTER TABLE `coin_lists_28Mar20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_lists_test_2Apr20`
--

DROP TABLE IF EXISTS `coin_lists_test_2Apr20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_lists_test_2Apr20` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(255) DEFAULT NULL,
  `coin` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_lists_test_2Apr20`
--

LOCK TABLES `coin_lists_test_2Apr20` WRITE;
/*!40000 ALTER TABLE `coin_lists_test_2Apr20` DISABLE KEYS */;
INSERT INTO `coin_lists_test_2Apr20` VALUES (1,'150','50','2020-03-28 15:31:21','2020-03-28 15:31:21'),(2,'200','100','2020-03-28 15:33:01','2020-03-28 15:33:01'),(3,'250','150','2020-03-28 15:35:43','2020-03-28 15:35:43'),(4,'300','200','2020-03-28 15:36:24','2020-03-28 15:36:24'),(5,'350','250','2020-03-28 15:37:04','2020-03-28 15:37:04'),(6,'400','300','2020-03-28 15:37:47','2020-04-01 09:12:09');
/*!40000 ALTER TABLE `coin_lists_test_2Apr20` ENABLE KEYS */;
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
INSERT INTO `coins` VALUES (1,'DownloadApp',1,5,1,'2018-11-29 13:18:53','2020-04-29 18:53:32'),(2,'Login',2,5,1,'2018-11-29 13:23:08','2019-06-29 10:04:11'),(3,'LikeBatal',3,5,4,'2018-11-29 13:23:21','2019-06-29 10:45:33'),(4,'Invite',4,20,0,'2018-11-29 13:23:35','2019-06-29 10:07:51'),(5,'Review',5,20,1,'2018-11-29 13:23:51','2019-06-29 10:08:02'),(6,'TagAdd',6,10,2,'2018-11-29 13:24:01','2019-06-29 10:44:50'),(7,'WinBatal',7,150,1,'2019-05-01 06:22:34','2019-06-29 10:08:41');
/*!40000 ALTER TABLE `coins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coins_28Mar20`
--

DROP TABLE IF EXISTS `coins_28Mar20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coins_28Mar20` (
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
-- Dumping data for table `coins_28Mar20`
--

LOCK TABLES `coins_28Mar20` WRITE;
/*!40000 ALTER TABLE `coins_28Mar20` DISABLE KEYS */;
INSERT INTO `coins_28Mar20` VALUES (1,'DownloadApp',1,5,1,'2018-11-29 13:18:53','2019-06-29 10:01:16'),(2,'Login',2,5,1,'2018-11-29 13:23:08','2019-06-29 10:04:11'),(3,'LikeBatal',3,5,4,'2018-11-29 13:23:21','2019-06-29 10:45:33'),(4,'Invite',4,20,0,'2018-11-29 13:23:35','2019-06-29 10:07:51'),(5,'Review',5,20,1,'2018-11-29 13:23:51','2019-06-29 10:08:02'),(6,'TagAdd',6,10,2,'2018-11-29 13:24:01','2019-06-29 10:44:50'),(7,'WinBatal',7,150,1,'2019-05-01 06:22:34','2019-06-29 10:08:41');
/*!40000 ALTER TABLE `coins_28Mar20` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_advertisements`
--

LOCK TABLES `comment_advertisements` WRITE;
/*!40000 ALTER TABLE `comment_advertisements` DISABLE KEYS */;
INSERT INTO `comment_advertisements` VALUES (3,12,NULL,2,'@ak',1,'2019-05-02 10:46:18','2019-05-02 10:46:34'),(4,12,'14,14',2,'@akriti07',0,'2019-05-02 10:46:34','2019-05-02 10:46:34'),(5,14,'12,',2,'@abhay ',1,'2019-05-02 10:47:00','2019-05-02 10:47:00'),(10,12,'14',2,'@akriti07',1,'2019-05-07 11:32:32','2019-05-07 11:32:33'),(11,12,'14',2,'@akriti07',0,'2019-05-07 11:32:49','2019-05-07 11:32:49'),(12,12,'1',2,'@shubham',0,'2019-05-07 11:32:59','2019-05-07 11:32:59'),(36,12,NULL,3,'Vfvdv',1,'2019-05-30 08:42:58','2019-05-30 13:08:42'),(39,12,'2',1,'@sahil',0,'2019-05-30 13:47:18','2019-05-30 13:47:18'),(45,0,NULL,0,'',0,'2019-06-07 02:48:43','2019-06-07 02:48:43'),(50,0,NULL,0,'',0,'2019-06-07 07:46:10','2019-06-07 07:46:10'),(57,14,'12',2,'@abhay',1,'2019-06-13 07:12:18','2019-06-13 07:12:18'),(58,14,'12',2,'@abhay',1,'2019-06-14 05:59:34','2019-06-14 05:59:34'),(59,12,'14,',2,'@akriti07 ',1,'2019-06-14 06:02:09','2019-06-14 06:02:09'),(60,12,'',1,'@love ',1,'2019-06-15 13:27:36','2019-06-28 05:00:34'),(69,20,'14',1,'@akriti07',1,'2019-06-29 08:08:23','2019-06-29 08:08:23'),(70,20,'14',1,'@akriti07',0,'2019-06-29 08:09:35','2019-06-29 08:09:35'),(71,14,'12',1,'@abhay',1,'2019-06-29 10:10:43','2019-06-29 10:10:43'),(72,14,'12',1,'@abhay',0,'2019-06-29 10:10:58','2019-06-29 10:10:58'),(73,14,'20',1,'@amit',0,'2019-06-29 10:11:11','2019-06-29 10:11:11'),(74,12,'14',3,'@akriti07',1,'2019-06-29 10:15:39','2019-06-29 10:15:39'),(76,12,'5',2,'@erick33',0,'2019-06-29 10:16:46','2019-06-29 10:16:46'),(77,12,'14,',1,'@akriti07 ',1,'2019-07-01 14:34:07','2019-07-01 14:34:07'),(78,12,NULL,1,'Dudu',1,'2019-07-02 06:19:53','2019-07-02 07:14:33'),(79,12,NULL,1,' H h ',0,'2019-07-02 06:19:58','2019-07-02 06:19:58'),(80,12,'1,',1,'@shubham ',0,'2019-07-02 07:14:33','2019-07-02 07:14:33'),(81,14,'12',2,'@abhay',1,'2019-07-02 11:46:18','2019-07-02 11:46:19'),(82,12,'1,',1,'@shubham ',0,'2019-07-02 13:55:28','2019-07-02 13:55:28'),(91,14,'12',1,'@abhay',1,'2019-07-18 10:55:55','2019-07-18 10:55:55'),(92,14,'12',2,'@abhay',1,'2019-07-18 11:29:31','2019-07-18 11:29:31'),(93,14,'12',2,'@abhay',0,'2019-07-18 11:31:22','2019-07-18 11:31:22'),(94,12,'14',2,'@akriti07',1,'2019-07-22 08:19:20','2019-07-22 08:19:20'),(95,73,'74,',2,'@thebrazilianstyle ',1,'2019-07-23 23:42:32','2019-07-23 23:42:32'),(96,73,'74,',3,'@thebrazilianstyle ',1,'2019-07-23 23:42:48','2019-07-23 23:42:48'),(97,14,'12,',2,'@abhay ',1,'2019-07-24 13:47:43','2019-07-24 13:47:43'),(98,12,'20',2,'@amit',1,'2019-07-24 18:13:25','2019-07-24 18:13:26'),(99,12,'14',2,'@akriti07',0,'2019-07-24 18:13:40','2019-07-24 18:13:40'),(100,12,'14',1,'@akriti07',1,'2019-07-24 18:14:12','2019-07-24 18:14:12'),(101,12,'20',2,'@amit',1,'2019-07-25 08:48:41','2019-07-25 08:48:42'),(102,0,NULL,0,'',0,'2019-07-26 10:29:39','2019-07-26 10:29:39'),(103,20,'1,',1,'@shubham ',1,'2019-07-26 10:38:05','2019-07-26 10:38:05'),(104,12,'14',1,'@akriti07',1,'2019-07-29 10:15:46','2019-07-29 10:15:46'),(105,12,'14',2,'@akriti07',1,'2019-07-29 10:34:47','2019-07-29 10:34:47'),(106,73,'5,',2,'@erick33 ',1,'2019-08-05 02:57:20','2019-08-05 02:57:20'),(111,101,NULL,1,'teste',0,'2020-03-30 22:54:07','2020-03-30 22:54:07'),(112,102,NULL,1,'Teste',0,'2020-03-31 00:06:47','2020-03-31 00:06:47');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_batals`
--

LOCK TABLES `comment_batals` WRITE;
/*!40000 ALTER TABLE `comment_batals` DISABLE KEYS */;
INSERT INTO `comment_batals` VALUES (1,12,'',22,' hxhxxhx',0,'2019-04-15 09:45:00','2019-04-15 09:45:00'),(2,14,'',22,'ch ch',0,'2019-04-15 09:45:11','2019-04-15 09:45:11'),(4,12,'14',68,'@akriti07',1,'2019-04-29 08:13:05','2019-04-29 08:13:05'),(5,14,'12,',68,'@abhay ',0,'2019-04-29 08:14:48','2019-04-29 08:14:48'),(10,14,'12,',68,'@abhay ',0,'2019-04-30 10:42:23','2019-04-30 10:42:23'),(11,14,'12,',2,'@abhay ',0,'2019-04-30 10:48:06','2019-04-30 10:48:06'),(12,12,'14',2,'@akriti07',0,'2019-04-30 10:49:37','2019-04-30 10:49:37'),(13,14,'12,',2,'@abhay ',0,'2019-04-30 10:55:26','2019-04-30 10:55:26'),(14,14,'12,',2,'@abhay ',0,'2019-04-30 11:08:17','2019-04-30 11:08:17'),(15,1,'2,',68,'@sahil ',0,'2019-05-01 05:58:28','2019-05-01 05:58:28'),(16,1,'2,',2,'@sahil ',0,'2019-05-01 06:02:52','2019-05-01 06:02:52'),(17,1,'12,',2,'@abhay ',0,'2019-05-01 06:03:33','2019-05-01 06:03:33'),(18,14,'12,',2,'@abhay ',0,'2019-05-02 10:57:27','2019-05-02 10:57:27'),(19,12,'14',2,'@akriti07',0,'2019-05-02 10:58:04','2019-05-02 10:58:04'),(31,14,'',216,'gghj',0,'2019-05-21 05:12:13','2019-05-21 05:12:13'),(32,12,'',216,'hii',0,'2019-05-21 05:13:54','2019-05-21 05:13:54'),(33,12,'',156,'HfhjfjhaS',0,'2019-05-28 10:57:37','2019-05-28 10:57:37'),(35,12,'',39,'xgxxgxgxgxgx',0,'2019-05-30 12:12:12','2019-05-30 12:12:12'),(36,14,'',39,'Hdhdhdh',0,'2019-05-30 12:12:22','2019-05-30 12:12:22'),(37,12,'14',155,'@akriti07',0,'2019-05-30 12:26:18','2019-05-30 12:26:18'),(39,55,'',237,'Olá',0,'2019-06-06 23:23:26','2019-06-06 23:23:26'),(46,32,'',237,'nice one',0,'2019-06-27 13:00:15','2019-06-27 13:00:15'),(48,12,'',262,'Ncnc',0,'2019-07-02 06:22:42','2019-07-02 06:22:42'),(49,12,'',247,'Shubham',0,'2019-07-25 11:23:56','2019-07-25 11:23:56'),(50,91,'',303,'DJ meier sucesso',0,'2019-09-18 18:42:36','2019-09-18 18:42:36'),(51,91,'',303,'bailão',0,'2019-09-18 18:42:48','2019-09-18 18:42:48'),(52,91,'',303,'aaaaa',0,'2019-09-18 18:42:53','2019-09-18 18:42:53'),(53,91,'',303,'.',0,'2019-09-18 18:42:56','2019-09-18 18:42:56'),(54,91,'',303,'.',0,'2019-09-18 18:42:59','2019-09-18 18:42:59'),(55,9,'',303,'top',0,'2019-09-18 18:44:15','2019-09-18 18:44:15'),(57,9,'',305,'hahah show de bola manooo',0,'2019-09-20 14:16:01','2019-09-20 14:16:01'),(58,12,'',343,'Hello',0,'2020-04-08 09:01:44','2020-04-08 09:01:44');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_musics`
--

LOCK TABLES `comment_musics` WRITE;
/*!40000 ALTER TABLE `comment_musics` DISABLE KEYS */;
INSERT INTO `comment_musics` VALUES (1,2,NULL,7,'hii',0,'2019-04-22 13:36:55','2019-04-22 13:36:55'),(2,2,NULL,7,'Hello',0,'2019-04-22 13:37:09','2019-04-22 13:37:09'),(4,14,'12,',13,'@abhay ',0,'2019-04-30 10:44:35','2019-04-30 10:44:35'),(5,14,'12,',13,'@abhay ',0,'2019-04-30 10:45:48','2019-04-30 10:45:48'),(8,5,NULL,18,'bomm! E esses likes ? vieram automáticos?',0,'2019-05-06 22:24:17','2019-05-06 22:24:17'),(22,14,NULL,21,'ggh',0,'2019-05-21 05:13:02','2019-05-21 05:13:02'),(23,32,NULL,12,'test comments',0,'2019-05-29 06:19:36','2019-05-29 06:19:36'),(24,12,NULL,24,'Bdsjhbdjsvd',0,'2019-05-30 06:08:58','2019-05-30 06:08:58'),(29,14,NULL,22,'Fight',0,'2019-05-30 11:11:21','2019-05-30 11:11:21'),(30,12,NULL,21,'Ssss',0,'2019-05-31 09:11:58','2019-05-31 09:11:58'),(31,12,'12,',21,'@abhay ',0,'2019-05-31 09:12:17','2019-05-31 09:12:17'),(41,12,'14,',24,'@akriti07 ',0,'2019-06-14 05:23:42','2019-06-14 05:23:42'),(42,14,'12',22,'@abhay',0,'2019-06-14 05:58:46','2019-06-14 05:58:46'),(43,14,'12',22,'@abhay',0,'2019-06-14 05:59:03','2019-06-14 05:59:03'),(44,12,'14,',24,'@akriti07 ',0,'2019-06-14 06:01:27','2019-06-14 06:01:27'),(46,56,NULL,11,'Teste Gui',0,'2019-06-27 23:20:15','2019-06-27 23:20:15'),(49,12,NULL,32,'Check',0,'2019-07-02 06:19:25','2019-07-02 06:19:25'),(50,14,NULL,41,'comment',0,'2019-07-18 10:55:08','2019-07-18 10:55:08'),(51,14,'12',41,'@abhay',0,'2019-07-18 10:55:36','2019-07-18 10:55:36'),(53,9,NULL,32,'teste',0,'2019-07-23 14:21:38','2019-07-23 14:21:38'),(54,9,'5',32,'teste2 @erick33',0,'2019-07-23 14:21:50','2019-07-23 14:21:50'),(55,5,'9',32,'test @erick85',0,'2019-07-23 14:23:56','2019-07-23 14:23:56'),(57,74,NULL,44,'jbss',0,'2019-07-23 23:50:01','2019-07-23 23:50:01'),(58,73,NULL,44,'Hahah',0,'2019-07-23 23:50:29','2019-07-23 23:50:29'),(59,73,NULL,45,'Haha',0,'2019-07-23 23:53:14','2019-07-23 23:53:14'),(61,12,'1',47,'@batalhafunk @shubham',0,'2019-07-24 16:53:16','2020-04-07 15:51:34'),(62,12,NULL,48,'hii',0,'2019-07-25 06:03:12','2019-07-25 06:03:12'),(63,78,NULL,47,'xbbdb',0,'2019-07-25 09:03:03','2019-07-25 09:03:03'),(64,78,NULL,41,'☺️????',0,'2019-07-25 12:10:15','2019-07-25 12:10:15'),(65,9,'5',32,'teste @erick33',0,'2019-07-25 18:28:59','2019-07-25 18:28:59'),(66,67,NULL,46,'shhsbshshshs',0,'2019-07-25 18:37:54','2019-07-25 18:37:54'),(67,12,'1',44,'@shubham',0,'2019-07-26 10:29:39','2019-07-26 10:29:39'),(70,73,NULL,59,'Ou ',0,'2019-08-05 02:56:42','2019-08-05 02:56:42'),(71,91,NULL,69,'Mandou muito!',0,'2019-09-18 17:17:26','2019-09-18 17:17:26'),(72,91,NULL,69,'TMJ',0,'2019-09-18 17:17:47','2019-09-18 17:17:47'),(73,9,NULL,68,'Extouro! Sucesso total!',0,'2019-09-18 17:18:10','2019-09-18 17:18:10'),(74,9,NULL,68,'muita atitude',0,'2019-09-18 17:18:24','2019-09-18 17:18:24'),(75,9,NULL,68,'.',0,'2019-09-18 17:18:44','2019-09-18 17:18:44'),(76,9,NULL,67,'aí simmmm!',0,'2019-09-18 17:19:06','2019-09-18 17:19:06'),(77,9,NULL,67,'música top',0,'2019-09-18 17:19:23','2019-09-18 17:19:23'),(78,91,NULL,70,'top',0,'2019-09-18 18:48:16','2019-09-18 18:48:16'),(79,91,NULL,70,'chave',0,'2019-09-18 18:48:19','2019-09-18 18:48:19'),(80,91,NULL,70,'aaaa',0,'2019-09-18 18:48:27','2019-09-18 18:48:27'),(81,91,NULL,70,'.',0,'2019-09-18 18:48:31','2019-09-18 18:48:31'),(82,91,NULL,70,'.',0,'2019-09-18 18:48:34','2019-09-18 18:48:34'),(83,91,NULL,70,'.',0,'2019-09-18 18:48:37','2019-09-18 18:48:37'),(84,91,NULL,70,'.',0,'2019-09-18 18:48:48','2019-09-18 18:48:48'),(85,91,NULL,70,'.',0,'2019-09-18 18:48:56','2019-09-18 18:48:56'),(86,9,NULL,70,'.',0,'2019-09-18 18:48:59','2019-09-18 18:48:59'),(87,9,NULL,70,'monstro',0,'2019-09-18 18:49:03','2019-09-18 18:49:03'),(88,9,NULL,70,'Salve',0,'2019-09-18 18:49:10','2019-09-18 18:49:10'),(89,91,NULL,71,'mlk doido',0,'2019-09-18 18:54:28','2019-09-18 18:54:28'),(90,91,NULL,71,'aa',0,'2019-09-18 18:54:33','2019-09-18 18:54:33'),(91,91,NULL,71,'b',0,'2019-09-18 18:54:40','2019-09-18 18:54:40'),(92,91,NULL,71,'c',0,'2019-09-18 18:54:48','2019-09-18 18:54:48'),(93,9,NULL,71,'??',0,'2019-09-18 18:55:04','2019-09-18 18:55:04'),(94,91,NULL,67,'❤️',0,'2019-09-18 18:55:57','2019-09-18 18:55:57'),(95,91,NULL,67,'...',0,'2019-09-18 18:56:03','2019-09-18 18:56:03'),(96,91,NULL,67,'pão',0,'2019-09-18 18:56:08','2019-09-18 18:56:08'),(97,91,NULL,67,'show',0,'2019-09-18 18:56:12','2019-09-18 18:56:12'),(98,5,NULL,67,'hahah muito boa Natyyy',0,'2019-09-20 14:39:12','2019-09-20 14:39:12'),(99,5,'73',72,'muito bom! @kelvinlopes @batalhafunk @batalhafunkbrasil',0,'2019-09-25 17:05:07','2020-04-07 15:52:21');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drafts`
--

LOCK TABLES `drafts` WRITE;
/*!40000 ALTER TABLE `drafts` DISABLE KEYS */;
INSERT INTO `drafts` VALUES (2,14,'http://52.27.53.102/batalhafunk/img/audio/5c541d92bf612.mp3','http://52.27.53.102/batalhafunk/img/voice_file/1556864634.mp3','2','1.0','1.0','http://52.27.53.102/batalhafunk/img/artist_image/1549016476.jpg','8','2019-05-03 06:23:54','2019-05-03 06:23:54'),(3,12,'http://52.27.53.102/batalhafunk/img/audio/5c541d92bf612.mp3','http://52.27.53.102/batalhafunk/img/voice_file/1557484462.mp3','shubham','1.0','0.8603774','http://52.27.53.102/batalhafunk/img/artist_image/1549016476.jpg','11','2019-05-10 10:34:22','2019-05-10 10:34:22'),(4,14,'http://52.27.53.102/batalhafunk/img/audio/5c541d92bf612.mp3','http://52.27.53.102/batalhafunk/img/voice_file/1558419450.mp3','new','1.0','1.0','http://52.27.53.102/batalhafunk/img/artist_image/1549016476.jpg','5','2019-05-21 06:17:30','2019-05-21 06:17:30'),(6,32,'http://52.27.53.102/batalhafunk/img/audio/5c541e098491a.mp3','http://52.27.53.102/batalhafunk/img/voice_file/1562092887.mp3','Punk','1.0','1.0','http://52.27.53.102/batalhafunk/img/artist_image/1549016595.jpg','1','2019-07-02 18:41:27','2019-07-02 18:41:27'),(7,32,'http://52.27.53.102/batalhafunk/img/audio/5c541e098491a.mp3','http://52.27.53.102/batalhafunk/img/voice_file/1562092952.mp3','Ultimatum','1.0','1.0','http://52.27.53.102/batalhafunk/img/artist_image/1549016595.jpg','20','2019-07-02 18:42:32','2019-07-02 18:42:32'),(8,12,'http://52.27.53.102/batalhafunk/img/audio/5c541ee013ab6.mp3','http://52.27.53.102/batalhafunk/img/voice_file/1563345988.mp3','funk','1.0','1.0','http://52.27.53.102/batalhafunk/img/artist_image/1549016809.jpg','2','2019-07-17 06:46:28','2019-07-17 06:46:28'),(9,55,'http://52.27.53.102/batalhafunk/img/audio/5d33534ae53fe.mp3','http://52.27.53.102/batalhafunk/img/voice_file/1564114238.mp3','Deita e Dorme','0.045757473','1.0','http://52.27.53.102/batalhafunk/img/artist_image/1563644761.png','83','2019-07-26 04:10:38','2019-07-26 04:14:06'),(40,93,'http://52.27.53.102/batalhafunk/img/audio/5c541ee013ab6.mp3','http://52.27.53.102/batalhafunk/img/voice_file/1569435404.mp3','lnnl','0.4','0.4','http://52.27.53.102/batalhafunk/img/artist_image/1549016809.jpg','6','2019-09-25 18:16:44','2019-09-25 18:16:44'),(41,93,'http://52.27.53.102/batalhafunk/img/audio/5c541ee013ab6.mp3','http://52.27.53.102/batalhafunk/img/voice_file/1569435922.mp3','[p[p[p[p[','0.4','0.4','http://52.27.53.102/batalhafunk/img/artist_image/1549016809.jpg','15','2019-09-25 18:25:22','2019-09-25 18:25:22'),(42,93,'http://52.27.53.102/batalhafunk/img/audio/5cca7ef342827.mp3','http://52.27.53.102/batalhafunk/img/voice_file/1569436367.mp3','mnnmnmnm','0.4','0.4','http://52.27.53.102/batalhafunk/img/artist_image/1556774652.png','8','2019-09-25 18:32:47','2019-09-25 18:32:47'),(43,93,'http://52.27.53.102/batalhafunk/img/audio/5d48339638db6.mp3','http://52.27.53.102/batalhafunk/img/voice_file/1569437211.mp3','jhjhjhhjgjhg','0.4','0.4','http://52.27.53.102/batalhafunk/img/artist_image/1565012900.jpg','58','2019-09-25 18:46:51','2019-09-25 18:46:51'),(44,93,'http://52.27.53.102/batalhafunk/img/audio/5cca7ef342827.mp3','http://52.27.53.102/batalhafunk/img/voice_file/1569438160.mp3','nmnmnmn','0.4','0.4','http://52.27.53.102/batalhafunk/img/artist_image/1556774652.png','1','2019-09-25 19:02:40','2019-09-25 19:02:40'),(45,93,'http://52.27.53.102/batalhafunk/img/audio/5cca7ef342827.mp3','http://52.27.53.102/batalhafunk/img/voice_file/1569438414.mp3','ролрлрорр','0.4','0.4','http://52.27.53.102/batalhafunk/img/artist_image/1556774652.png','17','2019-09-25 19:06:54','2019-09-25 19:06:54'),(46,93,'http://52.27.53.102/batalhafunk/img/audio/5d517a575f188.mp3','http://52.27.53.102/batalhafunk/img/voice_file/1569438520.mp3','аааааааааа','0.4','0.4','http://52.27.53.102/batalhafunk/img/artist_image/1565620836.jpeg','5','2019-09-25 19:08:40','2019-09-25 19:08:40'),(47,93,'http://52.27.53.102/batalhafunk/img/audio/5d48339638db6.mp3','http://52.27.53.102/batalhafunk/img/voice_file/1569481911.mp3','cfchd','0.4','0.4','http://52.27.53.102/batalhafunk/img/artist_image/1565012900.jpg','3','2019-09-26 07:11:51','2019-09-26 07:11:51'),(48,93,'http://52.27.53.102/batalhafunk/img/audio/5d5bbad991542.mp3','http://52.27.53.102/batalhafunk/img/voice_file/1569483124.mp3','vgsf','0.4','1.0','http://52.27.53.102/batalhafunk/img/artist_image/1566292710.png','10','2019-09-26 07:32:04','2019-09-26 07:32:04'),(49,93,'http://52.27.53.102/batalhafunk/img/audio/5d5bbad991542.mp3','http://52.27.53.102/batalhafunk/img/voice_file/1569488405.mp3','cvv','1.0','1.0','http://52.27.53.102/batalhafunk/img/artist_image/1566292710.png','6','2019-09-26 09:00:05','2019-09-26 09:00:05');
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
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow_users`
--

LOCK TABLES `follow_users` WRITE;
/*!40000 ALTER TABLE `follow_users` DISABLE KEYS */;
INSERT INTO `follow_users` VALUES (2,2,1,1,'2019-04-03 09:49:15','2019-04-03 09:52:42'),(6,12,3,2,'2019-04-10 06:20:39','2019-04-10 06:20:39'),(8,5,9,1,'2019-04-17 17:00:39','2019-05-24 17:35:23'),(24,12,5,1,'2019-05-07 12:35:04','2019-05-07 12:38:43'),(25,12,9,1,'2019-05-07 12:35:15','2019-05-24 17:35:21'),(37,32,5,1,'2019-05-23 04:50:55','2019-05-23 10:31:45'),(40,12,2,1,'2019-05-28 07:57:04','2019-05-28 07:57:04'),(42,32,1,1,'2019-05-29 06:20:16','2019-05-29 06:20:16'),(43,32,2,1,'2019-05-29 06:20:21','2019-05-29 06:20:21'),(44,32,3,2,'2019-05-29 06:20:25','2019-05-29 06:20:25'),(47,55,5,1,'2019-05-30 15:54:31','2019-05-30 18:36:41'),(48,55,1,1,'2019-05-30 15:54:48','2019-05-30 15:54:48'),(49,55,2,1,'2019-05-30 16:03:00','2019-05-30 16:03:00'),(50,5,55,1,'2019-06-07 02:31:05','2019-06-07 02:31:05'),(52,1,12,1,'2019-06-11 05:13:43','2019-06-29 10:21:22'),(55,20,14,1,'2019-06-29 08:07:29','2019-06-29 08:07:29'),(56,66,56,1,'2019-07-01 23:50:25','2019-07-01 23:50:25'),(57,56,66,1,'2019-07-01 23:54:26','2019-07-01 23:54:26'),(61,67,32,1,'2019-07-02 13:31:07','2019-07-02 13:53:05'),(62,32,67,1,'2019-07-02 13:53:21','2019-07-02 13:53:21'),(65,12,1,1,'2019-07-11 06:45:08','2019-07-11 06:45:08'),(66,9,5,1,'2019-07-11 13:47:53','2019-07-11 13:48:32'),(69,56,69,1,'2019-07-12 17:58:22','2019-07-12 17:58:22'),(70,56,71,1,'2019-07-20 00:41:12','2019-07-20 00:41:12'),(73,71,5,1,'2019-07-20 13:14:55','2019-07-20 13:45:44'),(74,71,56,1,'2019-07-20 13:15:47','2019-07-20 13:15:47'),(76,12,14,1,'2019-07-22 08:22:19','2019-07-22 08:22:24'),(77,14,12,1,'2019-07-22 08:23:28','2019-07-22 08:23:28'),(83,74,73,1,'2019-07-23 23:37:28','2019-07-23 23:37:28'),(84,73,74,1,'2019-07-23 23:37:45','2019-07-23 23:37:45'),(85,5,73,1,'2019-07-24 00:53:10','2019-07-24 00:53:10'),(90,12,20,1,'2019-07-24 17:57:07','2019-07-24 17:57:07'),(91,14,20,1,'2019-07-24 17:58:44','2019-07-24 17:58:44'),(93,67,75,1,'2019-07-25 09:15:33','2019-07-25 09:15:33'),(94,78,2,1,'2019-07-25 12:09:35','2019-07-25 12:09:35'),(96,78,5,1,'2019-07-25 12:09:45','2019-07-25 12:12:20'),(97,78,12,1,'2019-07-25 12:09:50','2019-07-25 12:09:50'),(98,73,5,1,'2019-07-26 04:00:52','2019-07-26 04:01:16'),(101,12,73,1,'2019-07-26 10:29:56','2019-07-26 10:29:56'),(102,20,1,1,'2019-07-26 10:29:58','2019-07-26 10:29:58'),(103,1,20,1,'2019-07-26 10:37:53','2019-07-26 10:37:53'),(104,81,1,1,'2019-07-26 14:48:06','2019-07-26 14:48:06'),(105,81,56,1,'2019-07-26 14:48:15','2019-07-26 14:48:15'),(106,81,5,1,'2019-07-26 14:48:26','2019-07-26 14:48:35'),(107,81,66,1,'2019-07-26 14:48:35','2019-09-20 16:51:07'),(108,5,56,1,'2019-07-26 15:13:09','2019-07-26 15:13:09'),(109,5,81,1,'2019-07-26 15:13:13','2019-07-26 15:13:13'),(110,5,82,1,'2019-07-26 15:13:28','2019-07-26 15:13:28'),(111,82,81,1,'2019-07-30 15:17:52','2019-07-30 15:17:52'),(118,12,78,1,'2019-08-05 07:49:41','2019-08-05 07:49:41'),(119,5,84,1,'2019-08-06 13:30:48','2019-08-06 13:30:48'),(120,85,5,1,'2019-08-07 00:15:19','2019-08-07 00:17:57'),(121,5,85,1,'2019-08-07 00:18:03','2019-08-07 00:18:03'),(123,5,86,1,'2019-08-08 15:48:53','2019-08-08 15:48:53'),(124,56,81,1,'2019-08-08 22:23:13','2019-08-08 22:23:13'),(125,5,87,1,'2019-08-11 14:13:19','2019-08-11 14:13:19'),(126,87,5,1,'2019-08-11 18:00:36','2019-08-11 18:00:53'),(129,5,88,1,'2019-08-12 12:00:49','2019-08-12 12:00:49'),(130,91,5,1,'2019-08-27 14:49:59','2019-08-27 14:50:10'),(131,5,91,1,'2019-08-27 14:50:16','2019-08-27 14:50:16'),(133,91,73,1,'2019-09-18 14:43:59','2019-09-18 14:43:59'),(134,91,9,1,'2019-09-18 14:44:05','2019-09-18 14:44:05'),(135,9,91,1,'2019-09-18 14:44:19','2019-09-18 14:44:19'),(136,9,73,1,'2019-09-18 14:45:50','2019-09-18 14:45:50'),(137,56,92,1,'2019-10-01 19:25:00','2019-10-01 19:25:00'),(139,5,66,1,'2019-10-01 19:38:08','2019-10-01 19:38:08'),(140,66,92,1,'2019-10-01 19:38:39','2019-10-01 19:38:39'),(141,56,5,1,'2019-10-01 19:41:50','2019-10-28 15:13:08'),(142,75,12,1,'2019-10-25 04:49:49','2019-10-25 04:49:49'),(143,12,75,1,'2019-10-25 04:50:29','2019-10-25 04:50:29'),(144,91,97,1,'2019-11-24 17:03:01','2019-11-24 17:03:01'),(145,97,91,1,'2019-11-24 17:04:14','2019-11-24 17:04:14'),(146,97,9,1,'2019-11-24 17:10:29','2019-12-09 14:08:38'),(148,103,5,1,'2020-04-02 12:36:42','2020-04-02 12:37:53'),(149,5,103,1,'2020-04-02 12:39:14','2020-04-02 12:39:14'),(150,99,2,1,'2020-04-02 14:07:44','2020-04-02 14:07:44'),(151,104,2,1,'2020-04-04 06:49:08','2020-04-04 06:49:08'),(153,104,73,1,'2020-04-27 16:46:02','2020-04-27 16:46:02');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_advertisements`
--

LOCK TABLES `like_advertisements` WRITE;
/*!40000 ALTER TABLE `like_advertisements` DISABLE KEYS */;
INSERT INTO `like_advertisements` VALUES (2,2,5,0,'2019-05-28 13:00:34','2019-05-28 13:00:34'),(3,2,12,1,'2019-05-30 06:09:51','2019-05-30 13:47:33'),(4,1,12,1,'2019-05-30 06:09:59','2019-05-30 13:47:25'),(5,3,12,1,'2019-05-30 08:42:44','2019-06-29 10:16:08'),(6,1,55,0,'2019-05-30 16:02:24','2019-05-30 16:02:24'),(7,2,55,0,'2019-05-30 16:57:01','2019-05-30 16:57:01'),(8,1,5,0,'2019-06-19 23:21:07','2019-06-19 23:21:07'),(9,2,85,0,'2019-08-06 19:37:48','2019-08-06 19:37:50'),(10,3,5,0,'2019-09-16 19:15:12','2019-09-16 19:15:12'),(11,1,101,1,'2020-03-30 22:54:45','2020-03-30 22:54:52'),(12,1,99,0,'2020-04-02 14:04:29','2020-04-02 14:04:29');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_batals`
--

LOCK TABLES `like_batals` WRITE;
/*!40000 ALTER TABLE `like_batals` DISABLE KEYS */;
INSERT INTO `like_batals` VALUES (9,270,66,66,0,0,'2019-07-02 01:01:46','2019-07-02 01:01:46'),(10,272,32,32,0,0,'2019-07-02 13:58:00','2019-07-02 13:58:00'),(12,272,67,12,1,0,'2019-07-08 05:30:10','2019-07-08 05:30:10'),(13,270,66,12,1,0,'2019-07-08 05:35:00','2019-07-08 05:35:00'),(21,247,12,14,0,1,'2019-07-24 13:47:18','2019-07-24 13:47:25'),(22,262,12,14,0,1,'2019-07-18 11:31:41','2019-07-18 11:31:43'),(23,247,12,1,1,0,'2019-07-18 12:26:49','2019-07-18 12:26:49'),(24,39,14,12,0,1,'2019-07-22 08:16:30','2019-07-22 08:16:34'),(25,269,56,74,1,0,'2019-07-23 23:34:48','2019-07-23 23:34:48'),(26,243,14,12,0,1,'2019-07-29 10:15:09','2019-07-29 10:15:11'),(27,286,20,12,1,1,'2019-07-24 18:13:08','2019-07-25 08:20:59'),(28,286,14,12,1,0,'2019-07-25 08:20:59','2019-07-25 08:20:59'),(29,39,12,78,1,0,'2019-07-25 09:03:13','2019-07-25 09:03:13'),(30,286,20,78,1,1,'2019-07-25 09:03:25','2019-07-25 09:03:32'),(31,286,14,78,1,0,'2019-07-25 09:03:32','2019-07-25 09:03:32'),(32,243,14,78,1,1,'2019-07-25 09:03:36','2019-07-25 09:04:35'),(33,247,12,78,1,1,'2019-07-25 09:03:42','2019-07-25 09:03:49'),(34,247,14,78,1,0,'2019-07-25 09:03:49','2019-07-25 09:03:49'),(35,243,12,78,1,0,'2019-07-25 09:04:35','2019-07-25 09:04:35'),(36,286,20,1,1,0,'2019-07-26 10:42:51','2019-07-26 10:42:51'),(37,269,56,56,0,0,'2019-07-26 13:14:21','2019-07-26 13:14:21'),(38,292,14,12,0,1,'2019-07-29 10:34:23','2019-07-29 10:34:28'),(39,284,73,73,0,0,'2019-09-06 18:45:57','2019-09-06 18:45:57'),(41,270,66,56,0,0,'2019-08-09 02:07:03','2019-08-09 02:07:03'),(43,302,9,91,0,1,'2019-09-18 16:57:05','2019-09-18 17:00:08'),(44,302,91,9,0,0,'2019-09-18 16:57:10','2019-09-18 16:57:10'),(45,302,9,5,1,0,'2019-09-18 18:38:42','2019-09-18 18:38:42'),(46,303,5,91,1,0,'2019-09-18 18:42:22','2019-09-18 18:42:22'),(47,303,5,9,0,0,'2019-09-18 18:44:36','2019-09-18 18:44:36'),(48,302,9,12,1,0,'2019-09-20 03:35:21','2019-09-20 03:35:22'),(49,156,5,5,0,0,'2019-09-20 13:24:13','2019-09-20 13:24:13'),(50,303,5,5,0,0,'2019-09-20 13:27:44','2019-09-20 13:27:44'),(51,269,56,5,1,0,'2019-09-20 13:27:51','2019-09-20 13:27:52'),(52,305,5,9,1,0,'2019-09-20 14:16:03','2019-09-20 14:16:03'),(53,303,5,73,1,0,'2019-09-21 07:42:32','2019-09-21 07:42:32'),(54,39,12,21,1,0,'2019-09-27 23:34:19','2019-09-27 23:34:19'),(55,303,5,21,1,0,'2019-09-27 23:34:28','2019-09-27 23:34:29'),(56,342,14,12,0,0,'2020-04-07 15:48:31','2020-04-07 15:48:31'),(58,286,14,14,0,0,'2020-04-08 06:54:21','2020-04-08 06:54:21'),(59,353,73,106,0,0,'2020-04-20 00:16:05','2020-04-20 00:16:05'),(60,353,73,73,0,0,'2020-04-20 00:18:46','2020-04-20 00:18:46'),(61,354,106,73,0,0,'2020-04-20 00:19:28','2020-04-20 00:19:28'),(62,353,106,117,1,0,'2020-04-26 20:12:13','2020-04-26 20:12:13');
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_musics`
--

LOCK TABLES `like_musics` WRITE;
/*!40000 ALTER TABLE `like_musics` DISABLE KEYS */;
INSERT INTO `like_musics` VALUES (1,1,5,0,'2018-12-12 21:17:57','2018-12-12 21:17:57'),(2,2,5,0,'2018-12-13 23:11:39','2018-12-13 23:11:39'),(6,4,9,0,'2018-12-14 17:55:39','2018-12-14 17:55:39'),(7,9,1,0,'2018-12-18 10:47:29','2018-12-18 10:47:29'),(10,12,14,1,'2018-12-19 08:04:30','2018-12-19 08:04:31'),(11,16,21,0,'2018-12-20 18:45:00','2018-12-20 18:45:00'),(12,12,2,0,'2018-12-26 10:22:57','2018-12-26 10:22:57'),(13,8,2,0,'2018-12-26 10:35:12','2018-12-26 10:35:12'),(14,17,2,0,'2018-12-26 10:38:37','2018-12-26 10:38:37'),(15,16,2,1,'2018-12-26 12:30:06','2018-12-26 12:30:24'),(16,18,2,0,'2018-12-26 12:44:13','2018-12-26 12:44:13'),(17,18,3,0,'2019-01-02 10:58:50','2019-01-02 10:58:50'),(18,19,3,0,'2019-01-02 10:58:58','2019-01-02 10:58:58'),(19,9,3,0,'2019-01-03 07:04:23','2019-01-03 07:09:59'),(20,19,12,0,'2019-01-03 12:24:47','2019-07-01 11:45:41'),(21,12,12,0,'2019-01-03 12:24:50','2019-07-01 11:45:47'),(22,8,12,0,'2019-01-03 12:24:55','2019-01-03 12:24:55'),(24,33,1,0,'2019-01-11 17:06:20','2019-01-11 17:06:20'),(25,33,2,0,'2019-01-15 12:53:22','2019-01-15 12:53:22'),(26,36,21,0,'2019-01-15 20:51:29','2019-01-15 20:51:29'),(27,35,12,1,'2019-01-17 05:58:22','2019-01-17 06:02:36'),(28,36,12,0,'2019-01-17 06:01:25','2019-01-17 06:01:25'),(29,36,5,0,'2019-01-17 17:00:39','2019-01-17 17:00:39'),(30,37,5,0,'2019-01-17 17:09:06','2019-01-17 17:09:06'),(34,46,12,0,'2019-01-22 07:29:08','2019-01-23 12:34:57'),(35,46,20,1,'2019-01-22 07:29:10','2019-01-22 09:21:19'),(36,11,2,0,'2019-01-22 07:38:53','2019-02-05 06:06:08'),(37,46,1,0,'2019-01-22 09:42:44','2019-01-22 09:42:44'),(38,45,1,1,'2019-01-23 11:15:56','2019-01-29 05:43:27'),(39,41,1,0,'2019-01-24 06:52:50','2019-01-24 06:52:50'),(40,11,14,0,'2019-01-24 07:41:58','2019-01-24 07:41:58'),(42,45,5,0,'2019-01-25 17:38:28','2019-01-25 17:38:28'),(45,45,32,0,'2019-01-29 09:33:04','2019-01-29 09:33:04'),(47,48,2,0,'2019-02-05 11:57:56','2019-02-05 11:57:56'),(49,49,2,0,'2019-02-11 03:58:30','2019-02-11 03:58:30'),(55,53,2,0,'2019-02-26 12:59:58','2019-02-26 12:59:58'),(56,52,2,0,'2019-02-26 13:00:23','2019-02-26 13:00:23'),(57,50,14,1,'2019-03-01 08:16:48','2019-03-25 14:31:24'),(58,50,12,0,'2019-03-01 12:06:17','2019-03-01 12:06:17'),(60,48,21,0,'2019-03-08 07:30:51','2019-03-08 07:30:51'),(61,42,2,0,'2019-03-14 10:22:40','2019-03-14 10:22:40'),(62,40,21,0,'2019-03-16 20:36:12','2019-03-16 20:36:12'),(63,49,14,1,'2019-03-18 13:57:10','2019-03-18 13:57:39'),(64,10,2,0,'2019-04-08 11:10:45','2019-04-08 11:14:41'),(66,13,12,1,'2019-04-29 06:42:45','2019-04-29 06:42:51'),(67,10,14,0,'2019-04-30 10:54:26','2019-04-30 10:54:26'),(68,14,53,0,'2019-05-02 12:15:04','2019-05-02 12:15:04'),(71,18,5,0,'2019-05-06 22:23:24','2019-05-06 22:23:34'),(74,17,12,0,'2019-05-09 08:16:44','2019-07-01 11:45:44'),(78,20,14,0,'2019-05-17 05:27:26','2019-05-17 05:27:26'),(79,21,12,0,'2019-05-23 11:45:55','2019-07-01 11:45:35'),(80,25,12,1,'2019-05-30 06:09:48','2019-05-30 13:47:35'),(81,23,12,1,'2019-05-30 06:09:54','2019-05-30 13:47:31'),(83,24,12,0,'2019-05-30 12:45:23','2019-07-01 11:45:30'),(84,24,55,0,'2019-05-30 16:56:52','2019-05-30 16:56:52'),(85,23,55,0,'2019-05-30 16:56:56','2019-05-30 16:56:56'),(86,25,55,0,'2019-05-30 16:57:04','2019-05-30 16:57:04'),(87,22,14,0,'2019-05-31 11:12:39','2019-07-18 11:20:50'),(89,26,56,0,'2019-06-09 02:37:02','2019-06-09 02:37:02'),(90,14,12,0,'2019-06-11 04:56:43','2019-06-11 04:56:43'),(92,22,12,0,'2019-06-15 13:23:30','2019-07-22 08:19:36'),(95,30,12,0,'2019-06-19 11:28:02','2019-06-19 11:28:17'),(96,20,12,0,'2019-06-19 11:28:26','2019-07-01 11:45:39'),(98,29,12,0,'2019-06-19 11:35:17','2019-06-19 11:35:17'),(101,30,32,0,'2019-06-27 03:59:32','2019-06-27 03:59:32'),(102,12,56,0,'2019-06-28 00:05:16','2019-06-28 00:05:19'),(103,21,1,0,'2019-07-01 09:31:45','2019-07-01 09:31:45'),(104,32,12,0,'2019-07-01 11:45:21','2019-07-01 11:45:21'),(105,31,12,0,'2019-07-01 11:45:27','2019-07-01 11:45:27'),(106,11,12,0,'2019-07-01 11:45:50','2019-07-01 11:45:50'),(107,10,12,0,'2019-07-01 11:45:53','2019-07-01 11:45:53'),(108,33,66,0,'2019-07-02 01:20:29','2019-07-02 01:20:33'),(109,33,32,1,'2019-07-02 19:18:04','2019-07-02 19:18:05'),(110,21,14,0,'2019-07-03 12:14:22','2019-07-03 12:14:51'),(111,32,5,0,'2019-07-13 00:08:31','2019-07-13 00:08:31'),(112,41,14,1,'2019-07-18 10:54:51','2019-07-25 13:22:31'),(116,44,73,0,'2019-07-23 23:50:22','2019-07-23 23:54:03'),(117,48,14,1,'2019-07-24 17:58:55','2019-07-25 08:55:32'),(118,48,12,1,'2019-07-24 17:59:04','2019-07-25 08:48:27'),(119,48,20,1,'2019-07-24 18:02:57','2019-07-25 06:06:22'),(121,47,12,0,'2019-07-25 08:56:10','2019-07-29 10:15:26'),(122,47,78,0,'2019-07-25 08:58:15','2019-07-25 08:58:15'),(123,22,78,0,'2019-07-25 09:02:35','2019-07-25 09:02:35'),(124,49,78,0,'2019-07-25 13:37:42','2019-07-25 13:37:42'),(125,54,14,0,'2019-07-25 13:55:52','2019-07-25 13:55:52'),(126,45,73,0,'2019-08-02 06:16:26','2019-08-02 06:16:26'),(129,33,56,0,'2019-08-06 21:22:55','2019-08-06 21:22:55'),(131,64,5,0,'2019-08-28 15:00:02','2019-08-28 15:00:05'),(132,61,5,0,'2019-09-16 19:14:57','2019-09-16 19:14:57'),(133,67,91,1,'2019-09-18 16:46:48','2019-09-18 16:47:02'),(134,67,9,0,'2019-09-18 16:46:56','2019-09-18 16:46:56'),(135,68,9,0,'2019-09-18 17:15:12','2019-09-18 17:15:18'),(136,69,91,0,'2019-09-18 17:17:08','2019-09-18 17:17:08'),(137,69,5,0,'2019-09-18 18:34:18','2019-09-18 18:34:18'),(138,68,5,0,'2019-09-18 18:34:21','2019-09-18 18:59:08'),(139,67,5,0,'2019-09-18 18:34:24','2019-09-20 14:39:00'),(140,70,91,0,'2019-09-18 18:48:07','2019-09-18 18:48:07'),(141,70,9,0,'2019-09-18 18:48:52','2019-09-18 18:48:52'),(142,71,91,0,'2019-09-18 18:54:17','2019-09-18 18:54:17'),(143,71,5,0,'2019-09-18 18:58:52','2019-09-20 14:35:25'),(144,70,73,0,'2019-09-21 07:42:30','2019-09-21 07:42:30'),(145,72,56,0,'2019-10-01 03:55:27','2019-10-01 03:55:27'),(146,70,101,1,'2020-03-30 22:56:18','2020-03-30 22:56:20');
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musics`
--

LOCK TABLES `musics` WRITE;
/*!40000 ALTER TABLE `musics` DISABLE KEYS */;
INSERT INTO `musics` VALUES (1,'http://52.27.53.102/batalhafunk/img/music/5ca59158726b7.mp3','new',2,2,'2019-04-04 05:08:50','2019-07-25 12:58:43'),(3,'http://52.27.53.102/batalhafunk/img/music/5ca59158726b7.mp3','new',2,2,'2019-04-04 05:08:50','2019-07-02 00:22:49'),(4,'http://52.27.53.102/batalhafunk/img/music/5ca59158726b7.mp3','new',2,1,'2019-04-04 05:08:50','2019-07-02 00:22:58'),(5,'http://52.27.53.102/batalhafunk/img/music/5ca59158726b7.mp3','new',2,2,'2019-04-04 05:08:50','2019-07-02 00:22:55'),(6,'http://52.27.53.102/batalhafunk/img/music/5ca59158726b7.mp3','new',2,3,'2019-04-04 05:08:50','2019-07-02 00:22:14'),(7,'http://52.27.53.102/batalhafunk/img/music/5ca59158726b7.mp3','new',2,5,'2019-04-04 05:08:50','2019-09-18 17:29:02'),(8,'http://52.27.53.102/batalhafunk/img/music/5ca59158726b7.mp3','new',2,3,'2019-04-04 05:08:50','2019-09-18 17:28:59'),(9,'http://52.27.53.102/batalhafunk/img/music/5ca59158726b7.mp3','new',2,8,'2019-04-04 05:08:50','2019-11-24 17:16:00'),(10,'http://52.27.53.102/batalhafunk/img/music/5ca59158726b7.mp3','new',2,19,'2019-04-04 05:08:50','2019-11-24 17:14:42'),(11,'http://52.27.53.102/batalhafunk/img/music/5cb75e1fe6598.mp3','sem fone',5,10,'2019-04-17 17:11:05','2019-09-18 17:01:19'),(12,'http://52.27.53.102/batalhafunk/img/music/5cb75e88eb8d1.mp3','com fone',5,16,'2019-04-17 17:12:50','2019-09-18 12:52:02'),(15,'http://52.27.53.102/batalhafunk/img/music/5ccb087be59e6.mp3','nre',53,3,'2019-05-02 15:11:02','2019-07-02 00:22:24'),(17,'http://52.27.53.102/batalhafunk/img/music/5ccbdebb32671.mp3','1',12,7,'2019-05-03 06:25:09','2019-07-02 00:11:18'),(20,'http://52.27.53.102/batalhafunk/img/music/5cde44488647e.mp3','ye',14,5,'2019-05-17 05:19:14','2020-04-02 14:13:58'),(21,'http://52.27.53.102/batalhafunk/img/music/5cde45870913f.mp3','beat',12,15,'2019-05-17 05:24:33','2019-08-16 19:03:48'),(22,'http://52.27.53.102/batalhafunk/img/music/5ce398260f31b.mp3','thanks',14,10,'2019-05-21 06:18:24','2019-07-25 09:02:35'),(31,'http://52.27.53.102/batalhafunk/img/music/5d179fde9f3db.mp3','test1',5,9,'2019-06-29 17:29:12','2019-09-18 14:38:51'),(32,'http://52.27.53.102/batalhafunk/img/music/5d17a05e6b3f8.mp3','test2',5,19,'2019-06-29 17:31:20','2019-09-16 18:21:02'),(33,'http://52.27.53.102/batalhafunk/img/music/5d1ab064e7d75.mp3','A.',56,10,'2019-07-02 01:16:30','2020-04-11 03:38:26'),(35,'http://52.27.53.102/batalhafunk/img/music/5d1b515ea84fc.mp3','#kalankRap',32,3,'2019-07-02 12:43:21','2019-07-08 05:30:55'),(36,'http://52.27.53.102/batalhafunk/img/music/5d1b97107c97f.mp3','My Music',32,2,'2019-07-02 17:40:42','2019-07-08 05:33:30'),(41,'http://52.27.53.102/batalhafunk/img/music/5d2ec37515d23.mp3','news',12,7,'2019-07-17 06:43:10','2019-07-25 13:22:31'),(44,'http://52.27.53.102/batalhafunk/img/music/5d379d08dc1c1.mp3','gfr',74,14,'2019-07-23 23:49:35','2019-11-24 17:14:53'),(45,'http://52.27.53.102/batalhafunk/img/music/5d379daad3823.mp3','babefnene',73,6,'2019-07-23 23:52:25','2019-09-18 17:00:54'),(46,'http://52.27.53.102/batalhafunk/img/music/5d38282924833.mp3','rr',75,8,'2019-07-24 09:43:20','2019-09-21 11:09:39'),(47,'http://52.27.53.102/batalhafunk/img/music/5d38658684e46.mp3','test',14,10,'2019-07-24 14:05:05','2019-07-31 19:57:10'),(48,'http://52.27.53.102/batalhafunk/img/music/5d389c310c032.mp3','test',20,6,'2019-07-24 17:58:19','2019-07-30 03:03:29'),(49,'http://52.27.53.102/batalhafunk/img/music/5d39b04fc1bfe.mp3','new',78,2,'2019-07-25 13:36:25','2019-07-26 05:42:26'),(50,'http://52.27.53.102/batalhafunk/img/music/5d39b08b6aaa8.mp3','news',78,0,'2019-07-25 13:37:24','2019-07-25 13:37:24'),(51,'http://52.27.53.102/batalhafunk/img/music/5d39b0ca9a012.mp3','hehe',78,1,'2019-07-25 13:38:31','2019-08-01 12:36:48'),(52,'http://52.27.53.102/batalhafunk/img/music/5d39b0f8acc14.mp3','bb',78,1,'2019-07-25 13:39:18','2019-08-01 12:36:38'),(53,'http://52.27.53.102/batalhafunk/img/music/5d39b25b62048.mp3','new',78,1,'2019-07-25 13:45:13','2019-10-28 15:10:28'),(54,'http://52.27.53.102/batalhafunk/img/music/5d39b4d0203df.mp3','er',12,2,'2019-07-25 13:55:38','2019-07-26 05:41:40'),(56,'http://52.27.53.102/batalhafunk/img/music/5d43e32964228.mp3','test iPhone',73,9,'2019-08-02 07:16:08','2019-09-24 10:24:05'),(59,'http://52.27.53.102/batalhafunk/img/music/5d479ad3378d0.mp3','oi',73,7,'2019-08-05 02:56:24','2019-09-21 11:09:27'),(60,'http://52.27.53.102/batalhafunk/img/music/5d4811ff9c049.mp3','Sagar Limbani',83,2,'2019-08-05 11:24:57','2019-08-12 05:01:26'),(62,'http://52.27.53.102/batalhafunk/img/music/5d5bd8a89c8b0.mp3','hii',78,2,'2019-08-20 11:25:45','2019-08-26 18:15:36'),(65,'http://52.27.53.102/batalhafunk/img/music/5d81c46536ec7.mp3','new',78,3,'2019-09-18 05:45:20','2019-09-21 16:46:02'),(66,'http://52.27.53.102/batalhafunk/img/music/5d81c523a81f5.mp3','ghh',78,2,'2019-09-18 05:48:31','2019-09-22 15:26:33'),(67,'http://52.27.53.102/batalhafunk/img/music/5d825f24876c2.mp3','Reboladinha',91,13,'2019-09-18 16:45:40','2019-11-25 16:20:39'),(68,'http://52.27.53.102/batalhafunk/img/music/5d82660c646e8.mp3','Vida de solteira',91,10,'2019-09-18 17:15:03','2019-11-25 16:20:30'),(69,'http://52.27.53.102/batalhafunk/img/music/5d82667d780f3.mp3','Boladão',9,9,'2019-09-18 17:16:59','2019-09-21 16:40:47'),(70,'http://52.27.53.102/batalhafunk/img/music/5d827bce1e550.mp3','Ritmo absurdo',5,25,'2019-09-18 18:47:55','2020-04-27 09:24:12'),(71,'http://52.27.53.102/batalhafunk/img/music/5d827d393e2e7.mp3','Ostentação',9,11,'2019-09-18 18:53:58','2019-09-21 16:36:25'),(72,'http://52.27.53.102/batalhafunk/img/music/5d8b9e14c54bb.mp3','toppeerrrr',5,5,'2019-09-25 17:04:36','2019-10-01 03:55:27'),(73,'http://52.27.53.102/batalhafunk/img/music/5d8baf45686c1.mp3','klljlkl',93,1,'2019-09-25 18:17:55','2019-09-25 18:18:15'),(74,'http://52.27.53.102/batalhafunk/img/music/5d8c5fcd4f02c.mp3','yu',12,1,'2019-09-26 06:51:06','2019-09-26 06:51:20'),(75,'http://52.27.53.102/batalhafunk/img/music/5d8c7a6a016cb.mp3','qwerty',1,2,'2019-09-26 08:44:40','2019-09-26 08:45:08'),(76,'http://52.27.53.102/batalhafunk/img/music/5d8c7a6b55265.mp3','test new',12,2,'2019-09-26 08:44:41','2019-09-26 08:45:24'),(77,'http://52.27.53.102/batalhafunk/img/music/5d8c7b010eacb.mp3','rty',1,2,'2019-09-26 08:47:12','2019-09-26 13:45:45'),(78,'http://52.27.53.102/batalhafunk/img/music/5d8c7b2e1ed23.mp3','tesr2',12,2,'2019-09-26 08:47:55','2019-09-26 13:45:36'),(84,'http://52.27.53.102/batalhafunk/img/music/5d93ac820eade.mp3','Chamando as NOVINHA!',56,2,'2019-10-01 19:44:12','2020-04-11 03:38:10'),(85,'http://52.27.53.102/batalhafunk/img/music/5d93ace67ca4a.mp3','Música nova:REBOLADA',56,2,'2019-10-01 19:45:55','2020-04-11 03:38:03'),(86,'http://52.27.53.102/batalhafunk/img/music/5d93ad1c113aa.mp3','Chamando as NOVINHA!',56,3,'2019-10-01 19:46:49','2020-04-11 03:37:51'),(91,'http://52.27.53.102/batalhafunk/img/music/5d94da6660647.mp3','xxxxx',5,3,'2019-10-02 17:12:22','2019-10-03 09:37:39'),(92,'http://52.27.53.102/batalhafunk/img/music/5d94dab18417a.mp3','yyyy',5,4,'2019-10-02 17:13:35','2019-10-03 09:38:27'),(93,'http://52.27.53.102/batalhafunk/img/music/5d94dbc2122ae.mp3','zzz no phone',5,5,'2019-10-02 17:18:09','2019-12-14 02:07:10'),(96,'http://52.27.53.102/batalhafunk/img/music/5dae8def62e67.mp3','name',10,0,'2019-10-22 05:05:05','2019-10-22 05:05:05'),(97,'http://52.27.53.102/batalhafunk/img/music/5dae95c62edaf.mp3','name',10,0,'2019-10-22 05:38:31','2019-10-22 05:38:31'),(98,'http://52.27.53.102/batalhafunk/img/music/5daea10ccbb4f.mp3','gg',78,1,'2019-10-22 06:26:34','2019-10-22 06:26:39'),(101,'http://52.27.53.102/batalhafunk/img/music/5daea3ccc1c3f.mp3','test publish',12,1,'2019-10-22 06:38:20','2019-10-22 06:40:32'),(102,'http://52.27.53.102/batalhafunk/img/music/5daea43633186.mp3','go',12,2,'2019-10-22 06:40:05','2019-11-20 04:48:59'),(103,'http://52.27.53.102/batalhafunk/img/music/5db17028afca2.mp3','name',1,1,'2019-10-24 09:34:56','2019-12-14 02:06:52'),(104,'http://52.27.53.102/batalhafunk/img/music/5db1a03bba6cc.mp3','qef',12,2,'2019-10-24 12:59:46','2019-11-20 04:48:49'),(105,'http://52.27.53.102/batalhafunk/img/music/5db1a064dc8b4.mp3','fg',14,1,'2019-10-24 13:00:34','2019-10-24 13:00:40'),(106,'http://52.27.53.102/batalhafunk/img/music/5db1a0b6ae516.mp3','test',14,1,'2019-10-24 13:01:56','2019-10-24 13:02:04'),(107,'http://52.27.53.102/batalhafunk/img/music/5db27b9a24d83.mp3','new',75,3,'2019-10-25 04:35:51','2019-10-29 04:44:17'),(108,'http://52.27.53.102/batalhafunk/img/music/5db27e984c02f.mp3','testing 1',12,2,'2019-10-25 04:48:30','2019-11-20 04:48:37'),(109,'http://52.27.53.102/batalhafunk/img/music/5db27eb6e22f8.mp3','testing new version.',75,1,'2019-10-25 04:49:07','2019-10-25 16:56:53'),(110,'http://52.27.53.102/batalhafunk/img/music/5dba690c76ad0.mp3','name',10,0,'2019-10-31 04:55:06','2019-10-31 04:55:06'),(111,'http://52.27.53.102/batalhafunk/img/music/5e8275d086a2d.mp3','teste',101,3,'2020-03-30 22:42:33','2020-04-02 14:04:35'),(112,'http://52.27.53.102/batalhafunk/img/music/5e828972b2657.mp3','teste',102,2,'2020-03-31 00:06:16','2020-04-07 02:09:27'),(113,'http://52.27.53.102/batalhafunk/img/music/5e89b2973d3a5.mp3','shubham testing',12,1,'2020-04-05 10:27:45','2020-04-07 02:09:34'),(114,'http://52.27.53.102/batalhafunk/img/music/5e8be1736a6d0.mp3','oi oi teste ',106,1,'2020-04-07 02:12:09','2020-04-07 02:12:12'),(115,'http://52.27.53.102/batalhafunk/img/music/5e8bea469fdb2.mp3','ok',73,1,'2020-04-07 02:49:52','2020-04-07 02:49:55'),(116,'http://52.27.53.102/batalhafunk/img/music/5e8c3eb5b36f9.mp3','Retrofunk',104,0,'2020-04-07 08:50:08','2020-04-07 08:50:08'),(117,'http://52.27.53.102/batalhafunk/img/music/5e9cd17c4bb78.mp3','Tá Tranquilo ',73,0,'2020-04-19 22:32:37','2020-04-19 22:32:37'),(118,'http://52.27.53.102/batalhafunk/img/music/5ea619f964a95.mp3','pancadão ',117,1,'2020-04-26 23:32:16','2020-04-26 23:32:42'),(119,'http://52.27.53.102/batalhafunk/img/music/5ea7211eb0c9c.mp3','testing',3,0,'2020-04-27 18:15:11','2020-04-27 18:15:11');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_settings`
--

LOCK TABLES `notification_settings` WRITE;
/*!40000 ALTER TABLE `notification_settings` DISABLE KEYS */;
INSERT INTO `notification_settings` VALUES (2,12,1,1,1,1,1,1,1,1,1,'2019-04-10 06:14:46','2019-05-30 14:30:41'),(3,14,1,1,1,1,1,1,1,1,1,'2019-04-10 14:27:21','2019-07-18 10:56:42'),(4,43,1,1,1,1,1,1,1,1,1,'2019-04-15 07:17:28','2019-04-15 07:17:28'),(5,5,1,1,1,1,1,1,1,1,1,'2019-04-17 17:02:04','2019-08-16 19:04:59'),(7,1,1,1,1,1,1,1,1,1,1,'2019-04-25 11:00:46','2019-04-25 11:00:46'),(9,2,1,1,1,1,1,1,1,1,1,'2019-04-27 10:06:34','2019-04-27 10:06:34'),(11,51,1,1,1,1,1,1,1,1,1,'2019-05-01 05:55:08','2019-05-01 05:55:08'),(12,52,1,1,1,1,1,1,1,1,1,'2019-05-01 06:01:18','2019-05-01 06:01:18'),(13,53,1,1,1,1,1,1,1,1,1,'2019-05-01 06:24:02','2019-05-01 06:24:02'),(14,54,1,1,1,1,1,1,1,1,1,'2019-05-23 05:04:16','2019-05-23 05:04:16'),(15,32,1,1,1,1,1,1,1,1,1,'2019-05-29 04:06:15','2019-07-02 20:07:26'),(16,55,1,1,1,1,1,1,1,1,1,'2019-05-30 15:50:11','2019-05-30 15:50:11'),(17,56,1,1,1,1,1,1,1,1,1,'2019-06-09 02:29:28','2019-06-09 02:29:28'),(22,61,1,1,1,1,1,1,1,1,1,'2019-06-28 11:31:04','2019-06-28 11:31:04'),(23,62,1,1,1,1,1,1,1,1,1,'2019-06-28 12:30:33','2019-06-28 12:30:33'),(24,63,1,1,1,1,1,1,1,1,1,'2019-06-29 15:27:17','2019-06-29 15:27:17'),(26,65,1,1,1,1,1,1,1,1,1,'2019-07-01 22:26:20','2019-07-01 22:26:20'),(27,66,1,1,1,1,1,1,1,1,1,'2019-07-01 23:42:22','2019-07-01 23:42:22'),(28,67,1,1,1,1,1,1,1,1,1,'2019-07-02 12:45:58','2019-07-02 12:45:58'),(30,69,1,1,1,1,1,1,1,1,1,'2019-07-12 17:50:04','2019-07-12 17:50:04'),(32,71,1,1,1,1,1,1,1,1,1,'2019-07-20 00:28:58','2019-07-20 00:28:58'),(33,9,1,1,1,1,1,1,1,1,1,'2019-07-23 14:24:26','2019-07-23 14:24:47'),(35,73,1,1,1,1,1,1,1,1,1,'2019-07-23 23:14:44','2020-04-07 02:02:13'),(36,74,1,1,1,1,1,1,1,1,1,'2019-07-23 23:28:49','2019-07-23 23:28:49'),(37,75,1,1,1,1,1,1,1,1,1,'2019-07-24 09:40:43','2019-07-24 09:40:43'),(40,78,1,1,1,1,1,1,1,1,1,'2019-07-25 07:01:49','2019-07-25 07:01:49'),(43,81,1,1,1,1,1,1,1,1,1,'2019-07-26 14:47:17','2019-07-26 14:47:17'),(44,82,1,1,1,1,1,1,1,1,1,'2019-07-26 15:11:20','2019-07-26 15:11:20'),(45,83,1,1,1,1,1,1,1,1,1,'2019-08-05 11:22:17','2019-08-05 11:22:17'),(46,84,1,1,1,1,1,1,1,1,1,'2019-08-05 21:16:20','2019-08-05 21:16:20'),(47,85,1,1,1,1,1,1,1,1,1,'2019-08-06 18:07:02','2019-08-06 18:07:02'),(48,86,1,1,1,1,1,1,1,1,1,'2019-08-08 15:13:06','2019-08-08 15:13:06'),(49,87,1,1,1,1,1,1,1,1,1,'2019-08-11 04:53:12','2019-08-11 04:53:12'),(50,88,1,1,1,1,1,1,1,1,1,'2019-08-12 04:50:05','2019-08-12 04:50:05'),(51,89,1,1,1,1,1,1,1,1,1,'2019-08-12 15:22:32','2019-08-12 15:22:32'),(52,90,1,1,1,1,1,1,1,1,1,'2019-08-25 01:53:25','2019-08-25 01:53:25'),(53,91,1,1,1,1,1,1,1,1,1,'2019-08-27 14:45:52','2019-08-27 14:45:52'),(54,92,1,1,1,1,1,1,1,1,1,'2019-09-21 15:08:09','2019-09-21 15:08:09'),(55,93,1,1,1,1,1,1,1,1,1,'2019-09-25 18:14:35','2019-09-25 18:14:35'),(56,94,1,1,1,1,1,1,1,1,1,'2019-10-31 07:52:48','2019-10-31 07:52:48'),(57,95,1,1,1,1,1,1,1,1,1,'2019-11-04 06:20:31','2019-11-04 06:20:31'),(58,96,1,1,1,1,1,1,1,1,1,'2019-11-08 08:43:15','2019-11-08 08:43:15'),(59,97,1,1,1,1,1,1,1,1,1,'2019-11-24 16:58:21','2019-11-24 16:58:21'),(60,98,1,1,1,1,1,1,1,1,1,'2020-03-24 13:13:01','2020-03-24 13:13:01'),(61,99,1,1,1,1,1,1,1,1,1,'2020-03-27 11:50:04','2020-03-27 11:50:04'),(62,100,1,1,1,1,1,1,1,1,1,'2020-03-28 14:05:21','2020-03-28 14:05:21'),(63,101,0,1,1,1,1,1,1,1,1,'2020-03-30 22:33:02','2020-03-30 23:00:14'),(64,102,1,1,1,1,1,1,1,1,1,'2020-03-30 23:47:25','2020-03-30 23:47:25'),(65,103,1,1,1,1,1,1,1,1,1,'2020-04-02 12:31:51','2020-04-02 12:31:51'),(66,104,1,1,1,1,1,1,1,1,1,'2020-04-03 07:06:58','2020-04-03 07:06:58'),(67,105,1,1,1,1,1,1,1,1,1,'2020-04-03 12:51:13','2020-04-03 12:51:13'),(68,106,1,1,1,1,1,1,1,1,1,'2020-04-06 18:41:47','2020-04-08 20:03:22'),(70,108,1,1,1,1,1,1,1,1,1,'2020-04-07 11:28:49','2020-04-07 11:28:49'),(72,110,1,1,1,1,1,1,1,1,1,'2020-04-07 11:57:47','2020-04-07 11:57:47'),(75,113,1,1,1,1,1,1,1,1,1,'2020-04-07 16:50:53','2020-04-07 16:57:51'),(76,114,1,1,1,1,1,1,1,1,1,'2020-04-08 08:34:01','2020-04-08 08:34:01'),(77,115,1,1,1,1,1,1,1,1,1,'2020-04-08 19:30:56','2020-04-08 19:30:56'),(78,116,1,1,1,1,1,1,1,1,1,'2020-04-15 15:58:48','2020-04-15 15:58:48'),(79,101,1,1,1,1,1,1,1,1,1,'2020-04-15 16:02:11','2020-04-15 16:02:11'),(80,117,1,1,1,1,1,1,1,1,1,'2020-04-25 00:41:17','2020-04-25 00:41:17'),(81,118,1,1,1,1,1,1,1,1,1,'2020-04-30 04:40:06','2020-04-30 04:40:06'),(82,119,1,1,1,1,1,1,1,1,1,'2020-04-30 04:41:27','2020-04-30 04:41:27');
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
) ENGINE=InnoDB AUTO_INCREMENT=1699 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (2,2,1,'You are followed by lovemaha',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-04-03 09:49:15','2019-04-03 09:52:42'),(15,2,1,'lovemaha',0,'ChallengeUser',NULL,NULL,NULL,3,1,0,'2019-04-04 13:19:18','2019-04-15 10:33:44'),(17,12,1,'You are followed by shubham',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-04-10 06:20:21','2019-04-15 10:33:44'),(18,12,3,'abhay',0,'FollowUser',NULL,NULL,NULL,0,0,0,'2019-04-10 06:20:39','2019-04-10 06:20:39'),(19,12,14,'abhay',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-04-10 06:21:10','2019-04-10 06:26:47'),(20,12,14,'abhay',0,'ChallengeUser',NULL,'9',NULL,3,1,0,'2019-04-10 14:23:39','2019-04-15 08:44:40'),(21,12,14,'abhay',0,'ChallengeUser',NULL,'10',NULL,3,1,0,'2019-04-10 14:24:47','2019-04-15 08:44:40'),(22,12,14,'abhay',0,'ChallengeUser',NULL,'11',NULL,3,1,0,'2019-04-10 14:25:17','2019-04-15 08:44:40'),(23,12,14,'abhay',0,'ChallengeUser',NULL,'12',NULL,3,1,0,'2019-04-10 14:25:44','2019-04-15 08:44:40'),(24,12,14,'abhay',0,'ChallengeUser',NULL,'13',NULL,3,1,0,'2019-04-10 14:27:01','2019-04-15 08:44:40'),(25,12,14,'abhay',0,'ChallengeUser',NULL,'14',NULL,3,1,0,'2019-04-10 14:28:27','2019-04-15 08:44:40'),(26,12,14,'abhay',0,'ChallengeUser',NULL,'15',NULL,3,1,0,'2019-04-10 14:29:09','2019-04-15 08:44:40'),(27,12,14,'abhay',0,'ChallengeUser',NULL,'16',NULL,3,1,0,'2019-04-10 14:29:52','2019-04-15 08:44:40'),(28,12,14,'abhay',0,'ChallengeUser',NULL,'17',NULL,3,1,0,'2019-04-10 14:30:17','2019-04-15 08:44:40'),(29,12,14,'abhay',0,'ChallengeUser',NULL,'18',NULL,3,1,0,'2019-04-10 14:30:53','2019-04-15 08:44:40'),(30,12,14,'abhay',0,'ChallengeUser',NULL,'19',NULL,3,1,0,'2019-04-15 09:40:02','2019-04-15 09:45:54'),(31,12,14,'abhay',0,'ChallengeUser',NULL,'20',NULL,3,1,0,'2019-04-15 09:41:10','2019-04-15 09:45:54'),(32,14,12,'akriti07',0,'ChallengeUser',NULL,'22',NULL,3,1,0,'2019-04-15 09:42:14','2019-04-15 09:44:50'),(33,12,14,'abhay',0,'ChallengeUser',NULL,'23',NULL,3,1,0,'2019-04-15 09:44:30','2019-04-15 09:45:54'),(34,12,14,'abhay',1,'CommentUserBatal',NULL,'22',NULL,2,1,0,'2019-04-15 09:45:00','2019-04-15 09:45:54'),(35,14,12,'akriti07',2,'CommentUserBatal',NULL,'22',NULL,2,1,0,'2019-04-15 09:45:11','2019-04-15 14:35:29'),(36,12,14,'abhay',0,'ChallengeUser',NULL,'24',NULL,3,1,0,'2019-04-15 09:49:12','2019-04-15 10:50:51'),(37,12,14,'abhay',0,'ChallengeUser',NULL,'25',NULL,3,1,0,'2019-04-15 10:25:19','2019-04-15 10:50:51'),(38,12,1,'abhay',0,'ChallengeUser',NULL,NULL,NULL,3,1,0,'2019-04-15 10:27:59','2019-04-15 10:33:44'),(39,12,14,'abhay',0,'ChallengeUser',NULL,'27',NULL,3,1,0,'2019-04-15 10:31:02','2019-04-15 10:50:51'),(40,12,1,'abhay',0,'ChallengeUser',NULL,'28',NULL,3,1,0,'2019-04-15 10:32:03','2019-04-15 10:33:44'),(41,12,14,'abhay',0,'ChallengeUser',NULL,'29',NULL,3,1,0,'2019-04-15 10:33:00','2019-04-15 10:50:51'),(42,14,1,'akriti07',0,'ChallengeUser',NULL,NULL,NULL,3,1,0,'2019-04-15 10:34:26','2019-04-15 13:06:51'),(43,14,12,'akriti07',0,'ChallengeUser',NULL,'31',NULL,3,1,0,'2019-04-15 10:35:15','2019-04-15 14:35:29'),(44,12,1,'abhay',0,'ChallengeUser',NULL,'32',NULL,3,1,0,'2019-04-15 10:37:33','2019-04-15 13:06:51'),(45,14,12,'akriti07',0,'ChallengeUser',NULL,'33',NULL,3,1,0,'2019-04-15 10:39:48','2019-04-15 14:35:29'),(46,14,12,'akriti07',0,'ChallengeUser',NULL,'34',NULL,3,1,0,'2019-04-15 10:44:04','2019-04-15 14:35:29'),(47,14,2,'akriti07',0,'ChallengeUser',NULL,NULL,NULL,3,1,0,'2019-04-15 10:47:52','2019-04-15 10:49:34'),(48,14,12,'akriti07',0,'ChallengeUser',NULL,'36',NULL,3,1,0,'2019-04-15 10:50:11','2019-04-15 14:35:29'),(49,12,14,'abhay',0,'ChallengeUser',NULL,'37',NULL,3,1,0,'2019-04-15 11:04:02','2019-04-15 13:31:06'),(50,12,14,'abhay',0,'ChallengeUser',NULL,'38',NULL,3,1,0,'2019-04-15 11:05:08','2019-04-15 13:31:06'),(51,12,14,'abhay',0,'ChallengeUser',NULL,'39',NULL,3,1,0,'2019-04-15 11:06:32','2019-04-15 13:31:06'),(52,14,12,'akriti07',0,'AcceptBatal',NULL,'39',NULL,4,1,0,'2019-04-15 11:12:30','2019-04-15 14:35:29'),(53,12,14,'abhay',0,'ChallengeUser',NULL,'44',NULL,3,1,0,'2019-04-15 11:19:21','2019-04-15 13:31:06'),(54,14,12,'akriti07',0,'ChallengeUser',NULL,NULL,NULL,3,1,0,'2019-04-15 13:34:31','2019-04-15 14:35:29'),(55,14,12,'akriti07',0,'ChallengeUser',NULL,NULL,NULL,3,1,0,'2019-04-15 13:35:29','2019-04-15 14:35:29'),(56,14,12,'akriti07',0,'ChallengeUser',NULL,NULL,NULL,3,1,0,'2019-04-15 13:36:08','2019-04-15 14:35:29'),(57,14,12,'akriti07',0,'ChallengeUser',NULL,NULL,NULL,3,1,0,'2019-04-15 13:36:43','2019-04-15 14:35:29'),(59,1,2,'shubham',0,'ChallengeUser',NULL,'50',NULL,3,0,0,'2019-04-16 04:48:39','2019-04-16 04:48:39'),(63,14,12,'akriti07',0,'ChallengeUser',NULL,'54',NULL,3,1,0,'2019-04-16 05:10:58','2019-04-16 11:16:42'),(72,12,14,'abhay',0,'ChallengeUser',NULL,NULL,NULL,3,1,0,'2019-04-16 10:35:07','2019-04-16 10:49:45'),(73,12,14,'abhay',0,'ChallengeUser',NULL,NULL,NULL,3,1,0,'2019-04-16 10:35:42','2019-04-16 10:49:45'),(74,12,14,'abhay',0,'ChallengeUser',NULL,NULL,NULL,3,1,0,'2019-04-16 10:36:21','2019-04-16 10:49:45'),(75,12,14,'abhay',0,'ChallengeUser',NULL,NULL,NULL,3,1,0,'2019-04-16 11:03:07','2019-04-16 11:07:55'),(76,12,14,'abhay',0,'ChallengeUser',NULL,NULL,NULL,3,1,0,'2019-04-16 11:05:18','2019-04-16 11:07:55'),(77,12,14,'abhay',0,'ChallengeUser',NULL,NULL,NULL,3,1,0,'2019-04-16 11:06:33','2019-04-16 11:07:55'),(78,12,14,'abhay',0,'ChallengeUser',NULL,NULL,NULL,3,1,0,'2019-04-16 11:08:38','2019-04-16 11:14:18'),(79,12,14,'abhay',0,'ChallengeUser',NULL,NULL,NULL,3,1,0,'2019-04-16 11:10:07','2019-04-16 11:14:18'),(84,12,2,'abhay',0,'ChallengeUser',NULL,NULL,NULL,3,0,0,'2019-04-16 13:03:28','2019-04-16 13:03:28'),(85,12,2,'abhay',0,'ChallengeUser',NULL,NULL,NULL,3,0,0,'2019-04-16 13:04:28','2019-04-16 13:04:28'),(86,12,2,'abhay',0,'ChallengeUser',NULL,NULL,NULL,3,0,0,'2019-04-16 13:05:19','2019-04-16 13:05:19'),(87,5,9,'You are followed by erick33',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-04-17 17:00:39','2019-05-24 17:35:23'),(111,2,2,'sahil won this battle',0,'Winner',NULL,'2',NULL,5,0,0,'2019-04-27 10:20:27','2019-04-27 10:20:27'),(140,14,10,'akriti07',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-04-29 08:05:27','2019-04-29 08:05:27'),(141,14,10,'akriti07',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-04-29 08:05:38','2019-04-29 08:05:38'),(144,12,14,'abhay',4,'TagUserBatal',NULL,'68',NULL,2,1,0,'2019-04-29 08:13:07','2019-05-03 05:27:56'),(147,14,12,'akriti07',5,'TagUserBatal',NULL,'68',NULL,2,1,0,'2019-04-29 08:14:49','2019-05-03 08:39:11'),(183,14,12,'akriti07',8,'TagAdvertisement',NULL,NULL,'1',8,1,0,'2019-04-30 10:41:46','2019-05-03 08:39:11'),(184,14,12,'akriti07',9,'TagAdvertisement',NULL,NULL,'1',8,1,0,'2019-04-30 10:42:03','2019-05-03 08:39:11'),(187,14,12,'akriti07',10,'TagUserBatal',NULL,'68',NULL,2,1,0,'2019-04-30 10:42:24','2019-05-03 08:39:11'),(190,14,12,'akriti07',10,'TagAdvertisement',NULL,NULL,'1',8,1,0,'2019-04-30 10:43:34','2019-05-03 08:39:11'),(193,14,2,'akriti07',11,'CommentUserBatal',NULL,'2',NULL,2,0,0,'2019-04-30 10:48:06','2019-04-30 10:48:06'),(194,14,12,'akriti07',11,'TagUserBatal',NULL,'2',NULL,2,1,0,'2019-04-30 10:48:06','2019-05-03 08:39:11'),(197,12,2,'abhay',12,'CommentUserBatal',NULL,'2',NULL,2,0,0,'2019-04-30 10:49:37','2019-04-30 10:49:37'),(198,12,14,'abhay',12,'TagUserBatal',NULL,'2',NULL,2,1,0,'2019-04-30 10:49:37','2019-05-03 05:27:56'),(200,14,2,'akriti07',67,'LikeMusic','10',NULL,NULL,6,0,0,'2019-04-30 10:54:26','2019-04-30 10:54:26'),(203,14,2,'akriti07',13,'CommentUserBatal',NULL,'2',NULL,2,0,0,'2019-04-30 10:55:27','2019-04-30 10:55:27'),(204,14,12,'akriti07',13,'TagUserBatal',NULL,'2',NULL,2,1,0,'2019-04-30 10:55:27','2019-05-03 08:39:11'),(206,14,2,'akriti07',14,'CommentUserBatal',NULL,'2',NULL,2,0,0,'2019-04-30 11:08:17','2019-04-30 11:08:17'),(207,14,12,'akriti07',14,'TagUserBatal',NULL,'2',NULL,2,1,0,'2019-04-30 11:08:18','2019-05-03 08:39:11'),(226,1,2,'shubham',11,'TagAdvertisement',NULL,NULL,'1',8,0,0,'2019-05-01 05:37:01','2019-05-01 05:37:01'),(227,1,12,'shubham',12,'TagAdvertisement',NULL,NULL,'1',8,1,0,'2019-05-01 05:44:00','2019-05-03 08:39:11'),(229,1,12,'shubham',14,'TagAdvertisement',NULL,NULL,'1',8,1,0,'2019-05-01 05:56:53','2019-05-03 08:39:11'),(230,1,2,'shubham',15,'TagUserBatal',NULL,'68',NULL,2,0,0,'2019-05-01 05:58:28','2019-05-01 05:58:28'),(233,1,2,'shubham',16,'TagUserBatal',NULL,'2',NULL,2,0,0,'2019-05-01 06:02:52','2019-05-01 06:02:52'),(235,1,2,'shubham',17,'CommentUserBatal',NULL,'2',NULL,2,0,0,'2019-05-01 06:03:33','2019-05-01 06:03:33'),(236,1,12,'shubham',17,'TagUserBatal',NULL,'2',NULL,2,1,0,'2019-05-01 06:03:33','2019-05-03 08:39:11'),(262,12,1,'abhay',15,'TagAdvertisement',NULL,NULL,'1',8,1,0,'2019-05-01 07:55:10','2019-06-28 14:42:50'),(263,12,14,'abhay',16,'TagAdvertisement',NULL,NULL,'1',8,1,0,'2019-05-01 07:55:29','2019-05-03 05:27:56'),(296,53,12,'ambuj',47,'LikeBatal',NULL,'39',NULL,7,1,0,'2019-05-01 10:42:55','2019-05-03 08:39:11'),(304,12,14,'abhay',4,'TagAdvertisement',NULL,NULL,'2',8,1,0,'2019-05-02 10:46:34','2019-05-03 05:27:56'),(305,14,12,'akriti07',5,'TagAdvertisement',NULL,NULL,'2',8,1,0,'2019-05-02 10:47:00','2019-05-03 08:39:11'),(309,14,2,'akriti07',18,'CommentUserBatal',NULL,'2',NULL,2,0,0,'2019-05-02 10:57:27','2019-05-02 10:57:27'),(310,14,12,'akriti07',18,'TagUserBatal',NULL,'2',NULL,2,1,0,'2019-05-02 10:57:27','2019-05-03 08:39:11'),(312,12,2,'abhay',19,'CommentUserBatal',NULL,'2',NULL,2,0,0,'2019-05-02 10:58:04','2019-05-02 10:58:04'),(313,12,14,'abhay',19,'TagUserBatal',NULL,'2',NULL,2,1,0,'2019-05-02 10:58:04','2019-05-03 05:27:56'),(317,14,12,'akriti07',0,'ChallengeUser',NULL,'80',NULL,3,1,0,'2019-05-02 11:13:09','2019-05-03 08:39:11'),(346,12,14,'abhay',0,'ChallengeUser',NULL,'83',NULL,3,1,0,'2019-05-03 06:38:11','2019-05-03 08:36:50'),(347,14,12,'akriti07',0,'DeclineBatal',NULL,'9',NULL,11,1,0,'2019-05-03 06:45:41','2019-05-03 08:39:11'),(348,14,12,'akriti07',0,'DeclineBatal',NULL,'10',NULL,11,1,0,'2019-05-03 06:45:53','2019-05-03 08:39:11'),(349,14,12,'akriti07',0,'DeclineBatal',NULL,'11',NULL,11,1,0,'2019-05-03 06:45:57','2019-05-03 08:39:11'),(350,14,12,'akriti07',0,'DeclineBatal',NULL,'12',NULL,11,1,0,'2019-05-03 06:46:02','2019-05-03 08:39:11'),(351,14,12,'akriti07',0,'DeclineBatal',NULL,'13',NULL,11,1,0,'2019-05-03 06:46:04','2019-05-03 08:39:11'),(352,14,12,'akriti07',0,'DeclineBatal',NULL,'14',NULL,11,1,0,'2019-05-03 06:46:06','2019-05-03 08:39:11'),(353,14,12,'akriti07',0,'DeclineBatal',NULL,'15',NULL,11,1,0,'2019-05-03 06:46:08','2019-05-03 08:39:11'),(354,14,12,'akriti07',0,'DeclineBatal',NULL,'16',NULL,11,1,0,'2019-05-03 06:46:11','2019-05-03 08:39:11'),(355,14,12,'akriti07',0,'DeclineBatal',NULL,'17',NULL,11,1,0,'2019-05-03 06:46:13','2019-05-03 08:39:11'),(356,14,12,'akriti07',0,'ChallengeUser',NULL,'86',NULL,3,1,0,'2019-05-03 06:48:39','2019-05-03 08:39:11'),(357,14,12,'akriti07',0,'ChallengeUser',NULL,'87',NULL,3,1,0,'2019-05-03 06:49:39','2019-05-03 08:39:11'),(358,14,12,'akriti07',0,'ChallengeUser',NULL,'88',NULL,3,1,0,'2019-05-03 06:50:12','2019-05-03 08:39:11'),(359,14,12,'akriti07',0,'ChallengeUser',NULL,'89',NULL,3,1,0,'2019-05-03 06:50:40','2019-05-03 08:39:11'),(360,14,12,'akriti07',0,'ChallengeUser',NULL,'90',NULL,3,1,0,'2019-05-03 06:51:15','2019-05-03 08:39:11'),(361,14,12,'akriti07',0,'ChallengeUser',NULL,'91',NULL,3,1,0,'2019-05-03 06:51:35','2019-05-03 08:39:11'),(362,14,12,'akriti07',0,'ChallengeUser',NULL,'92',NULL,3,1,0,'2019-05-03 06:51:58','2019-05-03 08:39:11'),(363,14,12,'akriti07',0,'ChallengeUser',NULL,'93',NULL,3,1,0,'2019-05-03 06:53:39','2019-05-03 08:39:11'),(364,12,14,'abhay',0,'ChallengeUser',NULL,'95',NULL,3,1,0,'2019-05-03 07:01:17','2019-05-03 08:36:50'),(365,14,12,'akriti07',0,'DeclineBatal',NULL,'18',NULL,11,1,0,'2019-05-03 07:10:19','2019-05-03 08:39:11'),(366,14,12,'akriti07',0,'DeclineBatal',NULL,'19',NULL,11,1,0,'2019-05-03 07:10:25','2019-05-03 08:39:11'),(367,14,12,'akriti07',0,'DeclineBatal',NULL,'20',NULL,11,1,0,'2019-05-03 07:10:28','2019-05-03 08:39:11'),(368,12,14,'abhay',0,'ChallengeUser',NULL,'96',NULL,3,1,0,'2019-05-03 07:10:30','2019-05-03 08:36:50'),(369,14,12,'akriti07',0,'DeclineBatal',NULL,'55',NULL,11,1,0,'2019-05-03 07:10:49','2019-05-03 08:39:11'),(370,14,12,'akriti07',0,'DeclineBatal',NULL,'60',NULL,11,1,0,'2019-05-03 07:10:57','2019-05-03 08:39:11'),(371,14,12,'akriti07',0,'DeclineBatal',NULL,'61',NULL,11,1,0,'2019-05-03 07:11:05','2019-05-03 08:39:11'),(372,14,12,'akriti07',0,'DeclineBatal',NULL,'62',NULL,11,1,0,'2019-05-03 07:11:08','2019-05-03 08:39:11'),(373,14,12,'akriti07',0,'DeclineBatal',NULL,'83',NULL,11,1,0,'2019-05-03 07:11:12','2019-05-03 08:39:11'),(374,12,14,'abhay',0,'ChallengeUser',NULL,'97',NULL,3,1,0,'2019-05-03 07:11:41','2019-05-03 08:36:50'),(375,12,1,'abhay',0,'ChallengeUser',NULL,'98',NULL,3,1,0,'2019-05-03 07:43:04','2019-06-28 14:42:50'),(376,12,14,'abhay',0,'ChallengeUser',NULL,'100',NULL,3,1,0,'2019-05-03 07:56:57','2019-05-03 08:36:50'),(377,14,12,'akriti07',0,'ChallengeUser',NULL,'101',NULL,3,1,0,'2019-05-03 08:34:21','2019-05-03 08:39:11'),(382,12,14,'abhay',0,'DeclineBatal',NULL,'22',NULL,11,1,0,'2019-05-03 08:37:56','2019-05-03 12:16:35'),(383,12,14,'abhay',0,'DeclineBatal',NULL,'31',NULL,11,1,0,'2019-05-03 08:38:00','2019-05-03 12:16:35'),(384,12,14,'abhay',0,'DeclineBatal',NULL,'33',NULL,11,1,0,'2019-05-03 08:38:05','2019-05-03 12:16:35'),(385,12,14,'abhay',0,'DeclineBatal',NULL,'34',NULL,11,1,0,'2019-05-03 08:38:08','2019-05-03 12:16:35'),(386,12,14,'abhay',0,'DeclineBatal',NULL,'36',NULL,11,1,0,'2019-05-03 08:38:11','2019-05-03 12:16:35'),(387,12,14,'abhay',0,'DeclineBatal',NULL,'45',NULL,11,1,0,'2019-05-03 08:38:14','2019-05-03 12:16:35'),(388,12,14,'abhay',0,'DeclineBatal',NULL,'46',NULL,11,1,0,'2019-05-03 08:38:18','2019-05-03 12:16:35'),(389,12,14,'abhay',0,'DeclineBatal',NULL,'47',NULL,11,1,0,'2019-05-03 08:38:21','2019-05-03 12:16:35'),(390,12,14,'abhay',0,'DeclineBatal',NULL,'48',NULL,11,1,0,'2019-05-03 08:38:24','2019-05-03 12:16:35'),(391,12,14,'abhay',0,'DeclineBatal',NULL,'54',NULL,11,1,0,'2019-05-03 08:38:29','2019-05-03 12:16:35'),(392,12,14,'abhay',0,'DeclineBatal',NULL,'80',NULL,11,1,0,'2019-05-03 08:38:36','2019-05-03 12:16:35'),(393,12,14,'abhay',0,'DeclineBatal',NULL,'86',NULL,11,1,0,'2019-05-03 08:38:40','2019-05-03 12:16:35'),(394,12,14,'abhay',0,'DeclineBatal',NULL,'87',NULL,11,1,0,'2019-05-03 08:38:43','2019-05-03 12:16:35'),(395,12,14,'abhay',0,'DeclineBatal',NULL,'88',NULL,11,1,0,'2019-05-03 08:38:46','2019-05-03 12:16:35'),(396,12,14,'abhay',0,'DeclineBatal',NULL,'89',NULL,11,1,0,'2019-05-03 08:38:50','2019-05-03 12:16:35'),(397,12,14,'abhay',0,'DeclineBatal',NULL,'90',NULL,11,1,0,'2019-05-03 08:38:53','2019-05-03 12:16:35'),(398,12,14,'abhay',0,'DeclineBatal',NULL,'91',NULL,11,1,0,'2019-05-03 08:38:56','2019-05-03 12:16:35'),(399,12,14,'abhay',0,'DeclineBatal',NULL,'92',NULL,11,1,0,'2019-05-03 08:39:01','2019-05-03 12:16:35'),(400,12,14,'abhay',0,'DeclineBatal',NULL,'93',NULL,11,1,0,'2019-05-03 08:39:05','2019-05-03 12:16:35'),(401,14,12,'akriti07',0,'ChallengeUser',NULL,'102',NULL,3,1,0,'2019-05-03 08:42:53','2019-05-03 08:51:27'),(402,14,12,'akriti07',0,'ChallengeUser',NULL,'103',NULL,3,1,0,'2019-05-03 08:54:31','2019-05-03 15:08:55'),(403,14,12,'akriti07',0,'ChallengeUser',NULL,'104',NULL,3,1,0,'2019-05-03 08:55:27','2019-05-03 15:08:55'),(409,14,12,'akriti07',0,'ChallengeUser',NULL,'109',NULL,3,1,0,'2019-05-03 12:13:58','2019-05-03 15:08:55'),(537,12,14,'abhay',10,'TagAdvertisement',NULL,NULL,'2',8,1,0,'2019-05-07 11:32:32','2019-05-09 08:35:33'),(538,12,14,'abhay',11,'TagAdvertisement',NULL,NULL,'2',8,1,0,'2019-05-07 11:32:49','2019-05-09 08:35:33'),(539,12,1,'abhay',12,'TagAdvertisement',NULL,NULL,'2',8,1,0,'2019-05-07 11:32:59','2019-06-28 14:42:50'),(542,12,14,'abhay',0,'ChallengeUser',NULL,'180',NULL,3,1,0,'2019-05-07 11:36:08','2019-05-09 08:35:33'),(556,12,14,'abhay',0,'ChallengeUser',NULL,'181',NULL,3,1,0,'2019-05-07 11:51:08','2019-05-09 08:35:33'),(557,12,14,'abhay',0,'ChallengeUser',NULL,'182',NULL,3,1,0,'2019-05-07 11:52:04','2019-05-09 08:35:33'),(558,12,14,'abhay',0,'ChallengeUser',NULL,'183',NULL,3,1,0,'2019-05-07 11:53:07','2019-05-09 08:35:33'),(559,12,14,'abhay',0,'ChallengeUser',NULL,'184',NULL,3,1,0,'2019-05-07 11:54:13','2019-05-09 08:35:33'),(560,12,14,'abhay',0,'ChallengeUser',NULL,'185',NULL,3,1,0,'2019-05-07 11:54:43','2019-05-09 08:35:33'),(561,12,14,'abhay',0,'ChallengeUser',NULL,'186',NULL,3,1,0,'2019-05-07 11:55:15','2019-05-09 08:35:33'),(562,12,14,'abhay',0,'ChallengeUser',NULL,'187',NULL,3,1,0,'2019-05-07 11:55:39','2019-05-09 08:35:33'),(563,12,14,'abhay',0,'ChallengeUser',NULL,'188',NULL,3,1,0,'2019-05-07 11:56:06','2019-05-09 08:35:33'),(564,12,14,'abhay',0,'ChallengeUser',NULL,'189',NULL,3,1,0,'2019-05-07 11:56:58','2019-05-09 08:35:33'),(565,12,14,'abhay',0,'ChallengeUser',NULL,'190',NULL,3,1,0,'2019-05-07 11:57:27','2019-05-09 08:35:33'),(566,12,14,'abhay',0,'ChallengeUser',NULL,'191',NULL,3,1,0,'2019-05-07 11:57:58','2019-05-09 08:35:33'),(567,12,14,'abhay',0,'ChallengeUser',NULL,'192',NULL,3,1,0,'2019-05-07 11:58:32','2019-05-09 08:35:33'),(568,12,14,'abhay',0,'ChallengeUser',NULL,'193',NULL,3,1,0,'2019-05-07 11:59:00','2019-05-09 08:35:33'),(569,12,14,'abhay',0,'ChallengeUser',NULL,'194',NULL,3,1,0,'2019-05-07 11:59:27','2019-05-09 08:35:33'),(570,12,14,'abhay',0,'ChallengeUser',NULL,'195',NULL,3,1,0,'2019-05-07 11:59:51','2019-05-09 08:35:33'),(571,12,14,'abhay',0,'ChallengeUser',NULL,'196',NULL,3,1,0,'2019-05-07 12:00:27','2019-05-09 08:35:33'),(572,12,14,'abhay',0,'ChallengeUser',NULL,'197',NULL,3,1,0,'2019-05-07 12:02:02','2019-05-09 08:35:33'),(573,12,14,'abhay',0,'ChallengeUser',NULL,'198',NULL,3,1,0,'2019-05-07 12:02:26','2019-05-09 08:35:33'),(574,12,14,'abhay',0,'ChallengeUser',NULL,'199',NULL,3,1,0,'2019-05-07 12:02:45','2019-05-09 08:35:33'),(575,14,12,'akriti07',0,'DeclineBatal',NULL,'199',NULL,11,1,0,'2019-05-07 12:06:32','2019-05-07 12:07:08'),(576,14,12,'akriti07',0,'ChallengeUser',NULL,'200',NULL,3,1,0,'2019-05-07 12:09:39','2019-05-07 12:10:23'),(578,12,14,'abhay',0,'ChallengeUser',NULL,'201',NULL,3,1,0,'2019-05-07 12:30:16','2019-05-09 08:35:33'),(579,14,12,'akriti07',0,'DeclineBatal',NULL,'201',NULL,11,1,0,'2019-05-07 12:31:18','2019-05-08 10:52:54'),(580,14,12,'akriti07',0,'DeclineBatal',NULL,'198',NULL,11,1,0,'2019-05-07 12:31:31','2019-05-08 10:52:54'),(581,14,12,'akriti07',0,'DeclineBatal',NULL,'196',NULL,11,1,0,'2019-05-07 12:31:38','2019-05-08 10:52:54'),(582,14,12,'akriti07',0,'DeclineBatal',NULL,'194',NULL,11,1,0,'2019-05-07 12:31:44','2019-05-08 10:52:54'),(583,12,14,'abhay',0,'ChallengeUser',NULL,'202',NULL,3,1,0,'2019-05-07 12:32:09','2019-05-09 08:35:33'),(584,12,14,'abhay',0,'ChallengeUser',NULL,'203',NULL,3,1,0,'2019-05-07 12:32:56','2019-05-09 08:35:33'),(585,12,14,'abhay',0,'ChallengeUser',NULL,'204',NULL,3,1,0,'2019-05-07 12:34:11','2019-05-09 08:35:33'),(586,12,5,'You are followed by abhay',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-05-07 12:35:04','2019-05-07 12:38:43'),(587,12,9,'You are followed by abhay',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-05-07 12:35:15','2019-05-24 17:35:21'),(590,12,14,'abhay',0,'ChallengeUser',NULL,'206',NULL,3,1,0,'2019-05-07 12:38:36','2019-05-09 08:35:33'),(591,14,12,'akriti07',0,'DeclineBatal',NULL,'204',NULL,11,1,0,'2019-05-07 12:51:28','2019-05-08 10:52:54'),(654,12,14,'abhay',0,'ChallengeUser',NULL,'217',NULL,3,1,0,'2019-05-09 08:05:28','2019-05-09 08:35:33'),(679,14,12,'akriti07',0,'DeclineBatal',NULL,'217',NULL,11,1,0,'2019-05-09 08:48:10','2019-05-09 08:52:34'),(680,14,12,'akriti07',0,'DeclineBatal',NULL,'206',NULL,11,1,0,'2019-05-09 08:48:13','2019-05-09 08:52:34'),(681,14,12,'akriti07',0,'DeclineBatal',NULL,'203',NULL,11,1,0,'2019-05-09 08:48:16','2019-05-09 08:52:34'),(684,12,14,'abhay',0,'ChallengeUser',NULL,'218',NULL,3,1,0,'2019-05-09 09:11:22','2019-05-30 12:26:33'),(685,12,14,'abhay',0,'ChallengeUser',NULL,'219',NULL,3,1,0,'2019-05-09 09:11:49','2019-05-30 12:26:33'),(686,12,14,'abhay',0,'ChallengeUser',NULL,'220',NULL,3,1,0,'2019-05-09 09:12:37','2019-05-30 12:26:33'),(687,14,12,'akriti07',0,'DeclineBatal',NULL,'220',NULL,11,1,0,'2019-05-09 09:12:59','2019-05-10 11:11:34'),(688,14,12,'akriti07',0,'DeclineBatal',NULL,'219',NULL,11,1,0,'2019-05-09 09:13:06','2019-05-10 11:11:34'),(689,14,12,'akriti07',0,'DeclineBatal',NULL,'218',NULL,11,1,0,'2019-05-09 09:13:10','2019-05-10 11:11:34'),(690,14,12,'akriti07',0,'DeclineBatal',NULL,'202',NULL,11,1,0,'2019-05-09 09:13:19','2019-05-10 11:11:34'),(694,12,14,'abhay',0,'ChallengeUser',NULL,'222',NULL,3,1,0,'2019-05-09 11:10:04','2019-05-30 12:26:33'),(695,12,14,'abhay',0,'ChallengeUser',NULL,'223',NULL,3,1,0,'2019-05-09 11:13:00','2019-05-30 12:26:33'),(696,12,14,'abhay',0,'ChallengeUser',NULL,'224',NULL,3,1,0,'2019-05-09 11:13:49','2019-05-30 12:26:33'),(697,12,14,'abhay',0,'ChallengeUser',NULL,'225',NULL,3,1,0,'2019-05-09 11:14:24','2019-05-30 12:26:33'),(698,14,12,'akriti07',0,'ChallengeUser',NULL,'226',NULL,3,1,0,'2019-05-09 11:18:13','2019-05-10 11:11:34'),(739,5,5,'erick33 won this battle',0,'Winner',NULL,'155',NULL,5,1,0,'2019-05-11 08:22:28','2019-05-16 19:10:36'),(745,5,5,'erick33 won this battle',0,'Winner',NULL,'152',NULL,5,1,0,'2019-05-14 04:38:09','2019-05-16 19:10:36'),(835,14,12,'You are followed by akriti07',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-05-17 05:32:13','2019-05-17 05:32:26'),(836,14,12,'akriti07',31,'CommentUserBatal',NULL,'216',NULL,2,1,0,'2019-05-21 05:12:14','2019-05-21 05:15:44'),(839,12,1,'abhay',0,'ChallengeUser',NULL,'235',NULL,3,1,0,'2019-05-21 06:11:10','2019-06-28 14:42:50'),(840,32,5,'You are followed by namy',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-05-23 04:50:55','2019-05-23 10:31:45'),(853,12,2,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-05-28 07:57:04','2019-05-28 07:57:04'),(855,12,5,'abhay',33,'CommentUserBatal',NULL,'156',NULL,2,1,0,'2019-05-28 10:57:38','2019-05-28 12:59:15'),(859,32,1,'namy',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-05-29 06:20:16','2019-06-28 14:42:50'),(860,32,2,'namy',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-05-29 06:20:21','2019-05-29 06:20:21'),(861,32,3,'namy',0,'FollowUser',NULL,NULL,NULL,0,0,0,'2019-05-29 06:20:26','2019-05-29 06:20:26'),(873,12,14,'abhay',35,'CommentUserBatal',NULL,'39',NULL,2,1,0,'2019-05-30 12:12:12','2019-05-30 12:26:33'),(874,14,12,'akriti07',36,'CommentUserBatal',NULL,'39',NULL,2,1,0,'2019-05-30 12:12:22','2019-05-30 12:24:02'),(875,12,5,'abhay',37,'CommentUserBatal',NULL,'155',NULL,2,1,0,'2019-05-30 12:26:18','2019-05-30 18:36:39'),(877,12,14,'abhay',37,'TagUserBatal',NULL,'155',NULL,2,1,0,'2019-05-30 12:26:19','2019-05-30 12:26:33'),(896,12,2,'abhay',39,'TagAdvertisement',NULL,NULL,'1',8,0,0,'2019-05-30 13:47:18','2019-05-30 13:47:18'),(897,12,12,'You are followed by abhay',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-05-30 14:00:48','2019-05-30 14:26:04'),(908,55,5,'You are followed by mcromarks',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-05-30 15:54:31','2019-05-30 18:36:41'),(909,55,1,'romarks',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-05-30 15:54:48','2019-06-28 14:42:50'),(910,55,2,'romarks',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-05-30 16:03:00','2019-05-30 16:03:00'),(923,14,12,'akriti07',0,'ChallengeUser',NULL,'243',NULL,3,1,0,'2019-05-31 06:45:07','2019-05-31 08:24:04'),(929,12,12,'abhay',0,'ChallengeUser',NULL,'244',NULL,3,1,0,'2019-05-31 08:39:31','2019-06-14 06:00:00'),(936,12,14,'abhay',0,'ChallengeUser',NULL,'247',NULL,3,1,0,'2019-05-31 08:47:11','2019-06-29 07:59:38'),(950,12,14,'abhay',0,'DeclineBatal',NULL,'226',NULL,11,1,0,'2019-05-31 12:12:35','2019-06-29 07:59:38'),(953,12,14,'abhay',0,'DeclineBatal',NULL,'103',NULL,11,1,0,'2019-05-31 12:13:21','2019-06-29 07:59:38'),(954,12,14,'abhay',0,'DeclineBatal',NULL,'102',NULL,11,1,0,'2019-05-31 12:13:24','2019-06-29 07:59:38'),(955,12,12,'abhay',0,'ChallengeUser',NULL,'253',NULL,3,1,0,'2019-05-31 12:14:21','2019-06-14 06:00:00'),(965,55,5,'mcromarks',39,'CommentUserBatal',NULL,'237',NULL,2,1,0,'2019-06-06 23:23:26','2019-06-07 02:30:38'),(967,5,55,'erick33',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-06-07 02:31:05','2019-07-26 03:58:57'),(977,56,5,'You are followed by inxboxx',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-06-09 02:30:52','2019-06-09 17:09:29'),(985,1,12,'You are followed by shubham',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-06-11 05:13:43','2019-06-29 10:21:22'),(999,32,1,'namy',0,'ChallengeUser',NULL,'258',NULL,3,1,0,'2019-06-12 06:31:43','2019-06-28 14:42:50'),(1005,14,12,'akriti07',57,'TagAdvertisement',NULL,NULL,'2',8,1,0,'2019-06-13 07:12:18','2019-06-14 06:00:00'),(1020,12,14,'abhay',41,'TagUser','24',NULL,NULL,2,1,0,'2019-06-14 05:23:42','2019-06-29 07:59:38'),(1021,14,12,'akriti07',42,'TagUser','22',NULL,NULL,2,1,0,'2019-06-14 05:58:46','2019-06-14 06:00:00'),(1022,14,12,'akriti07',43,'TagUser','22',NULL,NULL,2,1,0,'2019-06-14 05:59:03','2019-06-14 06:00:00'),(1023,14,12,'akriti07',58,'TagAdvertisement',NULL,NULL,'2',8,1,0,'2019-06-14 05:59:34','2019-06-14 06:00:00'),(1024,12,14,'abhay',44,'TagUser','24',NULL,NULL,2,1,0,'2019-06-14 06:01:27','2019-06-29 07:59:38'),(1025,12,14,'abhay',59,'TagAdvertisement',NULL,NULL,'2',8,1,0,'2019-06-14 06:02:09','2019-06-29 07:59:38'),(1089,32,5,'namy',31,'LikeBatal',NULL,'237',NULL,7,1,0,'2019-06-27 12:59:37','2019-06-29 16:52:02'),(1090,32,5,'namy',46,'CommentUserBatal',NULL,'237',NULL,2,1,0,'2019-06-27 13:00:15','2019-06-29 16:52:02'),(1092,32,5,'namy',47,'CommentUserBatal',NULL,'237',NULL,2,1,0,'2019-06-27 13:00:29','2019-06-29 16:52:02'),(1097,56,5,'inxboxx',102,'LikeMusic','12',NULL,NULL,6,1,0,'2019-06-28 00:05:19','2019-06-29 16:52:02'),(1098,56,14,'inxboxx',0,'ChallengeUser',NULL,'265',NULL,3,1,0,'2019-06-28 04:04:11','2019-06-29 07:59:38'),(1099,20,14,'amit',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-06-29 08:07:29','2019-06-29 08:08:31'),(1100,20,14,'amit',69,'TagAdvertisement',NULL,NULL,'1',8,1,0,'2019-06-29 08:08:23','2019-06-29 08:08:31'),(1101,20,14,'amit',70,'TagAdvertisement',NULL,NULL,'1',8,1,0,'2019-06-29 08:09:35','2019-06-29 08:15:35'),(1102,14,12,'akriti07',71,'TagAdvertisement',NULL,NULL,'1',8,1,0,'2019-06-29 10:10:43','2019-06-29 10:20:48'),(1103,14,12,'akriti07',72,'TagAdvertisement',NULL,NULL,'1',8,1,0,'2019-06-29 10:10:58','2019-06-29 10:20:48'),(1104,14,20,'akriti07',73,'TagAdvertisement',NULL,NULL,'1',8,1,0,'2019-06-29 10:11:11','2019-07-24 18:01:14'),(1125,12,14,'abhay',74,'TagAdvertisement',NULL,NULL,'3',8,1,0,'2019-06-29 10:15:39','2019-07-01 14:30:19'),(1127,12,5,'abhay',76,'TagAdvertisement',NULL,NULL,'2',8,1,0,'2019-06-29 10:16:46','2019-06-29 16:52:02'),(1269,1,12,'shubham',103,'LikeMusic','21',NULL,NULL,6,1,0,'2019-07-01 09:31:45','2019-07-01 14:30:21'),(1282,12,5,'abhay',104,'LikeMusic','32',NULL,NULL,6,1,0,'2019-07-01 11:45:21','2019-07-02 18:49:12'),(1283,12,5,'abhay',105,'LikeMusic','31',NULL,NULL,6,1,0,'2019-07-01 11:45:27','2019-07-02 18:49:12'),(1286,12,14,'abhay',96,'LikeMusic','20',NULL,NULL,6,1,0,'2019-07-01 11:45:39','2019-07-01 14:30:19'),(1288,12,5,'abhay',21,'LikeMusic','12',NULL,NULL,6,1,0,'2019-07-01 11:45:47','2019-07-02 18:49:12'),(1289,12,5,'abhay',106,'LikeMusic','11',NULL,NULL,6,1,0,'2019-07-01 11:45:50','2019-07-02 18:49:12'),(1290,12,2,'abhay',107,'LikeMusic','10',NULL,NULL,6,0,0,'2019-07-01 11:45:53','2019-07-01 11:45:53'),(1295,12,14,'abhay',77,'TagAdvertisement',NULL,NULL,'1',8,1,0,'2019-07-01 14:34:07','2019-07-01 14:34:14'),(1296,66,56,'guitto',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-01 23:50:25','2019-07-01 23:55:54'),(1297,56,66,'inxboxx',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-01 23:54:26','2019-07-01 23:59:31'),(1298,66,56,'guitto',0,'ChallengeUser',NULL,'268',NULL,3,1,0,'2019-07-01 23:54:49','2019-07-01 23:55:54'),(1299,66,56,'ayakami',0,'ChallengeUser',NULL,'269',NULL,3,1,0,'2019-07-02 00:09:02','2019-07-02 00:09:34'),(1300,56,66,'inxboxx',0,'ChallengeUser',NULL,'270',NULL,3,1,0,'2019-07-02 00:40:58','2019-07-02 00:57:24'),(1301,66,56,'ayakami',0,'AcceptBatal',NULL,'270',NULL,4,1,0,'2019-07-02 01:00:03','2019-07-02 01:11:32'),(1303,66,56,'ayakami',108,'LikeMusic','33',NULL,NULL,6,1,0,'2019-07-02 01:20:33','2019-07-08 15:36:55'),(1305,12,1,'abhay',80,'TagAdvertisement',NULL,NULL,'1',8,1,0,'2019-07-02 07:14:33','2019-07-02 07:15:00'),(1306,14,12,'akriti07',81,'TagAdvertisement',NULL,NULL,'2',8,1,0,'2019-07-02 11:46:18','2019-07-02 11:50:26'),(1309,32,67,'namy',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-02 12:48:29','2019-07-02 18:23:27'),(1310,32,67,'namy',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-02 12:48:40','2019-07-02 18:23:27'),(1311,67,32,'bonnyb',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-02 12:49:16','2019-07-02 12:49:35'),(1312,67,32,'bonnyb',0,'ChallengeUser',NULL,'271',NULL,3,1,0,'2019-07-02 12:50:23','2019-07-02 12:50:37'),(1314,67,32,'You are followed by bonnyb',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-02 13:31:07','2019-07-02 13:53:05'),(1315,32,67,'namy',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-02 13:53:21','2019-07-02 18:23:27'),(1316,12,1,'abhay',82,'TagAdvertisement',NULL,NULL,'1',8,1,0,'2019-07-02 13:55:28','2019-07-02 13:55:50'),(1317,67,32,'bonnyb',0,'ChallengeUser',NULL,'272',NULL,3,1,0,'2019-07-02 13:57:11','2019-07-02 13:57:26'),(1318,32,67,'namy',0,'AcceptBatal',NULL,'272',NULL,4,1,0,'2019-07-02 13:57:54','2019-07-02 18:23:27'),(1319,32,67,'namy',0,'ChallengeUser',NULL,'273',NULL,3,1,0,'2019-07-02 18:07:16','2019-07-02 18:23:27'),(1320,32,1,'namy',0,'ChallengeUser',NULL,'274',NULL,3,0,0,'2019-07-02 18:08:23','2019-07-02 18:08:23'),(1321,67,32,'bonnyb',0,'AcceptBatal',NULL,'273',NULL,4,1,0,'2019-07-02 18:20:04','2019-07-02 18:20:33'),(1322,32,67,'namy',0,'ChallengeUser',NULL,'275',NULL,3,1,0,'2019-07-02 18:24:22','2019-07-02 18:25:33'),(1324,32,67,'namy',0,'ChallengeUser',NULL,'276',NULL,3,1,0,'2019-07-02 18:29:15','2019-07-02 19:16:51'),(1328,14,12,'akriti07',110,'LikeMusic','21',NULL,NULL,6,1,0,'2019-07-03 12:14:51','2019-07-08 05:16:26'),(1335,12,67,'abhay',12,'LikeBatal',NULL,'272',NULL,7,0,0,'2019-07-08 05:30:10','2019-07-08 05:30:10'),(1336,12,66,'abhay',13,'LikeBatal',NULL,'270',NULL,7,1,0,'2019-07-08 05:35:00','2019-07-24 01:13:27'),(1337,12,1,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-07-11 06:29:16','2019-07-11 06:29:16'),(1338,12,1,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-07-11 06:29:48','2019-07-11 06:29:48'),(1339,12,1,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-07-11 06:45:08','2019-07-11 06:45:08'),(1340,9,5,'You are followed by erick85',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-11 13:47:53','2019-07-11 13:48:32'),(1359,56,69,'inxboxx',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-07-12 17:58:22','2019-07-12 17:58:22'),(1361,32,67,'namy',0,'ChallengeUser',NULL,'278',NULL,3,0,0,'2019-07-16 14:02:22','2019-07-16 14:02:22'),(1364,14,12,'akriti07',91,'TagAdvertisement',NULL,NULL,'1',8,1,0,'2019-07-18 10:55:55','2019-07-22 08:20:32'),(1365,14,12,'akriti07',0,'AcceptBatal',NULL,'247',NULL,4,1,0,'2019-07-18 10:58:01','2019-07-22 08:20:32'),(1371,14,12,'akriti07',92,'TagAdvertisement',NULL,NULL,'2',8,1,0,'2019-07-18 11:29:31','2019-07-22 08:20:32'),(1372,14,12,'akriti07',93,'TagAdvertisement',NULL,NULL,'2',8,1,0,'2019-07-18 11:31:22','2019-07-22 08:20:32'),(1375,1,12,'shubham',23,'LikeBatal',NULL,'247',NULL,7,1,0,'2019-07-18 12:26:49','2019-07-22 08:20:32'),(1376,56,66,'inxboxx',0,'AcceptBatal',NULL,'269',NULL,4,1,0,'2019-07-19 20:49:54','2019-07-24 01:13:27'),(1377,56,69,'mcmeier',0,'ChallengeUser',NULL,'280',NULL,3,0,0,'2019-07-19 21:30:30','2019-07-19 21:30:30'),(1378,56,71,'inxboxx',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-20 00:41:12','2019-07-20 13:17:22'),(1381,71,5,'You are followed by mariodipoi',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-20 13:14:55','2019-07-20 13:45:44'),(1382,71,56,'mariodipoi',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-20 13:15:47','2019-07-25 19:25:35'),(1383,71,56,'mariodipoi',0,'ChallengeUser',NULL,'282',NULL,3,1,0,'2019-07-20 13:19:41','2019-07-25 19:25:35'),(1386,12,14,'abhay',94,'TagAdvertisement',NULL,NULL,'2',8,1,0,'2019-07-22 08:19:20','2019-07-22 08:22:23'),(1387,12,14,'abhay',92,'LikeMusic','22',NULL,NULL,6,1,0,'2019-07-22 08:19:36','2019-07-22 08:22:23'),(1389,12,14,'abhay',0,'AcceptBatal',NULL,'243',NULL,4,1,0,'2019-07-22 08:20:21','2019-07-22 08:22:23'),(1390,12,14,'abhay',0,'DeclineBatal',NULL,'109',NULL,11,1,0,'2019-07-22 08:21:13','2019-07-22 08:22:23'),(1391,12,14,'You are followed by abhay',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-22 08:22:19','2019-07-22 08:22:24'),(1392,14,12,'akriti07',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-22 08:23:28','2019-07-25 08:37:14'),(1393,5,9,'erick33',55,'TagUser','32',NULL,NULL,2,1,0,'2019-07-23 14:23:56','2019-07-23 14:24:18'),(1404,74,56,'thebrazilianstyle',25,'LikeBatal',NULL,'269',NULL,7,1,0,'2019-07-23 23:34:48','2019-07-25 19:25:35'),(1405,56,66,'inxboxx won this battle',0,'Winner',NULL,'269',NULL,5,1,0,'2019-07-23 23:34:48','2019-07-24 01:13:27'),(1406,56,56,'inxboxx won this battle',0,'Winner',NULL,'269',NULL,5,1,0,'2019-07-23 23:34:48','2019-07-25 19:25:35'),(1407,74,73,'thebrazilianstyle',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-23 23:37:28','2019-07-23 23:37:42'),(1408,73,74,'kelvinlopes',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-23 23:37:45','2019-07-23 23:41:23'),(1409,74,73,'thebrazilianstyle',0,'ChallengeUser',NULL,'283',NULL,3,1,0,'2019-07-23 23:40:35','2019-07-31 19:06:57'),(1410,73,74,'kelvinlopes',95,'TagAdvertisement',NULL,NULL,'2',8,1,0,'2019-07-23 23:42:32','2019-07-23 23:46:04'),(1411,73,74,'kelvinlopes',96,'TagAdvertisement',NULL,NULL,'3',8,1,0,'2019-07-23 23:42:48','2019-07-23 23:46:04'),(1412,73,74,'kelvinlopes',0,'ChallengeUser',NULL,'284',NULL,3,1,0,'2019-07-23 23:45:37','2019-07-23 23:46:04'),(1413,74,73,'thebrazilianstyle',0,'AcceptBatal',NULL,'284',NULL,4,1,0,'2019-07-23 23:46:38','2019-07-31 19:06:57'),(1417,73,74,'kelvinlopes',116,'LikeMusic','44',NULL,NULL,6,0,0,'2019-07-23 23:54:03','2019-07-23 23:54:03'),(1418,5,73,'erick33',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-24 00:53:10','2019-07-31 19:06:57'),(1429,14,12,'akriti07',97,'TagAdvertisement',NULL,NULL,'2',8,1,0,'2019-07-24 13:47:43','2019-07-25 08:37:14'),(1430,12,1,'abhay',61,'TagUser','47',NULL,NULL,2,0,0,'2019-07-24 16:53:16','2019-07-24 16:53:16'),(1432,12,20,'abhay',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-24 17:57:07','2019-07-24 18:01:14'),(1433,14,20,'akriti07',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-24 17:58:44','2019-07-24 18:01:14'),(1436,20,14,'amit',0,'ChallengeUser',NULL,'286',NULL,3,1,0,'2019-07-24 18:04:09','2019-07-24 18:04:26'),(1437,14,20,'akriti07',0,'AcceptBatal',NULL,'286',NULL,4,1,0,'2019-07-24 18:08:59','2019-07-24 18:12:53'),(1447,12,20,'abhay',98,'TagAdvertisement',NULL,NULL,'2',8,1,0,'2019-07-24 18:13:25','2019-07-25 08:40:59'),(1448,12,14,'abhay',99,'TagAdvertisement',NULL,NULL,'2',8,1,0,'2019-07-24 18:13:40','2019-07-24 18:15:45'),(1449,12,14,'abhay',100,'TagAdvertisement',NULL,NULL,'1',8,1,0,'2019-07-24 18:14:12','2019-07-24 18:15:45'),(1455,12,14,'abhay',28,'LikeBatal',NULL,'286',NULL,7,1,0,'2019-07-25 08:20:59','2019-07-25 09:55:51'),(1456,12,14,'abhay',0,'ChallengeUser',NULL,'287',NULL,3,1,0,'2019-07-25 08:40:17','2019-07-25 09:55:51'),(1457,12,20,'abhay',0,'ChallengeUser',NULL,'288',NULL,3,1,0,'2019-07-25 08:41:41','2019-07-25 08:42:11'),(1459,12,20,'abhay',101,'TagAdvertisement',NULL,NULL,'2',8,0,0,'2019-07-25 08:48:41','2019-07-25 08:48:41'),(1465,78,14,'love',122,'LikeMusic','47',NULL,NULL,6,1,0,'2019-07-25 08:58:15','2019-07-25 09:55:51'),(1466,78,14,'love',123,'LikeMusic','22',NULL,NULL,6,1,0,'2019-07-25 09:02:35','2019-07-25 09:55:51'),(1467,78,12,'love',29,'LikeBatal',NULL,'39',NULL,7,1,0,'2019-07-25 09:03:13','2019-07-25 11:23:34'),(1469,78,14,'love',31,'LikeBatal',NULL,'286',NULL,7,1,0,'2019-07-25 09:03:32','2019-07-25 09:55:51'),(1472,78,14,'love',34,'LikeBatal',NULL,'247',NULL,7,1,0,'2019-07-25 09:03:49','2019-07-25 09:55:51'),(1475,78,12,'love',35,'LikeBatal',NULL,'243',NULL,7,1,0,'2019-07-25 09:04:35','2019-07-25 11:23:34'),(1476,67,75,'bonnyb',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-25 09:15:33','2019-07-25 18:36:19'),(1477,12,14,'abhay',49,'CommentUserBatal',NULL,'247',NULL,2,1,0,'2019-07-25 11:23:56','2020-04-07 11:42:19'),(1478,78,2,'love',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-07-25 12:09:35','2019-07-25 12:09:35'),(1480,78,5,'You are followed by love',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-25 12:09:45','2019-07-25 12:12:20'),(1481,78,12,'love',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-25 12:09:50','2019-07-25 13:53:50'),(1483,12,14,'abhay',0,'ChallengeUser',NULL,'289',NULL,3,1,0,'2019-07-25 13:52:39','2020-04-07 11:42:19'),(1484,14,12,'akriti07',125,'LikeMusic','54',NULL,NULL,6,1,0,'2019-07-25 13:55:52','2019-07-26 04:58:40'),(1485,73,5,'You are followed by kelvinlopes',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-26 04:00:52','2019-07-26 04:01:16'),(1490,12,1,'abhay',67,'TagUser','44',NULL,NULL,2,0,0,'2019-07-26 10:29:40','2019-07-26 10:29:40'),(1491,12,73,'abhay',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-26 10:29:56','2019-07-31 19:06:57'),(1492,20,1,'amit',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-07-26 10:29:58','2019-07-26 10:29:58'),(1493,1,20,'shubham',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-07-26 10:37:53','2019-07-26 10:37:53'),(1494,20,1,'amit',103,'TagAdvertisement',NULL,NULL,'1',8,0,0,'2019-07-26 10:38:05','2019-07-26 10:38:05'),(1495,1,20,'shubham',36,'LikeBatal',NULL,'286',NULL,7,0,0,'2019-07-26 10:42:51','2019-07-26 10:42:51'),(1496,56,66,'inxboxx',0,'ChallengeUser',NULL,'293',NULL,3,1,0,'2019-07-26 13:12:47','2019-09-20 16:51:02'),(1497,81,1,'naachcar',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-07-26 14:48:06','2019-07-26 14:48:06'),(1498,81,56,'naachcar',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-26 14:48:15','2019-08-06 21:22:40'),(1499,81,5,'You are followed by naachcar',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-26 14:48:26','2019-07-26 14:48:35'),(1500,81,66,'You are followed by naachcar',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-26 14:48:35','2019-09-20 16:51:07'),(1501,5,56,'erick33',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-26 15:13:09','2019-08-06 21:22:40'),(1502,5,81,'erick33',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-07-26 15:13:13','2019-07-26 15:13:13'),(1503,5,82,'erick33',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-07-26 15:13:28','2019-07-26 15:14:51'),(1507,12,14,'abhay',121,'LikeMusic','47',NULL,NULL,6,1,0,'2019-07-29 10:15:26','2020-04-07 11:42:19'),(1508,12,14,'abhay',104,'TagAdvertisement',NULL,NULL,'1',8,1,0,'2019-07-29 10:15:46','2020-04-07 11:42:19'),(1509,12,14,'abhay',0,'ChallengeUser',NULL,'294',NULL,3,1,0,'2019-07-29 10:19:02','2020-04-07 11:42:19'),(1516,12,14,'abhay',105,'TagAdvertisement',NULL,NULL,'2',8,1,0,'2019-07-29 10:34:47','2020-04-07 11:42:19'),(1517,82,81,'djseduty',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-07-30 15:17:52','2019-07-30 15:17:52'),(1526,73,5,'kelvinlopes',106,'TagAdvertisement',NULL,NULL,'2',8,1,0,'2019-08-05 02:57:20','2019-08-06 13:30:21'),(1530,12,78,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-08-05 07:49:41','2019-08-05 07:49:41'),(1531,5,84,'erick33',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-08-06 13:30:48','2019-08-06 13:30:48'),(1532,85,5,'You are followed by patriciacalixto',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-08-07 00:15:19','2019-08-07 00:17:57'),(1533,5,85,'erick33',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-08-07 00:18:03','2019-08-07 00:23:02'),(1537,5,86,'erick33',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-08-08 15:48:53','2019-08-24 22:59:35'),(1538,56,81,'inxboxx',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-08-08 22:23:13','2019-08-08 22:23:13'),(1539,56,81,'inxboxx',0,'ChallengeUser',NULL,'298',NULL,3,0,0,'2019-08-08 22:25:01','2019-08-08 22:25:01'),(1540,56,66,'inxboxx',41,'LikeBatal',NULL,'270',NULL,7,1,0,'2019-08-09 02:07:03','2019-09-20 16:51:02'),(1541,5,87,'erick33',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-08-11 14:13:19','2019-08-11 18:01:09'),(1542,87,5,'You are followed by reidosbeats',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-08-11 18:00:36','2019-08-11 18:00:53'),(1545,5,88,'erick33',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-08-12 12:00:49','2019-08-21 16:57:25'),(1546,91,5,'You are followed by flavinha',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-08-27 14:49:59','2019-08-27 14:50:10'),(1547,5,91,'erick33',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-08-27 14:50:16','2019-08-27 18:46:56'),(1549,5,91,'erick33',131,'LikeMusic','64',NULL,NULL,6,1,0,'2019-08-28 15:00:05','2019-08-28 17:09:55'),(1553,91,73,'naty',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-09-18 14:43:59','2019-09-21 07:40:55'),(1554,91,9,'naty',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-09-18 14:44:05','2019-09-18 14:44:14'),(1555,9,91,'freelipe',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-09-18 14:44:19','2019-09-18 16:48:24'),(1556,9,73,'freelipe',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-09-18 14:45:50','2019-09-21 07:40:55'),(1557,9,91,'freelipe',134,'LikeMusic','67',NULL,NULL,6,1,0,'2019-09-18 16:46:56','2019-09-18 16:48:24'),(1558,9,91,'freelipe',0,'ChallengeUser',NULL,'302',NULL,3,1,0,'2019-09-18 16:55:38','2019-09-18 16:55:49'),(1559,91,9,'naty',0,'AcceptBatal',NULL,'302',NULL,4,1,0,'2019-09-18 16:56:56','2019-09-18 17:15:44'),(1561,9,91,'freelipe',44,'LikeBatal',NULL,'302',NULL,7,1,0,'2019-09-18 16:57:10','2019-09-18 17:00:10'),(1563,9,91,'freelipe',135,'LikeMusic','68',NULL,NULL,6,1,0,'2019-09-18 17:15:18','2019-09-18 18:30:58'),(1564,91,9,'naty',136,'LikeMusic','69',NULL,NULL,6,1,0,'2019-09-18 17:17:08','2019-09-18 17:24:56'),(1565,5,9,'djmeier',137,'LikeMusic','69',NULL,NULL,6,1,0,'2019-09-18 18:34:18','2019-09-18 18:39:00'),(1568,5,9,'djmeier',0,'ChallengeUser',NULL,'303',NULL,3,1,0,'2019-09-18 18:38:33','2019-09-18 18:39:00'),(1569,5,9,'djmeier',45,'LikeBatal',NULL,'302',NULL,7,1,0,'2019-09-18 18:38:42','2019-09-18 18:39:00'),(1570,9,5,'freelipe',0,'AcceptBatal',NULL,'303',NULL,4,1,0,'2019-09-18 18:41:40','2019-09-20 14:41:34'),(1572,91,5,'naty',46,'LikeBatal',NULL,'303',NULL,7,1,0,'2019-09-18 18:42:22','2019-09-20 14:41:34'),(1573,91,5,'naty',50,'CommentUserBatal',NULL,'303',NULL,2,1,0,'2019-09-18 18:42:36','2019-09-20 14:41:34'),(1574,91,9,'naty',50,'CommentUserBatal',NULL,'303',NULL,2,1,0,'2019-09-18 18:42:36','2019-09-18 18:58:31'),(1575,91,5,'naty',51,'CommentUserBatal',NULL,'303',NULL,2,1,0,'2019-09-18 18:42:48','2019-09-20 14:41:34'),(1576,91,9,'naty',51,'CommentUserBatal',NULL,'303',NULL,2,1,0,'2019-09-18 18:42:48','2019-09-18 18:58:31'),(1577,91,5,'naty',52,'CommentUserBatal',NULL,'303',NULL,2,1,0,'2019-09-18 18:42:53','2019-09-20 14:41:34'),(1578,91,9,'naty',52,'CommentUserBatal',NULL,'303',NULL,2,1,0,'2019-09-18 18:42:53','2019-09-18 18:58:31'),(1579,91,5,'naty',53,'CommentUserBatal',NULL,'303',NULL,2,1,0,'2019-09-18 18:42:56','2019-09-20 14:41:34'),(1580,91,9,'naty',53,'CommentUserBatal',NULL,'303',NULL,2,1,0,'2019-09-18 18:42:56','2019-09-18 18:58:31'),(1581,91,5,'naty',54,'CommentUserBatal',NULL,'303',NULL,2,1,0,'2019-09-18 18:42:59','2019-09-20 14:41:34'),(1582,91,9,'naty',54,'CommentUserBatal',NULL,'303',NULL,2,1,0,'2019-09-18 18:42:59','2019-09-18 18:58:31'),(1583,9,5,'freelipe',55,'CommentUserBatal',NULL,'303',NULL,2,1,0,'2019-09-18 18:44:16','2019-09-20 14:41:34'),(1584,9,5,'freelipe',47,'LikeBatal',NULL,'303',NULL,7,1,0,'2019-09-18 18:44:36','2019-09-20 14:41:34'),(1585,91,5,'naty',140,'LikeMusic','70',NULL,NULL,6,1,0,'2019-09-18 18:48:07','2019-09-20 14:41:34'),(1586,9,5,'freelipe',141,'LikeMusic','70',NULL,NULL,6,1,0,'2019-09-18 18:48:52','2019-09-20 14:41:34'),(1587,91,9,'naty',142,'LikeMusic','71',NULL,NULL,6,1,0,'2019-09-18 18:54:17','2019-09-18 18:58:31'),(1589,5,91,'djmeier',138,'LikeMusic','68',NULL,NULL,6,1,0,'2019-09-18 18:59:08','2019-09-20 13:37:15'),(1590,12,9,'abhay',48,'LikeBatal',NULL,'302',NULL,7,1,0,'2019-09-20 03:35:21','2019-12-09 14:08:34'),(1591,5,56,'djmeier',51,'LikeBatal',NULL,'269',NULL,7,1,0,'2019-09-20 13:27:51','2019-09-21 15:13:17'),(1592,5,91,'djmeier',0,'ChallengeUser',NULL,'304',NULL,3,1,0,'2019-09-20 13:36:48','2019-09-20 13:37:15'),(1594,5,91,'djmeier',0,'ChallengeUser',NULL,'305',NULL,3,1,0,'2019-09-20 13:54:30','2019-09-20 14:01:55'),(1595,91,5,'naty',0,'AcceptBatal',NULL,'305',NULL,4,1,0,'2019-09-20 14:05:35','2019-09-20 14:41:34'),(1599,9,5,'freelipe',57,'CommentUserBatal',NULL,'305',NULL,2,1,0,'2019-09-20 14:16:01','2019-09-20 14:41:34'),(1600,9,91,'freelipe',57,'CommentUserBatal',NULL,'305',NULL,2,1,0,'2019-09-20 14:16:01','2019-09-25 17:28:39'),(1601,9,5,'freelipe',52,'LikeBatal',NULL,'305',NULL,7,1,0,'2019-09-20 14:16:03','2019-09-20 14:41:34'),(1602,5,9,'djmeier',143,'LikeMusic','71',NULL,NULL,6,1,0,'2019-09-20 14:35:25','2019-12-09 14:08:34'),(1603,5,91,'djmeier',139,'LikeMusic','67',NULL,NULL,6,1,0,'2019-09-20 14:39:00','2019-09-25 17:28:39'),(1604,73,5,'kelvinlopes',144,'LikeMusic','70',NULL,NULL,6,1,0,'2019-09-21 07:42:30','2019-09-27 17:08:37'),(1605,73,5,'kelvinlopes',53,'LikeBatal',NULL,'303',NULL,7,1,0,'2019-09-21 07:42:32','2019-09-27 17:08:37'),(1609,5,73,'djmeier',0,'ChallengeUser',NULL,'308',NULL,3,1,0,'2019-09-25 17:01:32','2019-09-25 17:07:24'),(1612,5,73,'djmeier',99,'TagUser','72',NULL,NULL,2,1,0,'2019-09-25 17:05:07','2019-09-25 17:07:24'),(1613,5,73,'djmeier',0,'ChallengeUser',NULL,'309',NULL,3,1,0,'2019-09-25 17:13:25','2019-09-26 06:03:10'),(1615,12,14,'abhay',0,'DeclineBatal',NULL,'104',NULL,11,1,0,'2019-09-26 14:35:18','2020-04-07 11:42:19'),(1616,12,14,'abhay',0,'DeclineBatal',NULL,'101',NULL,11,1,0,'2019-09-26 14:35:28','2020-04-07 11:42:19'),(1617,21,12,'erik',54,'LikeBatal',NULL,'39',NULL,7,1,0,'2019-09-27 23:34:19','2019-10-25 04:50:04'),(1618,21,5,'erik',55,'LikeBatal',NULL,'303',NULL,7,1,0,'2019-09-27 23:34:28','2019-10-01 19:37:05'),(1619,56,5,'inxboxx',145,'LikeMusic','72',NULL,NULL,6,1,0,'2019-10-01 03:55:27','2019-10-01 19:37:05'),(1620,56,66,'inxboxx',0,'ChallengeUser',NULL,'311',NULL,3,1,0,'2019-10-01 03:58:33','2019-10-01 19:35:13'),(1623,56,92,'naachar',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-10-01 19:25:00','2019-10-01 19:26:05'),(1624,56,92,'naachar',0,'ChallengeUser',NULL,'315',NULL,3,0,0,'2019-10-01 19:26:56','2019-10-01 19:26:56'),(1625,66,5,'You are followed by mcjoker',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-10-01 19:36:45','2019-10-01 19:38:03'),(1626,5,66,'erick33',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-10-01 19:38:08','2019-10-01 19:39:57'),(1627,66,92,'mcjoker',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-10-01 19:38:39','2019-10-01 19:38:39'),(1628,56,92,'naachar',0,'ChallengeUser',NULL,'316',NULL,3,0,0,'2019-10-01 19:41:33','2019-10-01 19:41:33'),(1629,56,5,'You are followed by naachar',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-10-01 19:41:50','2019-10-28 15:13:08'),(1630,75,12,'namrata',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-10-25 04:49:49','2019-10-25 04:50:04'),(1631,12,75,'abhay',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2019-10-25 04:50:29','2019-10-25 04:50:29'),(1632,91,97,'flavinha',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-11-24 17:03:01','2019-11-24 17:05:54'),(1633,97,91,'mcfabinmilgrau',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-11-24 17:04:14','2019-11-24 17:04:29'),(1634,97,91,'mcfabinmilgrau',0,'ChallengeUser',NULL,'317',NULL,3,1,0,'2019-11-24 17:08:37','2019-11-24 17:10:19'),(1635,97,9,'You are followed by mcfabinmilgrau',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2019-11-24 17:10:29','2019-12-09 14:08:38'),(1636,97,91,'mcfabinmilgrau',0,'ChallengeUser',NULL,'319',NULL,3,1,0,'2019-11-25 20:05:18','2019-11-25 20:09:12'),(1637,97,91,'mcfabinmilgrau',0,'ChallengeUser',NULL,'320',NULL,3,1,0,'2019-11-25 20:10:37','2019-11-25 20:12:16'),(1638,97,91,'mcfabinmilgrau',0,'ChallengeUser',NULL,'321',NULL,3,1,0,'2019-11-25 20:12:43','2019-11-25 20:22:36'),(1639,97,91,'mcfabinmilgrau',0,'ChallengeUser',NULL,'322',NULL,3,1,0,'2019-11-25 20:21:30','2019-11-25 20:22:36'),(1640,97,91,'mcfabinmilgrau',0,'ChallengeUser',NULL,'323',NULL,3,1,0,'2019-11-25 20:25:20','2019-12-06 19:46:45'),(1641,97,91,'mcfabinmilgrau',0,'ChallengeUser',NULL,'324',NULL,3,0,0,'2019-12-07 18:56:16','2019-12-07 18:56:16'),(1643,101,1,'renancardoso',0,'ChallengeUser',NULL,'326',NULL,3,0,0,'2020-03-30 22:52:03','2020-03-30 22:52:03'),(1645,102,1,'renanmassaroto',0,'ChallengeUser',NULL,'327',NULL,3,0,0,'2020-03-31 00:11:07','2020-03-31 00:11:07'),(1646,103,5,'You are followed by erick2',0,'FollowUser',NULL,NULL,NULL,1,1,0,'2020-04-02 12:36:42','2020-04-02 12:37:53'),(1647,5,103,'erick33',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2020-04-02 12:39:14','2020-04-02 12:39:14'),(1648,99,2,'gunjan',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2020-04-02 14:07:44','2020-04-02 14:07:44'),(1650,104,2,'abcd',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2020-04-04 06:49:08','2020-04-04 06:49:08'),(1651,106,73,'kkelvin',0,'ChallengeUser',NULL,'330',NULL,3,1,0,'2020-04-07 02:15:50','2020-04-07 02:16:34'),(1653,106,73,'kkelvin',0,'ChallengeUser',NULL,'331',NULL,3,1,0,'2020-04-07 02:18:58','2020-04-07 02:23:33'),(1654,73,106,'kelvinlopes',0,'AcceptBatal',NULL,'331',NULL,4,1,0,'2020-04-07 02:20:01','2020-04-07 02:20:11'),(1655,106,73,'kkelvin',0,'ChallengeUser',NULL,'332',NULL,3,1,0,'2020-04-07 02:23:25','2020-04-07 02:23:33'),(1656,73,106,'kelvinlopes',0,'AcceptBatal',NULL,'332',NULL,4,1,0,'2020-04-07 02:24:40','2020-04-07 02:24:46'),(1657,106,73,'kkelvin',0,'ChallengeUser',NULL,'333',NULL,3,1,0,'2020-04-07 02:28:04','2020-04-07 02:28:29'),(1658,73,106,'kelvinlopes',0,'AcceptBatal',NULL,'333',NULL,4,1,0,'2020-04-07 02:29:41','2020-04-08 19:51:48'),(1659,106,73,'kkelvin',0,'ChallengeUser',NULL,'334',NULL,3,1,0,'2020-04-07 02:31:19','2020-04-19 21:22:11'),(1660,73,106,'kelvinlopes',0,'AcceptBatal',NULL,'334',NULL,4,1,0,'2020-04-07 02:32:30','2020-04-08 19:51:48'),(1661,73,106,'kelvinlopes',0,'ChallengeUser',NULL,'335',NULL,3,1,0,'2020-04-07 02:39:01','2020-04-08 19:51:48'),(1662,106,73,'kkelvin',0,'AcceptBatal',NULL,'335',NULL,4,1,0,'2020-04-07 02:39:54','2020-04-19 21:22:11'),(1664,12,14,'abhay',0,'ChallengeUser',NULL,'336',NULL,3,1,0,'2020-04-07 11:40:45','2020-04-07 11:42:19'),(1666,12,14,'abhay',0,'ChallengeUser',NULL,'338',NULL,3,1,0,'2020-04-07 12:21:46','2020-04-07 12:36:27'),(1667,14,12,'akriti07',0,'AcceptBatal',NULL,'338',NULL,4,1,0,'2020-04-07 12:23:59','2020-04-07 12:41:06'),(1669,12,14,'abhay',0,'ChallengeUser',NULL,'341',NULL,3,1,0,'2020-04-07 12:39:10','2020-04-08 05:08:36'),(1670,14,12,'akriti07',0,'ChallengeUser',NULL,'342',NULL,3,1,0,'2020-04-07 12:40:17','2020-04-07 12:41:06'),(1671,12,14,'abhay',0,'AcceptBatal',NULL,'342',NULL,4,1,0,'2020-04-07 12:40:58','2020-04-08 05:08:36'),(1672,12,14,'abhay',56,'LikeBatal',NULL,'342',NULL,7,1,0,'2020-04-07 15:48:31','2020-04-08 05:08:36'),(1680,12,73,'abhay',58,'CommentUserBatal',NULL,'343',NULL,2,1,0,'2020-04-08 09:01:44','2020-04-19 21:22:11'),(1682,106,73,'kkelvin',0,'ChallengeUser',NULL,'348',NULL,3,1,0,'2020-04-08 19:54:25','2020-04-19 21:22:11'),(1683,101,115,'renancardoso',0,'ChallengeUser',NULL,'349',NULL,3,0,0,'2020-04-15 16:00:35','2020-04-15 16:00:35'),(1684,101,115,'renancardoso',0,'ChallengeUser',NULL,'350',NULL,3,0,0,'2020-04-15 16:05:47','2020-04-15 16:05:47'),(1685,73,106,'djmeier',0,'ChallengeUser',NULL,'351',NULL,3,1,0,'2020-04-19 22:37:08','2020-04-19 22:53:44'),(1686,106,73,'kkelvin',0,'AcceptBatal',NULL,'351',NULL,4,1,0,'2020-04-19 22:38:03','2020-04-20 00:00:07'),(1687,73,106,'djmeier',0,'ChallengeUser',NULL,'352',NULL,3,1,0,'2020-04-19 22:40:05','2020-04-19 22:53:44'),(1688,106,73,'kelvinlopes',0,'AcceptBatal',NULL,'352',NULL,4,1,0,'2020-04-19 22:40:48','2020-04-20 00:00:07'),(1689,73,106,'djmeier',0,'ChallengeUser',NULL,'353',NULL,3,0,0,'2020-04-19 23:56:24','2020-04-19 23:56:24'),(1690,106,73,'klopes',0,'AcceptBatal',NULL,'353',NULL,4,1,0,'2020-04-20 00:14:06','2020-04-21 18:23:32'),(1692,106,73,'klopes',59,'LikeBatal',NULL,'353',NULL,7,1,0,'2020-04-20 00:16:05','2020-04-21 18:23:32'),(1693,106,73,'klopes',0,'ChallengeUser',NULL,'354',NULL,3,1,0,'2020-04-20 00:18:21','2020-04-21 18:23:32'),(1694,73,106,'djmeier',0,'AcceptBatal',NULL,'354',NULL,4,0,0,'2020-04-20 00:19:24','2020-04-20 00:19:24'),(1695,73,106,'djmeier',61,'LikeBatal',NULL,'354',NULL,7,0,0,'2020-04-20 00:19:28','2020-04-20 00:19:28'),(1697,117,106,'cadu',62,'LikeBatal',NULL,'353',NULL,7,0,0,'2020-04-26 20:12:13','2020-04-26 20:12:13'),(1698,104,73,'abcd',0,'FollowUser',NULL,NULL,NULL,1,0,0,'2020-04-27 16:46:02','2020-04-27 16:46:02');
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
  `expires_at` date NOT NULL DEFAULT '0000-00-00',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_histories`
--

LOCK TABLES `payment_histories` WRITE;
/*!40000 ALTER TABLE `payment_histories` DISABLE KEYS */;
INSERT INTO `payment_histories` VALUES (1,1,'test-qty1','51E526F20AA94F6ABB9C3F5F7C81F9F5',234,'paid','2020-03-24','2020-04-24','2020-03-24 12:57:42','2020-03-24 12:57:42'),(2,1,'test-qty1','37A2E68ED9F649C7A3ECA0071E784D2B',234,'paid','2020-03-24','2020-04-24','2020-03-24 13:59:12','2020-03-24 13:59:12'),(3,99,'tech_plan','48BF05464CF5419DB18138293D776F9A',110,'paid','2020-03-28','2020-04-28','2020-03-28 07:49:08','2020-03-28 07:49:08'),(4,99,'tech_plan','76A10913E7D946CA9E49C2051872D556',110,'paid','2020-03-28','2020-04-28','2020-03-28 08:52:13','2020-03-28 08:52:13'),(5,99,'tech_plan','7E2FD0AE803A464595D57B00574DD9B1',110,'paid','2020-03-28','2020-04-28','2020-03-28 09:55:52','2020-03-28 09:55:52'),(6,99,'tech_plan','8FA6E2817C684B84A3A9FD66E4D8FE9E',110,'paid','2020-03-28','2020-04-28','2020-03-28 09:58:04','2020-03-28 09:58:04'),(7,99,'tech_plan','C82250F654474B1D80D10588D04E24AB',110,'paid','2020-03-28','2020-04-28','2020-03-28 10:00:49','2020-03-28 10:00:49'),(8,99,'tech_plan','190D8BF2B20947008F96B3418E647647',110,'paid','2020-03-28','2020-04-28','2020-03-28 10:28:44','2020-03-28 10:28:44'),(9,99,'tech_plan','16456BCB50364F27AA0C14DAD082A71E',110,'paid','2020-03-28','2020-04-28','2020-03-28 10:35:33','2020-03-28 10:35:33'),(10,99,'tech_plan','5EB5AD88FDF34016AC145E18D7EA15CF',110,'paid','2020-03-28','2020-04-28','2020-03-28 10:38:12','2020-03-28 10:38:12'),(11,99,'tech_plan','FE3AE186CE794663A8B3D99993AC0387',110,'paid','2020-03-28','2020-04-28','2020-03-28 10:48:49','2020-03-28 10:48:49'),(12,99,'tech_plan','25628C846DCB47E08658EF92E7B58B27',110,'paid','2020-03-28','2020-04-28','2020-03-28 11:33:29','2020-03-28 11:33:29'),(13,99,'tech_plan','F851A5CE1FC64855A6BDFFBD6CE88CC9',110,'paid','2020-03-28','2020-04-28','2020-03-28 11:46:28','2020-03-28 11:46:28'),(14,99,'tech_plan','52A74C1029F74B61AD334CE85041F387',110,'paid','2020-03-28','2020-04-28','2020-03-28 11:52:16','2020-03-28 11:52:16'),(15,99,'tech_plan','8792ED8F25944D6E9140AB6341501239',110,'paid','2020-03-28','2020-04-28','2020-03-28 11:54:12','2020-03-28 11:54:12'),(16,100,'tech_plan','4B61A473708D4C12916D5E489DEF467D',110,'paid','2020-03-28','2020-04-28','2020-03-28 14:07:33','2020-03-28 14:07:33'),(17,99,'coinplan','5BC0E4E6E1434310B04B61A5D4966276',150,'paid','2020-03-28','2020-04-28','2020-03-28 15:34:09','2020-03-28 15:34:09'),(18,99,'coinplan','E9B3BFA7D62A498C936A0DC919512B8E',150,'paid','2020-03-28','2020-04-28','2020-03-28 15:34:10','2020-03-28 15:34:10'),(19,100,'coinplainagain','D93E70938B6245F6B512E5F71EFBB4C8',200,'paid','2020-03-28','2020-04-28','2020-03-28 16:39:16','2020-03-28 16:39:16'),(20,100,'coinplainagain','4ABBAC00677A49F292E3FF61AF4F032B',200,'paid','2020-03-28','2020-04-28','2020-03-28 16:39:19','2020-03-28 16:39:19'),(21,100,'cplanagain','A786BA1677E246878C7AE99672CE3382',400,'paid','2020-03-28','2020-04-28','2020-03-28 16:51:25','2020-03-28 16:51:25'),(22,100,'cplanagain','84ABC7E9615F4AD0BAA475304BB0055C',400,'paid','2020-03-28','2020-04-28','2020-03-28 16:54:46','2020-03-28 16:54:46'),(23,100,'cplanagain','49D34F1489E046C896520F1A4D8F2661',400,'paid','2020-03-28','2020-04-28','2020-03-28 16:55:41','2020-03-28 16:55:41'),(24,5,'coinplan','1F0344F402F34FEB87D1C694DAD3A78F',150,'paid','2020-03-28','2020-04-28','2020-03-28 21:02:55','2020-03-28 21:02:55'),(25,5,'coinplainagain','773EC08651424125B436B91E8DF085E9',200,'paid','2020-03-28','2020-04-28','2020-03-28 21:03:38','2020-03-28 21:03:38'),(26,1,'testplan','8FA30BD73CF84ABE9A2ABA71D348210E',150,'pending','2020-04-02','0000-00-00','2020-04-02 10:48:54','2020-04-02 10:48:54'),(27,1,'testplan','D3AE6E3B707B4E5182E870B8D84C6EA8',150,'pending','2020-04-02','0000-00-00','2020-04-02 10:54:05','2020-04-02 10:54:05'),(28,104,'testplan','B8B81FD05BBE4B9485C934283F00AB62',150,'pending','2020-04-03','0000-00-00','2020-04-03 07:31:34','2020-04-03 07:31:34'),(29,104,'testplan','2E169F601A2545AA8AB217519CA40053',150,'pending','2020-04-03','0000-00-00','2020-04-03 07:40:24','2020-04-03 07:40:24'),(30,104,'testplan','B6208F44FC164B40B8441A9C6117705F',150,'pending','2020-04-03','0000-00-00','2020-04-03 07:41:50','2020-04-03 07:41:50'),(31,104,'techplan','14A2D14C82F54088BECF4895C2C2A620',200,'pending','2020-04-03','0000-00-00','2020-04-03 07:43:30','2020-04-03 07:43:30'),(32,105,'testplan','BE6869807BEC4AF78AE4AB04057EA644',150,'pending','2020-04-03','0000-00-00','2020-04-03 12:53:13','2020-04-03 12:53:13');
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
INSERT INTO `payment_plans` VALUES (1,1,'B299E21CAF8F4FFFAEA1E4B5A2275995','test plan','testplan',1,'months',150,0,'2020-04-02 10:16:11','2020-04-02 10:16:11'),(2,2,'CEDE9AE274F241D4815A68EDB2242524','tech plan','techplan',1,'months',200,0,'2020-04-02 10:16:57','2020-04-02 10:16:57'),(3,3,'E56617D6285541109B51C1603CF95F03','Coin plan','Coinplan',1,'months',250,0,'2020-04-02 10:17:47','2020-04-02 10:17:47'),(4,4,'2FA2A739A8A0402E876591D6F646A1AE','Coin plan again','Coinplanagain',1,'months',300,0,'2020-04-02 10:18:19','2020-04-02 10:18:19'),(5,5,'E7CA696D97B243E29D03E43AA865200C','Plan Coin','PlanCoin',1,'months',350,0,'2020-04-02 10:18:50','2020-04-02 10:18:50'),(6,6,'5AA2730E87AA41C8A38DC08FE1150170','plan coin again','plancoinagain',1,'months',400,0,'2020-04-02 10:19:50','2020-04-02 10:19:50');
/*!40000 ALTER TABLE `payment_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_plans_test`
--

DROP TABLE IF EXISTS `payment_plans_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_plans_test` (
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_plans_test`
--

LOCK TABLES `payment_plans_test` WRITE;
/*!40000 ALTER TABLE `payment_plans_test` DISABLE KEYS */;
INSERT INTO `payment_plans_test` VALUES (1,0,'CFCC2A71F476476B85BBCD025B94BE35','sdc','test-qty1',1,'months',234,0,'2020-03-24 11:55:12','2020-03-24 12:15:02'),(2,78,'EEB22C51C8724A7AB9F682518CD95A92','Beat10','10',1,'months',10,0,'2020-03-27 13:00:39','2020-03-27 13:00:39'),(3,81,'255BDB2EEE884DBDA70CDF869FA44EA2','test plan ','planidentifier',1,'months',10,0,'2020-03-28 06:33:32','2020-03-28 06:33:32'),(4,0,'4289B1939E73495D93E3C1ACE8B7453D','tech plan','tech_plan',1,'months',110,0,'2020-03-28 07:43:10','2020-03-28 07:43:39'),(5,1,'BC6589E580034729A1AAA938AA5C93E2','Coin plan','coinplan',1,'months',150,0,'2020-03-28 15:31:21','2020-03-28 15:31:21'),(6,2,'FEE7AAD6D9344A4C9F2D16F3CF83F1A8','Coin plan again','coinplainagain',1,'months',200,0,'2020-03-28 15:33:02','2020-03-28 15:33:02'),(7,3,'5F1833198C574CFB92F77D79F94524E8','Plan Coin','plancoin',1,'months',250,0,'2020-03-28 15:35:44','2020-03-28 15:35:44'),(8,4,'CC103BAA6E5B4F4FBF0AE39956FE8EC9','plan coin again','plancoinagain',1,'months',300,0,'2020-03-28 15:36:24','2020-03-28 15:36:24'),(9,5,'D773C6FEA767442798405671D339BCD0','cplan','cplan',1,'months',350,0,'2020-03-28 15:37:04','2020-03-28 15:37:04'),(10,6,'2BA9E0CDA8F3483DA4B0897379E3CEC5','cplan again','cplanagain',1,'months',400,0,'2020-03-28 15:37:48','2020-04-01 09:12:10');
/*!40000 ALTER TABLE `payment_plans_test` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (2,2,'tokencc_bf_b8t7xq_msxb4j_tq2353_rzyfb2_md2','100000','10','8q0tb2sg','USD','2019-04-04 13:15:28','2019-04-04 13:15:28'),(3,1,'tokencc_bh_d3zhnr_3tzmjy_dmh6zc_kk5jb3_y82','1000','5','rrxvx8pa','USD','2019-04-12 11:55:29','2019-04-12 11:55:29'),(4,1,'tokencc_bh_7d4mmp_5yg82n_rg52cs_2xty77_9xz','1000','5','4qgxp1e2','USD','2019-04-12 11:55:48','2019-04-12 11:55:48'),(5,1,'tokencc_bh_rgbf6b_hnjgm7_9n3m9q_s39jbm_xy2','500','4','pegqxdp3','USD','2019-04-12 11:57:54','2019-04-12 11:57:54'),(6,12,'tokencc_bc_2tk2t9_mpdpdf_zftjcd_sb52g6_yc2','500','4','nkx71ms3','USD','2019-04-16 05:01:46','2019-04-16 05:01:46'),(7,12,'tokencc_bh_nw5bhy_cznk8j_4dh4n8_7vnkx5_pp2','100000','10','mxjdsagb','USD','2019-04-16 12:46:35','2019-04-16 12:46:35'),(9,53,'tokencc_bf_gf8xy9_cfgy7p_v3nf4y_cgr7ht_672','1000','5','8fk5qnk1','USD','2019-05-01 06:31:44','2019-05-01 06:31:44'),(10,53,'tokencc_bf_gzf549_s7pvkz_3964wg_v3qhbm_tk4','1000','5','q8k6y04n','USD','2019-05-01 08:56:48','2019-05-01 08:56:48'),(11,53,'tokencc_bd_fsqndq_3dndhq_vpc5rb_5883m8_4h3','159999','1599','8fzfdr50','USD','2019-05-02 15:06:24','2019-05-02 15:06:24'),(15,32,'tokencc_bd_29r7gs_ncgj3v_t8rycv_b56knj_d26','100','2','h621pzkv','USD','2019-07-02 18:53:16','2019-07-02 18:53:16'),(16,99,'b778356e-2e69-415c-9107-1142887ae12e','50','110','7E2FD0AE803A464595D57B00574DD9B1','BRL','2020-03-28 09:55:52','2020-03-28 09:55:52'),(17,99,'f5279716-9341-4186-8b26-9bc34341d79a','50','110','8FA6E2817C684B84A3A9FD66E4D8FE9E','BRL','2020-03-28 09:58:04','2020-03-28 09:58:04'),(18,99,'93977d04-9a5f-4167-9a0e-059f79b1254a','50','110','C82250F654474B1D80D10588D04E24AB','BRL','2020-03-28 10:00:49','2020-03-28 10:00:49'),(19,99,'4c4301a7-4ec4-4f2f-a3cc-ae230f52c76b','50','110','190D8BF2B20947008F96B3418E647647','BRL','2020-03-28 10:28:44','2020-03-28 10:28:44'),(20,99,'4cf47526-8794-4aa8-bdf4-c8f15a60f968','50','110','16456BCB50364F27AA0C14DAD082A71E','BRL','2020-03-28 10:35:33','2020-03-28 10:35:33'),(21,99,'ebabeedc-3c2f-4e64-a02b-1fd88792ea2e','50','110','5EB5AD88FDF34016AC145E18D7EA15CF','BRL','2020-03-28 10:38:12','2020-03-28 10:38:12'),(22,99,'4a125067-62f9-404a-8c0e-036527ee1931','50','110','FE3AE186CE794663A8B3D99993AC0387','BRL','2020-03-28 10:48:49','2020-03-28 10:48:49'),(23,99,'ce03257c-4a6f-404a-8635-db9905847714','50','110','25628C846DCB47E08658EF92E7B58B27','BRL','2020-03-28 11:33:29','2020-03-28 11:33:29'),(24,99,'9c6903c9-a549-44fb-b6ce-901eb29a9019','50','110','F851A5CE1FC64855A6BDFFBD6CE88CC9','BRL','2020-03-28 11:46:28','2020-03-28 11:46:28'),(25,99,'cfb91282-5af6-4618-8028-6ebb054d9ac5','50','110','52A74C1029F74B61AD334CE85041F387','BRL','2020-03-28 11:52:16','2020-03-28 11:52:16'),(26,99,'c147429e-5542-44f0-9512-600fd11f887f','50','110','8792ED8F25944D6E9140AB6341501239','BRL','2020-03-28 11:54:12','2020-03-28 11:54:12'),(27,100,'2ecc5d10-4eb4-4be1-a92b-3d05ce0ec927','50','110','4B61A473708D4C12916D5E489DEF467D','BRL','2020-03-28 14:07:33','2020-03-28 14:07:33'),(28,99,'a76c74b6-5593-4f3e-aed6-f8d0c642ac50','50','150','5BC0E4E6E1434310B04B61A5D4966276','BRL','2020-03-28 15:34:09','2020-03-28 15:34:09'),(29,99,'e7db30f8-11ef-4b77-bef0-7de78538dae0','50','150','E9B3BFA7D62A498C936A0DC919512B8E','BRL','2020-03-28 15:34:10','2020-03-28 15:34:10'),(30,100,'ad2a03f0-f7b2-43d2-8bb7-f7a0a29089bb','100','200','D93E70938B6245F6B512E5F71EFBB4C8','BRL','2020-03-28 16:39:16','2020-03-28 16:39:16'),(31,100,'6884d0fe-b413-4af5-8c27-842e7d58d7fe','100','200','4ABBAC00677A49F292E3FF61AF4F032B','BRL','2020-03-28 16:39:19','2020-03-28 16:39:19'),(32,100,'85ded785-1350-403f-9ea6-478f251a5e56','300','400','A786BA1677E246878C7AE99672CE3382','BRL','2020-03-28 16:51:25','2020-03-28 16:51:25'),(33,100,'88118fae-0349-4c84-9c4c-0657a7492a13','300','400','84ABC7E9615F4AD0BAA475304BB0055C','BRL','2020-03-28 16:54:46','2020-03-28 16:54:46'),(34,100,'05f4ec61-78a1-486f-b55b-059a87e64886','300','400','49D34F1489E046C896520F1A4D8F2661','BRL','2020-03-28 16:55:41','2020-03-28 16:55:41'),(35,5,'fdccb329-118a-4e1a-94e2-b6860fd9f9a4','50','150','1F0344F402F34FEB87D1C694DAD3A78F','BRL','2020-03-28 21:02:55','2020-03-28 21:02:55'),(36,5,'18cb7c8e-c9fc-4dbe-a5d4-d685b9a5e6c2','100','200','773EC08651424125B436B91E8DF085E9','BRL','2020-03-28 21:03:38','2020-03-28 21:03:38'),(37,117,'tokencc_bc_nh66z6_979k56_tj3852_5d9338_9h7','50','150','qw84mpgn','USD','2020-04-25 00:58:50','2020-04-25 00:58:50');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_beats`
--

LOCK TABLES `purchase_beats` WRITE;
/*!40000 ALTER TABLE `purchase_beats` DISABLE KEYS */;
INSERT INTO `purchase_beats` VALUES (1,25,2,2,'2019-04-09 06:40:18','2019-04-09 06:40:18'),(2,26,2,2,'2019-04-09 09:14:10','2019-04-09 09:14:10'),(3,26,1,2,'2019-04-12 11:52:51','2019-04-12 11:52:51'),(4,26,14,2,'2019-04-15 11:37:59','2019-04-15 11:37:59'),(5,26,12,2,'2019-04-15 11:38:13','2019-04-15 11:38:13'),(6,27,12,2,'2019-04-15 14:22:41','2019-04-15 14:22:41'),(9,28,53,2,'2019-05-02 15:06:40','2019-05-02 15:06:40'),(13,26,66,2,'2019-07-02 01:17:49','2019-07-02 01:17:49'),(14,27,32,2,'2019-07-02 17:43:23','2019-07-02 17:43:23'),(15,26,73,2,'2019-08-05 02:56:02','2019-08-05 02:56:02'),(16,26,91,2,'2019-09-18 17:08:50','2019-09-18 17:08:50'),(18,78,5,2,'2020-03-28 21:04:07','2020-03-28 21:04:07'),(19,26,100,2,'2020-04-02 12:56:59','2020-04-02 12:56:59'),(20,28,73,2,'2020-04-14 19:34:15','2020-04-14 19:34:15');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_levels`
--

LOCK TABLES `ranking_levels` WRITE;
/*!40000 ALTER TABLE `ranking_levels` DISABLE KEYS */;
INSERT INTO `ranking_levels` VALUES (1,'','Todos que iniciam sua jornada no Funk!','Everyone who starts their journey at Funk!','Todos los que inician su viaje en el funk!','1','Level 1 - Novinho','Level 1 - Novinho','Level 1 - novinho','Level 1 - Novinha','Level 1 - Novinha','Level 1 - Novinha',0,1,'2018-11-20 09:19:02','2020-04-29 18:54:15'),(2,'1587330127.png','Vença 5 Batalhas para alcançar esse level!','Win 5 Battles to reach this level!','¡Gana 5 batallas para alcanzar este nivel!','2','Level 2 - Parça','Level 2 - Parça','Level 2 - Parça','Level 2 - Parça','Level 2 - Parça','Level 2 - Parça',5,1,'2018-11-20 09:20:40','2020-04-28 03:08:51'),(3,'1587330138.png','Vença 15 Batalhas para alcançar esse level!','Win 15 Battles to reach this level!','¡Gana 15 batallas para alcanzar este nivel!','3','Level 3 - Tigrão','Level 3 - Tigrão','Level 3 - Tigrão','Level 3 - Tigrona','Level 3 - Tigrona','Level 3 - Tigrona',15,1,'2018-11-20 09:21:21','2020-04-28 03:09:04'),(4,'1587330148.png','Vença 30 Batalhas para alcançar esse level!','Win 30 Battles to reach this level!','¡Gana 30 batallas para alcanzar este nivel!','4','Level 4 - Bolado','Level 4 - Bolado','Level 4 - Bolado','Level 4 - Bolada','Level 4 - Bolada','Level 4 - Bolada',30,1,'2018-11-20 09:22:01','2020-04-28 03:09:10'),(5,'1587330157.png','Vença 50 Batalhas para alcançar esse level!','Win 50 Battles to reach this level!','¡Gana 50 batallas para alcanzar este nivel!','5','Level 5 - Profissa','Level 5 - Profissa','Level 5 - Profissa','Level 5 - Profissa','Level 5 - Profissa','Level 5 - Profissa',50,1,'2018-11-20 09:22:39','2020-04-28 03:09:23'),(6,'1587330166.png','Vença 80 Batalhas para alcançar esse level!','Win 80 Battles to reach this level!','¡Gana 80 batallas para alcanzar este nivel!','6','Level 6 - TERROR','Level 6 - TERROR','Level 6 - TERROR','Level 6 - TERROR','Level 6 - TERROR','Level 6 - TERROR',80,1,'2018-12-19 08:36:36','2020-04-28 03:09:36'),(7,'1587330178.png','Vença 120 Batalhas para alcançar esse level!','Win 120 Battles to reach this level!','¡Gana 120 batallas para alcanzar este nivel!','7','Level 7 - ZIKA','Level 7 - ZIKA','Level 7 - ZIKA','Level 7 - ZIKA','Level 7 - ZIKA','Level 7 - ZIKA',120,1,'2018-11-20 09:24:11','2020-04-28 03:09:54'),(8,'1587330186.png','Vença 200 Batalhas para alcançar esse level!','Win 200 Battles to reach this level!','¡Gana 200 batallas para alcanzar este nivel!','8','Level 8 - PATRÃO','Level 8 - PATRON','Level 8 - PATRÓN','Level 8 - PODEROSA','Level 8 - PODEROSA','Level 8 - PODEROSA',200,1,'2018-11-20 09:24:44','2020-04-28 03:10:02'),(9,'1587330781.png','Vença 300 Batalhas para alcançar esse level!','Win 300 Battles to reach this level!','¡Gana 300 batallas para alcanzar este nivel!','9','Level 9 - REI','Level 9 - REI','Level 9 - REI','Level 9 - RAINHA','Level 9 - RAINHA','Level 9 - RAINHA',300,1,'2020-04-19 21:13:01','2020-04-28 03:10:10'),(10,'1587331880.png','Vença 500 Batalhas e torne-se uma LENDA DO FUNK!','Win 500 Battles and become a FUNK LEGEND!','¡Gana 500 batallas y sé una LEYENDA FUNK!','10','Level 10 - LENDA!','Level 10 - LENDA!','Level 10 - LENDA!','Level 10 - LENDA!','Level 10 - LENDA!','Level 10 - LENDA!',500,1,'2020-04-19 21:15:12','2020-04-28 03:10:18');
/*!40000 ALTER TABLE `ranking_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking_levels_28Apr20`
--

DROP TABLE IF EXISTS `ranking_levels_28Apr20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ranking_levels_28Apr20` (
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_levels_28Apr20`
--

LOCK TABLES `ranking_levels_28Apr20` WRITE;
/*!40000 ALTER TABLE `ranking_levels_28Apr20` DISABLE KEYS */;
INSERT INTO `ranking_levels_28Apr20` VALUES (1,'http://52.27.53.102/batalhafunk/img/rank_image/1587330116.png','Todos que iniciam sua jornada no Funk!','Everyone who starts their journey at Funk!','Todos los que inician su viaje en el funk!','1','Level 1 - Novinho','Level 1 - Novinho','Level 1 - novinho','Level 1 - Novinha','Level 1 - Novinha','Level 1 - Novinha',0,1,'2018-11-20 09:19:02','2020-04-19 21:01:56'),(2,'http://52.27.53.102/batalhafunk/img/rank_image/1587330127.png','Vença 5 Batalhas para alcançar esse level!','Win 5 Battles to reach this level!','¡Gana 5 batallas para alcanzar este nivel!','2','Level 2 - Parça','Level 2 - Parça','Level 2 - Parça','Level 2 - Parça','Level 2 - Parça','Level 2 - Parça',5,1,'2018-11-20 09:20:40','2020-04-19 21:02:07'),(3,'http://52.27.53.102/batalhafunk/img/rank_image/1587330138.png','Vença 15 Batalhas para alcançar esse level!','Win 15 Battles to reach this level!','¡Gana 15 batallas para alcanzar este nivel!','3','Level 3 - Tigrão','Level 3 - Tigrão','Level 3 - Tigrão','Level 3 - Tigrona','Level 3 - Tigrona','Level 3 - Tigrona',15,1,'2018-11-20 09:21:21','2020-04-19 21:02:18'),(4,'http://52.27.53.102/batalhafunk/img/rank_image/1587330148.png','Vença 30 Batalhas para alcançar esse level!','Win 30 Battles to reach this level!','¡Gana 30 batallas para alcanzar este nivel!','4','Level 4 - Bolado','Level 4 - Bolado','Level 4 - Bolado','Level 4 - Bolada','Level 4 - Bolada','Level 4 - Bolada',30,1,'2018-11-20 09:22:01','2020-04-19 21:02:28'),(5,'http://52.27.53.102/batalhafunk/img/rank_image/1587330157.png','Vença 50 Batalhas para alcançar esse level!','Win 50 Battles to reach this level!','¡Gana 50 batallas para alcanzar este nivel!','5','Level 5 - Profissa','Level 5 - Profissa','Level 5 - Profissa','Level 5 - Profissa','Level 5 - Profissa','Level 5 - Profissa',50,1,'2018-11-20 09:22:39','2020-04-19 21:02:37'),(6,'http://52.27.53.102/batalhafunk/img/rank_image/1587330166.png','Vença 80 Batalhas para alcançar esse level!','Win 80 Battles to reach this level!','¡Gana 80 batallas para alcanzar este nivel!','6','Level 6 - TERROR','Level 6 - TERROR','Level 6 - TERROR','Level 6 - TERROR','Level 6 - TERROR','Level 6 - TERROR',80,1,'2018-12-19 08:36:36','2020-04-19 21:02:46'),(7,'http://52.27.53.102/batalhafunk/img/rank_image/1587330178.png','Vença 120 Batalhas para alcançar esse level!','Win 120 Battles to reach this level!','¡Gana 120 batallas para alcanzar este nivel!','7','Level 7 - ZIKA','Level 7 - ZIKA','Level 7 - ZIKA','Level 7 - ZIKA','Level 7 - ZIKA','Level 7 - ZIKA',120,1,'2018-11-20 09:24:11','2020-04-19 21:02:58'),(8,'http://52.27.53.102/batalhafunk/img/rank_image/1587330186.png','Vença 200 Batalhas para alcançar esse level!','Win 200 Battles to reach this level!','¡Gana 200 batallas para alcanzar este nivel!','8','Level 8 - PATRÃO','Level 8 - PATRON','Level 8 - PATRÓN','Level 8 - PODEROSA','Level 8 - PODEROSA','Level 8 - PODEROSA',200,1,'2018-11-20 09:24:44','2020-04-19 21:32:16'),(9,'http://52.27.53.102/batalhafunk/img/rank_image/1587330781.png','Vença 300 Batalhas para alcançar esse level!','Win 300 Battles to reach this level!','¡Gana 300 batallas para alcanzar este nivel!','9','Level 9 - REI','Level 9 - REI','Level 9 - REI','Level 9 - RAINHA','Level 9 - RAINHA','Level 9 - RAINHA',300,1,'2020-04-19 21:13:01','2020-04-19 21:18:11'),(10,'http://52.27.53.102/batalhafunk/img/rank_image/1587331880.png','Vença 500 Batalhas e torne-se uma LENDA DO FUNK!','Win 500 Battles and become a FUNK LEGEND!','¡Gana 500 batallas y sé una LEYENDA FUNK!','10','Level 10 - LENDA!','Level 10 - LENDA!','Level 10 - LENDA!','Level 10 - LENDA!','Level 10 - LENDA!','Level 10 - LENDA!',500,1,'2020-04-19 21:15:12','2020-04-19 21:31:20');
/*!40000 ALTER TABLE `ranking_levels_28Apr20` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_batals`
--

LOCK TABLES `report_batals` WRITE;
/*!40000 ALTER TABLE `report_batals` DISABLE KEYS */;
INSERT INTO `report_batals` VALUES (2,156,12,0,'2019-05-28 07:49:58','2019-05-28 07:49:58'),(3,155,12,0,'2019-05-28 08:02:39','2019-05-28 08:02:39'),(4,335,106,0,'2020-04-08 19:34:12','2020-04-08 19:34:12');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_commentadvts`
--

LOCK TABLES `report_commentadvts` WRITE;
/*!40000 ALTER TABLE `report_commentadvts` DISABLE KEYS */;
INSERT INTO `report_commentadvts` VALUES (2,9,12,0,'2019-05-30 08:32:03','2019-05-30 08:32:03'),(3,26,44,0,'2019-05-30 09:16:28','2019-05-30 09:16:28'),(4,9,14,0,'2019-05-30 12:13:55','2019-05-30 12:13:55'),(6,5,5,0,'2019-06-07 02:38:34','2019-06-07 02:38:34');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_commentbatals`
--

LOCK TABLES `report_commentbatals` WRITE;
/*!40000 ALTER TABLE `report_commentbatals` DISABLE KEYS */;
INSERT INTO `report_commentbatals` VALUES (4,19,32,0,'2019-06-27 13:14:12','2019-06-27 13:14:12');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_comments`
--

LOCK TABLES `report_comments` WRITE;
/*!40000 ALTER TABLE `report_comments` DISABLE KEYS */;
INSERT INTO `report_comments` VALUES (2,24,14,0,'2019-05-31 06:45:50','2019-05-31 06:45:50'),(3,24,5,0,'2019-06-07 02:37:52','2019-06-07 02:37:52');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_musics`
--

LOCK TABLES `report_musics` WRITE;
/*!40000 ALTER TABLE `report_musics` DISABLE KEYS */;
INSERT INTO `report_musics` VALUES (1,22,12,0,'2019-05-23 06:06:49','2019-05-23 06:06:49'),(2,24,12,0,'2019-05-28 08:01:43','2019-05-28 08:01:43');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_plans`
--

LOCK TABLES `user_plans` WRITE;
/*!40000 ALTER TABLE `user_plans` DISABLE KEYS */;
INSERT INTO `user_plans` VALUES (1,12,1,3,'2019-05-09 09:10:33','2019-05-17 05:01:08'),(2,6,1,3,'2019-05-17 03:19:26','2019-05-28 07:08:42'),(3,6,2,4,'2019-05-17 03:19:42','2019-05-28 07:08:27'),(4,7,1,2,'2019-05-17 04:07:25','2019-05-28 07:25:12'),(5,0,0,1,'2019-05-31 12:12:35','2019-05-31 12:12:35'),(6,0,0,1,'2019-05-31 12:13:21','2019-05-31 12:13:21'),(7,0,0,1,'2019-05-31 12:13:24','2019-05-31 12:13:24'),(8,0,0,1,'2019-07-22 08:21:13','2019-07-22 08:21:13'),(9,0,0,1,'2019-09-26 14:35:18','2019-09-26 14:35:18'),(10,0,0,1,'2019-09-26 14:35:28','2019-09-26 14:35:28'),(11,100,1,3,'2020-03-28 16:55:49','2020-03-28 16:55:49');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_winners`
--

LOCK TABLES `user_winners` WRITE;
/*!40000 ALTER TABLE `user_winners` DISABLE KEYS */;
INSERT INTO `user_winners` VALUES (5,106,1,150,6,'2020-04-23 11:55:02','0000-00-00 00:00:00'),(6,106,1,150,6,'2020-04-23 11:55:02','0000-00-00 00:00:00');
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
  `customer_id` text COLLATE utf8_unicode_ci,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,NULL,NULL,NULL,'shubham','http://52.27.53.102/batalhafunk/img/user/1551291012.file','deepak.bansal@techugo.com','9bb48ff5c97a25121fd7847b181251084b98476f',1,'IosDeveloper','Brasil','Gaziabad',1,'da6ee1005f52e63dfb24b22ad0b4bb73',1,1,'1072','egCA3AimgLE:APA91bEIPe619Y0y8zlFY-TYM0UhLg5xVpSqzlwZQzsBVc9ZCkP3lTLV7EuK6ZUcz2UAVGlL-Hyu2JKPMDVDV5V9Ssj0VxHm1Qo5mkF-iaQAByQ1FmZqXM4IgxDIuoiHkNPAM3lUZFIh',1,1,'270','0',0,NULL,96,1,226,4,0,0,0,0,0,0,0,0,'5u5w66','2019-09-26 14:06:10','2019-09-26 14:06:10','2019-09-26 08:38:45',0,0,NULL,'2018-12-12 06:01:00','2020-04-27 09:22:49'),(2,'624001367965400',NULL,NULL,NULL,'sahil','https://graph.facebook.com/624001367965400/picture?type=normal','lstes143@gmail.com',NULL,1,'new','Brasil','Noida',1,'18b6554166788ad68f1183f1939bfa43',1,1,NULL,'fxb1QFNP_g8:APA91bHczUWCzNug3eX1DdSpoi_939B6PieLokxSl0HfdxJ6U90ULObuIaHasU-rDjTjHCZfTilxoAzrM3S5El2p0IfYOK8ZW4M7DpmTdPfRWVl_CPlUhyzuIPDx-7hfddVXwXNRju64',1,2,'160','1',0,NULL,203,4,470,1,0,0,0,0,0,0,0,0,'sdjcjg','0000-00-00 00:00:00','0000-00-00 00:00:00','2019-05-07 05:40:48',0,0,NULL,'2018-12-12 06:07:29','2020-04-27 09:22:49'),(3,'1649625808490664',NULL,NULL,NULL,'shubhamsingh','http://52.27.53.102/batalhafunk/img/user/1588011429.file','zombie.singh96@gmail.com',NULL,1,'Developer','Brazil','Gaziabadhu',1,'2ca55732cbddd961691fbc93f240c300',1,2,NULL,'fgA2sYqcjBc:APA91bEUJWXdKw4K31FnMasSOU2d-C0P6I4LQ8P7yl-ic9w2Q4LoTUmd5Qim56GB-rccgKhWuErBSqVa383hbGsVFeQlW3wEbvL3T2foVZKLMWpzt_pCgpu-8KZDa0OrLBIaFAMhKXtN',2,1,'25','0',0,NULL,0,1,0,27,0,0,0,0,0,0,0,0,'p6ti44','2020-04-27 06:25:02','2020-04-27 06:25:02','2020-04-27 18:13:00',0,0,NULL,'2018-12-12 11:55:00','2020-04-27 18:25:02'),(5,'1848446928510962',NULL,NULL,NULL,'erick33','http://52.27.53.102/batalhafunk/img/user/1569959248.png','ericklopes@hotmail.com','575e8fef37762338b801e4726478d01dd70e5c4f',1,'agora vai','Brasil','São Paulo',1,'e9b636a4740fb03279324c58551c9372',1,2,'0','0',1,1,'6150','4',0,NULL,31,5,391,2,0,0,0,0,0,0,0,0,'4zvf40','2020-04-22 14:16:37','2020-04-22 14:16:37','2020-04-21 18:23:54',0,1,NULL,'2018-12-12 21:02:39','2020-04-27 09:24:12'),(9,NULL,NULL,NULL,NULL,'freelipe','http://52.27.53.102/batalhafunk/img/user/1568752086.png','erick@bbmercantil.com.br','575e8fef37762338b801e4726478d01dd70e5c4f',1,'Segue o baile!','Brasil','São Paulo',1,'3e813527b8ce3b2c9203234d323f33b0',1,2,NULL,'cq4QiJ2g7Kc:APA91bH7tgWciuvjHXL2QF3LKK_vGRsq9_FLOY7ayyUml3-4onr9QnF4p2Xcs0xbGdas4jJjj90NmBpS3iZlS3lNSogq9jhWqRxVy7xFGhVb1RURy9ythWfjzCk-LZl3qqqB-hGED3eF',1,1,'355','1',0,NULL,17,4,86,6,0,0,0,0,0,0,0,0,'z4qavc','2020-01-22 18:48:34','2020-01-22 18:48:34','2020-01-22 18:42:04',0,0,NULL,'2018-12-14 17:21:28','2020-04-27 09:22:49'),(10,'1221655761310759',NULL,NULL,NULL,'ashutosh','https://graph.facebook.com/1221655761310759/picture?type=normal','ak4376862@gmail.com',NULL,1,'hello','Brasil','Noida',1,'03be878a735a32a69752d1bd0bb8ddc2',1,1,NULL,'f2wqLWQVeWQ:APA91bEVgyMiSk9coiqqxH-t3wLZqNRUSKf9vrLTOC3KHJVoVTsLzO0-maqWxmHRHup8Kkzxh4GBbXAntlQXABz3yUPEEH9DFmtp0GmF9BcId9Ac5kJ4KEQsTTq_FAxW6Qq2A5hfxztZ',1,2,'0','0',0,NULL,1,1,21,14,0,0,0,1,0,1,0,0,'s975np','0000-00-00 00:00:00','0000-00-00 00:00:00','2018-12-20 11:11:28',0,0,NULL,'2018-12-18 10:08:27','2020-04-27 09:22:49'),(12,NULL,NULL,NULL,NULL,'abhay','http://52.27.53.102/batalhafunk/img/user/1563185442.png','abhay@techugo.com','9bb48ff5c97a25121fd7847b181251084b98476f',1,'tester position','India','Noidaa',1,'6460841b88dbfed58be1b7e751cbd90e',1,1,'3465','fN8O5xiEtvQ:APA91bHDlKpt0kcYYPcgTF59ALMRdHGgVLMdE5SeaReVehPq8jpMDo4Di0x-fTB30b-HniMEkubcV8jcWbeZc9LIQ0mK3MskNAG67e6GHPdGxGYgOXm3IwEfu0cQLXlPEG0218h6zei4',2,1,'6110','15',0,NULL,11,1,316,3,0,0,0,0,0,0,1,3,'zsehq5','2020-04-19 06:37:17','2020-04-19 06:37:17','2020-04-20 06:37:19',0,1,NULL,'2018-12-19 05:10:56','2020-04-27 09:22:49'),(14,NULL,NULL,NULL,NULL,'akriti07','http://52.27.53.102/batalhafunk/img/user/1545197751.png','akriti@techugo.ae','9bb48ff5c97a25121fd7847b181251084b98476f',1,'gamer','Brasil','Goa',1,'78f8520aa02edb02504229eacecd7597',1,1,NULL,'dg_aVrWVQ5amMRvPYDgUcS:APA91bF1m-KTloNkUIuccAk2tZLsyS9KqjuhGe141naHWliLKasV5jS4bw7T2_FmvYy-_FXPIJnavYxSor_43uaGECk7_6aeUZ8tOP30pjGs3Xgl2OEjKH5YipSUhSP94H9iqv2JrlaH',1,2,'1155','3',0,NULL,11,1,172,5,0,0,0,0,0,0,0,6,'3cwg61','2020-04-10 11:59:21','2020-04-10 11:59:21','2020-04-10 11:59:20',0,0,NULL,'2018-12-19 05:35:51','2020-04-27 09:22:49'),(17,NULL,NULL,NULL,NULL,'shubh','http://52.27.53.102/batalhafunk/img/user/1545210056.file','ss@test.com','9bb48ff5c97a25121fd7847b181251084b98476f',1,'Deve','India','Gaziabad',1,'0',1,1,NULL,'0',2,2,'0','0',0,NULL,0,1,0,28,0,0,0,1,0,1,0,0,'52h4rm','0000-00-00 00:00:00','0000-00-00 00:00:00','2018-12-19 09:01:41',0,1,NULL,'2018-12-19 09:00:56','2020-04-27 09:22:49'),(20,NULL,NULL,NULL,NULL,'amit','http://52.27.53.102/batalhafunk/img/user/1564137109.png','amit@gmail.com','9bb48ff5c97a25121fd7847b181251084b98476f',1,'Kumar','Brazil','Goa',1,'0',1,1,NULL,'0',2,2,'85','0',0,NULL,1,2,33,10,0,0,0,0,0,0,0,0,'eyll3d','2019-07-28 06:35:57','2019-07-28 06:35:57','2019-07-29 06:35:59',0,0,NULL,'2018-12-19 10:27:53','2020-04-27 09:22:49'),(21,'1613195602114287',NULL,NULL,NULL,'erik','https://graph.facebook.com/1613195602114287/picture?type=normal','erik.alves253@gmail.com',NULL,1,'YO','Brasil','São Paulo',1,'0a6959068acc15dd768ebfe4ad88b471',1,1,NULL,'f_-KE68JB5w:APA91bEZwMOUFXo9-nAA_orqPgb6qm99AJQaKwM1T6WZ0b9_HNF08f-FosGtHag1hF_2XXeWZIyJnQu5TbunQr7UJ9LDN9w38-Xm-yQwcwIkiv2DNBQgoF3P4hpjN_TGKGCli4OqwY_a',1,1,'60','0',0,NULL,0,1,30,13,0,0,0,0,0,0,0,0,'kw2o8b','2019-09-28 23:15:42','2019-09-28 23:15:42','2019-09-27 23:32:28',0,0,NULL,'2018-12-20 14:24:54','2020-04-27 09:22:49'),(22,'10214140629689899',NULL,NULL,NULL,'cintia','http://52.27.53.102/batalhafunk/img/user/1545414485.file','cinmeira@gmail.com',NULL,2,' ??','Brasil','São Caetano do Sul',1,'f3d649295ee1bd221fed3a924809bad3',1,2,NULL,'fZeJbG7fMFg:APA91bHnKZDWwuikqF9URyY_Rs2Y_dqUW860kK0MtA6KLriJj9xPM__iG8OrUu0O6tRzP_NrtMnnq_Cvug0XF59Ad95Mgvvmqc-z18zARndsO5dDvPnFZQdWL8h9Nmzeqy8kpMwY2AOr',2,1,'5','0',0,NULL,0,1,0,29,0,0,0,1,0,1,0,0,'6lrb1v','0000-00-00 00:00:00','0000-00-00 00:00:00','2019-04-26 11:57:31',0,0,NULL,'2018-12-20 17:54:04','2020-04-27 09:22:49'),(23,NULL,NULL,NULL,NULL,'fkzanzeri','http://52.27.53.102/batalhafunk/img/user/1545867141.file','fabio.zanzeri@appfactory.com.br','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',1,'Trabalho','Brasil','São Bernardo do Campo',1,'7b0efc6e588b7dfc1a3ff2af663fda03',1,1,NULL,'dCG0k9ri0nk:APA91bG0-fKmBpBdVvSF0rYoKtDswsWMzMgUrTRwk8reTOZCjSB2J6yKB8jkc82kGJD3H8_nm7Fy_uI6AvyqoO3W1QiQTy2IGQ6Kb1qsbR84P14dzbXadoMyC1adyGtwzohzvmVyHGpB',2,1,'0','0',0,NULL,0,1,0,30,0,0,0,1,0,1,0,0,'95500o','0000-00-00 00:00:00','0000-00-00 00:00:00','2019-02-27 17:51:25',0,0,NULL,'2018-12-20 17:57:30','2020-04-27 09:22:49'),(25,NULL,'103360497586543046316',NULL,NULL,'djleosheik','https://lh3.googleusercontent.com/a-/AAuE7mA1YIB5kgnlfvdqG1egMBEBb_9KgMOul6WVwmqGPA','djleosheik2@gmail.com',NULL,1,'230812','Brasil','Santo André',1,'8e9460e3762465bf31bd73bdb84fd4d6',1,1,NULL,'cfapAieGP8Y:APA91bGtfiF4iVqNQ6exjtE82pEzUdjxwZeENwz108wXjZSKo5DYcetnUZtCX963IyiqiTYCEID-EajUPemY2LxvnzaYYp_kewz1aW44PNT2joZwrf5UUD7McWAAc0HSySdZTi00fTWd',1,1,'0','0',0,NULL,0,1,0,31,0,0,0,1,0,1,0,0,'a3hqzf','0000-00-00 00:00:00','0000-00-00 00:00:00','2018-12-20 23:30:06',0,0,NULL,'2018-12-20 23:30:04','2020-04-27 09:22:49'),(26,'1798081390314846',NULL,NULL,NULL,'wesler','https://graph.facebook.com/v2.12/1798081390314846/picture?type=large&width=600&height=600','weslerss@hotmail.com',NULL,1,'No Bailão ','Brasil','Santo André',1,'bb16d908164e3bfa81d4409b97630d62',1,1,NULL,'eY9Z04G9vc4:APA91bHsjm3jWNYf0TthXu-3HRG8aRWBfOVHZye9EdpAkUJZQs8bInFhMASXbKGss8CBIW5lVyTMlKF6w-UwRzifpGdjhadcEbXjP5WDSXqYYAKbJgfddm6Ebwtt4QXf9U5uwLHFslAj',2,1,'0','0',0,NULL,0,1,0,32,0,0,0,1,0,1,0,0,'j2ynmh','0000-00-00 00:00:00','0000-00-00 00:00:00','2019-01-24 12:28:30',0,0,NULL,'2018-12-21 00:34:18','2020-04-27 09:22:49'),(27,'2147345275304938',NULL,NULL,NULL,'victor','https://graph.facebook.com/2147345275304938/picture?type=normal','vicktor_lopes@hotmail.com',NULL,1,'Deus na frente','Brasil','São Bernardo do Campo',1,'53133cb477e9957dbe1002bff33a46e5',1,1,NULL,'e6-oSpzLMSA:APA91bGXc7lHiQAvdKsvEEnpubtbL6jBqis8e-_O1jTkr0uBPON9gJspJ1WqT3NOijnwhqkfmaF9aoeUNdVE5mOtYbrHvh59Z15f45CjEj-jA0kXsA2iGGW8osNKSVWiTohEL0hk-Soi',1,1,'0','0',0,NULL,0,1,0,33,0,0,0,1,0,1,0,0,'abmhi2','0000-00-00 00:00:00','0000-00-00 00:00:00','2018-12-24 15:55:56',0,0,NULL,'2018-12-24 15:55:55','2020-04-27 09:22:49'),(29,'1995892953840831',NULL,NULL,NULL,'djleosheikofc','https://graph.facebook.com/1995892953840831/picture?type=normal','leodakibon@hotmail.com',NULL,1,'Nois éo trampo','Brasil','Santo André',1,'60059213b4113beb181ee24f0e9c9bff',1,1,NULL,'c0qe9qvJghc:APA91bHZZaMRMK7nSwEom_RHLJoROpA9e-t8TWaLSL8LQXH64KgqzAJ4zgpsow7Bd8Xys5vhjVolIl1-LoLr6J4GrIAk61P_nudtZS3qav1OLHr9xsidGo5ehQl01U6oG6p6f7z1Zh1p',1,1,'5','0',0,NULL,0,1,0,34,0,0,0,1,0,1,0,0,'cgmy3v','0000-00-00 00:00:00','0000-00-00 00:00:00','2019-04-25 10:44:25',0,0,NULL,'2019-01-17 16:18:26','2020-04-27 09:22:49'),(31,NULL,NULL,NULL,NULL,'lucsbonifacio','http://52.27.53.102/batalhafunk/img/user/1548339290.file','lucsbonifacio@gmail.com','1947536aab8c417649bb4ab2abe16143b3e102ed',1,'Hunger For Knowledge ','Brasil','Digite o nome de sua cidade',1,'808ab6a9af11f401cda976d1cd419df2',1,1,NULL,'fs0JsPyshrk:APA91bHG8RTr7mXrQ_3gWN6QhQEIz_uyetgLyAKY30o18_mVQDPd0X89DuBhCQIKJhF9Sz4hA1Ly-7RcdQjFTEHeT3fOq-PwQ_LffLud9XJrmbbMO2eBiJcjLVBr6n3YD_bk8lVhBpdo',2,1,'0','0',0,NULL,0,1,0,35,0,0,0,1,0,1,0,0,'1cbag2','0000-00-00 00:00:00','0000-00-00 00:00:00','2019-02-09 10:28:15',0,0,NULL,'2019-01-22 23:28:36','2020-04-27 09:22:49'),(32,NULL,NULL,NULL,NULL,'namy','http://52.27.53.102/batalhafunk/img/user/1548754271.png','namrataa@techugo.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',2,'Wanderlust','Brasil','Brazil',1,'0',1,2,'9889','0',1,1,'292','1',0,NULL,1,2,13,18,0,0,0,0,0,0,0,0,'bl7p36','2019-07-24 09:39:50','2019-07-24 09:39:50','2019-07-23 15:04:11',0,0,NULL,'2019-01-29 09:31:11','2020-04-27 09:22:49'),(34,NULL,NULL,NULL,NULL,'sidney','http://52.27.53.102/batalhafunk/img/user/1549384979.file','sidney.dallo@gmail.com','09b1ee72f580c6c0301a16d52187d56819d947ab',1,'Na Frente Do Meu Tempo','Brasil','Digite o nome de sua cidade',1,'2b1ddd605c47cfd14e8f67f7f6be599c',1,1,NULL,'cKhDzLzmv9s:APA91bGsql6Dvx2S60-3BJqTa58UojbKFR49IogIsHoJQrqFwbRpAfi0cvtmgso4X6AYLn8zUCfUTFOK4o-_lLdqW2GRwN5NmrpPaZst5JLSG1mN3We7116OFb7EXA_D_OCbCVOLA_9Q',2,1,'0','0',0,NULL,0,1,0,36,0,0,0,1,0,1,0,0,'513nfx','0000-00-00 00:00:00','0000-00-00 00:00:00','2019-02-11 16:33:33',0,0,NULL,'2019-02-05 16:42:59','2020-04-27 09:22:49'),(35,NULL,NULL,NULL,NULL,'thiago','http://52.27.53.102/batalhafunk/img/user/1549560621.file','thiago@appfactory.com.br','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',1,'É Nois','Brasil','Digite o nome de sua cidade',1,'4c3ea4ec767f7446922e6bae5c9cb8c6',1,1,NULL,'eT8DDghSIko:APA91bHpctREJERrl4xSXLQ1pe-4p2nd_87_Kj-qCPZ2OPstss7cwFfAPnRZxtBf4GxeDtfu46czVaHNTJikYVHqcH_nMqdX3298yZ69-nj-IRs4Hk7XWa1fLmH1n1u0HLKPcSAClR_h',2,1,'0','0',0,NULL,0,1,0,37,0,0,0,1,0,1,0,0,'iyqs6z','0000-00-00 00:00:00','0000-00-00 00:00:00','2019-02-07 17:30:58',0,0,NULL,'2019-02-07 17:30:21','2020-04-27 09:22:49'),(36,'2395782753766892',NULL,NULL,NULL,'djnego','https://graph.facebook.com/2395782753766892/picture?type=normal','nego.dj@hotmail.com',NULL,1,'simplicidade e humildade','Brasil','São Paulo',1,'b89282812839dc287b4d6a83bfb82515',1,1,NULL,'f7jxcwXIgxA:APA91bEFMyEA83NERJdpVuPs0kFDpxyMxazni6yxZK_BRgy3kmgxLCiabaVEhZ2fkJYpcTWYsPxDZl_jyW3SN6fs8VODStdtNCFt6WkZ9WwpP2h1pfv_lvZeM9VKKOOMvREg10Fz06aY',1,1,'0','0',0,NULL,0,1,0,38,0,0,0,1,0,1,0,0,'glf1bw','0000-00-00 00:00:00','0000-00-00 00:00:00','2019-02-26 17:08:19',0,0,NULL,'2019-02-13 16:47:53','2020-04-27 09:22:49'),(37,NULL,NULL,NULL,NULL,'fabriciosuster','http://52.27.53.102/batalhafunk/img/user/1550593170.png','fabricio.suster@outlook.com','2ab0c41d3b23564f029e9c79a3de08eefe7f7916',1,'fé','Brasil','São Bernardo do Campo',1,'5d62051b3fc2c2d6e00f006d9f20d59e',1,1,NULL,'e3HVFpCPdzw:APA91bEoofz_Y_2E7GoAryz9vjjPw-d8XogoBVyUYbh18aG2Nro2eywzft6R9C4HAVYIXkZFPbrpi4a56qqhhFDRi1qzBCCqBiDZJKZb_uJ0MTx0Mz3_vIhaZzq32_uIa4FfSsNWHW26',1,1,'30','0',0,NULL,0,1,0,39,0,0,0,0,0,0,0,0,'pcjd44','0000-00-00 00:00:00','0000-00-00 00:00:00','2019-06-16 23:18:02',0,0,NULL,'2019-02-19 16:16:39','2020-04-27 09:22:49'),(38,NULL,NULL,NULL,NULL,'rubens','http://52.27.53.102/batalhafunk/img/user/1550689046.file','rubens@bbmercantil.com.br','4ddb3a834877a53626dd63668dd3fbacaa196793',1,'Rodemoc','Brasil','Digite o nome de sua cidade',1,'c95f92ccb357f693dba0384afa10d6d5',1,1,'0','fD284Z1G6Ag:APA91bGttfqzMzBT6U1rJA9qHtXLCdiv6XDLbJUWHbS3Ow1pUuj0cF1btbNnRHxe6mgrQDGO7oSnOCqEL7lmAcnAcXVQWAs28cyAcxl37zWk-OcHuppQwyvfm6NKKUzp3t9Vrbkvp74L',2,1,'85','0',0,NULL,0,1,0,40,0,0,0,0,0,0,0,0,'co99m5','2019-09-23 21:08:40','2019-09-23 21:08:40','2019-09-23 21:08:40',0,0,NULL,'2019-02-20 18:14:27','2020-04-27 09:22:49'),(41,'2163430613767646',NULL,NULL,NULL,'erick','https://graph.facebook.com/2163430613767646/picture?type=normal','onnyhonera2@hotmail.com',NULL,1,'revel','Brasil','São Bernardo do Campo',1,'6f8ce1a8c1722add7645d55608de0a9c',1,1,NULL,'e7KkFki4omk:APA91bHfs1wRI_1LnCw6Yq-61TDMo_31FwTpwez3uyymZI5GEUX05VjW-hqTveITrsvlRt9RFVZdKO8FixOoun0ikUoD_KzVhYLBr1j0k17c9BB8-v4YNgFRJhW5MX3u2-CED21NRfOd',1,1,'5','0',0,NULL,0,1,0,41,0,0,0,1,0,1,0,0,'qotyg1','0000-00-00 00:00:00','0000-00-00 00:00:00','2019-04-12 23:10:02',0,0,NULL,'2019-03-28 16:52:00','2020-04-27 09:22:49'),(43,NULL,'110104488176114003819',NULL,NULL,'bhuwnesh','https://lh3.googleusercontent.com/a-/AAuE7mCWIfYsXk80z1-0pFybw0yYtJB4RrclJLTLO74','bhuwnesharora4@gmail.com',NULL,1,'uu','India','Delhi',1,'0',1,1,NULL,'0',1,2,'10','0',0,NULL,0,1,0,42,0,0,0,0,0,0,0,0,'fa2m2b','0000-00-00 00:00:00','0000-00-00 00:00:00','2019-05-01 10:38:17',0,0,NULL,'2019-04-15 07:17:28','2020-04-27 09:22:49'),(53,NULL,NULL,NULL,NULL,'ambuj','http://52.27.53.102/batalhafunk/img/user/1556810050.png','ambuj@techugo.com','9bb48ff5c97a25121fd7847b181251084b98476f',1,'bun','Brasil','Noida',1,'0',1,1,NULL,'0',2,2,'156486','0',0,NULL,0,1,31,11,0,0,0,0,0,0,0,0,'cx2zqo','0000-00-00 00:00:00','0000-00-00 00:00:00','2019-05-03 07:37:43',0,0,NULL,'2019-05-01 06:24:02','2020-04-27 09:22:49'),(54,NULL,NULL,NULL,NULL,'lucky123',NULL,'lakshman@techugo.com','51cf5fb06b52a8401c9787d11103c2dfc17ddc70',1,'Life goes on','India','Laxmi Nagar',1,'aeea9ce5a3f91e74b5d677326240858b',1,1,NULL,'f1g8ByAJZtM:APA91bHrkc_rllpnkC7WtGDwsgVndXGtjGPRzBnhJ3fdgI38_SiouIQUSaVexoflrmFpc2NGCybLIPsXJqTO4GLOGvmJdHbBY-fh_O-qdMby9RYdj4hLG_3vzdJRmxMyO8wS4S12C7yv',1,1,'5','0',0,NULL,0,1,0,43,0,0,0,0,0,0,0,0,'rhie6c','2019-05-23 10:41:01','0000-00-00 00:00:00','2019-05-23 05:05:57',0,0,NULL,'2019-05-23 05:04:16','2020-04-27 09:22:49'),(55,'2464371470242438',NULL,NULL,NULL,'mcromarks','https://graph.facebook.com/2464371470242438/picture?type=normal','romarks_@hotmail.com',NULL,2,'Pelo Funk consciente!','Brasil','São Bernardo do Campo',1,'50b6dbdfc8cc75dd1b2aeca955ad1460',1,1,NULL,'dDW8_Q05iF0:APA91bE-y93zh5lcuvrOx5HN9vUL3hRNS89BN8KXqZyVxvTxRa4aVunTxF9TOptGiSyLAXkm0PnEsY-zqN3RjViQScl0mcmsL34QPDRCj1acC5TmWYP3R-coC5xA98jQZEqeH5Tny68F',1,1,'175','0',0,NULL,0,1,0,44,0,0,0,0,0,0,0,0,'talm61','2020-04-06 14:08:37','2020-04-06 14:08:37','2020-04-06 17:08:36',0,0,NULL,'2019-05-30 15:50:11','2020-04-27 09:22:49'),(56,NULL,'109590106507679655862',NULL,NULL,'naachar','http://52.27.53.102/batalhafunk/img/user/1569957689.png','carolinna.souza@gmail.com','800444cd8cbad1daf630f1b13a80deed0c52995d',2,'prazer, a rainha do combate!','Brasil','São Paulo',1,'5af31314a4e1d3ddf7eca51c85efa751',1,1,'0','eG8qyvpz8xo:APA91bEijdNkE6hG976nMTuKij0RibOUbZbHsWT-kevR1Htz_-PtOuM1Cv13-0HBshIoYBr7XY4cjT11yR7hkzd96r7MGT0s6BTDgb1auhS6Oqiq3C5sfm2m_Wq5lcXvHRbm0cbJOBIK',1,1,'290','1',0,NULL,1,2,47,9,0,0,0,0,0,0,0,0,'u6q8pr','2019-10-02 00:47:26','2019-10-02 00:47:26','2019-10-01 03:55:17',0,0,NULL,'2019-06-09 02:29:28','2020-04-27 09:22:49'),(61,NULL,NULL,NULL,NULL,'techugo',NULL,'prashant@techugo.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',1,'techugo','Brasil','Noida',1,'0',1,1,NULL,'0',1,2,'5','0',0,NULL,0,1,0,45,0,0,0,0,0,0,0,0,'qb9v9g','2019-06-29 05:16:07','2019-06-29 05:16:07','2019-06-28 11:32:37',0,0,NULL,'2019-06-28 11:31:04','2020-04-27 09:22:49'),(62,NULL,'111103228998185240491',NULL,NULL,'neo123','http://52.27.53.102/batalhafunk/img/user/1561725247.png','namratastic@gmail.com',NULL,1,'thanks','Brasil','Pune',1,'0',1,1,NULL,'0',1,2,'10','0',0,NULL,0,1,0,46,0,0,0,0,0,0,0,0,'bqybjh','2019-07-02 07:24:46','2019-07-02 07:24:46','2019-07-02 07:24:46',0,0,NULL,'2019-06-28 12:30:33','2020-04-27 09:22:49'),(63,NULL,NULL,NULL,NULL,'mcgui','http://52.27.53.102/batalhafunk/img/user/1561822808.png','gui.tensol@gmail.com','bab0dd356efe2d9ec50d96a6c0a5be2aafff83c8',1,'funk raíz!','Brasil','São Paulo',1,'fe5763e807108d3adc7294a22ede88ee',1,1,NULL,'eyoeQodLKLw:APA91bHxVofPglToO-or8XskdwyfQA6ZDFedKJqE536wtcNwLVl4GkNQIiidsinVbbRpajsmKr6qbDDUNjlIkjHnVG3zWba2_XKEnxoNtOSxZB_q_5c8ZimhegYS5Dfci542kKrFJSYs',1,1,'15','0',0,NULL,0,1,0,47,0,0,0,0,0,0,0,0,'bu8knc','2019-06-29 15:40:13','2019-06-29 15:40:13','2019-06-29 15:37:03',0,0,NULL,'2019-06-29 15:27:17','2020-04-27 09:22:49'),(65,'2399563270368119',NULL,NULL,NULL,'fabio','https://graph.facebook.com/2399563270368119/picture?type=normal','josefabio201_@hotmail.com',NULL,1,'swed','Brasil','São Paulo',1,'82a9f5b4370c78f024ac246b4bce802a',1,1,NULL,'el4CEpRRV5g:APA91bGYroeD7Kl1r_20OHZWFz2M7XoIl0RAHS5hpiVy4xYYh_kC8NVpQ1Fpx19l8z8RNwhrBoGSbDTNdt8Q6l8pFl5-7NXgw1GB5JDy1Ek4r5sgFoX2w7M0pShHq_8AIAZawCjRlMlc',1,1,'20','0',0,NULL,0,1,0,48,0,0,0,0,0,0,0,0,'fy08qw','2019-07-06 17:26:54','2019-07-06 17:26:54','2019-07-06 17:24:03',0,0,NULL,'2019-07-01 22:26:20','2020-04-27 09:22:49'),(66,NULL,NULL,NULL,NULL,'gggggggg','http://52.27.53.102/batalhafunk/img/user/1579725673.png','djguitto@gmail.com','5271d6dbf331d76c7ce4c82b8f45fcf1452c8e20',1,'.','Brasil','São Paulo',1,'728a425baea91bab783a92073601c211',1,2,NULL,'eyR6LsodxBI:APA91bGXH04OxVjiNu0HYtayVI8tZ8Bs-2TB-T7nCmBg2A1tjVFKy9DSCqaTs1a8FfTk2fUc9r1GPk9VHZiTggn5ob4Ao6wzjYK1micNyWLSaW0JlnoWLAQpJJrCIlY3TgBhhauhp_Vc',1,1,'250','1',0,NULL,1,2,31,12,0,0,0,0,0,0,0,0,'38q767','2020-01-22 20:43:11','2020-01-22 20:43:11','2020-01-22 20:31:40',0,0,NULL,'2019-07-01 23:42:22','2020-04-27 09:22:49'),(67,'2144424029189543',NULL,NULL,NULL,'bonnyb','https://graph.facebook.com/2144424029189543/picture?type=normal','iamtesternow@gmail.com','9bb48ff5c97a25121fd7847b181251084b98476f',2,'Rapper','Brasil','Brazilian Highlands',1,'9c843db07e986301a107d2a06affd210',1,1,NULL,'d-u-yVSAyok:APA91bHwecdMBEflwzFKutkZJUN6OcLoeH6kyaj5-FVgxbD4ksg9NTpZe8-nh1ReqJK9hFo5YaJ1tICxX_Roo-a90NvW1utIfwv5Z6Bp7DseXLZ4HLda4S3WsJ9IoH-0l_tLakNQfTC1',1,2,'10','0',0,NULL,0,1,8,20,0,0,0,0,0,0,0,0,'ox0jrs','2019-07-25 18:49:43','2019-07-25 18:49:43','2019-07-25 09:13:30',0,0,NULL,'2019-07-02 12:45:58','2020-04-27 09:22:49'),(69,'2415332835413352',NULL,NULL,NULL,'talha','https://graph.facebook.com/2415332835413352/picture?type=normal','talhadance@hotmail.com',NULL,2,'A música me mantém viva','Brasil','Regente Feijó',1,'5af265431d52f51bbaf8482f7923e933',1,1,NULL,'cD5cNI_IcmY:APA91bGoYN3SeTJIxBx6uPVHWQfQuVDAmh9RKZAGmDAwbt2W1biSa3aymUmptJkw3PHc7C4jyYFOKpVjsU_egApm6C6QEmlFefud8LV2uXiboqlL90EIuw6fUdho2YlmeWhj0Qpinim9',1,1,'40','0',0,NULL,0,1,0,49,0,0,0,0,0,0,0,0,'iccpav','2019-08-05 03:15:19','2019-08-05 03:15:19','2019-08-05 03:15:47',0,0,NULL,'2019-07-12 17:50:04','2020-04-27 09:22:49'),(71,'2513724825319099',NULL,NULL,NULL,'mariodipoi','https://graph.facebook.com/2513724825319099/picture?type=normal','mario.dipoi@gmail.com',NULL,1,'rei do chora  bananeira','Brasil','São Paulo',1,'592ca38f3c07f5ccfdc2d01bafd1eeb9',1,1,NULL,'fvu_q5-51Ck:APA91bGgpItZqkzHjQUK6ebVRLsQ5bZBQATLm_wXeWqC5BZs34QbLCNa2pMu9kU6mkBZmA1ztcpTs3BRCSm6j1-AJY8RnuuqHFe6UBUSl2Fr8q4Ty-QUpZK9IHgZXIymwuEDZlrqXilX',1,1,'35','0',0,NULL,0,1,0,50,0,0,0,0,0,0,0,0,'b4abrk','2019-12-30 19:49:39','2019-12-30 19:49:39','2019-12-30 19:49:48',0,0,NULL,'2019-07-20 00:28:58','2020-04-27 09:22:49'),(73,NULL,NULL,NULL,NULL,'djmeier','http://52.27.53.102/batalhafunk/img/user/1587335676.file','kelvin.lopes@hotmail.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',1,'Lenda Do FUNK','Brasil','SP City ',1,'2064bba3e4785df158862e7ff12f2b10',1,1,'1296','fhx5lwYFJjU:APA91bGzPDBWHfiREMU_e8IJ0i_mwc1oABYyUFYEhnkdAVV5HOIM76zF3HJlxD_R_jAXghg1uRgQhKdsmco7JAyJlOXT4_Ekn151CrfyerMj-K5LTF_MeqAZbYgWobeDLhehFEsvVtYC',2,1,'444','2',0,NULL,2,2,56,7,0,0,0,0,0,0,0,0,'vo095z','2020-04-27 04:21:42','2020-04-27 04:21:42','2020-04-27 16:21:47',0,1,NULL,'2019-07-23 23:14:43','2020-04-27 16:46:03'),(74,NULL,NULL,NULL,NULL,'thebrazilianstyle','http://52.27.53.102/batalhafunk/img/user/1563925653.png','kelvinlopes@thebrazilianstyle.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',1,'hey','Brasil','Kelvingrove Art Gallery and Museum',1,'6c424b0447ca0ee25ab3beb859607fe2',1,1,'1289','cjxgo67FLI0:APA91bF3QxPW0xscqADqAcMB5djwmy6K08ru8FRX0hkFXAEXs7ootuyUTO7ISJcscw6Ipv4kXQninw4Cf8Laq8R2sUrezmmU8cr8GOiKfGzjt48uckm278AHwjUls3BRDQbxNudLLwXv',1,1,'20','0',0,NULL,0,1,21,15,0,0,0,0,0,0,0,0,'bmrt17','2019-07-24 00:24:04','2019-07-24 00:24:04','2019-07-23 23:30:52',0,0,NULL,'2019-07-23 23:28:49','2020-04-27 09:22:49'),(75,'10205920189759808',NULL,NULL,NULL,'namrata','https://graph.facebook.com/10205920189759808/picture?type=large&redirect=true&width=600&height=600','namrata_best_1990@yahoo.com',NULL,2,'thanks','India','Dhdh Group Inc',1,'f266f03753eb70044793d0b9424c8af2',1,1,NULL,'cjgKZbE-sHc:APA91bGSYD3X0lXVEwjbEXCS6rnpKLB1s1wzvx-AYpe91SOdEr1B9xZ8t5cNqMxTgX0zSwsOW6-bt7yJGYzbplpHtc3MDY9Unl3wRBVnY3NMYzovL6OGe18jwt5vxjspDZkaJrcGZtHh',1,1,'45','0',0,NULL,0,1,12,19,0,0,0,0,0,0,0,0,'1mh774','2019-10-30 04:14:08','2019-10-30 04:14:08','2019-10-30 04:14:08',0,0,NULL,'2019-07-24 09:40:43','2020-04-27 09:22:49'),(78,'1957311990998451',NULL,NULL,NULL,'love','https://graph.facebook.com/1957311990998451/picture?type=large&redirect=true&width=600&height=600','loveinside2012@gmail.com',NULL,1,'new','Brasil','Doss',1,'91570a0192ec399707203edf20a61f08',1,1,NULL,'cFbrXz5IYhk:APA91bGSWHeTr1UF8ZjcjBhVgyK44pm0WAyqbwzRMVpg1saJtfra2OHhAy2-toeqZ0No5N0AxHUIhuaH02DayD_f2p7wGKH82wK4jxryGTMY_7-L_dnEMa0CshCAkbfqt92nX-vm1fic',1,1,'75','0',0,NULL,0,1,15,17,0,0,0,0,0,0,0,0,'7mrot7','2019-11-20 05:02:39','2019-11-20 05:02:39','2019-11-20 04:48:08',0,0,NULL,'2019-07-25 07:01:49','2020-04-27 09:22:49'),(81,'2658990850798692',NULL,NULL,NULL,'naachcar','http://52.27.53.102/batalhafunk/img/user/1564152894.file','natalyachcar@hotmail.com',NULL,1,'Prazer, A Rainha Do Combate! ','Brasil','São Paulo',1,'2a86e74151f2ca133aabb38c578be3d8',1,1,NULL,'cynFJjsNXuQ:APA91bGzKI6b92CkgXKX1vzlEpX6e_x1WYn5xRRSuz8okR09vUHf3MbrzZJystlQJLZYdyRU9Rcbwembe2hOAaXGKoUa9omEs-86QeLvjJF1rMBHIVOjfqk5O1zR4NxczOJZVh12dYah',2,1,'5','0',0,NULL,0,1,0,51,0,0,0,0,0,0,0,0,'olmhz3','2019-07-26 02:58:16','2019-07-26 02:58:16','2019-07-26 14:47:20',0,0,NULL,'2019-07-26 14:47:17','2020-04-27 09:22:49'),(82,NULL,NULL,NULL,NULL,'djseduty','http://52.27.53.102/batalhafunk/img/user/1564154085.file','anderson.hadassa.show@gmail.com','b337f47a0bfaa99b2ef2e2407ae32c0b821a7d23',1,'Fé Pra Tudo !','Brasil','Rio de Janeiro',1,'2fcbedf0b002fbbe071e05d866d1123f',1,1,NULL,'fzt-73HhfcE:APA91bE4lr9zZ7e5Yqy8u1o45NjbPQf66pkd0r0BdNnwDKZKB9IMgucM6vn3qwwuD8qWwJWbixOoPjFZP6NHHm1S_v1iHGEF2nM-g8GfGN6xTTgkfQMYmQSke2638Ccj229Q6b0p5Zoz',2,1,'40','0',0,NULL,0,1,0,52,0,0,0,0,0,0,0,0,'1vq4gc','2019-09-05 05:07:29','2019-09-05 05:07:29','2019-09-05 17:07:33',0,0,NULL,'2019-07-26 15:11:20','2020-04-27 09:22:49'),(83,NULL,'106497563956182539484',NULL,NULL,'sagar',NULL,'sagar.limbani@openxcell.info',NULL,1,'ngd','Brasil','Ahmedabad',1,'6f90dd7bc216fd3af968fb4487426af1',1,1,NULL,'c9vceXDGVLw:APA91bFlYRnEDid8T3tk2ADqEimVFipZIO1nZJMzpe1s-SdHkjzGNliUuqSDHx5_aeLPpGs8ktJ2jN08W5BISSYfiC5HVhmN8Cn00c9KMH63jctFj6v5Sl6IzpbIaKkkNbcfDcp0jlHg',1,2,'5','0',0,NULL,0,1,2,22,0,0,0,0,0,0,0,0,'4nm7yg','2019-08-05 14:00:16','2019-08-05 14:00:16','2019-08-05 11:22:19',0,0,NULL,'2019-08-05 11:22:17','2020-04-27 09:22:49'),(84,'2620836684633527',NULL,NULL,NULL,'djtabata','https://graph.facebook.com/2620836684633527/picture?type=large&redirect=true&width=600&height=600','tabataclarina2014@gmail.com',NULL,1,'Tabatinha não para ?','Brasil','Rio de janeiro',1,'8792f3574f030ae388d8a6dc26610aea',1,1,NULL,'f5_PlW65y3g:APA91bH72zd-cKPsR54B-4rhm5HyYSff-d-J9g7Cp-ctyrPlMhL4gaVe62JNtRXoyWeUfMrEB-DFqVPsbe2I8KaJP9jXiUZSEohQnaXhJ_uNugyTnnYKHW4ykYVZNzQTfq--B7nr_kxG',1,1,'20','0',0,NULL,0,1,0,53,0,0,0,0,0,0,0,0,'fuo7ni','2020-02-23 02:18:13','2020-02-23 02:18:13','2020-02-23 02:18:16',0,0,NULL,'2019-08-05 21:16:20','2020-04-27 09:22:49'),(85,'2234354430020566',NULL,NULL,NULL,'patriciacalixto','https://graph.facebook.com/2234354430020566/picture?type=large&redirect=true&width=600&height=600','patriciaa154@gmail.com',NULL,2,'Felicidade','Brasil','Atibaia',1,'6452a049fd0f30d9e82f27ebfe8dcc84',1,1,NULL,'dUOylUhfHhY:APA91bFgKeOtj24SBoudD_BeC54sr86VJh-5x3ktv5-mcYoYnekyNED28KxJ9HN06jzrqKsGYPAk1p79iHQKwiC32b6to5JL0DFZuXUQSh7vuC4e36TU0t9wo61Lz1DxDbQO-gUshltp',1,1,'90','0',0,NULL,0,1,0,54,0,0,0,0,0,0,0,0,'852xkc','2019-08-21 16:05:48','2019-08-21 16:05:48','2019-08-21 16:05:48',0,0,NULL,'2019-08-06 18:07:02','2020-04-27 09:22:49'),(86,'1315682748595634',NULL,NULL,NULL,'thiago1902','https://graph.facebook.com/1315682748595634/picture?type=large&redirect=true&width=600&height=600','thiago_torres_2000@hotmail.com',NULL,1,'Nois tumultua tudo memo passano sufoco ?','Brasil','Guarulhos',1,'095bdcd88972846e451d62e45ce62671',1,1,NULL,'c8tdQOxYJzk:APA91bGyefEepeJutePHEwx9a884JYG5tGlAO6wQqMCt22cKV14EJLTEnGHE4qtu4OLaJFe5JGL_vU6HXCmQl1cfKJOLTB8GILPfCOuEOQ16bzkVVq16s0jABRRh9iXJMuHFBfGSoAWt',1,1,'20','0',0,NULL,0,1,0,55,0,0,0,0,0,0,0,0,'epj3t9','2019-08-24 23:00:16','2019-08-24 23:00:16','2019-08-24 22:59:04',0,0,NULL,'2019-08-08 15:13:06','2020-04-27 09:22:49'),(87,NULL,'116566696357743952471',NULL,NULL,'reidosbeats','https://lh3.googleusercontent.com/a-/AAuE7mC-1twRHdmFWHFWS1RGtSj4rbTIFjoS3RRuRt6ZjA','oficialdjsamy@hotmail.com',NULL,1,'Rei dos Beats','Brasil','Itaquaquecetuba',1,'83334abceff781b89a48020fcbfb567d',1,1,NULL,'dMKP7IKU-1Q:APA91bEHYNy0hj-vMtHWU8c7QwEQN1YdwOGlefttrya0c0Is4UQVFHMLh-w3Diw1Ol1P-6IdpcIBFsjABp7tsop1HEyTkBvijN77kAvR0KOo7U6sQJVG_twWeQXgmv9Qqzgn8gui4BhI',1,1,'60','0',0,NULL,0,1,0,56,0,0,0,0,0,0,0,0,'wk77qq','2020-04-11 03:40:27','2020-04-11 03:40:27','2020-04-11 03:34:41',0,1,NULL,'2019-08-11 04:53:12','2020-04-27 09:22:49'),(88,NULL,NULL,NULL,NULL,'djpamplona','http://52.27.53.102/batalhafunk/img/user/1565586029.png','pamplonabeats@gmail.com','f20db34a3293446e250048ff6254fa8bc5b13f7f',1,'produtor e compositor','Estados Unidos','Orlando',1,'ee3b4d7a689fa47108dcf8331c4ac1f6',1,1,NULL,'eQwVOJmLvNw:APA91bHmhxjFXtNLoXPn61ND-nU8PpTUetHBpQ3mDOU_ZADE5D0SUJxQs4IZtUz17nolFuJLgzYKehQsvO5CVCfKGdzfiQk5ZDHmPgtOZC_-K3IWezdgNemAuHPbU4uqutUnxTGHzuzD',1,1,'50','0',0,NULL,0,1,0,57,0,0,0,0,0,0,0,0,'1bbw13','2019-08-21 16:56:23','2019-08-21 16:56:23','2019-08-21 16:56:23',0,0,NULL,'2019-08-12 04:50:05','2020-04-27 09:22:49'),(89,NULL,'115622126220148791791',NULL,NULL,'mcmagrindazo','https://lh3.googleusercontent.com/a-/AAuE7mDNt6aPOa0HXGM1RdNLdwmA-7WNZul_2Vv0A6mU','pesadaobeat@gmail.com',NULL,1,'cantor','Brasil','Rio de janeiro',1,'45dc3ca57ec8470df81c36a39a8b12d4',1,1,NULL,'eD632QIlFfU:APA91bH6wnV9W2TP6p8CviD2XMi7277SwEHf8VtCNhYPijO5N2JWX6igtb_Et7ppiceq81wSFo3Cm6AXhD8nHJm-cuS2svJsEsaZ6S-yE6AQ58QdjLbn1vr1NrT10qT8ob3BTfv0hXwx',1,1,'20','0',0,NULL,0,1,0,58,0,0,0,0,0,0,0,0,'w0zn3c','2019-08-17 14:53:39','2019-08-17 14:53:39','2019-08-17 14:53:38',0,0,NULL,'2019-08-12 15:22:32','2020-04-27 09:22:49'),(90,'1316503581841995',NULL,NULL,NULL,'mcneguinhotr6','https://graph.facebook.com/1316503581841995/picture?type=large&redirect=true&width=600&height=600','mcneguinho.boladaooficial@gmail.com',NULL,1,'mcneguinhotr6','Brasil','Itaquaquecetuba',1,'5f80fadc0f71c5c36955ebefbbe4d052',1,1,NULL,'cn7ATw-yr0A:APA91bGD4QIql7WwiHGEet216BwlcxcJeQZgZcSKduPPim6dtbwVwoL3fZbXLu1zySUqQoEwzBLg60WmDzgdnWwhPhl4YI2e8hTVQ9VXvKiX4JCL-Hy0q-WljpHalNKIbXc_vB0EuzIK',1,1,'5','0',0,NULL,0,1,0,59,0,0,0,0,0,0,0,0,'bt8zok','2019-08-25 04:26:21','2019-08-25 04:26:21','2019-08-25 01:53:27',0,0,NULL,'2019-08-25 01:53:25','2020-04-27 09:22:49'),(91,NULL,NULL,NULL,NULL,'flavinha','http://52.27.53.102/batalhafunk/img/user/1569959462.png','flavia.suster@outlook.com','32b325444262e7e0b8462d9a2ec89ff2fb3720d6',2,'é nois','Brasil','São Bernardo do Campo',1,'ed7d727d999c60bc3256a352842b2371',1,1,NULL,'ep7J3PKT-cc:APA91bEI3xJnVGKc68mHfpFVVGP3WtnO0U4F6RhvHYVJnpOk2LcMtAJTVE05vtPw3BMSn4wJTsvoh6v9CnmQeTv_tQ7wuUkCpoZYP8FT6uzjqFRppqpu-r64rnJyvs9uXOGDUq4na8bq',1,1,'95','0',0,NULL,0,1,49,8,0,0,0,0,0,0,0,0,'wkk4ka','2019-12-06 19:48:33','2019-12-06 19:48:33','2019-12-06 19:43:07',0,0,NULL,'2019-08-27 14:45:52','2020-04-27 09:22:49'),(92,'10217525732968547',NULL,NULL,NULL,'djmeierofc','https://graph.facebook.com/10217525732968547/picture?type=large&redirect=true&width=600&height=600','re.zitoo@hotmail.com',NULL,1,'nada muda','Brasil','são Paulo',1,'b451a2b5e6a0292c8fd7471e78e9e3c4',1,1,NULL,'c5GW7GRh9oU:APA91bFA_UAsltB1PtzGeYYkf4j4An8AIWP_9FqKz_fV3IBVs2hLmkckn1ZxyecOZk-D_80vz-WYCpdQ2a_WhMS2ypQh3flxkTXOq7qHS_c_RbJL33ur6z36wCl-G2PGJoxicbvpNYFc',1,1,'40','0',0,NULL,0,1,0,60,0,0,0,0,0,0,0,0,'abrjyb','2019-10-01 19:22:21','2019-10-01 19:22:21','2019-10-01 19:19:46',0,0,NULL,'2019-09-21 15:08:09','2020-04-27 09:22:49'),(93,NULL,NULL,NULL,NULL,'garal','http://52.27.53.102/batalhafunk/img/user/1569435275.file','tarakakuc@gmail.com','7a6c62ff4c530044d1b7818073d796877eaafa3e',1,'Er34','Rússia','Moscow',1,'8365aa3fe818cc49e78eb413f2738d21',1,1,NULL,'elBusd3l-ew:APA91bGKBYW_gjZu7OaA3UFQvC5zllozS-jcO6D3jgtls8DaiphakSmkk5sYpFVJthYLzymab3nAaAPKCuAItOf9PSZN5VHWDeJ9GTusFhzoNAfxp5mnghBfay-UOHeKdLf6bIYHflRS',2,2,'10','0',0,NULL,0,1,1,24,0,0,0,0,0,0,0,0,'w7yjzj','2019-10-02 10:14:51','2019-10-02 10:14:51','2019-09-27 09:03:40',0,0,NULL,'2019-09-25 18:14:35','2020-04-27 09:22:49'),(94,NULL,NULL,NULL,NULL,'batala13','http://52.27.53.102/batalhafunk/img/user/1572508368.png','batala31@gmail.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',0,'',NULL,NULL,1,'9a7b80d69aa9616ae89626540cf0af8a',0,1,NULL,NULL,1,1,'5','0',0,NULL,0,1,0,61,0,0,0,5,0,0,0,0,'6z5tb5','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,NULL,'2019-10-31 07:52:48','2020-04-27 09:22:49'),(95,NULL,NULL,NULL,NULL,'batala1','http://52.27.53.102/batalhafunk/img/user/1572848431.png','batala11@gmail.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',0,'',NULL,NULL,1,'33a5e1ce6eed5f35fa9206d3092d9764',0,1,NULL,NULL,1,1,'5','0',0,NULL,0,1,0,62,0,0,0,5,0,0,0,0,'5szymf','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,NULL,'2019-11-04 06:20:31','2020-04-27 09:22:49'),(96,NULL,NULL,NULL,NULL,'user',NULL,'lovemahajan@techugo.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',1,'qwerty','Angola','qwerty',1,'6cd3fff4d3d1d01f1e3a448e5f35b692',1,1,NULL,NULL,1,1,'5','0',0,NULL,0,1,0,63,0,0,0,5,0,0,0,0,'1zejz6','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'1DC118354A324DAFA882FA628D2A9B8E','2019-11-08 08:43:15','2020-04-27 09:22:49'),(97,NULL,NULL,NULL,NULL,'mcfabinmilgrau','http://52.27.53.102/batalhafunk/img/user/1574614701.png','fabiosuster@gmail.com','b50572d135bde43e6f02b7d81ee8a927d74f3658',1,'Inveja é uma doença, te desejo melhoras ??','Brasil','São Bernardo do Campo',1,'96b96822f842e64652e1cd22400b36ba',1,1,NULL,'cq2BPjVkN_Q:APA91bE4bGwZWt1alXuHR6pNkX7utivTlXUB8cU1fh5fVPfGu1NCDBBuBj2d0t6LWChyHy6fLDzs-GoF8PvpBiavg_FlKB382yGV4P9ZMr8pfgtxt5UW3wjxNqDQAkQa1jFJvQriQGF9',1,1,'55','0',0,NULL,0,1,0,64,0,0,0,0,0,0,0,0,'zjhhyz','2020-01-27 18:04:44','2020-01-27 18:04:44','2020-01-27 18:06:05',0,0,NULL,'2019-11-24 16:58:21','2020-04-27 09:22:49'),(98,NULL,NULL,NULL,NULL,'deepakb',NULL,'deepak@yopmail.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',0,'',NULL,NULL,1,'14a2189a58ca87296173a7407abc7256',0,1,NULL,NULL,1,1,'5','0',0,NULL,0,1,0,65,0,0,0,5,0,0,0,0,'tnecm8','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'33C483B26C914F95B1A5D8D802010FC0','2020-03-24 13:13:01','2020-04-27 09:22:49'),(99,NULL,NULL,NULL,NULL,'gunjan',NULL,'gunjan.manral@techugo.comb','9bb48ff5c97a25121fd7847b181251084b98476f',1,'9876543210','Índia','delhi',1,'0',1,1,NULL,'0',1,2,'610','0',0,NULL,0,1,0,66,0,0,0,0,0,0,0,0,'w0tdny','2020-04-03 07:04:45','2020-04-03 07:04:45','2020-04-02 13:54:05',0,1,'A9DEDC1C4A184F658BADA006816B0889','2020-03-27 11:50:04','2020-04-27 09:22:49'),(100,NULL,NULL,NULL,NULL,'namk',NULL,'namrata@techugo.com','9bb48ff5c97a25121fd7847b181251084b98476f',2,'qwerty','India','tech',1,'2f3d47c85b538ea91aa42edc5cd0b19f',1,1,NULL,'0',1,1,'10','0',0,NULL,0,1,0,67,0,0,0,0,0,0,1,3,'marpke','2020-04-02 12:56:19','2020-04-02 12:56:19','2020-04-02 12:56:20',0,0,'D9D4BD44470C48D2A4A7A565936C6345','2020-03-28 14:05:21','2020-04-27 09:22:49'),(101,NULL,'110844062998600348996',NULL,NULL,'renancardoso',NULL,'renan.cardoso@appfactory.com.br','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',1,'Add','Brasil','Cas',1,'e10e61039a25af6c39682ff4b446c3ff',1,1,NULL,'e_mDXuK4wmc:APA91bFQOLng3utGjNdGNtNDRvYdcdERuc_uki5JCrjaedF8dRnOLsByJzJZ6bGZGTWHmw1DCpnLmBHzlxM8jKWv2HEHKHX3tk8_Kh4AW4ACgczyNgt0LeWN_CcYBlMOF-q4xWOL3fzV',2,1,'15','0',0,NULL,0,1,3,21,0,0,0,0,0,0,0,0,'d84sey','2020-04-17 19:45:40','2020-04-17 19:45:40','2020-04-17 19:45:44',0,0,'E6582BB5E80B497896D3527966C8248B','2020-03-30 22:33:02','2020-04-27 09:22:49'),(102,NULL,NULL,NULL,NULL,'renanmassaroto','http://52.27.53.102/batalhafunk/img/user/1585612045.file','renanmassaroto@gmail.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',1,'Assad’s a','Brasil','sap Beranardo Do Campo',1,'e99067a333b73b1547bc7479cd75aff6',0,1,NULL,'c4sCgvAMbXw:APA91bEGQ5YdANws4NefYnMtcM5sEBnWrPejhLUnixjsyqOrl0vxFGeSkyYmNA3ZICtq9PyWiT5Pj5du-ng8SP54uLhm08s6KrxPplDmWu2l3Q_n1jDcLxUrjZ62doXG6D_Oe3h75beb',2,1,'15','0',0,NULL,0,1,2,23,0,0,0,0,0,0,0,0,'v98v2d','2020-03-30 12:11:08','2020-03-30 12:11:08','2020-03-30 23:47:41',0,0,'0F9C7E380CA04EA4A0EBE7AA8FA6A515','2020-03-30 23:47:25','2020-04-27 09:22:49'),(103,NULL,NULL,NULL,NULL,'erick2',NULL,'rubensmacedo2013@gmail.com','9ad9e16a29e82c18cca52b05bff3ebc289b88074',1,'vixx','Brasil','qualquer',1,'0',1,1,NULL,'0',1,1,'10','0',0,NULL,0,1,0,68,0,0,0,0,0,0,0,0,'e1m43b','2020-04-06 15:02:21','2020-04-06 15:02:21','2020-04-06 13:23:47',0,0,'510017FAA56346E996A7994272C0B89A','2020-04-02 12:31:51','2020-04-27 09:22:49'),(104,NULL,NULL,NULL,NULL,'abcd','http://52.27.53.102/batalhafunk/img/user/1588005181.png','abc@abc.com','9bb48ff5c97a25121fd7847b181251084b98476f',1,'musician','Brasil','Rio de Jenario',1,'6d937edc69befc9a962ec713ab607b2d',1,2,NULL,'fKoes9DVSb6-TH7pwUJFvC:APA91bH_cfUC2y1CLxSfimw1PIDtv5p8hGZCOzRCxK9lgZrk6_PK2GsWqkLEmMCWEt7Iu6SyLc3S8ZAh_hZAh514-N6OV9hihHn5d6Ym3usoJwALDYfIdr7OTsiWW0tT4WVtVQvN69zx',1,1,'15','0',0,NULL,0,1,0,69,0,0,0,0,0,0,0,0,'xz8mtf','2020-04-27 16:59:55','2020-04-27 16:59:55','2020-04-27 08:50:25',0,0,'32E3E754EE6441178BC8442203FCF19D','2020-04-03 07:06:58','2020-04-27 16:59:56'),(105,NULL,NULL,NULL,NULL,'namk22','http://52.27.53.102/batalhafunk/img/user/1585918273.png','namratasingh915@gmail.com','9bb48ff5c97a25121fd7847b181251084b98476f',2,'hxhxhdhd','Brasil','hsdhhdhdgd',1,'c4f07a3624767b35ab869f032989470e',1,1,NULL,NULL,1,2,'15','0',0,NULL,0,1,0,70,0,0,0,0,0,0,0,0,'qinx1t','2020-04-22 13:44:30','2020-04-22 13:44:30','2020-04-22 13:44:31',0,0,'6CB3E0AE63A946A1B7DB4159A14A86E2','2020-04-03 12:51:13','2020-04-27 09:22:49'),(106,NULL,NULL,NULL,NULL,'klopes','http://52.27.53.102/batalhafunk/img/user/1587341598.file','kelvin.lopesms@gmail.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',1,'Se Liga ??','Brasil','São Bernardo',1,'0',1,1,NULL,'0',2,1,'320','2',0,NULL,2,6,20,16,1,1,150,0,0,0,0,0,'mak5xn','2020-04-19 12:18:21','2020-04-19 12:18:21','2020-04-19 21:27:49',0,0,'5AB407B587094FB2B43034FC3ADDD90E','2020-04-06 18:41:47','2020-04-27 09:22:49'),(108,NULL,NULL,NULL,NULL,'deepakb1',NULL,'deepak.bansal1@techugo.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',0,'',NULL,NULL,1,'70275c722be96cff2fdb39883d9c8a73',0,1,NULL,'0',2,1,'5','0',0,NULL,0,1,0,71,0,0,0,0,0,0,0,0,'l48mf0','2020-04-06 11:52:09','2020-04-06 11:52:09','2020-04-07 11:46:35',0,0,'290F0472D3844BEF967271BEA053A837','2020-04-07 11:28:49','2020-04-28 11:19:19'),(110,'658158111191536',NULL,NULL,NULL,'luck','https://graph.facebook.com/v2.12/658158111191536/picture?type=large&width=600&height=600','test.techugo@gmail.com',NULL,1,'Singer','Brazil','Noida',1,'0',1,1,NULL,'0',2,2,'5','0',0,NULL,0,1,0,72,0,0,0,0,0,0,0,0,'xpbo79','2020-04-07 12:10:07','2020-04-07 12:10:07','2020-04-07 11:57:50',0,0,'C351B8DE1932445CA2B3243CD04AED3E','2020-04-07 11:57:46','2020-04-27 09:22:49'),(113,NULL,NULL,NULL,NULL,'freyastroman',NULL,'freyastroman@gmail.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',1,'oi','Brasil','aqui',1,'33da4d3e7cf2ffcdcf441d69871526bf',1,1,NULL,'dciFgKANQUuWM5wjY-X7Sq:APA91bF7opeEAAvqhkQM2AZUnwC_RNPdUYjTFKwd6vZ4-XsZ0gj5_-xo9xdQqUh67GL_6Tx7OyKpObbOfsrzpbATfdH6SnhThY1ehaL6gShE-0b2DYIAgUc44uvFYbS4za8Ms6yE9ZQv',1,1,'5','0',0,NULL,0,1,1,25,0,0,0,0,0,0,0,0,'pfjhdh','2020-04-07 17:04:41','2020-04-07 17:04:41','2020-04-07 16:52:08',0,0,'2538AC720D81435183540C5BDC9244B2','2020-04-07 16:50:53','2020-04-27 09:22:49'),(114,NULL,NULL,NULL,NULL,'ash','http://52.27.53.102/batalhafunk/img/user/1586334841.file','abhay@yopmail.com','9bb48ff5c97a25121fd7847b181251084b98476f',1,'Try','Brasil','Noida',1,'662b914829df240be70a6d12558f448a',0,1,NULL,NULL,1,1,'5','0',0,NULL,0,1,0,73,0,0,0,5,0,0,0,0,'kylvhn','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'306E7ECAB2D340E9900BA7305CD20FA9','2020-04-08 08:34:01','2020-04-27 09:22:49'),(115,NULL,NULL,NULL,NULL,'batalhafunk','http://52.27.53.102/batalhafunk/img/user/1586374256.file','batalhafunkbrasil@gmail.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',1,'Oficial ','Brasil','São Bernardo Do Campo ',1,'0',1,1,NULL,'0',2,1,'5','0',0,NULL,0,1,0,74,0,0,0,0,0,0,0,0,'jpwqh8','2020-04-08 07:32:22','2020-04-08 07:32:22','2020-04-08 19:32:22',0,0,'01F5FB45E7F0423E88A69387D5F8102A','2020-04-08 19:30:56','2020-04-27 09:22:49'),(116,NULL,NULL,NULL,NULL,'renan.cardoso1','http://52.27.53.102/batalhafunk/img/user/1586966328.file','renan.cardoso1@appfactory.com.br','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',1,'Ne','Brasil','Sao Paulo',1,'7b8371038bb716a8a6a90ed9cbd61071',0,1,NULL,NULL,1,1,'5','0',0,NULL,0,1,0,75,0,0,0,5,0,0,0,0,'n5act8','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,1,'4AEE42C31FB24204BF72B5E2A112B9C2','2020-04-15 15:58:48','2020-04-29 18:50:57'),(117,NULL,NULL,NULL,NULL,'cadu','http://52.27.53.102/batalhafunk/img/user/1587775277.file','ricardo_rms@me.com','a7c79a85f031a43b59abb5ff950f074fbead7053',1,' Bla Bla Bla','Brasil','Santo André ',1,'81b3568ded6d80671ab79c38bab0fafc',1,1,NULL,'eGiOU580k6g:APA91bGipv0Ek0AKi6SzFjJJD6CgkLHEx4i51XNLy-ZuOXf4MRUWp3eVLAdxzarDRA1RW-6yG48-Af-S6UxlR3hmybIN4B9cmXGO2FuHybWoTlvo0ycMHBQLrmVoHnZ3Cp_TgofRZgrI',2,1,'95','0',0,NULL,0,1,1,26,0,0,0,0,0,0,0,0,'kyoyl0','2020-04-27 05:15:18','2020-04-27 05:15:18','2020-04-26 20:11:39',0,1,'5404BD96F5634E479E377E47DD2D8B2A','2020-04-25 00:41:17','2020-04-29 18:51:02'),(118,NULL,NULL,NULL,NULL,'rajpal',NULL,'rajpal@gmail.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',0,'',NULL,NULL,1,'4cb7bcb70a462f48934880188a11235b',0,1,NULL,NULL,1,1,'5','0',0,NULL,0,1,0,0,0,0,0,5,0,0,0,0,'llv60h','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,NULL,'2020-04-29 23:10:05','2020-04-30 04:40:05'),(119,NULL,NULL,NULL,NULL,'rajpal1',NULL,'rajpal1@gmail.com','bbdf64123dfb7bb075dd22c735572dd1a34a2c24',0,'',NULL,NULL,1,'bba6fcdf158486dba97de5a1cd2269a6',1,1,NULL,NULL,1,1,'5','0',0,NULL,0,1,0,0,0,0,0,5,0,0,0,0,'5bk1d4','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,NULL,'2020-04-29 23:11:27','2020-05-13 07:33:38');
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
INSERT INTO `verifiedbadge_values` VALUES (1,'100000','2019-04-15 08:58:45','2020-04-19 22:25:59');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_advertisements`
--

LOCK TABLES `view_advertisements` WRITE;
/*!40000 ALTER TABLE `view_advertisements` DISABLE KEYS */;
INSERT INTO `view_advertisements` VALUES (4,2,53,'2019-05-01 11:22:23','2019-05-01 11:22:23'),(5,2,12,'2019-05-03 09:35:01','2019-05-03 09:35:01'),(6,2,5,'2019-05-06 22:24:31','2019-05-06 22:24:31'),(10,3,5,'2019-05-07 00:28:30','2019-05-07 00:28:30'),(13,2,32,'2019-05-29 06:13:42','2019-05-29 06:13:42'),(14,1,12,'2019-05-30 13:51:52','2019-05-30 13:51:52'),(15,1,55,'2019-05-30 15:57:47','2019-05-30 15:57:47'),(16,3,55,'2019-05-30 16:19:29','2019-05-30 16:19:29'),(17,2,55,'2019-06-14 18:00:16','2019-06-14 18:00:16'),(18,3,65,'2019-07-01 22:36:02','2019-07-01 22:36:02'),(19,2,65,'2019-07-01 22:36:42','2019-07-01 22:36:42'),(20,1,66,'2019-07-02 00:19:32','2019-07-02 00:19:32'),(21,3,32,'2019-07-02 07:38:52','2019-07-02 07:38:52'),(22,1,71,'2019-07-20 00:29:36','2019-07-20 00:29:36'),(23,2,78,'2019-07-25 12:59:01','2019-07-25 12:59:01'),(25,1,83,'2019-08-05 11:26:25','2019-08-05 11:26:25'),(26,2,85,'2019-08-07 00:20:51','2019-08-07 00:20:51'),(28,2,87,'2019-08-19 03:32:36','2019-08-19 03:32:36'),(29,3,86,'2019-08-24 22:59:47','2019-08-24 22:59:47'),(30,1,91,'2019-08-29 00:21:00','2019-08-29 00:21:00'),(31,2,91,'2019-08-29 00:21:04','2019-08-29 00:21:04'),(32,3,12,'2019-09-18 03:27:09','2019-09-18 03:27:09'),(33,2,97,'2019-11-24 17:06:04','2019-11-24 17:06:04'),(34,1,97,'2019-12-16 14:42:45','2019-12-16 14:42:45'),(35,3,66,'2020-01-22 20:36:04','2020-01-22 20:36:04'),(36,1,99,'2020-03-27 12:29:16','2020-03-27 12:29:16'),(37,3,99,'2020-03-27 12:37:32','2020-03-27 12:37:32'),(38,1,101,'2020-03-30 22:53:43','2020-03-30 22:53:43'),(39,2,101,'2020-03-30 22:54:31','2020-03-30 22:54:31'),(40,3,101,'2020-03-30 22:54:33','2020-03-30 22:54:33');
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
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_batals`
--

LOCK TABLES `view_batals` WRITE;
/*!40000 ALTER TABLE `view_batals` DISABLE KEYS */;
INSERT INTO `view_batals` VALUES (1,2,2,'2019-04-04 06:23:17','2019-04-04 06:23:17'),(3,39,5,'2019-04-15 20:04:12','2019-04-15 20:04:12'),(4,60,12,'2019-04-16 11:16:58','2019-04-16 11:16:58'),(7,68,5,'2019-04-26 01:53:12','2019-04-26 01:53:12'),(10,68,12,'2019-04-29 06:21:24','2019-04-29 06:21:24'),(12,2,12,'2019-04-30 10:49:20','2019-04-30 10:49:20'),(13,2,53,'2019-05-02 07:27:23','2019-05-02 07:27:23'),(14,76,53,'2019-05-02 15:04:53','2019-05-02 15:04:53'),(19,216,12,'2019-05-13 10:18:58','2019-05-13 10:18:58'),(20,156,12,'2019-05-13 10:19:37','2019-05-13 10:19:37'),(30,150,12,'2019-05-21 06:08:19','2019-05-21 06:08:19'),(31,216,14,'2019-05-21 06:35:49','2019-05-21 06:35:49'),(32,176,14,'2019-05-21 06:37:53','2019-05-21 06:37:53'),(33,39,14,'2019-05-21 06:52:10','2019-05-21 06:52:10'),(35,176,12,'2019-05-23 06:12:22','2019-05-23 06:12:22'),(36,76,12,'2019-05-23 06:19:43','2019-05-23 06:19:43'),(37,121,12,'2019-05-23 06:20:15','2019-05-23 06:20:15'),(38,155,12,'2019-05-23 09:58:34','2019-05-23 09:58:34'),(41,156,32,'2019-05-29 06:23:01','2019-05-29 06:23:01'),(42,39,12,'2019-05-30 12:14:26','2019-05-30 12:14:26'),(43,2,55,'2019-05-30 16:16:30','2019-05-30 16:16:30'),(44,237,12,'2019-05-31 05:01:31','2019-05-31 05:01:31'),(45,236,12,'2019-05-31 05:01:43','2019-05-31 05:01:43'),(46,2,14,'2019-05-31 06:44:02','2019-05-31 06:44:02'),(48,237,55,'2019-06-06 23:22:13','2019-06-06 23:22:13'),(49,156,55,'2019-06-06 23:24:31','2019-06-06 23:24:31'),(50,155,55,'2019-06-06 23:24:45','2019-06-06 23:24:45'),(51,154,55,'2019-06-06 23:24:50','2019-06-06 23:24:50'),(52,150,55,'2019-06-06 23:24:58','2019-06-06 23:24:58'),(53,237,56,'2019-06-14 22:04:39','2019-06-14 22:04:39'),(55,237,32,'2019-06-27 12:58:38','2019-06-27 12:58:38'),(56,236,56,'2019-06-28 03:55:26','2019-06-28 03:55:26'),(57,238,56,'2019-06-28 03:55:43','2019-06-28 03:55:43'),(58,240,56,'2019-06-28 03:55:59','2019-06-28 03:55:59'),(59,155,56,'2019-06-28 04:04:23','2019-06-28 04:04:23'),(60,154,56,'2019-06-28 04:04:28','2019-06-28 04:04:28'),(61,152,56,'2019-06-28 04:04:35','2019-06-28 04:04:35'),(62,262,14,'2019-06-29 08:29:28','2019-06-29 08:29:28'),(63,262,12,'2019-07-01 14:00:12','2019-07-01 14:00:12'),(64,237,66,'2019-07-01 23:48:25','2019-07-01 23:48:25'),(65,39,66,'2019-07-01 23:48:32','2019-07-01 23:48:32'),(66,120,66,'2019-07-01 23:48:45','2019-07-01 23:48:45'),(67,121,66,'2019-07-01 23:48:52','2019-07-01 23:48:52'),(68,111,66,'2019-07-01 23:48:57','2019-07-01 23:48:57'),(69,270,66,'2019-07-02 01:00:07','2019-07-02 01:00:07'),(70,270,56,'2019-07-02 01:07:25','2019-07-02 01:07:25'),(71,270,32,'2019-07-02 07:40:26','2019-07-02 07:40:26'),(74,237,5,'2019-07-07 22:51:31','2019-07-07 22:51:31'),(75,270,12,'2019-07-08 05:13:00','2019-07-08 05:13:00'),(76,272,12,'2019-07-08 05:13:40','2019-07-08 05:13:40'),(77,272,1,'2019-07-08 05:24:07','2019-07-08 05:24:07'),(78,239,12,'2019-07-08 05:26:53','2019-07-08 05:26:53'),(79,270,5,'2019-07-08 14:15:57','2019-07-08 14:15:57'),(80,237,9,'2019-07-11 13:49:17','2019-07-11 13:49:17'),(81,270,71,'2019-07-20 13:16:01','2019-07-20 13:16:01'),(82,269,71,'2019-07-20 13:16:37','2019-07-20 13:16:37'),(83,247,12,'2019-07-21 11:55:38','2019-07-21 11:55:38'),(84,284,74,'2019-07-23 23:46:44','2019-07-23 23:46:44'),(85,272,66,'2019-07-25 19:19:01','2019-07-25 19:19:01'),(86,269,66,'2019-07-25 19:19:11','2019-07-25 19:19:11'),(89,269,55,'2019-07-26 04:30:52','2019-07-26 04:30:52'),(90,286,55,'2019-07-26 04:33:49','2019-07-26 04:33:49'),(91,269,12,'2019-07-26 05:41:45','2019-07-26 05:41:45'),(92,286,12,'2019-07-26 05:42:08','2019-07-26 05:42:08'),(93,292,12,'2019-07-26 06:28:27','2019-07-26 06:28:27'),(94,269,56,'2019-07-26 13:14:12','2019-07-26 13:14:12'),(95,269,82,'2019-07-26 15:13:15','2019-07-26 15:13:15'),(96,286,82,'2019-07-30 03:02:52','2019-07-30 03:02:52'),(97,286,73,'2019-07-31 19:57:14','2019-07-31 19:57:14'),(98,156,73,'2019-07-31 19:57:39','2019-07-31 19:57:39'),(99,292,38,'2019-08-01 12:37:14','2019-08-01 12:37:14'),(101,150,56,'2019-08-09 02:07:25','2019-08-09 02:07:25'),(102,156,56,'2019-08-09 02:11:04','2019-08-09 02:11:04'),(103,156,85,'2019-08-09 23:15:43','2019-08-09 23:15:43'),(104,155,87,'2019-08-11 18:06:51','2019-08-11 18:06:51'),(105,156,87,'2019-08-11 18:06:58','2019-08-11 18:06:58'),(106,150,87,'2019-08-11 18:07:06','2019-08-11 18:07:06'),(107,284,5,'2019-08-16 18:53:38','2019-08-16 18:53:38'),(109,39,9,'2019-09-16 18:21:25','2019-09-16 18:21:25'),(110,156,9,'2019-09-16 18:21:29','2019-09-16 18:21:29'),(111,155,9,'2019-09-18 14:39:24','2019-09-18 14:39:24'),(112,154,9,'2019-09-18 14:39:26','2019-09-18 14:39:26'),(113,150,9,'2019-09-18 14:39:31','2019-09-18 14:39:31'),(114,302,91,'2019-09-18 16:57:18','2019-09-18 16:57:18'),(115,156,91,'2019-09-18 17:26:55','2019-09-18 17:26:55'),(116,39,91,'2019-09-18 17:27:01','2019-09-18 17:27:01'),(117,150,91,'2019-09-18 17:27:06','2019-09-18 17:27:06'),(118,154,91,'2019-09-18 17:27:09','2019-09-18 17:27:09'),(119,155,91,'2019-09-18 17:27:12','2019-09-18 17:27:12'),(120,270,91,'2019-09-18 17:27:14','2019-09-18 17:27:14'),(121,269,91,'2019-09-18 17:27:17','2019-09-18 17:27:17'),(122,286,91,'2019-09-18 17:27:39','2019-09-18 17:27:39'),(123,152,91,'2019-09-18 17:27:45','2019-09-18 17:27:45'),(124,272,91,'2019-09-18 17:27:48','2019-09-18 17:27:48'),(125,284,91,'2019-09-18 17:27:50','2019-09-18 17:27:50'),(126,247,91,'2019-09-18 17:27:55','2019-09-18 17:27:55'),(127,292,91,'2019-09-18 17:27:58','2019-09-18 17:27:58'),(128,303,91,'2019-09-18 18:43:09','2019-09-18 18:43:09'),(129,303,12,'2019-09-20 03:34:52','2019-09-20 03:34:52'),(130,302,12,'2019-09-20 03:35:16','2019-09-20 03:35:16'),(131,156,5,'2019-09-20 13:20:13','2019-09-20 13:20:13'),(132,150,5,'2019-09-20 13:20:24','2019-09-20 13:20:24'),(133,154,5,'2019-09-20 13:20:31','2019-09-20 13:20:31'),(134,155,5,'2019-09-20 13:20:36','2019-09-20 13:20:36'),(135,302,5,'2019-09-20 13:21:06','2019-09-20 13:21:06'),(136,269,5,'2019-09-20 13:21:53','2019-09-20 13:21:53'),(137,303,5,'2019-09-20 13:22:53','2019-09-20 13:22:53'),(138,303,9,'2019-09-20 13:59:42','2019-09-20 13:59:42'),(139,305,91,'2019-09-20 14:05:43','2019-09-20 14:05:43'),(140,305,9,'2019-09-20 14:10:05','2019-09-20 14:10:05'),(141,303,73,'2019-09-21 07:38:03','2019-09-21 07:38:03'),(142,302,73,'2019-09-21 07:43:05','2019-09-21 07:43:05'),(143,305,73,'2019-09-21 07:43:22','2019-09-21 07:43:22'),(144,270,78,'2019-09-21 11:07:35','2019-09-21 11:07:35'),(145,269,78,'2019-09-21 11:08:41','2019-09-21 11:08:41'),(146,303,92,'2019-09-21 16:31:10','2019-09-21 16:31:10'),(147,305,92,'2019-09-21 16:33:45','2019-09-21 16:33:45'),(148,302,92,'2019-09-21 16:36:50','2019-09-21 16:36:50'),(149,307,73,'2019-09-24 05:58:53','2019-09-24 05:58:53'),(150,284,73,'2019-09-24 05:59:30','2019-09-24 05:59:30'),(151,308,73,'2019-09-25 17:08:30','2019-09-25 17:08:30'),(152,309,73,'2019-09-25 17:13:29','2019-09-25 17:13:29'),(153,312,73,'2019-10-01 06:11:46','2019-10-01 06:11:46'),(154,313,73,'2019-10-01 06:23:18','2019-10-01 06:23:18'),(156,305,12,'2019-10-25 16:53:25','2019-10-25 16:53:25'),(157,284,12,'2019-10-25 16:55:08','2019-10-25 16:55:08'),(158,305,97,'2019-11-24 17:08:48','2019-11-24 17:08:48'),(159,302,97,'2019-11-24 17:09:05','2019-11-24 17:09:05'),(160,156,101,'2020-03-30 22:56:28','2020-03-30 22:56:28'),(161,330,106,'2020-04-07 02:16:46','2020-04-07 02:16:46'),(162,331,106,'2020-04-07 02:19:08','2020-04-07 02:19:08'),(163,331,73,'2020-04-07 02:20:43','2020-04-07 02:20:43'),(164,332,106,'2020-04-07 02:24:51','2020-04-07 02:24:51'),(165,332,73,'2020-04-07 02:25:42','2020-04-07 02:25:42'),(166,333,106,'2020-04-07 02:29:44','2020-04-07 02:29:44'),(167,334,73,'2020-04-07 02:32:36','2020-04-07 02:32:36'),(168,334,106,'2020-04-07 02:32:37','2020-04-07 02:32:37'),(169,335,106,'2020-04-07 02:39:14','2020-04-07 02:39:14'),(170,335,73,'2020-04-07 02:40:13','2020-04-07 02:40:13'),(173,294,12,'2020-04-07 11:04:32','2020-04-07 11:04:32'),(174,336,14,'2020-04-07 11:42:18','2020-04-07 11:42:18'),(176,305,87,'2020-04-11 03:35:51','2020-04-11 03:35:51'),(177,270,87,'2020-04-11 03:38:43','2020-04-11 03:38:43'),(178,269,87,'2020-04-11 03:39:10','2020-04-11 03:39:10'),(179,342,117,'2020-04-25 00:52:54','2020-04-25 00:52:54'),(180,338,117,'2020-04-25 00:53:50','2020-04-25 00:53:50'),(181,243,117,'2020-04-25 00:54:09','2020-04-25 00:54:09');
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
) ENGINE=InnoDB AUTO_INCREMENT=334 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_musics`
--

LOCK TABLES `view_musics` WRITE;
/*!40000 ALTER TABLE `view_musics` DISABLE KEYS */;
INSERT INTO `view_musics` VALUES (1,10,2,'2019-04-04 06:22:51','2019-04-04 06:22:51'),(2,6,2,'2019-04-04 06:30:01','2019-04-04 06:30:01'),(3,3,2,'2019-04-04 06:30:24','2019-04-04 06:30:24'),(4,5,2,'2019-04-04 10:08:26','2019-04-04 10:08:26'),(5,2,2,'2019-04-04 10:09:09','2019-04-04 10:09:09'),(6,9,2,'2019-04-05 06:19:39','2019-04-05 06:19:39'),(7,10,1,'2019-04-09 07:27:08','2019-04-09 07:27:08'),(8,10,14,'2019-04-10 14:15:11','2019-04-10 14:15:11'),(9,10,5,'2019-04-13 20:40:58','2019-04-13 20:40:58'),(10,2,5,'2019-04-17 17:05:58','2019-04-17 17:05:58'),(11,11,5,'2019-04-17 17:11:16','2019-04-17 17:11:16'),(19,14,53,'2019-05-02 12:58:15','2019-05-02 12:58:15'),(20,15,53,'2019-05-02 15:11:08','2019-05-02 15:11:08'),(21,17,14,'2019-05-03 14:58:12','2019-05-03 14:58:12'),(23,18,5,'2019-05-06 22:23:10','2019-05-06 22:23:10'),(25,12,12,'2019-05-13 10:44:07','2019-05-13 10:44:07'),(26,19,12,'2019-05-17 10:08:02','2019-05-17 10:08:02'),(27,21,12,'2019-05-21 06:08:58','2019-05-21 06:08:58'),(28,20,12,'2019-05-21 06:09:14','2019-05-21 06:09:14'),(29,20,14,'2019-05-21 06:09:47','2019-05-21 06:09:47'),(30,22,14,'2019-05-21 06:38:27','2019-05-21 06:38:27'),(31,22,12,'2019-05-21 06:59:09','2019-05-21 06:59:09'),(32,21,14,'2019-05-21 07:08:24','2019-05-21 07:08:24'),(37,24,12,'2019-05-28 14:09:31','2019-05-28 14:09:31'),(39,25,12,'2019-05-30 12:46:14','2019-05-30 12:46:14'),(41,24,55,'2019-05-30 15:55:55','2019-05-30 15:55:55'),(42,10,55,'2019-05-30 16:03:06','2019-05-30 16:03:06'),(43,9,55,'2019-05-30 16:03:50','2019-05-30 16:03:50'),(44,12,55,'2019-05-31 13:52:05','2019-05-31 13:52:05'),(48,26,56,'2019-06-09 02:30:15','2019-06-09 02:30:15'),(49,18,56,'2019-06-09 02:31:34','2019-06-09 02:31:34'),(50,10,56,'2019-06-09 02:33:36','2019-06-09 02:33:36'),(51,9,56,'2019-06-09 02:33:51','2019-06-09 02:33:51'),(52,14,32,'2019-06-12 06:32:51','2019-06-12 06:32:51'),(54,12,56,'2019-06-14 22:04:12','2019-06-14 22:04:12'),(55,30,12,'2019-06-19 14:33:00','2019-06-19 14:33:00'),(56,29,12,'2019-06-19 14:33:11','2019-06-19 14:33:11'),(57,17,12,'2019-06-19 14:34:04','2019-06-19 14:34:04'),(58,30,32,'2019-06-25 10:13:44','2019-06-25 10:13:44'),(59,26,5,'2019-06-27 04:44:54','2019-06-27 04:44:54'),(60,11,56,'2019-06-27 23:20:04','2019-06-27 23:20:04'),(61,22,56,'2019-06-28 04:03:17','2019-06-28 04:03:17'),(62,26,20,'2019-06-29 08:10:19','2019-06-29 08:10:19'),(63,31,5,'2019-06-29 17:29:18','2019-06-29 17:29:18'),(64,32,5,'2019-06-29 17:31:26','2019-06-29 17:31:26'),(65,18,12,'2019-07-01 14:22:32','2019-07-01 14:22:32'),(66,18,14,'2019-07-01 14:22:45','2019-07-01 14:22:45'),(67,31,65,'2019-07-01 22:27:24','2019-07-01 22:27:24'),(68,32,65,'2019-07-01 22:27:51','2019-07-01 22:27:51'),(69,17,65,'2019-07-01 23:31:10','2019-07-01 23:31:10'),(70,21,65,'2019-07-01 23:31:17','2019-07-01 23:31:17'),(71,32,66,'2019-07-01 23:43:38','2019-07-01 23:43:38'),(72,31,66,'2019-07-01 23:43:44','2019-07-01 23:43:44'),(73,18,66,'2019-07-01 23:47:20','2019-07-01 23:47:20'),(74,26,66,'2019-07-01 23:47:38','2019-07-01 23:47:38'),(75,10,66,'2019-07-01 23:47:55','2019-07-01 23:47:55'),(76,12,66,'2019-07-01 23:48:05','2019-07-01 23:48:05'),(77,21,66,'2019-07-02 00:11:06','2019-07-02 00:11:06'),(78,17,66,'2019-07-02 00:11:18','2019-07-02 00:11:18'),(79,6,66,'2019-07-02 00:22:14','2019-07-02 00:22:14'),(80,15,66,'2019-07-02 00:22:24','2019-07-02 00:22:24'),(81,25,66,'2019-07-02 00:22:43','2019-07-02 00:22:43'),(82,3,66,'2019-07-02 00:22:49','2019-07-02 00:22:49'),(83,5,66,'2019-07-02 00:22:55','2019-07-02 00:22:55'),(84,8,66,'2019-07-02 00:22:57','2019-07-02 00:22:57'),(85,1,66,'2019-07-02 00:22:58','2019-07-02 00:22:58'),(86,4,66,'2019-07-02 00:22:58','2019-07-02 00:22:58'),(87,32,56,'2019-07-02 00:37:32','2019-07-02 00:37:32'),(88,33,56,'2019-07-02 01:16:38','2019-07-02 01:16:38'),(89,33,66,'2019-07-02 01:20:11','2019-07-02 01:20:11'),(90,34,66,'2019-07-02 01:22:15','2019-07-02 01:22:15'),(91,26,12,'2019-07-02 05:10:28','2019-07-02 05:10:28'),(92,10,12,'2019-07-02 05:10:30','2019-07-02 05:10:30'),(93,32,12,'2019-07-02 11:53:49','2019-07-02 11:53:49'),(94,21,1,'2019-07-02 13:33:15','2019-07-02 13:33:15'),(95,35,67,'2019-07-02 14:26:07','2019-07-02 14:26:07'),(96,18,32,'2019-07-02 19:44:28','2019-07-02 19:44:28'),(97,26,32,'2019-07-02 19:44:32','2019-07-02 19:44:32'),(102,33,12,'2019-07-08 05:13:20','2019-07-08 05:13:20'),(103,35,12,'2019-07-08 05:30:55','2019-07-08 05:30:55'),(104,36,12,'2019-07-08 05:33:30','2019-07-08 05:33:30'),(105,33,5,'2019-07-08 14:16:21','2019-07-08 14:16:21'),(106,25,5,'2019-07-12 22:59:45','2019-07-12 22:59:45'),(107,41,71,'2019-07-20 13:15:12','2019-07-20 13:15:12'),(108,33,71,'2019-07-20 13:15:54','2019-07-20 13:15:54'),(110,43,5,'2019-07-23 18:48:42','2019-07-23 18:48:42'),(111,44,74,'2019-07-23 23:49:41','2019-07-23 23:49:41'),(112,41,12,'2019-07-24 10:21:38','2019-07-24 10:21:38'),(113,47,14,'2019-07-24 14:05:18','2019-07-24 14:05:18'),(114,32,71,'2019-07-25 11:03:50','2019-07-25 11:03:50'),(115,1,78,'2019-07-25 12:58:43','2019-07-25 12:58:43'),(121,32,55,'2019-07-26 03:52:48','2019-07-26 03:52:48'),(122,31,55,'2019-07-26 03:54:37','2019-07-26 03:54:37'),(123,11,55,'2019-07-26 03:55:11','2019-07-26 03:55:11'),(124,44,55,'2019-07-26 04:30:03','2019-07-26 04:30:03'),(125,47,55,'2019-07-26 04:30:31','2019-07-26 04:30:31'),(126,48,55,'2019-07-26 04:33:44','2019-07-26 04:33:44'),(127,46,55,'2019-07-26 04:33:54','2019-07-26 04:33:54'),(128,44,12,'2019-07-26 05:41:29','2019-07-26 05:41:29'),(129,47,12,'2019-07-26 05:41:33','2019-07-26 05:41:33'),(130,54,12,'2019-07-26 05:41:40','2019-07-26 05:41:40'),(131,45,12,'2019-07-26 05:42:12','2019-07-26 05:42:12'),(132,49,12,'2019-07-26 05:42:26','2019-07-26 05:42:26'),(133,48,12,'2019-07-26 05:45:19','2019-07-26 05:45:19'),(134,46,12,'2019-07-26 05:45:25','2019-07-26 05:45:25'),(137,44,82,'2019-07-26 15:12:58','2019-07-26 15:12:58'),(138,44,69,'2019-07-28 02:04:23','2019-07-28 02:04:23'),(139,46,69,'2019-07-28 02:04:50','2019-07-28 02:04:50'),(140,47,82,'2019-07-30 03:02:38','2019-07-30 03:02:38'),(141,46,82,'2019-07-30 03:03:05','2019-07-30 03:03:05'),(142,48,82,'2019-07-30 03:03:29','2019-07-30 03:03:29'),(143,47,73,'2019-07-31 19:57:10','2019-07-31 19:57:10'),(144,46,73,'2019-07-31 19:57:26','2019-07-31 19:57:26'),(145,44,73,'2019-07-31 19:57:51','2019-07-31 19:57:51'),(146,52,38,'2019-08-01 12:36:38','2019-08-01 12:36:38'),(147,51,38,'2019-08-01 12:36:48','2019-08-01 12:36:48'),(148,56,73,'2019-08-02 07:16:13','2019-08-02 07:16:13'),(156,60,83,'2019-08-05 11:25:02','2019-08-05 11:25:02'),(157,56,83,'2019-08-05 11:26:30','2019-08-05 11:26:30'),(158,57,83,'2019-08-05 11:26:45','2019-08-05 11:26:45'),(159,59,83,'2019-08-05 11:27:05','2019-08-05 11:27:05'),(160,56,84,'2019-08-05 21:17:07','2019-08-05 21:17:07'),(161,57,84,'2019-08-06 02:52:27','2019-08-06 02:52:27'),(162,56,85,'2019-08-06 19:37:19','2019-08-06 19:37:19'),(163,57,85,'2019-08-06 19:37:38','2019-08-06 19:37:38'),(164,59,85,'2019-08-06 19:37:57','2019-08-06 19:37:57'),(165,11,85,'2019-08-07 00:21:05','2019-08-07 00:21:05'),(166,12,85,'2019-08-07 00:21:12','2019-08-07 00:21:12'),(168,56,56,'2019-08-08 22:25:50','2019-08-08 22:25:50'),(169,59,88,'2019-08-12 05:00:56','2019-08-12 05:00:56'),(170,61,88,'2019-08-12 05:01:08','2019-08-12 05:01:08'),(171,60,88,'2019-08-12 05:01:26','2019-08-12 05:01:26'),(172,61,73,'2019-08-15 04:40:45','2019-08-15 04:40:45'),(173,61,5,'2019-08-16 18:52:36','2019-08-16 18:52:36'),(174,21,5,'2019-08-16 19:03:48','2019-08-16 19:03:48'),(175,62,78,'2019-08-20 11:25:52','2019-08-20 11:25:52'),(176,62,56,'2019-08-26 18:15:36','2019-08-26 18:15:36'),(177,32,91,'2019-08-27 14:49:50','2019-08-27 14:49:50'),(178,31,91,'2019-08-27 22:13:32','2019-08-27 22:13:32'),(179,12,91,'2019-08-27 22:13:40','2019-08-27 22:13:40'),(180,63,91,'2019-08-27 22:16:50','2019-08-27 22:16:50'),(181,11,91,'2019-08-27 22:17:32','2019-08-27 22:17:32'),(182,64,91,'2019-08-27 22:30:31','2019-08-27 22:30:31'),(183,64,5,'2019-08-28 14:59:22','2019-08-28 14:59:22'),(186,12,5,'2019-09-16 18:13:45','2019-09-16 18:13:45'),(187,44,5,'2019-09-16 18:13:48','2019-09-16 18:13:48'),(188,32,9,'2019-09-16 18:21:02','2019-09-16 18:21:02'),(189,10,9,'2019-09-16 18:21:05','2019-09-16 18:21:05'),(190,65,78,'2019-09-18 05:46:18','2019-09-18 05:46:18'),(191,66,78,'2019-09-18 05:48:46','2019-09-18 05:48:46'),(192,12,9,'2019-09-18 12:52:02','2019-09-18 12:52:02'),(193,57,9,'2019-09-18 14:38:37','2019-09-18 14:38:37'),(194,31,9,'2019-09-18 14:38:51','2019-09-18 14:38:51'),(195,24,9,'2019-09-18 14:38:56','2019-09-18 14:38:56'),(196,19,9,'2019-09-18 14:39:05','2019-09-18 14:39:05'),(197,65,9,'2019-09-18 14:39:37','2019-09-18 14:39:37'),(198,67,91,'2019-09-18 16:46:34','2019-09-18 16:46:34'),(199,59,9,'2019-09-18 17:00:32','2019-09-18 17:00:32'),(200,56,9,'2019-09-18 17:00:45','2019-09-18 17:00:45'),(201,45,9,'2019-09-18 17:00:54','2019-09-18 17:00:54'),(202,11,9,'2019-09-18 17:01:19','2019-09-18 17:01:19'),(203,68,9,'2019-09-18 17:15:07','2019-09-18 17:15:07'),(204,69,9,'2019-09-18 17:19:41','2019-09-18 17:19:41'),(205,9,91,'2019-09-18 17:28:44','2019-09-18 17:28:44'),(206,10,91,'2019-09-18 17:28:47','2019-09-18 17:28:47'),(207,8,91,'2019-09-18 17:28:59','2019-09-18 17:28:59'),(208,7,91,'2019-09-18 17:29:02','2019-09-18 17:29:02'),(209,68,91,'2019-09-18 18:31:57','2019-09-18 18:31:57'),(210,69,5,'2019-09-18 18:34:30','2019-09-18 18:34:30'),(211,68,5,'2019-09-18 18:34:38','2019-09-18 18:34:38'),(212,67,5,'2019-09-18 18:34:49','2019-09-18 18:34:49'),(213,70,9,'2019-09-18 18:49:19','2019-09-18 18:49:19'),(214,70,91,'2019-09-18 18:49:26','2019-09-18 18:49:26'),(215,69,91,'2019-09-18 18:50:36','2019-09-18 18:50:36'),(216,71,91,'2019-09-18 18:54:14','2019-09-18 18:54:14'),(217,71,12,'2019-09-20 03:31:57','2019-09-20 03:31:57'),(218,70,12,'2019-09-20 03:32:19','2019-09-20 03:32:19'),(219,69,12,'2019-09-20 03:32:35','2019-09-20 03:32:35'),(220,70,5,'2019-09-20 13:19:33','2019-09-20 13:19:33'),(221,71,5,'2019-09-20 13:26:23','2019-09-20 13:26:23'),(222,33,78,'2019-09-21 11:07:23','2019-09-21 11:07:23'),(223,59,78,'2019-09-21 11:09:27','2019-09-21 11:09:27'),(224,46,78,'2019-09-21 11:09:39','2019-09-21 11:09:39'),(225,72,78,'2019-09-21 11:12:25','2019-09-21 11:12:25'),(226,70,78,'2019-09-21 11:13:13','2019-09-21 11:13:13'),(227,70,56,'2019-09-21 15:12:42','2019-09-21 15:12:42'),(228,70,92,'2019-09-21 16:30:59','2019-09-21 16:30:59'),(229,67,92,'2019-09-21 16:35:52','2019-09-21 16:35:52'),(230,71,92,'2019-09-21 16:36:25','2019-09-21 16:36:25'),(231,68,92,'2019-09-21 16:36:29','2019-09-21 16:36:29'),(232,69,92,'2019-09-21 16:40:47','2019-09-21 16:40:47'),(233,65,92,'2019-09-21 16:46:02','2019-09-21 16:46:02'),(234,66,92,'2019-09-22 15:26:33','2019-09-22 15:26:33'),(242,72,73,'2019-09-25 17:06:36','2019-09-25 17:06:36'),(243,72,5,'2019-09-25 17:11:07','2019-09-25 17:11:07'),(244,73,93,'2019-09-25 18:18:15','2019-09-25 18:18:15'),(245,72,12,'2019-09-26 06:47:16','2019-09-26 06:47:16'),(246,74,12,'2019-09-26 06:51:20','2019-09-26 06:51:20'),(247,75,1,'2019-09-26 08:44:50','2019-09-26 08:44:50'),(248,75,12,'2019-09-26 08:45:08','2019-09-26 08:45:08'),(249,76,1,'2019-09-26 08:45:23','2019-09-26 08:45:23'),(250,76,12,'2019-09-26 08:45:24','2019-09-26 08:45:24'),(251,78,12,'2019-09-26 08:48:03','2019-09-26 08:48:03'),(252,77,12,'2019-09-26 08:48:28','2019-09-26 08:48:28'),(253,78,1,'2019-09-26 13:45:36','2019-09-26 13:45:36'),(254,77,1,'2019-09-26 13:45:45','2019-09-26 13:45:45'),(255,79,1,'2019-09-26 13:53:32','2019-09-26 13:53:32'),(256,80,1,'2019-09-26 13:55:08','2019-09-26 13:55:08'),(257,81,12,'2019-09-26 14:36:22','2019-09-26 14:36:22'),(258,81,5,'2019-09-27 17:09:33','2019-09-27 17:09:33'),(262,86,66,'2019-10-01 19:49:13','2019-10-01 19:49:13'),(263,83,73,'2019-10-02 00:34:48','2019-10-02 00:34:48'),(264,82,73,'2019-10-02 00:35:10','2019-10-02 00:35:10'),(269,88,73,'2019-10-02 15:55:22','2019-10-02 15:55:22'),(270,90,73,'2019-10-02 15:55:46','2019-10-02 15:55:46'),(271,90,5,'2019-10-02 17:03:14','2019-10-02 17:03:14'),(272,82,5,'2019-10-02 17:03:28','2019-10-02 17:03:28'),(273,83,5,'2019-10-02 17:03:48','2019-10-02 17:03:48'),(274,88,5,'2019-10-02 17:04:06','2019-10-02 17:04:06'),(275,92,5,'2019-10-02 17:13:41','2019-10-02 17:13:41'),(276,93,5,'2019-10-02 17:19:34','2019-10-02 17:19:34'),(277,91,5,'2019-10-02 17:20:57','2019-10-02 17:20:57'),(278,93,91,'2019-10-02 17:22:53','2019-10-02 17:22:53'),(279,92,91,'2019-10-02 17:23:14','2019-10-02 17:23:14'),(280,91,91,'2019-10-02 17:23:22','2019-10-02 17:23:22'),(281,93,73,'2019-10-03 00:53:34','2019-10-03 00:53:34'),(282,92,73,'2019-10-03 00:53:57','2019-10-03 00:53:57'),(288,98,78,'2019-10-22 06:26:39','2019-10-22 06:26:39'),(291,102,12,'2019-10-22 06:40:13','2019-10-22 06:40:13'),(292,101,12,'2019-10-22 06:40:32','2019-10-22 06:40:32'),(293,104,12,'2019-10-24 13:00:18','2019-10-24 13:00:18'),(294,105,14,'2019-10-24 13:00:40','2019-10-24 13:00:40'),(295,106,14,'2019-10-24 13:02:04','2019-10-24 13:02:04'),(296,107,75,'2019-10-25 04:46:52','2019-10-25 04:46:52'),(297,108,12,'2019-10-25 04:48:46','2019-10-25 04:48:46'),(298,107,12,'2019-10-25 16:55:55','2019-10-25 16:55:55'),(299,109,12,'2019-10-25 16:56:53','2019-10-25 16:56:53'),(300,53,5,'2019-10-28 15:10:28','2019-10-28 15:10:28'),(301,107,73,'2019-10-29 04:44:17','2019-10-29 04:44:17'),(302,111,78,'2019-11-07 14:32:07','2019-11-07 14:32:07'),(303,108,78,'2019-11-20 04:48:37','2019-11-20 04:48:37'),(304,104,78,'2019-11-20 04:48:49','2019-11-20 04:48:49'),(305,102,78,'2019-11-20 04:48:59','2019-11-20 04:48:59'),(306,10,97,'2019-11-24 17:14:42','2019-11-24 17:14:42'),(307,44,97,'2019-11-24 17:14:53','2019-11-24 17:14:53'),(308,9,97,'2019-11-24 17:16:00','2019-11-24 17:16:00'),(309,86,97,'2019-11-24 17:16:47','2019-11-24 17:16:47'),(310,68,97,'2019-11-25 16:20:30','2019-11-25 16:20:30'),(311,67,97,'2019-11-25 16:20:39','2019-11-25 16:20:39'),(312,103,55,'2019-12-14 02:06:52','2019-12-14 02:06:52'),(313,93,55,'2019-12-14 02:07:10','2019-12-14 02:07:10'),(314,85,66,'2020-01-22 20:32:03','2020-01-22 20:32:03'),(315,84,66,'2020-01-22 20:32:10','2020-01-22 20:32:10'),(316,100,5,'2020-03-28 20:59:48','2020-03-28 20:59:48'),(317,111,101,'2020-03-30 22:55:11','2020-03-30 22:55:11'),(318,70,101,'2020-03-30 22:56:08','2020-03-30 22:56:08'),(319,112,102,'2020-03-31 00:06:59','2020-03-31 00:06:59'),(320,111,5,'2020-04-02 12:41:31','2020-04-02 12:41:31'),(321,111,99,'2020-04-02 14:04:35','2020-04-02 14:04:35'),(322,20,99,'2020-04-02 14:13:58','2020-04-02 14:13:58'),(323,112,106,'2020-04-07 02:09:27','2020-04-07 02:09:27'),(324,113,106,'2020-04-07 02:09:34','2020-04-07 02:09:34'),(325,114,106,'2020-04-07 02:12:12','2020-04-07 02:12:12'),(326,115,106,'2020-04-07 02:49:55','2020-04-07 02:49:55'),(327,86,87,'2020-04-11 03:37:51','2020-04-11 03:37:51'),(328,85,87,'2020-04-11 03:38:03','2020-04-11 03:38:03'),(329,84,87,'2020-04-11 03:38:10','2020-04-11 03:38:10'),(330,33,87,'2020-04-11 03:38:26','2020-04-11 03:38:26'),(331,70,73,'2020-04-13 20:32:16','2020-04-13 20:32:16'),(332,118,117,'2020-04-26 23:32:42','2020-04-26 23:32:42'),(333,70,104,'2020-04-27 09:24:12','2020-04-27 09:24:12');
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
