-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: fieldview_db_live
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
-- Current Database: `fieldview_db_live`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `fieldview_db_live` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `fieldview_db_live`;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` enum('0','1') NOT NULL COMMENT '1 for super admin, 0 for admin',
  `task` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `chat_with` int(11) NOT NULL,
  `socket_id` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `wrng_pwd_count` int(11) DEFAULT '0',
  `wrng_pwd_time` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin@gmail.com','e10adc3949ba59abbe56e057f20f883e','1','','1',0,'','2018-07-02 11:32:34','2020-05-07 08:47:17',0,'0000-00-00 00:00:00'),(2,'admin2','admin2@gmail.com','e10adc3949ba59abbe56e057f20f883e','0','FRM,Leave,Punch,Etaining','1',0,'','2018-07-02 11:32:34','2020-03-23 11:26:51',0,'0000-00-00 00:00:00'),(3,'Admin 3','admin3@gmail.com','e10adc3949ba59abbe56e057f20f883e','0','FRM','1',0,'','2020-03-25 13:47:52','2020-03-30 05:13:18',0,'0000-00-00 00:00:00'),(4,'dpk','dpk@yopmail.com','e10adc3949ba59abbe56e057f20f883e','0','FRM,Punch,Etraining','0',0,'','2020-03-27 05:17:00','2020-04-03 13:58:07',0,'0000-00-00 00:00:00'),(7,'test1','test2@gmail.com','3e09a4b0d8d491a3df7f0ff1431482f3','0','FRM,Leave','1',0,'','2020-04-03 07:53:23','2020-05-07 08:15:45',0,'0000-00-00 00:00:00'),(8,'test2','test1@gmail.com','e10adc3949ba59abbe56e057f20f883e','0','FRM,Leave','1',0,'','2020-04-03 07:55:57','2020-05-07 08:15:50',0,'0000-00-00 00:00:00'),(10,'New Admin','akriti@techugo.com','e10adc3949ba59abbe56e057f20f883e','0','FRM,Punch,Survey,Task','1',0,'','2020-04-24 08:30:12','2020-04-24 08:30:23',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_msg`
--

DROP TABLE IF EXISTS `chat_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_msg` (
  `chat_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(1) unsigned NOT NULL,
  `receiver` int(1) unsigned NOT NULL,
  `task_id` int(11) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  `media` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `media_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `read_status` enum('read','unread') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unread',
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=434 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Chat Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_msg`
--

LOCK TABLES `chat_msg` WRITE;
/*!40000 ALTER TABLE `chat_msg` DISABLE KEYS */;
INSERT INTO `chat_msg` VALUES (2,6,5,0,'heyyyyy',NULL,'text',NULL,'','read','2020-01-30 07:31:55'),(3,3,5,0,'hello',NULL,'text',NULL,'','read','2020-02-04 05:50:09'),(4,3,5,0,'hi',NULL,'text',NULL,'','read','2020-02-04 06:11:41'),(5,5,3,0,'hello',NULL,'text',NULL,'','unread','2020-02-04 06:12:18'),(13,5,6,0,'dcdc',NULL,'text',NULL,'','read','2020-02-24 06:41:31'),(14,6,4,0,'hello',NULL,'text',NULL,'','read','2020-02-24 06:47:01'),(15,15,14,0,'hi',NULL,'text',NULL,'','read','2020-02-25 01:35:42'),(16,14,15,0,'hello',NULL,'text',NULL,'','read','2020-02-25 01:36:19'),(17,6,4,0,'sdcsd',NULL,'text',NULL,'','read','2020-02-25 08:16:55'),(19,6,4,0,'hello',NULL,'text',NULL,'','read','2020-02-25 11:04:19'),(20,4,6,0,'hey',NULL,'text',NULL,'','read','2020-02-25 11:04:30'),(21,6,4,0,'adas',NULL,'text',NULL,'','read','2020-02-25 11:04:39'),(22,4,6,0,'sdd',NULL,'text',NULL,'','read','2020-02-25 11:04:43'),(23,15,14,0,'Hello',NULL,'text',NULL,'','read','2020-02-25 20:38:02'),(24,15,14,0,'he heheheheheh ',NULL,'text',NULL,'','read','2020-02-25 20:38:29'),(25,14,15,0,'hahahahahahah',NULL,'text',NULL,'','read','2020-02-25 20:38:38'),(26,15,14,0,'bla bal',NULL,'text',NULL,'','read','2020-02-25 20:39:04'),(27,14,15,0,'bal',NULL,'text',NULL,'','read','2020-02-25 20:39:16'),(28,15,23,0,'Hello',NULL,'text',NULL,'','read','2020-02-25 20:40:30'),(29,15,23,0,'hi',NULL,'text',NULL,'','read','2020-02-25 20:40:50'),(30,23,15,0,'helllo',NULL,'text',NULL,'','read','2020-02-25 20:40:59'),(31,6,4,0,'adcasd',NULL,'text',NULL,'','read','2020-02-26 04:58:47'),(32,4,6,0,'dcdas',NULL,'text',NULL,'','read','2020-02-26 05:44:44'),(33,4,6,0,'hey',NULL,'text',NULL,'','read','2020-02-26 11:05:01'),(34,15,14,0,'heloo',NULL,'text',NULL,'','read','2020-02-27 01:39:41'),(35,14,15,0,'hi',NULL,'text',NULL,'','read','2020-02-27 01:39:58'),(36,6,14,0,'Hello Ahmad',NULL,'text',NULL,'','read','2020-02-27 04:00:22'),(37,6,4,0,'sfsdf',NULL,'text',NULL,'','read','2020-02-27 13:10:59'),(38,4,6,0,'fdf',NULL,'text',NULL,'','read','2020-02-27 13:11:15'),(39,4,6,0,'hello',NULL,'text',NULL,'','read','2020-02-27 13:12:00'),(40,6,4,0,'sdsd',NULL,'text',NULL,'','read','2020-02-27 13:46:59'),(41,15,14,0,'hello',NULL,'text',NULL,'','read','2020-02-27 22:07:30'),(42,14,15,0,'hi',NULL,'text',NULL,'','read','2020-02-27 22:07:38'),(43,14,15,0,'lldkgldkg',NULL,'text',NULL,'','read','2020-02-27 22:07:41'),(44,15,14,0,';ldfg;dlgm;dg',NULL,'text',NULL,'','read','2020-02-27 22:07:47'),(45,15,14,0,NULL,'chat/chat_1582841289AdminPanel.docx','docx',NULL,'','read','2020-02-27 22:08:09'),(46,4,6,0,'hello',NULL,'text',NULL,'','read','2020-02-28 03:36:37'),(47,4,6,0,'sdsdf',NULL,'text',NULL,'','read','2020-02-28 08:32:19'),(48,4,6,0,'hi',NULL,'text',NULL,'','read','2020-03-02 09:46:48'),(49,4,6,0,'sdcsd',NULL,'text',NULL,'','read','2020-03-02 09:46:58'),(50,4,6,0,'adas',NULL,'text',NULL,'','read','2020-03-02 09:47:01'),(51,5,6,0,'hello',NULL,'text',NULL,'','read','2020-03-02 09:47:32'),(52,4,6,0,'hello',NULL,'text',NULL,'','read','2020-03-02 09:48:34'),(53,5,6,0,'hi',NULL,'text',NULL,'','read','2020-03-02 09:48:41'),(54,4,6,0,'sdd',NULL,'text',NULL,'','read','2020-03-02 10:16:34'),(55,6,4,0,'sdasfs',NULL,'text',NULL,'','read','2020-03-02 11:17:11'),(56,4,6,0,'hello',NULL,'text',NULL,'','read','2020-03-02 11:40:09'),(57,6,4,0,'ggggg',NULL,'text',NULL,'','read','2020-03-03 06:29:44'),(58,6,5,0,'Hey',NULL,'text',NULL,'','read','2020-03-03 09:43:59'),(59,5,6,0,'yes',NULL,'text',NULL,'','read','2020-03-03 09:44:07'),(60,6,5,0,'test message',NULL,'text',NULL,'','read','2020-03-03 09:44:30'),(61,5,6,0,NULL,'chat/chat_1583228693bio_writer.png','png',NULL,'','read','2020-03-03 09:44:53'),(62,5,6,0,'hello',NULL,'text',NULL,'','read','2020-03-03 09:45:50'),(63,6,5,0,'hi',NULL,'text',NULL,'','read','2020-03-03 09:45:53'),(64,6,5,0,'he',NULL,'text',NULL,'','read','2020-03-03 09:55:07'),(65,15,14,0,'hello',NULL,'text',NULL,'','read','2020-03-03 23:09:47'),(66,14,15,0,'heloo',NULL,'text',NULL,'','read','2020-03-03 23:10:00'),(67,6,4,0,'hi',NULL,'text',NULL,'','read','2020-03-04 07:00:17'),(68,6,4,0,'asdasdsdsdfsdfsf',NULL,'text',NULL,'','read','2020-03-04 12:11:19'),(69,6,4,0,'sdfsdfsdfsfsdfs fsd',NULL,'text',NULL,'','read','2020-03-04 12:11:37'),(70,4,6,0,'hello',NULL,'text',NULL,'','read','2020-03-04 12:11:42'),(71,4,6,0,'hey',NULL,'text',NULL,'','read','2020-03-04 12:11:55'),(72,6,4,0,'efwereer',NULL,'text',NULL,'','read','2020-03-04 12:12:03'),(73,6,4,0,'hello',NULL,'text',NULL,'','read','2020-03-04 12:30:03'),(74,4,6,0,'hi',NULL,'text',NULL,'','read','2020-03-04 12:30:10'),(75,6,4,0,'hey',NULL,'text',NULL,'','read','2020-03-04 12:30:33'),(76,15,14,0,'hello',NULL,'text',NULL,'','read','2020-03-04 22:52:08'),(77,23,15,0,'hello',NULL,'text',NULL,'','read','2020-03-04 22:53:17'),(78,23,15,0,'oi',NULL,'text',NULL,'','read','2020-03-04 22:53:45'),(79,15,14,0,'hey',NULL,'text',NULL,'','read','2020-03-05 00:37:22'),(80,14,15,0,'hello',NULL,'text',NULL,'','read','2020-03-05 00:38:48'),(81,15,14,0,'hello ',NULL,'text',NULL,'','read','2020-03-05 00:38:55'),(82,15,14,0,'hello',NULL,'text',NULL,'','read','2020-03-05 00:39:07'),(83,15,14,0,'hello',NULL,'text',NULL,'','read','2020-03-05 00:39:21'),(84,15,14,0,' ',NULL,'text',NULL,'','read','2020-03-05 00:39:26'),(85,15,14,0,' eddddd',NULL,'text',NULL,'','read','2020-03-05 00:39:38'),(86,15,14,0,' dddd',NULL,'text',NULL,'','read','2020-03-05 00:40:00'),(87,15,14,0,' f',NULL,'text',NULL,'','read','2020-03-05 01:03:15'),(88,14,15,0,'test test',NULL,'text',NULL,'','read','2020-03-05 01:19:41'),(89,23,15,0,'test test ',NULL,'text',NULL,'','read','2020-03-05 01:20:01'),(90,14,15,0,'test test',NULL,'text',NULL,'','read','2020-03-05 01:21:25'),(91,14,15,0,'bla bla ',NULL,'text',NULL,'','read','2020-03-05 01:21:29'),(92,14,15,0,'etc ',NULL,'text',NULL,'','read','2020-03-05 01:22:19'),(93,15,14,0,'hello',NULL,'text',NULL,'','read','2020-03-05 04:26:29'),(94,14,15,0,'helo',NULL,'text',NULL,'','read','2020-03-05 04:26:51'),(95,14,15,0,'hello',NULL,'text',NULL,'','read','2020-03-05 04:27:07'),(96,14,15,0,'test',NULL,'text',NULL,'','read','2020-03-05 04:27:13'),(97,14,15,0,'bla',NULL,'text',NULL,'','read','2020-03-05 04:27:41'),(98,14,15,0,'bla',NULL,'text',NULL,'','read','2020-03-05 04:27:48'),(99,14,15,0,'100',NULL,'text',NULL,'','read','2020-03-05 04:27:52'),(100,23,15,0,'100',NULL,'text',NULL,'','read','2020-03-05 04:29:38'),(101,23,15,0,'200',NULL,'text',NULL,'','read','2020-03-05 04:29:49'),(102,14,15,0,'test tt',NULL,'text',NULL,'','read','2020-03-05 04:59:54'),(103,23,15,0,'bal lbla bla ',NULL,'text',NULL,'','read','2020-03-05 05:00:38'),(104,14,15,0,'hhfhdfhdf',NULL,'text',NULL,'','read','2020-03-05 05:01:21'),(105,6,4,0,'hi',NULL,'text',NULL,'','read','2020-03-05 05:26:41'),(106,5,6,0,'hello',NULL,'text',NULL,'','read','2020-03-05 05:27:18'),(107,5,6,0,'he',NULL,'text',NULL,'','read','2020-03-05 05:28:07'),(108,4,6,0,'hiiii',NULL,'text',NULL,'','read','2020-03-05 05:28:31'),(110,6,4,0,'hello',NULL,'text',NULL,'','read','2020-03-05 08:06:44'),(111,5,6,0,'hi',NULL,'text',NULL,'','read','2020-03-05 08:07:02'),(112,5,6,0,'hey',NULL,'text',NULL,'','read','2020-03-05 08:07:15'),(113,4,6,0,'hi',NULL,'text',NULL,'','read','2020-03-05 08:08:16'),(114,5,6,0,'hmmm',NULL,'text',NULL,'','read','2020-03-05 08:08:24'),(115,6,5,0,'hello',NULL,'text',NULL,'','read','2020-03-05 08:08:32'),(116,5,6,0,'y',NULL,'text',NULL,'','read','2020-03-05 08:08:43'),(117,4,6,0,'listen',NULL,'text',NULL,'','read','2020-03-05 08:08:53'),(118,5,6,0,'hi sir ',NULL,'text',NULL,'','read','2020-03-05 08:51:24'),(119,5,6,0,'what\'s going on ',NULL,'text',NULL,'','read','2020-03-05 08:51:37'),(120,5,6,0,'hmmmmmm',NULL,'text',NULL,'','read','2020-03-05 08:52:02'),(121,4,6,0,'het',NULL,'text',NULL,'','read','2020-03-05 08:52:32'),(122,4,6,0,'asdasd',NULL,'text',NULL,'','read','2020-03-05 08:52:37'),(123,6,4,0,'da',NULL,'text',NULL,'','read','2020-03-05 09:00:32'),(124,6,4,0,'ascas',NULL,'text',NULL,'','read','2020-03-05 09:00:39'),(125,6,4,0,'sdcdac',NULL,'text',NULL,'','read','2020-03-05 09:07:09'),(126,6,4,0,NULL,'chat/chat_1583399237Screenshotfrom2020-02-2012-18-01.png','png',NULL,'','read','2020-03-05 09:07:17'),(127,6,4,0,'     ',NULL,'text',NULL,'','read','2020-03-05 10:59:20'),(128,6,4,0,NULL,'chat/chat_1583406325108943815-portrait-of-arabic-man-with-kandora-in-a-studio.jpg','jpg',NULL,'','read','2020-03-05 11:05:25'),(129,4,6,0,'hy',NULL,'text',NULL,'','read','2020-03-05 11:10:14'),(130,4,6,0,'dfgdfgdf',NULL,'text',NULL,'','read','2020-03-05 11:15:06'),(131,5,6,0,'test',NULL,'text',NULL,'','read','2020-03-05 11:15:54'),(132,5,6,0,'cd',NULL,'text',NULL,'','read','2020-03-05 11:16:06'),(133,4,6,0,'ds',NULL,'text',NULL,'','read','2020-03-05 11:16:14'),(134,6,5,0,'            ',NULL,'text',NULL,'','read','2020-03-05 11:16:40'),(135,4,6,0,'hy',NULL,'text',NULL,'','read','2020-03-05 11:22:49'),(136,6,4,0,'hello',NULL,'text',NULL,'','read','2020-03-05 11:23:05'),(137,4,6,0,'hyy',NULL,'text',NULL,'','read','2020-03-05 11:24:22'),(138,6,4,0,'hyy',NULL,'text',NULL,'','read','2020-03-05 11:24:39'),(139,5,6,0,'hyyy',NULL,'text',NULL,'','read','2020-03-05 11:26:23'),(140,6,5,0,'hy',NULL,'text',NULL,'','read','2020-03-05 11:29:05'),(141,5,6,0,'   ',NULL,'text',NULL,'','read','2020-03-05 11:36:27'),(142,4,6,0,'gg',NULL,'text',NULL,'','read','2020-03-05 11:57:52'),(143,4,6,0,'   ',NULL,'text',NULL,'','read','2020-03-05 11:57:55'),(144,4,6,0,'fedgd',NULL,'text',NULL,'','read','2020-03-05 11:58:00'),(145,14,15,0,'helloo',NULL,'text',NULL,'','read','2020-03-05 14:09:03'),(146,14,15,0,'kkk',NULL,'text',NULL,'','read','2020-03-05 14:09:11'),(147,14,15,0,'test ',NULL,'text',NULL,'','read','2020-03-06 05:11:26'),(148,14,15,0,'hello ',NULL,'text',NULL,'','read','2020-03-06 05:11:33'),(149,23,15,0,'hello',NULL,'text',NULL,'','read','2020-03-06 05:14:23'),(150,14,15,0,'test ',NULL,'text',NULL,'','read','2020-03-06 05:45:09'),(151,14,15,0,'test 100',NULL,'text',NULL,'','read','2020-03-06 05:45:17'),(152,14,15,0,'bla ',NULL,'text',NULL,'','read','2020-03-06 05:45:30'),(153,23,15,0,'test ',NULL,'text',NULL,'','read','2020-03-06 05:45:54'),(154,23,15,0,'bla bla ',NULL,'text',NULL,'','read','2020-03-06 05:46:05'),(155,14,15,0,'test ',NULL,'text',NULL,'','read','2020-03-06 05:46:31'),(156,15,14,0,'test',NULL,'text',NULL,'','read','2020-03-06 05:49:12'),(157,15,14,0,'test',NULL,'text',NULL,'','read','2020-03-06 05:49:21'),(158,14,15,0,'hey',NULL,'text',NULL,'','read','2020-03-06 05:49:40'),(159,14,15,0,'tesy',NULL,'text',NULL,'','read','2020-03-06 06:33:08'),(160,14,15,0,'test',NULL,'text',NULL,'','read','2020-03-06 06:33:18'),(161,14,15,0,'bla ',NULL,'text',NULL,'','read','2020-03-06 06:34:10'),(162,14,15,0,'hahahahahahahahahaah',NULL,'text',NULL,'','read','2020-03-06 06:34:19'),(163,14,15,0,'hskjskjskjskjskjsf',NULL,'text',NULL,'','read','2020-03-06 06:34:27'),(164,4,6,0,'',NULL,'text',NULL,'','read','2020-03-06 07:40:50'),(165,4,6,0,'',NULL,'text',NULL,'','read','2020-03-06 07:40:51'),(166,4,6,0,'',NULL,'text',NULL,'','read','2020-03-06 07:40:52'),(167,4,6,0,'',NULL,'text',NULL,'','read','2020-03-06 07:40:52'),(168,4,6,0,'abc',NULL,'text',NULL,'','read','2020-03-06 07:41:31'),(169,4,6,0,'  ',NULL,'text',NULL,'','read','2020-03-06 07:41:35'),(170,14,15,0,'hello',NULL,'text',NULL,'','read','2020-03-06 20:49:24'),(171,14,15,0,'hi',NULL,'text',NULL,'','read','2020-03-06 20:49:29'),(172,14,15,0,'ljsfljsflj',NULL,'text',NULL,'','read','2020-03-06 20:49:36'),(173,14,15,0,'sdfsdfsf',NULL,'text',NULL,'','read','2020-03-06 20:49:45'),(174,15,14,0,'fsdfsfsfs',NULL,'text',NULL,'','read','2020-03-06 20:49:50'),(175,14,15,0,'lljsdflsfljsdlfjsf',NULL,'text',NULL,'','read','2020-03-06 20:50:12'),(176,14,15,0,'hi',NULL,'text',NULL,'','read','2020-03-06 20:50:26'),(177,14,15,0,'test',NULL,'text',NULL,'','read','2020-03-07 15:53:10'),(178,23,15,0,'test',NULL,'text',NULL,'','read','2020-03-07 15:53:32'),(179,15,23,0,'test',NULL,'text',NULL,'','read','2020-03-07 15:53:49'),(180,14,15,0,'oi',NULL,'text',NULL,'','read','2020-03-07 15:54:13'),(181,14,15,0,'oi',NULL,'text',NULL,'','read','2020-03-07 15:54:23'),(182,15,14,0,'test',NULL,'text',NULL,'','read','2020-03-07 15:54:37'),(183,14,15,0,'test',NULL,'text',NULL,'','read','2020-03-07 15:54:47'),(184,4,6,0,'hello',NULL,'text',NULL,'','read','2020-03-13 09:08:53'),(185,6,4,0,'Your OTP is 0808',NULL,'text',NULL,'','read','2020-03-13 09:09:10'),(186,5,6,0,'heyyyy',NULL,'text',NULL,'','read','2020-03-13 09:09:22'),(187,6,5,0,'Your OTP is 0808',NULL,'text',NULL,'','read','2020-03-13 09:09:29'),(188,4,6,0,'sfsdfd',NULL,'text',NULL,'','read','2020-03-13 09:09:30'),(189,15,14,0,'hello',NULL,'text',NULL,'','read','2020-03-22 13:06:36'),(190,14,15,0,'hi',NULL,'text',NULL,'','read','2020-03-22 13:06:42'),(191,15,14,0,'bla bla',NULL,'text',NULL,'','read','2020-03-25 02:36:28'),(192,6,8,0,'ixcxsc',NULL,'text',NULL,'','read','2020-03-26 10:05:25'),(193,15,14,0,'oi',NULL,'text',NULL,'','read','2020-03-26 16:26:48'),(194,15,16,0,'hello',NULL,'text',NULL,'','read','2020-03-26 16:41:08'),(195,16,15,0,'hello',NULL,'text',NULL,'','read','2020-03-26 16:43:38'),(196,15,16,0,'ok',NULL,'text',NULL,'','read','2020-03-26 16:45:02'),(197,16,15,0,'whats',NULL,'text',NULL,'','read','2020-03-26 16:45:12'),(198,6,16,0,'test',NULL,'text',NULL,'','read','2020-03-27 06:11:00'),(199,8,6,0,'dfsdcs',NULL,'text',NULL,'','read','2020-03-27 08:36:02'),(200,8,6,0,'ssf',NULL,'text',NULL,'','read','2020-03-27 08:36:38'),(201,8,6,0,'sfsd',NULL,'text',NULL,'','read','2020-03-27 08:38:54'),(202,6,8,0,'sdfsdf',NULL,'text',NULL,'','read','2020-03-27 08:38:59'),(203,8,6,0,'hi',NULL,'text',NULL,'','read','2020-03-27 08:41:13'),(204,8,6,0,'hello',NULL,'text',NULL,'','read','2020-03-27 08:41:21'),(205,4,6,0,'sdfdg',NULL,'text',NULL,'','read','2020-03-27 14:25:51'),(206,6,4,0,'fsserwerwerr',NULL,'text',NULL,'','read','2020-03-27 14:25:58'),(207,6,4,0,'dfd',NULL,'text',NULL,'','read','2020-03-27 14:26:07'),(208,15,16,0,'hello',NULL,'text',NULL,'','read','2020-03-29 16:22:53'),(209,16,15,0,'hello',NULL,'text',NULL,'','read','2020-03-29 16:23:05'),(210,16,15,0,'hi',NULL,'text',NULL,'','read','2020-03-29 16:23:22'),(211,6,4,0,'wesef',NULL,'text',NULL,'','read','2020-04-10 10:07:08'),(212,6,4,0,'dfvdfd',NULL,'text',NULL,'','read','2020-04-10 10:11:11'),(213,4,6,0,'dd',NULL,'text',NULL,'','read','2020-04-10 10:11:20'),(214,6,4,0,'tt',NULL,'text',NULL,'','read','2020-04-10 10:11:25'),(215,4,6,0,'cc',NULL,'text',NULL,'','read','2020-04-10 10:11:33'),(216,6,4,0,'tttttttttt',NULL,'text',NULL,'','read','2020-04-10 10:17:41'),(217,4,6,0,'ccccccc',NULL,'text',NULL,'','read','2020-04-10 10:17:46'),(218,6,7,0,'Hello',NULL,'text',NULL,'','read','2020-04-15 13:34:59'),(219,7,6,0,'Hi',NULL,'text',NULL,'','read','2020-04-15 13:35:11'),(220,6,4,0,'hi',NULL,'text',NULL,'','read','2020-04-18 07:05:08'),(221,4,6,0,'hjhk',NULL,'text',NULL,'','read','2020-04-18 07:05:16'),(225,1,5,0,'dpk',NULL,'text',NULL,'','unread','2020-04-20 06:01:47'),(226,1,5,0,'saxdAD',NULL,'text',NULL,'','unread','2020-04-20 06:02:21'),(227,1,5,0,'hello',NULL,'text',NULL,'','unread','2020-04-20 06:02:48'),(228,1,5,0,'hello',NULL,'text',NULL,'','unread','2020-04-20 06:05:04'),(229,1,5,0,'',NULL,'media',NULL,'','unread','2020-04-20 06:05:11'),(230,1,5,0,'hello',NULL,'text',NULL,'','unread','2020-04-20 06:07:48'),(231,1,5,0,'adcasca',NULL,'text',NULL,'','unread','2020-04-20 06:09:28'),(232,1,5,0,'hello',NULL,'text',NULL,'','unread','2020-04-20 06:11:51'),(233,1,5,0,'adca',NULL,'text',NULL,'','unread','2020-04-20 06:11:58'),(234,5,1,0,'hest',NULL,'text',NULL,'','read','2020-04-20 06:16:04'),(235,5,1,0,'hest',NULL,'text',NULL,'','read','2020-04-20 06:16:16'),(236,5,1,0,'hest',NULL,'text',NULL,'','read','2020-04-20 06:16:20'),(237,5,1,0,'hest',NULL,'text',NULL,'','read','2020-04-20 06:16:36'),(238,5,1,0,'hest',NULL,'text',NULL,'','read','2020-04-20 06:16:40'),(239,5,1,0,'deepak',NULL,'text',NULL,'','read','2020-04-20 06:16:56'),(240,1,5,0,'adcasd',NULL,'text',NULL,'','unread','2020-04-20 06:44:18'),(241,1,5,0,'hello',NULL,'text',NULL,'','unread','2020-04-20 06:44:29'),(242,1,5,0,'hello',NULL,'text',NULL,'','unread','2020-04-20 06:44:50'),(243,1,5,0,'hello',NULL,'text',NULL,'','unread','2020-04-20 06:45:16'),(244,1,5,0,'adcasdx',NULL,'text',NULL,'','unread','2020-04-20 06:45:30'),(245,1,5,0,'hello',NULL,'text',NULL,'','unread','2020-04-20 06:54:21'),(246,1,5,0,'hello',NULL,'text',NULL,'','unread','2020-04-20 06:56:08'),(247,1,5,0,'hiii',NULL,'text',NULL,'','unread','2020-04-20 06:56:22'),(248,1,5,0,'hiii',NULL,'text',NULL,'','unread','2020-04-20 06:56:58'),(249,1,5,0,'sdcasd',NULL,'text',NULL,'','unread','2020-04-20 06:57:47'),(250,1,5,0,'acasd',NULL,'text',NULL,'','unread','2020-04-20 06:58:10'),(251,1,5,0,'hello',NULL,'text',NULL,'','unread','2020-04-20 06:58:32'),(252,1,5,0,'hello',NULL,'text',NULL,'','unread','2020-04-20 07:02:07'),(253,1,5,0,'dfcsdcas',NULL,'text',NULL,'','unread','2020-04-20 07:02:33'),(254,1,5,0,'dcasdc',NULL,'text',NULL,'','unread','2020-04-20 07:03:34'),(255,1,5,0,'again',NULL,'text',NULL,'','unread','2020-04-20 07:04:03'),(256,1,5,0,'adxasdxa',NULL,'text',NULL,'','unread','2020-04-20 07:05:49'),(257,1,5,0,'adcas',NULL,'text',NULL,'admin','unread','2020-04-20 07:09:56'),(258,5,1,0,'deepak',NULL,'text',NULL,'user','read','2020-04-20 07:10:32'),(259,5,1,0,'deepadfdfk',NULL,'text',NULL,'user','read','2020-04-20 07:10:37'),(260,5,1,0,'Test fkdsj',NULL,'text',NULL,'user','read','2020-04-20 07:10:45'),(261,5,1,0,'Test fkdsj',NULL,'text',NULL,'user','read','2020-04-20 07:11:35'),(262,1,5,0,'deepak',NULL,'text',NULL,'admin','unread','2020-04-20 07:11:45'),(263,5,1,0,'Test fkdsj',NULL,'text',NULL,'user','read','2020-04-20 07:11:55'),(264,1,5,0,'saxsx',NULL,'text',NULL,'admin','unread','2020-04-20 07:12:00'),(265,5,1,0,'Test',NULL,'text',NULL,'user','read','2020-04-20 07:12:04'),(266,1,5,0,'deepak',NULL,'text',NULL,'admin','unread','2020-04-20 07:18:29'),(267,1,5,0,'wfcas',NULL,'text',NULL,'admin','unread','2020-04-20 07:19:36'),(268,5,1,0,'Test',NULL,'text',NULL,'user','read','2020-04-20 07:22:44'),(269,1,5,0,'hello',NULL,'text',NULL,'admin','unread','2020-04-20 07:23:18'),(270,5,1,0,'Test',NULL,'text',NULL,'user','read','2020-04-20 07:33:14'),(271,5,1,0,'Test',NULL,'text',NULL,'user','read','2020-04-20 07:33:14'),(272,5,1,0,'Test',NULL,'text',NULL,'user','read','2020-04-20 07:33:26'),(273,1,5,0,'hello',NULL,'text',NULL,'admin','unread','2020-04-20 07:33:38'),(274,1,5,0,'',NULL,'text',NULL,'admin','unread','2020-04-20 07:33:45'),(275,1,5,0,'hello',NULL,'text',NULL,'admin','unread','2020-04-20 07:34:17'),(276,1,5,0,'sdcsdcs',NULL,'text',NULL,'admin','unread','2020-04-20 07:35:24'),(277,5,1,0,'Test',NULL,'text',NULL,'user','read','2020-04-20 09:15:10'),(278,5,1,0,'Test',NULL,'text',NULL,'user','read','2020-04-20 09:15:10'),(279,5,1,0,'Test',NULL,'text',NULL,'user','read','2020-04-20 09:20:27'),(280,5,1,0,'Test',NULL,'text',NULL,'user','read','2020-04-20 09:38:59'),(281,5,1,0,'Test',NULL,'text',NULL,'user','read','2020-04-20 09:38:59'),(282,5,1,0,'Test',NULL,'text',NULL,'user','read','2020-04-20 09:39:48'),(283,5,1,0,'Test',NULL,'text',NULL,'user','read','2020-04-20 09:40:28'),(284,5,1,0,'Test',NULL,'text',NULL,'user','read','2020-04-20 09:40:28'),(285,5,1,0,'Test',NULL,'text',NULL,'user','read','2020-04-20 09:53:03'),(286,5,1,0,'Test',NULL,'text',NULL,'user','read','2020-04-20 09:53:47'),(287,1,5,0,'deepak',NULL,'text',NULL,'admin','unread','2020-04-20 09:59:13'),(289,5,1,0,'Arohi this side',NULL,'text',NULL,'user','read','2020-04-21 10:20:08'),(291,1,57,0,'hello vishal',NULL,'text',NULL,'admin','read','2020-04-21 10:33:38'),(292,1,65,0,'hello deepak',NULL,'text',NULL,'admin','unread','2020-04-21 10:34:13'),(293,57,1,0,'Arohi this side',NULL,'text',NULL,'user','read','2020-04-21 10:35:47'),(294,57,1,0,'Hello Admin vishal this side',NULL,'text',NULL,'user','read','2020-04-21 10:36:07'),(295,1,57,0,'ok vishal',NULL,'text',NULL,'admin','read','2020-04-21 10:36:17'),(296,1,57,0,'hello',NULL,'text',NULL,'admin','read','2020-04-21 13:51:58'),(297,1,57,0,'Hello Vishal',NULL,'text',NULL,'admin','read','2020-04-22 03:38:02'),(298,1,57,0,'hello vishal again',NULL,'text',NULL,'admin','read','2020-04-22 03:38:53'),(299,1,57,0,'hello',NULL,'text',NULL,'admin','read','2020-04-22 03:46:31'),(300,1,57,0,'Hello again',NULL,'text',NULL,'admin','read','2020-04-22 03:58:05'),(301,1,57,0,'hello vishal',NULL,'text',NULL,'admin','read','2020-04-22 03:59:29'),(302,1,57,0,'hiiii',NULL,'text',NULL,'admin','read','2020-04-22 04:00:26'),(303,1,57,0,'huiiiii',NULL,'text',NULL,'admin','read','2020-04-22 04:01:32'),(304,1,57,0,'vishu sarkar',NULL,'text',NULL,'admin','read','2020-04-22 04:45:02'),(305,57,1,0,'however',NULL,'text',NULL,'user','read','2020-04-22 11:43:04'),(306,57,1,0,'young people',NULL,'text',NULL,'user','read','2020-04-22 11:43:46'),(307,1,57,0,'hello vishal again',NULL,'text',NULL,'admin','unread','2020-04-22 11:44:01'),(308,57,1,0,'again test',NULL,'text',NULL,'user','read','2020-04-22 12:04:43'),(309,57,1,0,'hello admin',NULL,'text',NULL,'user','read','2020-04-22 12:16:43'),(310,57,1,0,'hi',NULL,'text',NULL,'user','read','2020-04-22 12:31:05'),(311,1,57,0,'hello vishal',NULL,'text',NULL,'admin','unread','2020-04-22 12:38:26'),(312,1,57,0,NULL,'http://3.6.123.73/image/chat/0','media','image','admin','unread','2020-04-22 12:38:45'),(313,1,57,0,NULL,'http://3.6.123.73/image/chat/283419303-level_5_.png','media','image','admin','unread','2020-04-22 12:41:57'),(314,1,57,0,NULL,'http://3.6.123.73/image/chat/254094224-noiseProfile.wav','media','audio','admin','unread','2020-04-22 12:43:14'),(315,1,57,0,NULL,'http://3.6.123.73/image/chat/443990541-bluedart_invoice_CUTE10001_(2).pdf','media','document','admin','unread','2020-04-22 12:44:24'),(316,1,57,0,NULL,'http://3.6.123.73/image/chat/55939485-SampleVideo_1280x720_1mb.mp4','media','video','admin','unread','2020-04-22 12:46:20'),(317,1,57,0,NULL,'http://3.6.123.73/image/chat/580362715-noiseProfile.wav','media','audio','admin','unread','2020-04-22 12:48:55'),(318,1,65,0,NULL,'http://3.6.123.73/image/chat/176004600-level_1.png','media','image','admin','unread','2020-04-22 12:52:34'),(319,1,65,0,NULL,'http://3.6.123.73/image/chat/438312512-SampleVideo_1280x720_1mb.mp4','media','video','admin','unread','2020-04-22 12:54:35'),(320,1,65,0,NULL,'http://3.6.123.73/image/chat/922674422-SampleVideo_1280x720_1mb.mp4','media','video','admin','unread','2020-04-22 12:55:17'),(334,1,65,0,'hello',NULL,'text',NULL,'admin','unread','2020-04-22 13:27:22'),(335,1,51,0,'hello sandeep',NULL,'text',NULL,'admin','unread','2020-04-22 13:28:24'),(336,51,1,0,NULL,'https://frms-s3.s3-ap-south-.amazonaws.com/1587557064158.wav','media','audio','user','read','2020-04-22 13:32:03'),(337,51,1,0,NULL,'https://frms-s3.s3-ap-south-.amazonaws.com/1587557064158.wav','media','audio','user','read','2020-04-22 13:32:36'),(338,57,1,0,'hnji set ji',NULL,'text','','user','read','2020-04-22 13:34:19'),(339,57,1,0,'lo kr diya',NULL,'text','','user','read','2020-04-22 13:34:50'),(340,57,1,0,'free kr diya',NULL,'text','','user','read','2020-04-22 13:36:11'),(341,57,1,0,'ek baar phir',NULL,'text','','user','read','2020-04-22 13:36:41'),(342,1,57,0,'send it',NULL,'text',NULL,'admin','unread','2020-04-22 13:39:58'),(343,51,1,0,NULL,'https://frms-s3.s3-ap-south-.amazonaws.com/1587557064158.wav','media','audio','user','read','2020-04-22 13:42:26'),(344,51,1,0,NULL,'https://frms-s3.s3-ap-south-.amazonaws.com/1587557064158.wav','media','audio','user','read','2020-04-22 13:43:01'),(345,57,1,0,'what',NULL,'text','','user','read','2020-04-23 04:09:08'),(346,1,57,0,'hello',NULL,'text',NULL,'admin','unread','2020-04-23 04:45:21'),(347,57,1,0,'freedom',NULL,'text','','user','read','2020-04-23 07:33:00'),(348,57,1,0,'testing',NULL,'text','','user','read','2020-04-23 07:33:18'),(349,57,1,0,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587627199447.jpg','media','image','user','read','2020-04-23 07:33:19'),(350,57,1,0,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587627209017.mp3','media','audio','user','read','2020-04-23 07:33:29'),(351,57,1,0,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587627213760.pdf','media','document','user','read','2020-04-23 07:33:34'),(352,57,1,0,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587627256065.mp4','media','video','user','read','2020-04-23 07:34:16'),(353,67,1,0,'hello',NULL,'text','','user','read','2020-04-23 08:24:10'),(354,57,1,0,'hello admin',NULL,'text','','user','read','2020-04-23 09:46:21'),(355,57,1,0,'he',NULL,'text','','user','read','2020-04-23 13:06:39'),(356,57,1,22,'task details',NULL,'text','','user','read','2020-04-23 13:07:06'),(357,57,1,22,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587647242852.png','media','image','user','read','2020-04-23 13:07:23'),(358,1,51,0,'Hi Sandeep',NULL,'text',NULL,'admin','unread','2020-04-23 15:43:47'),(359,1,51,0,NULL,'http://3.6.123.73/image/chat/811441888-level_1.png','media','image','admin','unread','2020-04-23 15:44:00'),(360,1,51,0,'hello',NULL,'text',NULL,'admin','unread','2020-04-23 15:46:10'),(361,44,1,0,'.',NULL,'text','','user','read','2020-04-23 15:53:20'),(362,44,1,0,'ffft',NULL,'text','','user','read','2020-04-23 15:53:22'),(363,44,1,0,'ggg',NULL,'text','','user','read','2020-04-23 15:53:24'),(364,1,51,0,'Hello',NULL,'text',NULL,'admin','unread','2020-04-24 03:41:33'),(365,1,51,0,'hey',NULL,'text',NULL,'admin','unread','2020-04-24 03:41:42'),(366,1,51,0,NULL,'http://3.6.123.73/image/chat/861667174-level_1.png','media','image','admin','unread','2020-04-24 04:27:01'),(367,1,5,0,'hello',NULL,'text',NULL,'admin','unread','2020-04-24 04:58:23'),(368,1,5,0,'hi',NULL,'text',NULL,'admin','unread','2020-04-24 04:58:50'),(369,1,5,0,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',NULL,'text',NULL,'admin','unread','2020-04-24 05:00:39'),(370,1,5,0,NULL,'http://3.6.123.73/image/chat/930039657-index1.jpg','media','image','admin','unread','2020-04-24 05:01:56'),(371,1,5,0,'xfvdz',NULL,'text',NULL,'admin','unread','2020-04-24 05:02:05'),(372,1,5,0,NULL,'http://3.6.123.73/image/chat/9443079-level_2.png','media','image','admin','unread','2020-04-24 05:02:13'),(373,1,44,0,'hello j',NULL,'text',NULL,'admin','unread','2020-04-24 05:03:14'),(374,1,51,0,'Hello',NULL,'text',NULL,'admin','unread','2020-04-24 05:27:24'),(375,1,44,0,NULL,'http://3.6.123.73/image/chat/735588952-Canva_2.jpg','media','image','admin','unread','2020-04-24 05:27:54'),(376,44,1,0,'hyyyy',NULL,'text','','user','read','2020-04-24 05:32:03'),(377,1,44,0,'dcas',NULL,'text',NULL,'admin','unread','2020-04-24 05:43:28'),(378,1,44,0,'hyyy',NULL,'text',NULL,'admin','unread','2020-04-24 05:44:50'),(379,1,44,0,'hello',NULL,'text',NULL,'admin','unread','2020-04-24 05:45:13'),(380,1,44,0,'                                                  ',NULL,'text',NULL,'admin','unread','2020-04-24 05:45:27'),(381,1,44,0,NULL,'http://3.6.123.73/image/chat/52783939-download.jpg','media','image','admin','unread','2020-04-24 05:46:05'),(382,1,51,0,'hy',NULL,'text',NULL,'admin','unread','2020-04-24 05:46:31'),(383,57,1,2,'Test',NULL,'text',NULL,'user','read','2020-04-24 05:50:27'),(384,5,1,2,'Test',NULL,'text',NULL,'user','read','2020-04-24 11:30:43'),(385,1,57,0,'hello',NULL,'text',NULL,'admin','unread','2020-04-24 12:52:00'),(386,57,1,0,'hello',NULL,'text','','user','read','2020-04-24 13:09:41'),(387,1,57,0,'hii',NULL,'text',NULL,'admin','unread','2020-04-24 13:10:11'),(388,1,57,0,'again hi',NULL,'text',NULL,'admin','unread','2020-04-24 13:10:34'),(389,57,1,0,'good evening',NULL,'text','','user','read','2020-04-25 13:36:55'),(390,57,1,0,'mam',NULL,'text','','user','read','2020-04-25 13:46:29'),(391,57,1,0,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587822978467.mp3','media','audio','user','read','2020-04-25 14:13:04'),(392,42,1,0,'hi',NULL,'text','','user','read','2020-04-25 17:01:26'),(393,42,1,0,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587834106874.png','media','image','user','read','2020-04-25 17:01:47'),(394,42,1,0,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587958257555.png','media','image','user','read','2020-04-27 03:31:19'),(395,42,1,0,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587958318445.png','media','image','user','read','2020-04-27 03:31:58'),(396,57,1,0,'helli',NULL,'text','','user','read','2020-04-27 04:50:51'),(397,56,1,0,'test',NULL,'text','','user','read','2020-04-27 13:01:44'),(398,50,1,0,'hi',NULL,'text','','user','read','2020-04-27 13:01:49'),(399,1,50,0,'Hello',NULL,'text',NULL,'admin','unread','2020-04-27 13:04:25'),(400,1,50,0,'What is the issue?',NULL,'text',NULL,'admin','unread','2020-04-27 13:04:34'),(401,27,1,0,'hi admin',NULL,'text','','user','read','2020-04-28 06:55:04'),(402,1,57,0,'hello',NULL,'text',NULL,'admin','unread','2020-04-29 10:02:56'),(403,1,57,0,NULL,'http://3.6.123.73/image/chat/653546166-noiseProfile.wav','media','audio','admin','unread','2020-04-29 10:03:05'),(404,42,1,0,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588232886458.png','media','image','user','read','2020-04-30 07:48:06'),(405,68,1,0,'test',NULL,'text','','user','read','2020-04-30 07:48:57'),(406,42,1,0,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588232949373.png','media','document','user','read','2020-04-30 07:49:09'),(407,68,1,0,'hey',NULL,'text','','user','read','2020-04-30 08:04:56'),(408,68,1,0,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588233912754.png','media','image','user','read','2020-04-30 08:05:13'),(409,69,1,0,'hyyyy',NULL,'text','','user','read','2020-04-30 08:23:21'),(410,57,1,0,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588311203892.png','media','image','user','read','2020-05-01 05:33:24'),(411,57,1,0,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588312549373.png','media','image','user','read','2020-05-01 05:55:51'),(412,57,1,0,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588312558817.mp3','media','audio','user','read','2020-05-01 05:55:58'),(413,57,1,0,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588312563017.pdf','media','document','user','read','2020-05-01 05:56:03'),(414,57,1,0,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588312592636.mp4','media','video','user','read','2020-05-01 05:56:33'),(415,57,1,0,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588312823116.png','media','image','user','read','2020-05-01 06:00:23'),(416,57,1,0,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588312847015.mp3','media','audio','user','read','2020-05-01 06:00:47'),(417,57,1,0,'hello',NULL,'text','','user','read','2020-05-01 07:02:17'),(418,57,1,0,'hi',NULL,'text','','user','read','2020-05-01 07:05:22'),(419,57,1,0,'hi',NULL,'text','','user','read','2020-05-01 07:09:09'),(420,1,68,0,'hi',NULL,'text',NULL,'admin','unread','2020-05-04 10:47:45'),(421,1,69,0,'hello',NULL,'text',NULL,'admin','unread','2020-05-04 11:16:32'),(422,1,44,0,'hey',NULL,'text',NULL,'admin','unread','2020-05-04 11:19:52'),(423,50,1,0,'hi',NULL,'text','','user','read','2020-05-05 05:07:22'),(424,55,1,0,'hi',NULL,'text','','user','read','2020-05-05 10:22:06'),(425,55,1,0,'fg',NULL,'text','','user','read','2020-05-05 10:22:08'),(426,55,1,0,'fj',NULL,'text','','user','read','2020-05-05 10:22:09'),(427,1,55,0,'sdfsdf',NULL,'text',NULL,'admin','unread','2020-05-05 10:22:27'),(428,1,55,0,'jhjkh',NULL,'text',NULL,'admin','unread','2020-05-05 10:22:34'),(429,70,1,0,NULL,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588841015396.png','media','image','user','read','2020-05-07 08:43:36'),(430,70,1,0,'hi',NULL,'text','','user','read','2020-05-07 08:44:22'),(431,70,1,0,'how are you',NULL,'text','','user','read','2020-05-07 08:44:28'),(432,1,70,0,'I am Great thank you ',NULL,'text',NULL,'admin','unread','2020-05-07 08:45:10'),(433,1,70,0,'For asking ',NULL,'text',NULL,'admin','unread','2020-05-07 08:45:29');
/*!40000 ALTER TABLE `chat_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_task`
--

DROP TABLE IF EXISTS `chat_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_task` (
  `chat_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(1) unsigned NOT NULL,
  `receiver` int(1) unsigned NOT NULL,
  `task_id` int(11) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  `media` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `media_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `read_status` enum('read','unread') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unread',
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Chat Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_task`
--

LOCK TABLES `chat_task` WRITE;
/*!40000 ALTER TABLE `chat_task` DISABLE KEYS */;
INSERT INTO `chat_task` VALUES (1,57,1,1,'Test hello',NULL,'text',NULL,'user','read','2020-04-24 12:48:44'),(2,57,1,1,'Test hello',NULL,'text',NULL,'user','read','2020-04-24 12:50:07'),(3,57,1,1,'Test hdscello',NULL,'text',NULL,'user','read','2020-04-24 13:18:43'),(4,57,1,1,'Test hdscello',NULL,'text',NULL,'user','read','2020-04-24 13:22:01'),(5,57,1,1,'Test hdscello',NULL,'text',NULL,'user','read','2020-04-24 13:25:22'),(6,57,1,1,'Test hdscello',NULL,'text',NULL,'user','read','2020-04-24 13:25:59'),(7,57,1,1,'Test hdscello',NULL,'text',NULL,'user','read','2020-04-24 13:26:22'),(8,57,1,1,'Test hdscello',NULL,'text',NULL,'user','read','2020-04-24 13:26:44'),(9,57,1,1,'Test hdscello',NULL,'text',NULL,'user','read','2020-04-24 13:27:02'),(10,57,1,1,'Test hdscello',NULL,'text',NULL,'user','read','2020-04-24 13:27:13'),(11,1,57,1,'dcas',NULL,'text',NULL,'admin','read','2020-04-24 13:27:31'),(12,57,1,2,'Test hello',NULL,'text',NULL,'user','read','2020-04-24 12:50:07'),(13,1,57,2,'ascasc',NULL,'text',NULL,'admin','unread','2020-04-29 10:03:33');
/*!40000 ALTER TABLE `chat_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `whatsapp_number` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'arohi jain','07827822889','arohi37@gmail.com','07827822889','PHP','developer','845287291-512.png','2020-04-14 10:01:18','0000-00-00 00:00:00'),(2,'deep yahoo','09467168209','deep@yahoo.com','07827822889','java','tester','684231277-index1.jpg','2020-04-14 10:01:47','0000-00-00 00:00:00'),(3,'Sandeep','9876543210','sandeep@gmail.com','9876543210','IT','QA',NULL,'2020-04-24 07:51:09','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_view`
--

DROP TABLE IF EXISTS `contact_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kccount` int(11) DEFAULT '0',
  `kctime` datetime DEFAULT '0000-00-00 00:00:00',
  `frm_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_view`
--

LOCK TABLES `contact_view` WRITE;
/*!40000 ALTER TABLE `contact_view` DISABLE KEYS */;
INSERT INTO `contact_view` VALUES (1,0,'2020-05-08 06:04:42',57),(2,2,'2020-05-09 08:44:26',55);
/*!40000 ALTER TABLE `contact_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` enum('1','0') NOT NULL COMMENT '1=active,0=inactive',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'IT','1','2020-04-09 09:42:30','2020-04-09 10:36:42'),(2,'Sales','1','2020-04-09 09:44:46','2020-04-09 10:36:46'),(3,'Marketing','1','2020-04-09 09:45:11','2020-04-10 05:45:53'),(4,'test','0','2020-04-09 05:23:07','2020-04-24 08:04:24');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES (1,'739125780-index1.jpg','laptop','1','2020-04-01 10:45:56','2020-04-03 08:25:45'),(2,'409717166-download.jpg','Iphone5','1','2020-04-01 10:46:06','2020-04-06 05:57:02'),(3,'879781762-2.jpg','Samsung A20','1','2020-04-03 11:26:42','2020-04-24 08:16:16'),(4,NULL,'t','1','2020-04-25 13:07:30','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document` varchar(100) DEFAULT NULL,
  `document_type` varchar(100) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES (1,'844741568-512.png','image','1','2020-04-14 12:59:51','2020-04-14 13:00:44'),(2,'175617081-SampleVideo_1280x720_1mb.mp4','video','1','2020-04-14 13:02:40','0000-00-00 00:00:00'),(3,NULL,'','','2020-04-24 07:52:56','0000-00-00 00:00:00'),(4,NULL,'','','2020-04-25 04:40:19','0000-00-00 00:00:00'),(5,'127122892-level_3.png','image','1','2020-04-25 04:43:42','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etraining`
--

DROP TABLE IF EXISTS `etraining`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etraining` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category` enum('audio','video','image','document') NOT NULL,
  `frm_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0' COMMENT '1=active,0=inactive',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etraining`
--

LOCK TABLES `etraining` WRITE;
/*!40000 ALTER TABLE `etraining` DISABLE KEYS */;
INSERT INTO `etraining` VALUES (1,NULL,'image',59,'426605225-512.png','1','2020-03-11 12:04:50','2020-04-03 08:42:46'),(2,NULL,'audio',54,'426605225-512.mp3','0','2020-03-11 12:04:50','2020-04-03 14:00:01'),(3,NULL,'video',40,'199520149-SampleVideo_1280x720_1mb.mp4','1','2020-03-11 08:50:31','0000-00-00 00:00:00'),(4,NULL,'image',43,'21148312-level_1.png','1','2020-03-11 09:43:09','0000-00-00 00:00:00'),(5,'Visit door to door','image',57,'426605225-512.png','1','2020-03-11 09:43:09','2020-04-03 14:11:02'),(6,NULL,'video',57,'939397655-SampleVideo_1280x720_1mb.mp4','1','2020-03-11 08:50:31','0000-00-00 00:00:00'),(7,'test training','audio',57,'5c541e8eeb95d.mp3','1','2020-03-11 08:50:31','2020-04-03 14:10:40'),(8,NULL,'document',57,'bluedart_invoice_CUTE10001.pdf','1','2020-03-11 08:50:31','0000-00-00 00:00:00'),(9,NULL,'video',57,'939397655-SampleVideo_1280x720_1mb.mp4','1','2020-03-11 08:50:31','0000-00-00 00:00:00'),(10,NULL,'audio',57,'5c541e8eeb95d.mp3','1','2020-03-11 08:50:31','0000-00-00 00:00:00'),(11,NULL,'document',57,'bluedart_invoice_CUTE10001.pdf','1','2020-03-11 08:50:31','0000-00-00 00:00:00'),(12,NULL,'image',57,'426605225-512.png','1','2020-03-11 09:43:09','2020-03-30 05:50:09'),(13,NULL,'video',57,'939397655-SampleVideo_1280x720_1mb.mp4','1','2020-03-11 08:50:31','0000-00-00 00:00:00'),(14,NULL,'audio',57,'5c541e8eeb95d.mp3','1','2020-03-11 08:50:31','0000-00-00 00:00:00'),(15,NULL,'document',57,'bluedart_invoice_CUTE10001.pdf','1','2020-03-11 08:50:31','0000-00-00 00:00:00'),(16,NULL,'video',57,'939397655-SampleVideo_1280x720_1mb.mp4','1','2020-03-11 08:50:31','0000-00-00 00:00:00'),(17,NULL,'audio',57,'5c541e8eeb95d.mp3','1','2020-03-11 08:50:31','0000-00-00 00:00:00'),(18,NULL,'document',57,'bluedart_invoice_CUTE10001.pdf','1','2020-03-11 08:50:31','0000-00-00 00:00:00'),(19,NULL,'image',42,'116485338-mochup.jpg','1','2020-04-03 07:07:38','2020-04-03 07:19:58'),(20,NULL,'document',42,'453345310-2.jpg','1','2020-04-03 07:13:53','2020-04-03 07:20:53'),(21,NULL,'document',42,'800018531-USER_MANUAL.docx','1','2020-04-03 07:27:24','0000-00-00 00:00:00'),(22,'Audio File','audio',63,'626962081-file_example_WAV_1MG.wav','1','2020-04-03 12:04:31','2020-04-04 07:10:00'),(23,NULL,'video',62,'277829520-Short_video_clip-nature.mp4-SD.mp4','1','2020-04-03 12:08:37','0000-00-00 00:00:00'),(24,'test','video',63,'655456877-Short_video_clip-nature.mp4-SD.mp4','1','2020-04-03 12:10:19','2020-04-04 06:58:05'),(25,'PDF view','document',63,'641094240-jmeter_tutorial.pdf','1','2020-04-03 12:19:21','2020-04-04 07:01:19'),(26,'Testing','image',27,'758095969-tesla.jpg','1','2020-04-04 14:08:55','0000-00-00 00:00:00'),(27,'test audio','audio',63,'199255751-BatalhaFunkRecording1.wav','1','2020-04-09 06:14:02','0000-00-00 00:00:00'),(28,'test image','image',63,'105212240-level_2.png','1','2020-04-09 06:15:05','0000-00-00 00:00:00'),(29,'test audio','audio',35,'730803011-BatalhaFunkRecording1.wav','1','2020-04-09 06:28:34','0000-00-00 00:00:00'),(30,'test image','image',35,'955555243-level_2.png','1','2020-04-09 06:29:17','0000-00-00 00:00:00'),(31,'test pdf','document',40,'365129317-CUTE10266_invoice.pdf','1','2020-04-09 08:02:29','0000-00-00 00:00:00'),(32,'test video','video',40,'702931150-SampleVideo_1280x720_1mb.mp4','1','2020-04-09 08:03:09','0000-00-00 00:00:00'),(33,'test video','video',35,'702931150-SampleVideo_1280x720_1mb.mp4','1','2020-04-09 08:03:09','0000-00-00 00:00:00'),(34,'test pdf','document',66,'365129317-CUTE10266_invoice.pdf','1','2020-04-09 08:02:29','2020-04-10 05:24:37'),(35,'audio','audio',65,'400912735-BatalhaFunkRecording1.wav','1','2020-04-10 04:57:02','0000-00-00 00:00:00'),(36,'Audio','audio',66,'666769506-file_example_WAV_1MG.wav','1','2020-04-10 04:57:15','0000-00-00 00:00:00'),(37,'Video','video',66,'47369038-Short_video_clip-nature.mp4-SD.mp4','1','2020-04-10 05:00:47','0000-00-00 00:00:00'),(38,'Image','image',66,'841322876-220px-Egyptian_food_Koshary.jpg','1','2020-04-10 05:04:36','2020-04-10 05:04:58'),(39,'test','audio',59,'562928233-noiseProfile.wav','1','2020-04-10 05:20:15','0000-00-00 00:00:00'),(40,'testing12','image',57,'477512223-fitness-3.jpg','1','2020-04-16 11:38:51','2020-04-16 11:39:23'),(41,'test noti','image',57,'815357789-512.png','1','2020-04-18 09:12:20','0000-00-00 00:00:00'),(42,'test notification','image',57,'405189923-index1.jpg','1','2020-04-18 09:16:31','0000-00-00 00:00:00'),(43,'test image noti','image',57,'209182481-level_1.png','1','2020-04-18 09:21:26','0000-00-00 00:00:00'),(44,'test','image',57,'533749335-level_2.png','1','2020-04-18 09:22:45','0000-00-00 00:00:00'),(45,'test image','image',57,'271479163-level_1.png','1','2020-04-18 10:20:53','0000-00-00 00:00:00'),(46,'test','image',57,'653568953-level_5.png','1','2020-04-18 10:40:47','0000-00-00 00:00:00'),(47,'test video','image',57,'556481657-level_3.png','1','2020-04-18 12:07:28','0000-00-00 00:00:00'),(48,'server setup','document',50,'921737769-Server_setup_for_linux2.pdf','1','2020-04-21 07:09:05','0000-00-00 00:00:00'),(49,'tested','image',56,'850245455-Screenshot_2020-03-19_at_7.46.34_PM.png','1','2020-04-21 07:29:19','0000-00-00 00:00:00'),(50,'NEW TRAINING','image',44,'397952199-download.jpg','1','2020-04-23 16:33:49','2020-04-24 08:22:13'),(51,'Non-IT','image',44,'502374221-download.jpg','1','2020-04-24 08:25:58','0000-00-00 00:00:00'),(52,'New Training','video',68,'306582875-1587710835326.mp4','1','2020-04-30 07:40:05','0000-00-00 00:00:00'),(53,'NEW','image',68,'916478999-1587705968758.jpg','1','2020-04-30 07:42:28','0000-00-00 00:00:00'),(54,'Listen and do your work.','video',55,'614684694-Dummy_Video.mp4','1','2020-05-07 05:47:25','2020-05-07 06:05:48');
/*!40000 ALTER TABLE `etraining` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `attachment_type` enum('image','audio','video','document') DEFAULT NULL COMMENT '''image'',''audio'',''video'',''document''',
  `location` text,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) NOT NULL,
  `comment` text,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,57,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586327818514.png','image','Noida UP','23','37','Far Away','2020-04-08 06:36:58','0000-00-00 00:00:00'),(2,57,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586327860013.mp4','video','Noida UP','23','37','Far Away','2020-04-08 06:37:40','0000-00-00 00:00:00'),(3,57,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586348252921.mp4','video','D-12, G-4, near Police Booth, Pocket E, Dilshad Colony New Simapuri, Dilshad Garden, Delhi, 110095, India\n','28.6882635','77.3242205','this is for testing','2020-04-08 12:17:33','0000-00-00 00:00:00'),(4,57,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586348536152.png','image','D-12, G-4, near Police Booth, Pocket E, Dilshad Colony New Simapuri, Dilshad Garden, Delhi, 110095, India\n','28.6883324','77.3241935','ok bye bye','2020-04-08 12:22:16','0000-00-00 00:00:00'),(5,57,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586348701084.png','image','D-12, G-4, near Police Booth, Pocket E, Dilshad Colony New Simapuri, Dilshad Garden, Delhi, 110095, India\n','28.6883324','77.3241935','gjcd','2020-04-08 12:25:01','0000-00-00 00:00:00'),(6,42,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586434868668.jpg','video','Ms Store main bazar, Mugalpura, Gohana, Haryana 131301, India\n','29.1388566','76.7019736','Ahuja','2020-04-09 12:21:08','0000-00-00 00:00:00'),(7,63,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587360581369.jpg','image','C-11, Pallavpuram, Meerut, Uttar Pradesh 250110, India\n','29.0507399','77.7112125','test\n','2020-04-20 05:29:41','0000-00-00 00:00:00'),(8,27,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587366040751.jpg','image','Unnamed Road, Mauhapali, Chhattisgarh 496661, India\n','21.9798534','83.1402737','lockdown extended','2020-04-20 07:00:40','0000-00-00 00:00:00'),(9,63,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587446274421.png','image','Wadala West, Road Number 19, Mumbai, India, 400031 ','19.0176147','72.8561644','Test','2020-04-21 05:17:54','0000-00-00 00:00:00'),(10,50,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587450866113.mp4','video','The Kuchimanchi House, K Venkata Rao, 2nd Ln, Tulasi Nagar, Gandhi Nagar, Brahmapur, Odisha 760001, India\n','19.3084872','84.7911107','Event','2020-04-21 06:34:26','0000-00-00 00:00:00'),(11,56,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587452514047.jpg','image','8-3-234/12, Lakshmi Narasimha Nagar, Krishna Nagar, Yousufguda, Hyderabad, Telangana 500045, India\n','17.4352998','78.429633','tested location ','2020-04-21 07:01:54','0000-00-00 00:00:00'),(12,50,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587625754650.jpg','image','Gandhi Nagar Main Road, Tulasi Nagar, Gandhi Nagar, Brahmapur, Odisha 760001, India\n','19.3088299','84.7901322','kds','2020-04-23 07:09:14','0000-00-00 00:00:00'),(13,44,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587710586305.jpg','image','A-98, A Block, Pocket A, Sector 19, Noida, Uttar Pradesh 201301, India\n','28.5785357','77.3211186','testing ','2020-04-24 06:43:06','0000-00-00 00:00:00'),(14,63,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587721562613.png','image','Wadala West, Road Number 19, Mumbai, India, 400031 ','19.0176147','72.8561644','Type some text','2020-04-24 09:46:02','0000-00-00 00:00:00'),(15,63,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587796449900.png','image','Wadala West, Road Number 19, Mumbai, India, 400031 ','19.0176147','72.8561644','Type some text','2020-04-25 06:34:09','0000-00-00 00:00:00'),(16,63,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587813795707.mp4','video','Wadala West, Road Number 19, Mumbai, India, 400031 ','19.0176147','72.8561644','Test','2020-04-25 11:23:15','0000-00-00 00:00:00'),(17,63,'undefined','audio','Wadala West, Road Number 19, Mumbai, India, 400031 ','19.0176147','72.8561644','Test','2020-04-27 05:16:36','0000-00-00 00:00:00'),(18,63,'undefined','audio','Wadala West, Road Number 19, Mumbai, India, 400031 ','19.0176147','72.8561644','Test','2020-04-27 05:16:47','0000-00-00 00:00:00'),(19,5,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588230341238.jpg','image','A-98, A Block, Pocket A, Sector 19, Noida, Uttar Pradesh 201301, India\n','28.578592','77.3211151',' k','2020-04-30 07:05:41','0000-00-00 00:00:00'),(20,55,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588831687940.jpg','image','Gandhi Nagar Main Road, Tulasi Nagar, Gandhi Nagar, Brahmapur, Odisha 760001, India\n','19.3088299','84.7901322','rgy','2020-05-07 06:08:08','0000-00-00 00:00:00'),(21,57,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588832600017.png','image','D-12, G-4, near Police Booth, Pocket E, Dilshad Colony New Simapuri, Dilshad Garden, Delhi, 110095, India\n','28.6882024','77.3240237','testing','2020-05-07 06:23:20','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frm_contact`
--

DROP TABLE IF EXISTS `frm_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frm_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frm_contact`
--

LOCK TABLES `frm_contact` WRITE;
/*!40000 ALTER TABLE `frm_contact` DISABLE KEYS */;
INSERT INTO `frm_contact` VALUES (1,44,2,'2020-04-14 10:02:04','0000-00-00 00:00:00'),(2,44,1,'2020-04-14 10:02:04','0000-00-00 00:00:00'),(3,41,2,'2020-04-14 10:02:29','0000-00-00 00:00:00'),(4,57,2,'2020-04-14 10:02:29','0000-00-00 00:00:00'),(5,57,1,'2020-04-14 10:02:29','0000-00-00 00:00:00'),(6,44,1,'2020-04-15 12:53:23','0000-00-00 00:00:00'),(7,63,2,'2020-04-22 10:02:26','0000-00-00 00:00:00'),(8,63,1,'2020-04-22 10:02:26','0000-00-00 00:00:00'),(9,67,2,'2020-04-22 10:03:11','0000-00-00 00:00:00'),(10,67,1,'2020-04-22 10:03:11','0000-00-00 00:00:00'),(11,27,2,'2020-04-23 15:21:59','0000-00-00 00:00:00'),(12,39,2,'2020-04-24 07:47:10','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `frm_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frm_document`
--

DROP TABLE IF EXISTS `frm_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frm_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frm_document`
--

LOCK TABLES `frm_document` WRITE;
/*!40000 ALTER TABLE `frm_document` DISABLE KEYS */;
INSERT INTO `frm_document` VALUES (1,41,2,'2020-04-14 13:03:14','0000-00-00 00:00:00'),(2,41,1,'2020-04-14 13:03:14','0000-00-00 00:00:00'),(3,57,1,'2020-04-14 13:03:14','0000-00-00 00:00:00'),(4,57,2,'2020-04-14 13:03:14','0000-00-00 00:00:00'),(5,44,2,'2020-04-15 12:53:41','0000-00-00 00:00:00'),(6,44,1,'2020-04-15 12:53:41','0000-00-00 00:00:00'),(7,67,2,'2020-04-22 10:03:24','0000-00-00 00:00:00'),(8,67,1,'2020-04-22 10:03:24','0000-00-00 00:00:00'),(9,63,2,'2020-04-22 10:03:38','0000-00-00 00:00:00'),(10,63,1,'2020-04-22 10:03:38','0000-00-00 00:00:00'),(11,27,2,'2020-04-23 15:22:10','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `frm_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frm_profile`
--

DROP TABLE IF EXISTS `frm_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frm_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `pan_number` varchar(50) DEFAULT NULL,
  `aadhar_num` varchar(50) DEFAULT NULL,
  `dl_num` varchar(50) DEFAULT NULL,
  `bank_passbook` varchar(50) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `mother_name` varchar(50) DEFAULT NULL,
  `address` text,
  `fb_profile` varchar(50) DEFAULT NULL,
  `tw_profile` varchar(50) DEFAULT NULL,
  `insta_profile` varchar(50) DEFAULT NULL,
  `education_detail` text,
  `professional_detail` text,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frm_profile`
--

LOCK TABLES `frm_profile` WRITE;
/*!40000 ALTER TABLE `frm_profile` DISABLE KEYS */;
INSERT INTO `frm_profile` VALUES (1,58,'2020-02-04','1234561','56776871','24641','dp21211','father kr','mother kr','noida sec211','fb','twitter1','insta1','[{\"degree\":\"10 th Board\",\"university\":\"UP BOARD\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"}]','{\"total_exp\":\"2.5\",\"experience\":null}','2020-03-31 10:21:50','2020-04-03 12:31:37'),(2,57,'2005-04-06','1234561','56776871','24641','dp21211','father1','mother1','noida sec211','fb','twitter1','insta1','[{\"degree\":\"10 th Board\",\"university\":\"UP BOARD\",\"percentage\":\"85\",\"year\":\"2012\"}]','{\"total_exp\":\"2.9\",\"experience\":[{\"companyName\":\"Tech pvt ltd\",\"designation\":\"Androids\",\"duration\":\"2.8\"}]}','2020-03-31 10:21:50','2020-05-05 06:01:52'),(3,54,'09-Apr-2020','pan','aadhar','dl','bank','father','mother','10-e ab r.k homes room no.302\r\nvijay nagar( near community centre)','arohi jain','twitter','insta','[{\"degree\":\"10\",\"university\":\"hbse\",\"percentage\":\"12\",\"year\":\"1223\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"}]','{\"total_exp\":\"1\",\"experience\":[{\"companyName\":\"Info\",\"designation\":\"Android\",\"duration\":\"3 YEAR\"},{\"companyName\":\"Insta\",\"designation\":\"JAVA\",\"duration\":\"2 Year\"}]}','2020-04-03 06:54:03','0000-00-00 00:00:00'),(4,53,'07-Oct-2019','pan','5677687','24641','dp2121','raj kr','rani kr','1642,the Safehouse pg','arohi jain','twitter','insta','[{\"degree\":\"10\",\"university\":\"hbse\",\"percentage\":\"12\",\"year\":\"1223\"},{\"degree\":\"12\",\"university\":\"vhg24\",\"percentage\":\"244\",\"year\":\"123321\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"}]','{\"total_exp\":\"2\",\"experience\":[{\"companyName\":\"Insta\",\"designation\":\"Node\",\"duration\":\"2year\"}]}','2020-04-03 06:57:51','0000-00-00 00:00:00'),(5,61,'24-Apr-2020','sdfgshjdsjfcsdj','qwertyuiopqwert','qwertyuio(*&^%$#@#$%^&*()(*&^%$#@!!#$%&*(*&^%$#@','qwertyuio)(*&^%$#@!@','1234567890awersdtgyuihojpk(*&^%$#W@Q@#$%^&*((*&^%$','1234567890-_)(*&^%$#@!','Teting','','','hi','[{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"}]','{\"total_exp\":\"\",\"experience\":[{\"companyName\":\"\",\"designation\":\"\",\"duration\":\"\"},{\"companyName\":\"\",\"designation\":\"\",\"duration\":\"\"}]}','2020-04-03 11:02:02','2020-04-03 15:59:53'),(6,62,'01-Apr-2020','8765432111','123456789876543','','','','','','','','','[{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"}]','{\"total_exp\":\"\",\"experience\":[{\"companyName\":\"\",\"designation\":\"\",\"duration\":\"\"}]}','2020-04-03 11:46:55','0000-00-00 00:00:00'),(7,63,'2020-03-13','','','','1234567887','eww','ewe','Meerut','request','qwe','31wefd','','{\"experience\":[],\"total_exp\":\"\"}','2020-04-04 06:56:48','2020-04-27 07:57:40'),(8,27,'','','','','','','','','','','','[]','{}','2020-04-04 12:57:24','0000-00-00 00:00:00'),(9,64,'2020-02-04','1234561','56776871','24641','dp21211','father1','mother1','noida sec211','fb','twitter1','insta1','[\n  {\n    \"degree\": \"10 th Board\",\n    \"university\": \"UP BOARD\",\n    \"percentage\": \"\",\n    \"year\": \"\"\n  }\n]','{\n  \"total_exp\": \"2.5\",\n  \"expirence\": [\n    {\n      \"companyName\": \"\",\n      \"designation\": \"\",\n      \"duration\": \"\"\n    }\n  ]\n}','2020-04-06 03:46:14','2020-04-06 05:29:06'),(10,66,'2020-04-10','UVPUVPUV','','','','','','','','','','[]','{}','2020-04-10 06:03:25','0000-00-00 00:00:00'),(11,44,'2020-04-26','1122233339','','','','','','','','','','[]','{}','2020-04-15 12:35:18','2020-04-24 06:54:58'),(12,56,'2020-07-23','','','','','','','','','','','[{\"degree\":\"\",\"university\":\"\",\"percentage\":\"159559955959595959595959595959595955959595905\",\"year\":\"46494949494949944949595959595959559595959959559595959599955999599999999\"},{\"degree\":\"\",\"university\":\"mtech \",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"test\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"tsbsb\",\"percentage\":\"\",\"year\":\"\"}]','{\r\n      \"total_exp\":\"test\",\r\n	\"experience\":[\r\n			{\r\n			\"companyName\":\"hydbnsnsnsnsnsn snsnsnsn\",\r\n			\"designation\":\"shhshsjsjsjssj\",\r\n			\"duration\":\"eyeuueeueu83i383o39\"\r\n			}\r\n		]\r\n }\r\n\r\n','2020-04-21 06:06:00','2020-05-11 12:00:27'),(13,67,'2020-03-13','BQHQJJJWJWJJWWW','99994','GQHHJWJ','WHWHW','hwhwh','gwhwhw','Meerut','BbBa','bsbsnn','wnsnsn','','{\"experience\":[],\"total_exp\":\"\"}','2020-04-22 19:19:00','2020-04-24 15:38:51'),(14,50,'2020-04-23','ABGPE5633','123456789012','HAJAJAKKSGSHJSKAHS','','','','ootstistostostosistis a us Isis us a a a us sisitstististis a a isitaisits karidia and isitaisits is a a sitstisitsi irsjari zjrstjstk zissk zuzir ztjstiz ztiztkzl stizo','','','','[{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"}]','{\"total_exp\":\"\",\"experience\":[{\"companyName\":\"IPAC\",\"designation\":\"Engineer\",\"duration\":\"2245\"},{\"companyName\":\"asads\",\"designation\":\"asdas\",\"duration\":\"asda\"}]}','2020-04-23 07:30:35','2020-04-27 12:32:47'),(15,5,'2020-03-20','','','','','','','','','','','[{\"degree\":\"MCA\",\"university\":\"AKTU\",\"percentage\":\"79\",\"year\":\"2018\"},{\"degree\":\"BCA\",\"university\":\"CCSU\",\"percentage\":\"81%\",\"year\":\"2016\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"}]','{\"total_exp\":\"\",\"experience\":null}','2020-04-29 06:22:54','2020-04-30 07:08:41'),(16,68,'2020-04-30','','','','','','','','','','','[]','{}','2020-04-30 07:13:16','2020-04-30 07:16:02'),(17,42,'','','','','','','','','','','','[{\"degree\":\"B.tech\",\"university\":\"AKTU\",\"percentage\":\"80\",\"year\":\"2015\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"}]','{\"total_exp\":\"\",\"experience\":[{\"companyName\":\"\",\"designation\":\"\",\"duration\":\"\"}]}','2020-04-30 07:44:25','0000-00-00 00:00:00'),(18,69,'','','','','','','','','','','','[{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"},{\"degree\":\"\",\"university\":\"\",\"percentage\":\"\",\"year\":\"\"}]','{\"total_exp\":\"\",\"experience\":null}','2020-05-01 07:43:36','2020-05-05 10:45:11'),(19,55,'2020-05-05','DYSUJSJSJS','12345678901','','','','','Plot No. 3, Rd Number 12, MLA Colony, Banjara Hill','','','','[]','{}','2020-05-05 10:14:55','2020-05-05 16:30:38');
/*!40000 ALTER TABLE `frm_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frm_web_notification`
--

DROP TABLE IF EXISTS `frm_web_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frm_web_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `send_status` enum('0','1') DEFAULT '0' COMMENT '0->unsend,1->send',
  `username` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_read` enum('0','1') DEFAULT '0' COMMENT '0->unread,1->read',
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frm_web_notification`
--

LOCK TABLES `frm_web_notification` WRITE;
/*!40000 ALTER TABLE `frm_web_notification` DISABLE KEYS */;
INSERT INTO `frm_web_notification` VALUES (1,'FRM Absent status','arohi jain absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(2,'FRM Absent status','Test Akriti absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(3,'FRM Absent status','Akriti Sharma absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(4,'FRM Absent status','iTest absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(5,'FRM Absent status','deepakb absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(6,'FRM Absent status','Piyush Ahuja  absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(7,'FRM Absent status',' absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(8,'FRM Absent status','Anshu absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(9,'FRM Absent status','Sandeep absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(10,'FRM Absent status','sam absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(11,'FRM Absent status','A absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(12,'FRM Absent status','Kim absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(13,'FRM Absent status','Sandeep Test absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(14,'FRM Absent status','Indranil  Test absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(15,'FRM Absent status','test admin absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(16,'FRM Absent status','Vishal Rajput absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(17,'FRM Absent status','Manish Sharma absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(18,'FRM Absent status','Nia absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(19,'FRM Absent status','Shweta absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(20,'FRM Absent status','test frm again absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(21,'FRM Absent status','deepak absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:53'),(22,'FRM Absent status','New FRM absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:54'),(23,'FRM Absent status','arpit absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:54'),(24,'FRM Absent status','Kiara Sharmaa absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:54'),(25,'FRM Absent status','kian absent for 3 days ','0','admin',1,'1','2020-05-08 15:28:54'),(26,'FRM Performace of the month','Please choose last month FRM performace of the month','0','admin',1,'1','2020-05-08 15:28:54'),(27,'FRM Absent status','Hemant Patel absent for 3 days ','0','admin',1,'1','2020-05-09 07:35:34'),(28,'FRM Absent status','nigam absent for 3 days ','0','admin',1,'1','2020-05-09 07:35:34'),(29,'FRM Absent status','Harish Narra absent for 3 days ','0','admin',1,'1','2020-05-09 07:35:34'),(30,'FRM leave status','Harish Narra leave status is pending for 72 hours. leave start date 2020-05-08  and leave end date 2020-05-05','0','admin',1,'1','2020-05-11 04:00:25');
/*!40000 ALTER TABLE `frm_web_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frms`
--

DROP TABLE IF EXISTS `frms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `address` text,
  `send_status` enum('1','0') NOT NULL DEFAULT '0' COMMENT '1=sent,0=not',
  `access_key` text,
  `device_id` text,
  `device_type` enum('1','2') NOT NULL COMMENT '1=android,2=ios',
  `chat_with` int(11) NOT NULL,
  `socket_id` varchar(100) NOT NULL,
  `status` enum('1','0') NOT NULL COMMENT '1=active,0=inactive',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `wrng_pwd_count` int(11) DEFAULT '0',
  `wrng_pwd_time` datetime DEFAULT '0000-00-00 00:00:00',
  `mock_location` enum('0','1') DEFAULT NULL COMMENT '''0->off,1->on''',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frms`
--

LOCK TABLES `frms` WRITE;
/*!40000 ALTER TABLE `frms` DISABLE KEYS */;
INSERT INTO `frms` VALUES (1,1,NULL,'arohi jain','arohi37@gmail.com','e10adc3949ba59abbe56e057f20f883e','07827822889','10-e ab r.k homes room no.302\r\nvijay nagar( near community centre)','1','gbdfbdfgbdfgbdfgdfgbdfd','0','1',0,'','1','2020-02-18 11:02:01','2020-04-20 07:42:49',0,'0000-00-00 00:00:00',NULL),(5,1,'764761609-220px-Egyptian_food_Koshary.jpg','Test Akriti','Akriti@techugo.com','e10adc3949ba59abbe56e057f20f883e','8630943809','q','1','81d0910c70fdde72107bded54b9cc56e','1','1',0,'','1','2020-02-24 10:05:17','2020-06-07 00:11:28',0,'0000-00-00 00:00:00',NULL),(27,1,NULL,'Hemant Patel','hemant.patel@indianpac.com','e10adc3949ba59abbe56e057f20f883e','9611399611','I-PAC','1','a7b0d21dd3edf861def4cf4a3ccea9d3','a','1',0,'','1','2020-02-25 13:04:53','2020-05-09 09:18:48',0,'0000-00-00 00:00:00',NULL),(35,1,'764761609-220px-Egyptian_food_Koshary.jpg','Akriti Sharma','akriti@techugo.com','e10adc3949ba59abbe56e057f20f883e','7840033848','A-26 techugo Noida','1','0','0','2',0,'','1','2020-02-28 07:07:53','2020-04-15 05:58:35',0,'0000-00-00 00:00:00',NULL),(36,1,'944623333-2020-02-17_11_43_39-Attendance_System_-_Team_And_Project_Management_app_by_Shaharuzzaman_Sourav_for_.png','iTest','test@mailinator.com','e10adc3949ba59abbe56e057f20f883e','9611399610','skajgsagd','1','0',NULL,'1',0,'','1','2020-02-28 09:04:52','2020-05-09 09:13:42',0,'0000-00-00 00:00:00',NULL),(37,1,'332333613-2020-02-17_11_43_39-Attendance_System_-_Team_And_Project_Management_app_by_Shaharuzzaman_Sourav_for_.png','iTest','xyz@zyz.com','e10adc3949ba59abbe56e057f20f883e','9611399612','WEGsgsddg','0',NULL,NULL,'1',0,'','1','2020-02-28 09:12:41','2020-05-09 09:13:48',0,'0000-00-00 00:00:00',NULL),(38,1,'','deepakb','deepak.bansal@techugo.com','c0a0a42da6df61cc77d773a08a81d93f','9467168209','WEGsgsddg','0','dfgbxdgbxdgbfhbgdhfgb',NULL,'1',0,'','1','2020-02-28 09:12:41','2020-03-19 12:16:27',0,'0000-00-00 00:00:00',NULL),(39,1,'326750330-0654139165206ad84fd75de450a258e0_1024x1024@2x.jpg','Akriti Sharma','deep@techugo.com','e10adc3949ba59abbe56e057f20f883e','9717975164','Noida','1','f426cdb6d5c40bb438c9e95d49dff39d','37','1',0,'','1','2020-03-04 12:17:01','2020-03-19 12:16:27',0,'0000-00-00 00:00:00',NULL),(40,1,'292089503-512.png','Akriti Sharma','akriti@tech.co','e10adc3949ba59abbe56e057f20f883e','9759711157','A141 Noida','1','1438410ae25b7daec01135ee13f23cef','123456','1',0,'','1','2020-03-05 08:45:21','2020-03-19 12:16:27',0,'0000-00-00 00:00:00',NULL),(41,1,'813882059-FV-01.jpg','Piyush Ahuja ','piyush@techugo.com11111','e10adc3949ba59abbe56e057f20f883e','89503451111','Techugo','1','7a13fd32e2d7e23b4e60795a08998bda','123456','1',0,'','1','2020-03-06 04:56:53','2020-05-07 08:16:32',0,'0000-00-00 00:00:00',NULL),(42,1,'381616592-0654139165206ad84fd75de450a258e0_1024x1024@2x.jpg',NULL,'akriti@techi.com','1b0535497c445db5a242f72edb9cdc52','9759731227','Noida','1','81e8d3521aae1cc7fea022df51620f5b','fhlzIb1KT5e67oDFIyDLvJ:APA91bHIFzyJjFZSXRptxjVO4bykocxufyddDVw_FdlAHwqFuKmFYgPPeZ-YXsZ43Os-XAB1sbRaJazwZHRuTKKBNk8Kzm-97cZRkMQ-RPfbjqLQmPqxsTdbu4nNZO4eLZyCDKQmgs5g','1',0,'','1','2020-03-06 05:05:48','2020-05-07 08:05:45',1,'2020-05-07 08:05:45',NULL),(43,1,'572650587-download.jpeg','Anshu','anshu@gmail.com','e10adc3949ba59abbe56e057f20f883e','7840033878','Noida','1','a0d03449d147d92c17807cdeac405b75','123456','1',0,'','1','2020-03-06 06:40:25','2020-03-19 12:16:27',0,'0000-00-00 00:00:00',NULL),(44,1,'1587711513424.jpg','Sandeep','sandeep@techugo.com','cea6e0b18604bc926d0fba9701e40359','9876543210','Nooda','1','fa75362c1a5525252062fee4ea55cf79','dkze_84mQVadonOdieJZ3V:APA91bGUr-HV-BHXAZlTzS74jEOo8PFiQo9ugK5qmlgIIUXoK2TBsy4l_kuBXSmJH5itLmlVGeBEKmPc-0DS3fVlXGbvbIb6aB8nKzLhVosGTWyQ57ZgjBmngbwT3paVtpPv738XAQlA','1',0,'','1','2020-03-06 06:55:42','2020-04-27 08:18:09',0,'0000-00-00 00:00:00',NULL),(45,1,'517036267-KHjN9rT77q_20190308163414.jpg','sam','sam@gmail.com','e10adc3949ba59abbe56e057f20f883e','9999999999','Noida','1','sefsefsefse','0','2',0,'','1','2020-03-06 07:21:10','2020-03-19 12:16:27',0,'0000-00-00 00:00:00',NULL),(46,1,'394026499-bisht.jpg','A','akr@techo.com','e10adc3949ba59abbe56e057f20f883e','9876543222','Noida','1','0','2','2',0,'','1','2020-03-06 07:28:11','2020-03-19 12:16:27',0,'0000-00-00 00:00:00',NULL),(47,1,'300207748-108943815-portrait-of-arabic-man-with-kandora-in-a-studio.jpg','Kim','kim@gmail.com','e10adc3949ba59abbe56e057f20f883e','876543211','Noida','1','0','2','2',0,'','1','2020-03-06 09:20:41','2020-03-19 12:16:27',0,'0000-00-00 00:00:00',NULL),(48,1,'559055223-108943815-portrait-of-arabic-man-with-kandora-in-a-studio.jpg','Kim','kim@gmail.com','e10adc3949ba59abbe56e057f20f883e','876543211','Noida','1','0',NULL,'1',0,'','1','2020-03-06 09:21:56','2020-03-19 12:16:27',0,'0000-00-00 00:00:00',NULL),(49,1,'127474368-camera_icon.jpg','iTest','hmtp140789@gmail.com','e10adc3949ba59abbe56e057f20f883e','8618031196','Hyderabad','1','aaa6f9b084c862b1b934ffee2076084f','123456','1',0,'','1','2020-03-07 06:39:19','2020-03-20 16:00:36',0,'0000-00-00 00:00:00',NULL),(50,1,'1587627813554.jpg','nigam','nigam@indianpac.com','e10adc3949ba59abbe56e057f20f883e','7008060981','Hyderabad','0','a83fbc0ac6bb5bdf458ad857261c71a5','a','1',0,'','1','2020-03-07 06:41:00','2020-05-09 09:20:16',0,'0000-00-00 00:00:00',NULL),(51,1,'58925032-512.png','Sandeep Test','sandeep@gmail.com','e10adc3949ba59abbe56e057f20f883e','9540978586','Techugo','1','4de106e8e50ad77b66ae2f974c4d3644','2','2',0,'','1','2020-03-16 10:17:26','2020-04-22 13:44:10',0,'0000-00-00 00:00:00',NULL),(52,1,'538017746-512.png','Indranil  Test','indranil@techugo.com','60d26aa0cbb7eb65dd1d80a036a26ff3','8130728411','Techugo','1','casxasdxas','0','1',0,'','1','2020-03-16 10:25:33','2020-04-02 04:49:49',0,'0000-00-00 00:00:00',NULL),(53,1,'317931144-index1.jpg','test admin','test@yopmail.com','e10adc3949ba59abbe56e057f20f883e','244444443243','10-e ab r.k homes room no.302\r\nvijay nagar( near community centre)','0',NULL,NULL,'1',0,'','1','2020-03-19 12:14:47','2020-04-03 06:57:51',0,'0000-00-00 00:00:00',NULL),(54,2,'178446238-level_4_.png','arohi jain','admin2@yopmail.com','e10adc3949ba59abbe56e057f20f883e','14342342424','Noida','0',NULL,NULL,'1',0,'','1','2020-03-19 12:16:58','2020-04-03 06:54:03',0,'0000-00-00 00:00:00',NULL),(55,2,'1588673803623.jpg','Test Account','test1@mailinator.com','e10adc3949ba59abbe56e057f20f883e','7337335190','Hyderabad','1','e2560275f1530f48f9d4ac81165b1ab3','fha6VAWRRaWIHFtblyuG0s:APA91bFqam5E8zNKGDlcSZBE9UJG3faqPhxIQyb_Yw9mvHIS5lQ5ST0vlj5O-Yg0ZmcfvznLUtVgVWvmMibugpHNdoXLcvF3m4yzZrFJlf3e0887H9jXXTLE93E_ReUpVS3EYOAvn1Df','1',0,'','1','2020-03-19 12:38:25','2020-05-09 08:44:39',0,'0000-00-00 00:00:00',NULL),(56,1,'1587453595704.jpg','Harish Narra','harish.narra@indianpac.com','e10adc3949ba59abbe56e057f20f883e','9032735525','Hyderabad','1','41f963c9ed892918eb9951c3ea5a7e76','eKSE_-JFS6yJ-GqHb1L-ef:APA91bHl9n3WoiUeKlIst4V-7onvOhEHREaOICu2RaghovdQj9z-_3QHFW2tLabr5oZzv_xZZAbFZcgBBFM9itBFFNpZbMLq6peoVNuDYPhxe08SZsBvl_8UEZPQu-qlklHgZOp95Wtv','1',0,'','1','2020-03-20 05:15:22','2020-05-09 09:25:10',0,'0000-00-00 00:00:00',NULL),(57,1,'1587984459900.jpg','Vishal Rajput','vishal@yopmail.com','e10adc3949ba59abbe56e057f20f883e','9654197004','Type-4 Qno. 24\r\nNoida','1','5ecb9febb64f9a9344ffb2f1b6070400','etU-ESUBRhC7QnFj4ptPWp:APA91bHNEBXumygrKCFztavOSy_rtc6LgsC27TkURWkhRFvzRDfmGpulgRMkWkrAhp2cmro65mQJdC8fM8kclpbNZHS6G_tqgwIFiJEK4v8sZkKmmz8x9laNUlFXRO41muMDpZH0JVkq','1',0,'','1','2020-03-25 07:48:49','2020-05-08 08:07:00',0,'0000-00-00 00:00:00',NULL),(58,1,'682558896-1575341589144.jpg','Manish Sharma','manishsharma0122@gmail.com','385465ef0d5ddfe61190dbafde605c28','9910628991','Type-4 Qno. 24\r\nOrdnance Factory Muradnagar','1','1d5129e9d0434cc75154296acc5d8d70','123456','1',0,'','1','2020-03-25 07:50:27','2020-04-03 06:52:45',0,'0000-00-00 00:00:00',NULL),(59,1,'499038790-2.jpg','Akriti Sharma','akriti@techugo.ae','e10adc3949ba59abbe56e057f20f883e','8765432190','A-26, Techugo','1','0','0','1',0,'','0','2020-04-03 06:41:30','2020-04-16 09:38:11',0,'0000-00-00 00:00:00',NULL),(60,8,'714414916-FV-01.jpg','Piyush Ahuja','pi@gmail.com','e10adc3949ba59abbe56e057f20f883e','74043400000','Noida sector 76 ','1',NULL,NULL,'1',0,'','1','2020-04-03 07:57:25','2020-05-07 08:19:22',0,'0000-00-00 00:00:00',NULL),(61,2,'724041427-2.jpg','Saki','saki@gmail.com','e10adc3949ba59abbe56e057f20f883e','0987654321','Meerut','1','0','0','1',0,'','1','2020-04-03 10:32:31','2020-04-07 05:47:03',0,'0000-00-00 00:00:00',NULL),(62,1,'189575082-download.jpg','Nia','nia@gmail.com','e10adc3949ba59abbe56e057f20f883e','765432198','Tech','1','0','0','1',0,'','1','2020-04-03 11:41:24','2020-04-03 14:17:37',0,'0000-00-00 00:00:00',NULL),(63,1,'1587742049144.png','Shweta','shwet@gmail.com','e10adc3949ba59abbe56e057f20f883e','9876543211','Techugo','1','80f4d8c512f59eb5eb6afca547a0a4f3','2','2',0,'','1','2020-04-04 06:54:52','2020-04-25 06:10:35',0,'0000-00-00 00:00:00',NULL),(64,1,'1586151128320.jpg','test frm again','testfrm@yopmail.com','e10adc3949ba59abbe56e057f20f883e','113423424','dqdq dca','0','adawdawdawdawdawdwqd',NULL,'1',0,'','1','2020-04-06 03:40:07','2020-04-06 05:32:08',0,'0000-00-00 00:00:00',NULL),(65,1,'336431887-level_2.png','deepak','deepakb@bjhbsh.fwe','e10adc3949ba59abbe56e057f20f883e','09467168209','10-e ab r.k homes room no.302\r\nvijay nagar( near community centre)','1',NULL,NULL,'1',0,'','1','2020-04-07 13:16:03','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',NULL),(66,1,'451575451-2.jpg','New FRM','Frm@gmail.com','e10adc3949ba59abbe56e057f20f883e','7654321190','A-141','1','0','0','1',0,'','1','2020-04-10 04:45:08','2020-04-13 07:37:43',0,'0000-00-00 00:00:00',NULL),(67,1,'1587742597544.png','arpit','arpit@techugo.com','e10adc3949ba59abbe56e057f20f883e','9865925862','10-e ab r.k homes room no.302\r\nvijay nagar( near community centre)','0','63c1ff4ab844f8573cb21d51f76d2b14','d0gVhivZQdipT6NiKYr6Do:APA91bHFUO4KIHmoKZiv_cETXM3XzJWOdngPUS0151NOSeqN36joneCZKQ7S0YRyHuGOK2nT4wTsboELyNlhL0prZHUcs4sJk8djQOpk0_trBBqz45Fvd39HPl8qpCgM5GgjUNOsoZbB','1',0,'','1','2020-04-13 05:03:53','2020-04-25 08:31:10',0,'0000-00-00 00:00:00',NULL),(68,1,'222128645-1587705968758.jpg','Kiara Sharmaa','kiara@gmail.com','e10adc3949ba59abbe56e057f20f883e','9898989898','Noida sector 19','1','0','0','1',0,'','1','2020-04-30 07:12:19','2020-05-06 14:55:48',0,'0000-00-00 00:00:00',NULL),(69,1,'681666803-1587705968758.jpg','kian','kian@gmail.com','e10adc3949ba59abbe56e057f20f883e','9879879870','Noida','1','217cbbe34c5a8c37afde2b30e9fe0679','12dbasjdsd','1',0,'','1','2020-04-30 08:05:49','2020-06-07 00:05:38',1,'2020-06-07 00:05:38','1'),(70,1,'208246730-WhatsApp_Image_2020-04-12_at_9.22.45_PM.jpeg','Piyush Ahuja','piyushahuja9797@gmail.com','e10adc3949ba59abbe56e057f20f883e','8950345345','Techugo ','0','5c0dd6158002940a40f929021cd32db8','fMCQleWFTGS8Cp1j2zLh6E:APA91bHqk7VEGI2tq2fLIDnsXd5lQZkkiHF2z_GFKne7Abc1N9ZVHBs8AhPu1RflWEN-iqj_SFaIaj0M0NdAndPNnXW6exZkU4zYJG5psTMszGKMMMrGs77bw4BA7ea9NQs7iOz5cqBe','1',0,'','1','2020-05-07 08:25:14','2020-05-07 08:45:47',0,'0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `frms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` enum('1','0') NOT NULL COMMENT '1=active,0=inactive',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue`
--

LOCK TABLES `issue` WRITE;
/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
INSERT INTO `issue` VALUES (1,3,'test','1','2020-04-09 10:18:16','0000-00-00 00:00:00'),(2,3,'test1','1','2020-04-09 10:19:00','2020-04-27 06:38:54'),(3,4,'test issue for Non-IT','1','2020-04-09 05:25:45','2020-04-09 05:27:32'),(4,2,'sale issue','1','2020-04-27 06:39:10','0000-00-00 00:00:00'),(5,1,'desktop issue','1','2020-04-27 06:39:32','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_mgt`
--

DROP TABLE IF EXISTS `leave_mgt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_mgt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `leave_type` int(11) NOT NULL,
  `start_date` date NOT NULL DEFAULT '0000-00-00',
  `start_day` enum('1','0','2','3') NOT NULL COMMENT '2=full,0= first half,1=second Half,3=NA	',
  `end_date` date NOT NULL DEFAULT '0000-00-00',
  `end_day` enum('1','0','2','3') NOT NULL COMMENT '2=full,0= first half,1=second Half,3=NA',
  `status` enum('0','1','2','3') NOT NULL DEFAULT '0' COMMENT '0=pending,1=approve,2=reject,3=cancel',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_mgt`
--

LOCK TABLES `leave_mgt` WRITE;
/*!40000 ALTER TABLE `leave_mgt` DISABLE KEYS */;
INSERT INTO `leave_mgt` VALUES (1,5,2,'2020-03-20','0','2020-03-19','3','1','2020-03-19 06:03:17','2020-04-29 09:38:06'),(2,5,2,'2020-03-21','0','2020-03-20','3','0','2020-03-19 06:03:47','0000-00-00 00:00:00'),(3,52,1,'2020-03-30','0','2020-03-31','3','1','2020-03-19 11:21:06','2020-03-30 06:01:09'),(4,55,2,'2020-03-30','2','2020-03-31','2','1','2020-03-20 06:00:51','2020-03-30 06:01:14'),(5,5,2,'2020-03-26','0','2020-03-26','0','1','2020-03-25 05:03:31','2020-03-30 06:04:15'),(6,58,4,'2020-03-31','2','2020-03-31','2','1','2020-03-25 07:53:34','2020-03-25 07:54:36'),(7,58,1,'2020-04-09','2','2020-04-09','2','1','2020-03-25 08:03:44','2020-03-25 10:51:37'),(8,52,1,'2020-03-26','2','2020-03-26','3','1','2020-03-25 09:03:22','2020-04-03 08:39:17'),(9,58,5,'2020-04-17','2','2020-04-30','2','1','2020-03-25 11:56:36','2020-03-25 11:57:39'),(10,62,2,'2020-04-04','1','2020-04-10','1','2','2020-04-03 12:00:10','2020-04-16 11:44:49'),(11,35,1,'2020-04-15','0','2020-04-16','2','0','2020-04-09 05:52:52','0000-00-00 00:00:00'),(12,66,3,'2020-04-11','1','2020-04-24','1','0','2020-04-10 06:13:12','0000-00-00 00:00:00'),(13,63,1,'2020-05-14','1','2020-06-14','0','0','2020-04-14 11:08:47','0000-00-00 00:00:00'),(14,63,1,'2020-07-01','0','2020-07-02','1','1','2020-04-14 20:33:43','2020-04-16 07:40:18'),(15,57,1,'2020-05-14','1','2020-06-14','0','2','2020-04-14 11:08:47','2020-04-18 10:00:57'),(16,56,3,'2020-09-05','1','2020-09-19','2','0','2020-04-21 08:32:37','0000-00-00 00:00:00'),(17,57,5,'2020-04-28','2','2020-04-30','2','0','2020-04-27 12:54:46','0000-00-00 00:00:00'),(18,57,2,'2020-05-01','0','2020-05-01','1','0','2020-04-27 12:56:09','0000-00-00 00:00:00'),(19,5,2,'2020-04-30','0','0000-00-00','3','0','2020-04-30 06:27:42','0000-00-00 00:00:00'),(20,56,1,'2020-05-08','2','2020-05-05','2','0','2020-05-05 06:36:39','0000-00-00 00:00:00'),(21,55,1,'2020-05-22','2','2020-05-09','2','0','2020-05-09 08:41:16','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `leave_mgt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_type`
--

DROP TABLE IF EXISTS `leave_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_type` varchar(255) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_type`
--

LOCK TABLES `leave_type` WRITE;
/*!40000 ALTER TABLE `leave_type` DISABLE KEYS */;
INSERT INTO `leave_type` VALUES (1,'Sick Leave','1','2020-02-19 16:18:47','2020-02-26 15:15:24'),(2,'Privilege Leave','1','2020-02-19 16:18:47','2020-02-26 15:15:34'),(3,'Leave Without Pay','1','2020-02-26 15:15:56','0000-00-00 00:00:00'),(4,'Restricted Holiday','1','2020-02-26 15:15:56','0000-00-00 00:00:00'),(5,'Marriage Leave','1','2020-02-26 15:16:25','0000-00-00 00:00:00'),(6,'Paternity Leave','1','2020-02-26 15:16:25','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `leave_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text,
  `type` varchar(255) DEFAULT NULL,
  `read_status` enum('1','0') NOT NULL DEFAULT '0' COMMENT '1=read,0=unread',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,0,57,'You have been assigned a new E-Training','E-Training','0','2020-04-18 09:12:20','0000-00-00 00:00:00'),(2,0,57,'You have been assigned a new E-Training','E-Training','0','2020-04-18 09:16:31','0000-00-00 00:00:00'),(3,0,57,'You have been assigned a new Resource','Resource','0','2020-04-18 09:18:57','0000-00-00 00:00:00'),(4,0,57,'You have been assigned a new E-Training','E-Training','0','2020-04-18 09:21:26','0000-00-00 00:00:00'),(5,0,57,'You have been assigned a new E-Training','E-Training','0','2020-04-18 09:22:45','0000-00-00 00:00:00'),(6,0,57,'Your PunchIn Status has been Approved','PunchIn','0','2020-04-18 09:47:18','0000-00-00 00:00:00'),(7,0,57,'Your PunchIn Status has been Rejected','PunchIn','0','2020-04-18 09:51:35','0000-00-00 00:00:00'),(8,0,57,'Your PunchOut Status has been Approved','PunchOut','0','2020-04-18 09:52:39','0000-00-00 00:00:00'),(9,0,57,'Your Regularisation request has been Approved','Regularisation','0','2020-04-18 09:55:55','0000-00-00 00:00:00'),(10,0,57,'Your Leave request has been Approved','Leave','0','2020-04-18 10:00:03','0000-00-00 00:00:00'),(11,0,57,'Your Leave request has been Rejected','Leave','0','2020-04-18 10:00:57','0000-00-00 00:00:00'),(12,0,63,'Admin has given a feedback on your task','Task Feedback','0','2020-04-18 10:03:39','0000-00-00 00:00:00'),(13,0,63,'Admin has given a feedback on your task','Task Feedback','0','2020-04-18 10:04:44','0000-00-00 00:00:00'),(14,0,57,'Admin has given a feedback on your task','Task Feedback','0','2020-04-18 10:19:25','0000-00-00 00:00:00'),(15,0,57,'You have been assigned a new E-Training','E-Training','0','2020-04-18 10:20:53','0000-00-00 00:00:00'),(16,0,57,'You have been assigned a new Resource','Resource','0','2020-04-18 10:21:19','0000-00-00 00:00:00'),(17,0,57,'Your raise Request status has been Resolve','Request Status','0','2020-04-18 10:22:04','0000-00-00 00:00:00'),(18,0,57,'You have been assigned a new Volunteer','Volunteer','0','2020-04-18 10:22:43','0000-00-00 00:00:00'),(19,0,57,'You have been assigned a new Payment','Payment','0','2020-04-18 10:23:18','0000-00-00 00:00:00'),(20,0,57,'You have been assigned a new task','Task','0','2020-04-18 10:37:37','0000-00-00 00:00:00'),(21,0,57,'You have been assigned a new E-Training','E-Training','0','2020-04-18 10:40:47','0000-00-00 00:00:00'),(22,0,57,'You have been assigned a new task','Task','0','2020-04-18 10:42:28','0000-00-00 00:00:00'),(23,0,57,'You have been assigned a new task','Task','0','2020-04-18 10:44:55','0000-00-00 00:00:00'),(24,0,57,'You have been assigned a new task','Task','0','2020-04-18 10:45:12','0000-00-00 00:00:00'),(25,0,57,'You have been assigned a new task','Task','0','2020-04-18 10:48:02','0000-00-00 00:00:00'),(26,0,57,'You have been assigned a new task','Task','0','2020-04-18 10:51:08','0000-00-00 00:00:00'),(27,0,57,'You have been assigned a new E-Training','E-Training','0','2020-04-18 12:07:28','0000-00-00 00:00:00'),(28,0,63,'You have been assigned a new Volunteer','Volunteer','0','2020-04-20 05:15:09','0000-00-00 00:00:00'),(29,0,27,'You have been assigned a new task','Task','0','2020-04-20 06:57:29','0000-00-00 00:00:00'),(30,0,27,'Your PunchIn Status has been Approved','PunchIn','0','2020-04-21 06:43:44','0000-00-00 00:00:00'),(31,0,56,'You have been assigned a new task','Task','0','2020-04-21 06:52:03','0000-00-00 00:00:00'),(32,0,50,'You have been assigned a new task','Task','0','2020-04-21 06:53:24','0000-00-00 00:00:00'),(33,0,27,'You have been assigned a new task','Task','0','2020-04-21 06:54:23','0000-00-00 00:00:00'),(34,0,50,'You have been assigned a new E-Training','E-Training','0','2020-04-21 07:09:05','0000-00-00 00:00:00'),(35,0,27,'You have been assigned a new Volunteer','Volunteer','0','2020-04-21 07:14:22','0000-00-00 00:00:00'),(36,0,50,'You have been assigned a new Resource','Resource','0','2020-04-21 07:21:56','0000-00-00 00:00:00'),(37,0,56,'You have been assigned a new Volunteer','Volunteer','0','2020-04-21 07:27:45','0000-00-00 00:00:00'),(38,0,56,'You have been assigned a new E-Training','E-Training','0','2020-04-21 07:29:19','0000-00-00 00:00:00'),(39,0,50,'Admin has given a feedback on your task','Task Feedback','0','2020-04-22 05:15:11','0000-00-00 00:00:00'),(40,0,27,'Admin has given a feedback on your task','Task Feedback','0','2020-04-22 05:15:40','0000-00-00 00:00:00'),(41,0,63,'Admin has given a feedback on your task','Task Feedback','0','2020-04-22 05:28:12','0000-00-00 00:00:00'),(42,0,50,'Your PunchIn Status has been Approved','PunchIn','0','2020-04-22 08:14:08','0000-00-00 00:00:00'),(43,0,50,'Your PunchIn Status has been Rejected','PunchIn','0','2020-04-22 08:14:30','0000-00-00 00:00:00'),(44,0,50,'You have been assigned a new task','Task','0','2020-04-23 06:47:27','0000-00-00 00:00:00'),(45,0,27,'Your raise Request status has been In-progress','Request Status','0','2020-04-23 15:26:24','0000-00-00 00:00:00'),(46,0,27,'Your raise Request status has been Resolve','Request Status','0','2020-04-23 15:26:54','0000-00-00 00:00:00'),(47,0,44,'You have been assigned a new E-Training','E-Training','0','2020-04-23 16:33:49','0000-00-00 00:00:00'),(48,1,44,'Your Regularisation request has been Approved','Regularisation','0','2020-04-24 04:31:30','0000-00-00 00:00:00'),(49,1,57,'You have been assigned a new task','Task','0','2020-04-24 04:34:25','0000-00-00 00:00:00'),(50,1,44,'You have been assigned a new Volunteer','Volunteer','0','2020-04-24 05:11:28','0000-00-00 00:00:00'),(51,1,44,'You have been assigned a new Resource','Resource','0','2020-04-24 05:17:06','0000-00-00 00:00:00'),(52,1,44,'You have been assigned a new Resource','Resource','0','2020-04-24 05:19:22','0000-00-00 00:00:00'),(53,1,44,'You have been assigned a new task','Task','0','2020-04-24 05:54:16','0000-00-00 00:00:00'),(54,1,44,'You have been assigned a new Payment','Payment','0','2020-04-24 07:59:30','0000-00-00 00:00:00'),(55,1,58,'Your raise Request status has been Resolve','Request Status','0','2020-04-24 08:07:32','0000-00-00 00:00:00'),(56,1,0,'You have been assigned a new Resource','Resource','0','2020-04-24 08:20:10','0000-00-00 00:00:00'),(57,1,44,'You have been assigned a new E-Training','E-Training','0','2020-04-24 08:22:13','0000-00-00 00:00:00'),(58,1,44,'You have been assigned a new E-Training','E-Training','0','2020-04-24 08:25:58','0000-00-00 00:00:00'),(59,1,44,'Your Regularisation request has been Approved','Regularisation','0','2020-04-24 08:26:30','0000-00-00 00:00:00'),(60,1,43,'You have been assigned a new Payment','Payment','0','2020-04-25 04:48:22','0000-00-00 00:00:00'),(61,1,40,'You have been assigned a new Payment','Payment','0','2020-04-25 04:53:12','0000-00-00 00:00:00'),(62,1,63,'Your raise Request status has been In-progress','Request Status','0','2020-04-25 04:59:27','0000-00-00 00:00:00'),(63,1,56,'Your raise Request status has been In-progress','Request Status','0','2020-04-25 05:01:32','0000-00-00 00:00:00'),(64,1,56,'Your raise Request status has been Resolve','Request Status','0','2020-04-25 05:01:47','0000-00-00 00:00:00'),(65,1,0,'You have been assigned a new Resource','Resource','0','2020-04-25 05:07:25','0000-00-00 00:00:00'),(66,1,44,'Admin has given a feedback on your task','Task Feedback','0','2020-04-25 08:57:07','0000-00-00 00:00:00'),(67,1,36,'You have been assigned a new Payment','Payment','0','2020-04-25 09:03:53','0000-00-00 00:00:00'),(68,1,44,'Admin has given a feedback on your task','Task Feedback','0','2020-04-25 13:28:36','0000-00-00 00:00:00'),(69,1,57,'You have been assigned a new task','Task','0','2020-04-27 05:07:23','0000-00-00 00:00:00'),(70,1,1,'You have been assigned a new task','Task','0','2020-04-28 05:10:45','0000-00-00 00:00:00'),(71,1,52,'Your PunchIn Status has been Approved','PunchIn','0','2020-04-29 09:36:58','0000-00-00 00:00:00'),(72,1,52,'Your PunchIn Status has been Rejected','PunchIn','0','2020-04-29 09:36:58','0000-00-00 00:00:00'),(73,1,52,'Your PunchIn Status has been Approved','PunchIn','0','2020-04-29 09:37:00','0000-00-00 00:00:00'),(74,1,5,'Your Leave request has been Approved','Leave','0','2020-04-29 09:38:06','0000-00-00 00:00:00'),(75,1,5,'You have been assigned a new Resource','Resource','0','2020-04-30 06:39:09','0000-00-00 00:00:00'),(76,1,68,'You have been assigned a new E-Training','E-Training','0','2020-04-30 07:40:05','0000-00-00 00:00:00'),(77,1,68,'You have been assigned a new E-Training','E-Training','0','2020-04-30 07:42:28','0000-00-00 00:00:00'),(78,1,69,'Admin has given a feedback on your task','Task Feedback','0','2020-04-30 08:35:09','0000-00-00 00:00:00'),(79,1,69,'You have been assigned a new Resource','Resource','0','2020-05-05 07:11:27','0000-00-00 00:00:00'),(80,1,55,'You have been assigned a new task','Task','0','2020-05-05 09:51:36','0000-00-00 00:00:00'),(81,1,55,'You have been assigned a new task','Task','0','2020-05-05 10:02:09','0000-00-00 00:00:00'),(82,1,55,'You have been assigned a new Volunteer','Volunteer','0','2020-05-06 05:07:09','0000-00-00 00:00:00'),(83,1,0,'Admin has given a feedback on your task','Task Feedback','0','2020-05-06 05:11:43','0000-00-00 00:00:00'),(84,1,55,'You have been assigned a new E-Training','E-Training','0','2020-05-07 05:47:25','0000-00-00 00:00:00'),(85,1,55,'You have been assigned a new E-Training','E-Training','0','2020-05-07 06:05:48','0000-00-00 00:00:00'),(86,1,5,'You have been assigned as a Performer of the month','Performer','0','2020-05-07 14:37:23','0000-00-00 00:00:00'),(87,1,65,'You have been assigned as a Performer of the month','Performer','0','2020-05-07 14:42:08','0000-00-00 00:00:00'),(88,1,1,'You have been assigned a new task','Task','0','2020-05-08 07:22:25','0000-00-00 00:00:00'),(89,1,69,'You have been assigned a new Payment','Payment','0','2020-05-11 09:44:31','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `payment_date` varchar(100) DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image_type` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `status` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1=pending,0=processed',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,51,'2020-04-01',NULL,'400','836842588-512.png','image','payment title','payment descr','0','2020-04-14 07:23:25','2020-04-14 07:23:47'),(2,44,'2020-05-09',NULL,'200','566239757-SampleVideo_1280x720_1mb.mp4','video','hello','dfvs','1','2020-04-14 07:26:52','0000-00-00 00:00:00'),(3,2,'06-03-2020',NULL,'200',NULL,NULL,'test title','testdesc','1','2020-04-14 08:31:41','0000-00-00 00:00:00'),(4,3,'13-09-2020',NULL,'500',NULL,NULL,'test xsl','test xsl','1','2020-04-14 08:31:41','0000-00-00 00:00:00'),(5,5,'13-04-2020','card','123','https://frms-s3.s3-ap-south-1.amazonaws.com/1586928909161.png','image','titlr','descrip','1','2020-04-15 05:35:09','0000-00-00 00:00:00'),(6,5,'13-04-2020','card','123','https://frms-s3.s3-ap-south-1.amazonaws.com/1586929269754.pdf','document','titlr','descrip','1','2020-04-15 05:41:09','2020-04-15 05:41:42'),(7,57,'15-04-2020','cash','500','https://frms-s3.s3-ap-south-1.amazonaws.com/1586944479880.png','image','lunch','special thali','1','2020-04-15 09:54:40','0000-00-00 00:00:00'),(8,57,'14-04-2020','cash','100','https://frms-s3.s3-ap-south-1.amazonaws.com/1586944668933.png','image','breakfast','break','1','2020-04-15 09:57:49','0000-00-00 00:00:00'),(9,44,'19-02-2020','    ','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1586953951045.jpg','image','   ','     ','1','2020-04-15 12:32:31','0000-00-00 00:00:00'),(10,63,'15-04-2020','credit','123456','https://frms-s3.s3-ap-south-1.amazonaws.com/1587153708729.jpg','image','tedt','test desc','1','2020-04-17 20:01:48','0000-00-00 00:00:00'),(11,57,'01-04-2020','COD','200','23697570-level_3.png','image','test question1','csdc','1','2020-04-18 10:23:18','0000-00-00 00:00:00'),(12,63,'20-04-2020','hahah','49949','https://frms-s3.s3-ap-south-1.amazonaws.com/1587360754454.jpg','image','hejw','gagagw','1','2020-04-20 05:32:34','0000-00-00 00:00:00'),(13,63,'4','5','2','https://frms-s3.s3-ap-south-1.amazonaws.com/1587486155524.png','image','1','3','1','2020-04-21 16:22:35','0000-00-00 00:00:00'),(14,50,'23-Apr-2020',NULL,'7.65777','https://frms-s3.s3-ap-south-1.amazonaws.com/1587628067828.jpg',NULL,'fjs','fjs','0','2020-04-23 07:47:47','2020-05-05 10:20:42'),(15,44,'23-04-2020','Cash','1000','https://frms-s3.s3-ap-south-1.amazonaws.com/1587705968758.jpg','image','testinh','testing','1','2020-04-24 05:26:08','0000-00-00 00:00:00'),(16,44,'24-04-2020','t','0',NULL,'','testing','A payment is the voluntary tender of money or its equivalent or of things of value by one party to another in exchange for goods, or services provided by them, or to fulfill a legal obligation. The party making a payment is commonly called the payer, while the payee is the party receiving the payment. \r\nA payment is the voluntary tender of money or its equivalent or of things of value by one party to another in exchange for goods, or services provided by them, or to fulfill a legal obligation. The party making a payment is commonly called the payer, while the payee is the party receiving the payment. \r\nA payment is the voluntary tender of money or its equivalent or of things of value by one party to another in exchange for goods, or services provided by them, or to fulfill a legal obligation. The party making a payment is commonly called the payer, while the payee is the party receiving the payment. \r\nA payment is the voluntary tender of money or its equivalent or of things of value by one party to another in exchange for goods, or services provided by them, or to fulfill a legal obligation. The party making a payment is commonly called the payer, while the payee is the party receiving the payment. ','0','2020-04-24 07:59:30','2020-04-25 07:32:32'),(17,43,'29-04-2020','COD','400','582312325-level_5.png','image','hello','ca','1','2020-04-25 04:48:22','0000-00-00 00:00:00'),(18,40,'30-04-2020','paypal','24','201493028-level_3.png','image','hello','dxcwq ac','1','2020-04-25 04:53:12','0000-00-00 00:00:00'),(19,36,'01-04-2020','COD','1949','274704779-level_5.png','image','hello','asca','1','2020-04-25 09:03:53','0000-00-00 00:00:00'),(20,63,'13-04-2020','qwert','12','undefined','image','test','QWERTY','1','2020-04-25 18:24:07','0000-00-00 00:00:00'),(21,63,'13-04-2020','witty','qwer','undefined','document','were','werWER','1','2020-04-25 18:37:21','0000-00-00 00:00:00'),(22,63,'13-04-2020','we','qwe','undefined','document','test','QWE','1','2020-04-26 12:44:13','0000-00-00 00:00:00'),(23,5,'30-04-2020','Cash','1PM ','https://frms-s3.s3-ap-south-1.amazonaws.com/1588229078384.jpg','image','test','tesr','1','2020-04-30 06:44:38','0000-00-00 00:00:00'),(24,55,'05-05-2020','hkkaha','hahansbs','https://frms-s3.s3-ap-south-1.amazonaws.com/1588673926446.jpg','image','sthsus','vaha','0','2020-05-05 10:18:46','2020-05-11 09:33:50'),(25,69,'08-05-2020','COD','20','0','image','abbb','san dnsd','0','2020-05-11 09:44:31','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performer_month`
--

DROP TABLE IF EXISTS `performer_month`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `performer_month` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `reason` text,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performer_month`
--

LOCK TABLES `performer_month` WRITE;
/*!40000 ALTER TABLE `performer_month` DISABLE KEYS */;
INSERT INTO `performer_month` VALUES (1,57,'Nyc Person','2020-03-03 00:00:00','2020-04-18 10:28:45');
/*!40000 ALTER TABLE `performer_month` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punching_detail`
--

DROP TABLE IF EXISTS `punching_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `punching_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `punch_status` enum('1','0') NOT NULL COMMENT '1=In,0=out',
  `image` varchar(255) DEFAULT NULL,
  `in_date` datetime NOT NULL,
  `out_date` datetime DEFAULT NULL,
  `socket_id` varchar(50) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0' COMMENT '1=Approve,0=Reject',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punching_detail`
--

LOCK TABLES `punching_detail` WRITE;
/*!40000 ALTER TABLE `punching_detail` DISABLE KEYS */;
INSERT INTO `punching_detail` VALUES (1,52,'28.6300237','77.3812487','1','1584511870378.form-data','2020-03-18 11:41:09',NULL,NULL,'1','2020-03-18 06:11:10','2020-04-29 09:37:00'),(2,52,'37.4219983','-122.084','0','1584592163795.form-data','2020-03-19 09:59:22','2020-03-19 10:41:41',NULL,'0','2020-03-19 04:29:23','2020-03-19 05:11:42'),(3,5,'28.6300585','77.3811392','0','1584597540646.form-data','2020-03-19 11:28:59','2020-03-19 14:13:36',NULL,'0','2020-03-19 05:59:00','2020-03-19 08:44:34'),(4,27,'17.412832','78.4215114','1','1584598707172.form-data','2020-03-19 11:48:27',NULL,NULL,'0','2020-03-19 06:18:27','0000-00-00 00:00:00'),(5,55,'17.444636','78.3923668','0','1584681644752.form-data','2020-03-20 10:50:42','2020-03-20 12:10:01',NULL,'0','2020-03-20 05:20:45','2020-03-20 06:40:04'),(6,56,'17.4388701','78.4379718','0','1584682035430.form-data','2020-03-20 10:57:13','2020-03-20 19:34:18',NULL,'0','2020-03-20 05:27:18','2020-03-20 14:04:20'),(7,52,'28.6310017','77.381005','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1584688769890.jpg','2020-03-20 12:49:28',NULL,NULL,'0','2020-03-20 07:19:30','0000-00-00 00:00:00'),(8,27,'17.4426563','78.3534455','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1584690856675.jpg','2020-03-20 13:24:15',NULL,NULL,'0','2020-03-20 07:54:16','2020-03-20 16:01:09'),(9,50,'17.4446376','78.3923585','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1584693045245.jpg','2020-03-20 14:00:42',NULL,NULL,'0','2020-03-20 08:30:45','0000-00-00 00:00:00'),(10,49,'17.4313155','78.4213673','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1584720111264.jpg','2020-03-20 21:31:50','2020-03-20 21:32:52',NULL,'0','2020-03-20 16:01:51','2020-03-20 16:02:53'),(11,56,'17.4167175','78.366851','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1584765521805.jpg','2020-03-21 10:08:39','2020-03-21 19:14:01',NULL,'0','2020-03-21 04:38:41','2020-03-21 13:44:04'),(12,56,'17.4406627','78.4269714','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1584938871352.jpg','2020-03-23 10:17:47','2020-03-23 20:18:11',NULL,'0','2020-03-23 04:47:51','2020-03-23 14:48:13'),(13,52,'28.6310017','77.381005','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1584970826797.jpg','2020-03-23 19:10:19',NULL,NULL,'0','2020-03-23 13:40:26','0000-00-00 00:00:00'),(14,49,'21.9765453','83.1409439','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1585033595289.jpg','2020-03-24 12:35:58',NULL,NULL,'0','2020-03-24 07:06:35','0000-00-00 00:00:00'),(15,56,'17.4058333','78.3766605','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1585059440921.jpg','2020-03-24 19:46:37','2020-03-24 19:46:54',NULL,'0','2020-03-24 14:17:21','2020-03-24 14:17:38'),(16,5,'29.1387223','76.701704','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1585112370301.jpg','2020-03-25 10:29:29',NULL,NULL,'0','2020-03-25 04:59:30','0000-00-00 00:00:00'),(19,52,'28.6882163','77.3242342','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1585121040202.jpg','2020-03-25 03:23:55',NULL,NULL,'0','2020-03-25 07:24:00','0000-00-00 00:00:00'),(20,58,'28.6901153','77.3255726','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1585122762969.jpg','2020-03-25 03:52:41',NULL,NULL,'0','2020-03-25 07:52:43','2020-03-25 08:27:08'),(22,57,'28.6882399','77.3242072','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1585125540849.jpg','2020-03-25 04:39:00','2020-03-25 08:43:18',NULL,'0','2020-03-25 08:39:01','2020-03-25 12:43:19'),(23,57,'28.6882399','77.3242072','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1585125582290.jpg','2020-03-25 04:39:41','2020-03-25 08:43:18',NULL,'0','2020-03-25 08:39:42','2020-03-25 12:43:19'),(24,57,'28.6882399','77.3242072','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1585125623141.jpg','2020-03-25 04:40:22','2020-03-25 08:43:18',NULL,'1','2020-03-25 08:40:23','2020-04-18 09:52:39'),(25,27,'21.9765453','83.1409439','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1585138354703.jpg','2020-03-25 17:42:33','2020-03-25 18:36:45',NULL,'0','2020-03-25 12:12:34','2020-03-25 13:06:46'),(26,27,'21.9765453','83.1409439','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1585141572365.jpg','2020-03-25 18:36:10','2020-03-25 18:36:45',NULL,'0','2020-03-25 13:06:12','2020-03-25 13:06:46'),(27,58,'28.7653414','77.5176438','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1585193484272.jpg','2020-03-26 09:01:23','2020-03-26 16:44:08',NULL,'0','2020-03-26 03:31:24','2020-03-26 11:14:18'),(28,56,'17.4407247','78.4270154','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1585231002036.jpg','2020-03-26 19:26:38','2020-03-26 19:26:57',NULL,'0','2020-03-26 13:56:42','2020-03-26 13:57:01'),(29,58,'28.7653422','77.5176505','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1585568015211.jpg','2020-03-30 17:03:12',NULL,NULL,'0','2020-03-30 11:33:35','0000-00-00 00:00:00'),(30,59,'28.5786225','77.3208817','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1585896889534.jpg','2020-04-03 12:24:45',NULL,NULL,'0','2020-04-03 06:54:49','0000-00-00 00:00:00'),(31,62,'28.5785451','77.3211105','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1585915007059.jpg','2020-04-03 17:26:38',NULL,NULL,'0','2020-04-03 11:56:47','0000-00-00 00:00:00'),(32,62,'28.5785451','77.3211105','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1585915071780.jpg','2020-04-03 17:27:50',NULL,NULL,'0','2020-04-03 11:57:51','0000-00-00 00:00:00'),(33,35,'28.6301484','77.3811856','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1586247988919.png','2020-04-07 13:56:23',NULL,NULL,'0','2020-04-07 08:26:29','0000-00-00 00:00:00'),(34,35,'28.6301484','77.3811856','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1586259341091.png','2020-04-07 17:05:37',NULL,NULL,'0','2020-04-07 11:35:41','0000-00-00 00:00:00'),(35,35,'28.6301484','77.3811856','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1586260722379.png','2020-04-07 17:28:39',NULL,NULL,'0','2020-04-07 11:58:42','0000-00-00 00:00:00'),(36,63,'','','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1586291424160.jpg','2020-04-08 02:00:17',NULL,NULL,'0','2020-04-07 20:30:24','0000-00-00 00:00:00'),(37,35,'28.6301484','77.3811856','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1586316180198.png','2020-04-08 08:52:59',NULL,NULL,'0','2020-04-08 03:23:00','0000-00-00 00:00:00'),(38,5,'28.6301484','77.3811856','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1586362255598.png','2020-04-08 21:40:54',NULL,NULL,'0','2020-04-08 16:10:55','0000-00-00 00:00:00'),(39,42,'29.1388566','76.7019736','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1586434739012.jpg','2020-04-09 17:48:57',NULL,NULL,'0','2020-04-09 12:18:59','0000-00-00 00:00:00'),(40,66,'28.6301484','77.3811856','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1586496029932.png','2020-04-10 10:50:29',NULL,NULL,'0','2020-04-10 05:20:30','0000-00-00 00:00:00'),(41,42,'29.1387239','76.7017234','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1586502329845.jpg','2020-04-10 12:35:18',NULL,NULL,'0','2020-04-10 07:05:30','0000-00-00 00:00:00'),(42,63,'29.050377','77.7116658','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1586521906708.jpg','2020-04-10 18:01:44',NULL,NULL,'0','2020-04-10 12:31:46','0000-00-00 00:00:00'),(43,67,'29.0507478','77.7111998','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1586755221413.jpg','2020-04-13 10:50:18',NULL,NULL,'0','2020-04-13 05:20:21','0000-00-00 00:00:00'),(44,63,'','','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1586851855475.jpg','2020-04-14 13:40:53',NULL,NULL,'0','2020-04-14 08:10:55','0000-00-00 00:00:00'),(45,42,'29.1389135','76.7021219','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1586866916333.jpg','2020-04-14 17:51:53',NULL,NULL,'0','2020-04-14 12:21:56','0000-00-00 00:00:00'),(46,35,'28.6301484','77.3811856','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1586930030448.png','2020-04-15 11:23:48',NULL,NULL,'0','2020-04-15 05:53:50','0000-00-00 00:00:00'),(47,63,'29.0503312','77.7114051','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1586980892225.jpg','2020-04-16 01:31:31',NULL,NULL,'0','2020-04-15 20:01:32','0000-00-00 00:00:00'),(48,44,'29.1389135','76.7021219','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1587018017269.jpg','2020-04-16 11:50:11',NULL,NULL,'0','2020-04-16 06:20:17','0000-00-00 00:00:00'),(49,67,'29.0507413','77.7112101','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1587038671273.jpg','2020-04-16 17:34:24',NULL,NULL,'0','2020-04-16 12:04:31','0000-00-00 00:00:00'),(50,57,'28.6883427','77.3241911','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1587119399546.jpg','2020-04-17 15:59:55',NULL,NULL,'0','2020-04-17 10:29:59','2020-04-18 09:51:35'),(51,56,'17.4352217','78.4296715','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1587450284861.jpg','2020-04-21 11:54:43',NULL,NULL,'0','2020-04-21 06:24:44','0000-00-00 00:00:00'),(52,50,'19.3088299','84.7901322','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1587450446248.jpg','2020-04-21 11:57:24',NULL,NULL,'0','2020-04-21 06:27:26','0000-00-00 00:00:00'),(53,27,'21.9798534','83.1402737','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1587451332045.jpg','2020-04-21 12:12:09',NULL,NULL,'1','2020-04-21 06:42:12','2020-04-21 06:43:44'),(54,50,'19.3088299','84.7901322','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1587534037526.jpg','2020-04-22 11:10:35','2020-04-22 19:50:29',NULL,'0','2020-04-22 05:40:37','2020-04-22 14:20:31'),(55,56,'17.4352939','78.4296694','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1587565200795.jpg','2020-04-22 19:49:59','2020-04-22 23:03:46',NULL,'0','2020-04-22 14:20:00','2020-04-22 17:33:47'),(56,50,'19.3088299','84.7901322','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1587619715862.jpg','2020-04-23 10:58:32',NULL,NULL,'0','2020-04-23 05:28:35','0000-00-00 00:00:00'),(57,56,'17.4352352','78.4297398','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1587652763968.jpg','2020-04-23 20:08:42','2020-04-23 20:21:03',NULL,'0','2020-04-23 14:39:24','2020-04-23 14:51:44'),(58,27,'21.9881202','83.1429546','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1587655845700.jpg','2020-04-23 21:00:36','2020-04-23 21:00:59',NULL,'0','2020-04-23 15:30:45','2020-04-23 15:31:02'),(59,50,'19.3088299','84.7901322','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1587707404542.jpg','2020-04-24 11:20:02','2020-04-24 19:50:14',NULL,'0','2020-04-24 05:50:04','2020-04-24 14:20:16'),(60,44,'28.5785849','77.32112','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1587711778287.jpg','2020-04-24 12:32:55',NULL,'','0','2020-04-24 07:02:58','2020-04-24 08:15:43'),(61,50,'19.3088299','84.7901322','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1587791533476.jpg','2020-04-25 10:42:11',NULL,NULL,'0','2020-04-25 05:12:13','2020-04-25 06:55:22'),(62,42,'29.1388519','76.702092','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1587834060941.jpg','2020-04-25 22:30:59',NULL,'','0','2020-04-25 17:01:01','2020-04-25 17:03:37'),(63,42,'29.1389236','76.7021298','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1587957986771.jpg','2020-04-27 08:56:25',NULL,'','0','2020-04-27 03:26:27','2020-04-27 03:35:44'),(64,56,'17.4351617','78.4295868','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1587990751585.jpg','2020-04-27 18:02:30','2020-04-27 19:48:45','','0','2020-04-27 12:32:31','2020-04-27 14:22:31'),(65,57,'28.6883651','77.3241909','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1587993779965.jpg','2020-04-27 18:53:01','2020-04-27 18:54:12','J13vn8giC27rTZBMAAAH','0','2020-04-27 13:23:00','2020-04-27 13:24:11'),(66,42,'29.1399029','76.7028058','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1588232608658.jpg','2020-04-30 13:13:27',NULL,'','0','2020-04-30 07:43:28','2020-04-30 07:54:10'),(67,68,'','','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1588233622096.jpg','2020-04-30 13:30:21',NULL,'','0','2020-04-30 08:00:22','2020-04-30 08:05:01'),(68,27,'','','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1588652068539.jpg','2020-05-05 09:44:27',NULL,'','0','2020-05-05 04:14:28','2020-05-05 10:47:49'),(69,50,'','','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1588655156684.jpg','2020-05-05 10:35:55',NULL,'','0','2020-05-05 05:05:56','2020-05-05 10:45:03'),(70,56,'17.4353088','78.4296534','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1588658943117.jpg','2020-05-05 11:38:20',NULL,'','0','2020-05-05 06:09:03','2020-05-05 16:29:03'),(71,55,'19.3084872','84.7911107','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1588672207951.jpg','2020-05-05 15:20:06','2020-05-05 20:01:00','','0','2020-05-05 09:50:08','2020-05-05 14:35:32'),(72,55,'19.3181288','84.7918053','0','https://frms-s3.s3-ap-south-1.amazonaws.com/1588741339521.jpg','2020-05-06 10:32:18','2020-05-06 20:18:57','','0','2020-05-06 05:02:19','2020-05-06 15:06:29'),(73,55,'19.3088299','84.7901322','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1588828084852.jpg','2020-05-07 10:38:02',NULL,'','0','2020-05-07 05:08:05','2020-05-07 06:58:14'),(74,70,'29.1389307','76.7021756','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1588840233605.jpg','2020-05-07 14:00:30',NULL,'','0','2020-05-07 08:30:33','2020-05-07 09:19:31'),(75,70,'29.1389107','76.702121','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1588925240006.jpg','2020-05-08 13:37:18',NULL,'','0','2020-05-08 08:07:20','2020-05-08 08:45:11'),(76,55,'19.3073175','84.7919701','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1589013641840.jpg','2020-05-09 14:10:39',NULL,'','0','2020-05-09 08:40:42','2020-05-09 08:44:38'),(77,5,'19.89787','657.6567','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1590497848785.jpeg','2020-04-30 17:02:30',NULL,NULL,'0','2020-05-26 08:57:29','0000-00-00 00:00:00'),(78,5,'19.89787','657.6567','1','https://frms-s3.s3-ap-south-1.amazonaws.com/1590497879804.png','2020-04-30 17:02:30',NULL,NULL,'0','2020-05-26 08:58:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `punching_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regularisation`
--

DROP TABLE IF EXISTS `regularisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regularisation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `punch_in` datetime DEFAULT '0000-00-00 00:00:00',
  `punch_out` datetime DEFAULT NULL,
  `remarks` text,
  `status` enum('Pending','Approve','Cancel') NOT NULL DEFAULT 'Pending',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regularisation`
--

LOCK TABLES `regularisation` WRITE;
/*!40000 ALTER TABLE `regularisation` DISABLE KEYS */;
INSERT INTO `regularisation` VALUES (1,52,'2020-03-18 12:12:54','2020-03-18 15:12:54','wo','Cancel','2020-03-18 06:43:11','2020-04-03 08:39:57'),(2,52,'2020-03-02 17:13:12','2020-03-05 17:13:12','gdgdhf','Pending','2020-03-18 06:43:44','0000-00-00 00:00:00'),(3,5,'2020-03-19 13:49:10','2020-03-19 18:49:10','hi ','Pending','2020-03-19 08:19:24','0000-00-00 00:00:00'),(4,27,'2020-03-18 09:55:42','2020-03-18 19:55:42','test','Approve','2020-03-19 08:21:28','2020-03-24 07:17:47'),(5,55,'2020-03-19 10:00:59','2020-03-20 22:00:59','Sick','Pending','2020-03-20 05:32:35','0000-00-00 00:00:00'),(6,55,'2020-03-11 11:57:56','2020-03-13 11:57:56','Sick','Pending','2020-03-20 06:28:10','0000-00-00 00:00:00'),(7,35,'2020-04-08 08:53:09','2020-04-08 08:53:11',' lol ','Pending','2020-04-08 03:23:18','0000-00-00 00:00:00'),(8,5,'2020-04-05 21:39:00','2020-04-06 21:39:00','T','Pending','2020-04-08 16:09:42','0000-00-00 00:00:00'),(9,66,'2020-04-10 10:18:41','2020-04-10 10:18:44','Test','Pending','2020-04-10 04:48:48','0000-00-00 00:00:00'),(10,63,'2020-04-15 02:03:48','2020-04-15 02:03:48','fyyy','Pending','2020-04-14 20:34:04','0000-00-00 00:00:00'),(11,57,'2020-04-15 15:24:38','2020-04-15 18:30:38','please correct my timings','Approve','2020-04-18 09:55:27','2020-04-18 09:55:55'),(12,56,'2020-04-21 13:57:16','2020-04-21 23:57:16','test','Pending','2020-04-21 08:27:36','0000-00-00 00:00:00'),(13,50,'2020-04-21 13:13:43','2020-04-21 13:13:43','ksk','Pending','2020-04-21 08:43:52','0000-00-00 00:00:00'),(14,44,'2020-04-17 21:49:53','2020-04-17 21:49:53','test','Pending','2020-04-23 16:20:08','0000-00-00 00:00:00'),(15,44,'2020-04-17 21:50:10','2020-04-17 21:50:10','dhh','Pending','2020-04-23 16:20:21','0000-00-00 00:00:00'),(16,44,'2020-04-18 21:51:32','2020-04-18 21:51:32','testing','Approve','2020-04-23 16:21:59','2020-04-24 08:26:30'),(17,44,'2020-04-23 21:57:20','2020-04-23 21:57:20','y','Approve','2020-04-23 16:27:29','2020-04-24 04:31:30'),(18,5,'2020-04-25 07:50:15','2020-04-25 18:50:15','this is my correct time','Pending','2020-04-27 11:17:55','0000-00-00 00:00:00'),(19,50,'2020-04-27 15:11:10','2020-04-27 21:11:10','sit','Pending','2020-04-27 12:41:52','0000-00-00 00:00:00'),(20,69,'2020-05-01 13:05:20','2020-05-01 15:05:20','bb','Pending','2020-05-01 07:35:32','0000-00-00 00:00:00'),(21,57,'2020-04-30 12:05:00','2020-04-30 19:05:00','this is my correct tim.','Pending','2020-05-01 07:35:39','0000-00-00 00:00:00'),(22,57,'2020-04-29 06:25:22','2020-04-29 18:25:22','check this','Pending','2020-05-01 07:55:40','0000-00-00 00:00:00'),(23,27,'2020-05-08 07:10:27','2020-05-08 19:10:27','bdbbbd','Pending','2020-05-08 07:41:05','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `regularisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL,
  `description` text,
  `status` enum('pending','in-progress','resolve','reject') NOT NULL DEFAULT 'pending' COMMENT '''pending'',''in-progress'',''resolve'',''reject''',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES (1,57,'test request',1,2,'nyc','pending','2020-04-09 06:52:27','0000-00-00 00:00:00'),(2,57,'test request again',4,3,'good request','resolve','2020-04-09 06:53:28','2020-04-10 05:56:27'),(3,58,'test request progress',4,3,'good progress request','resolve','2020-04-09 06:53:28','2020-04-24 08:07:32'),(4,58,'test request reject',4,3,'good progress reject','reject','2020-04-09 06:53:28','0000-00-00 00:00:00'),(5,58,'test request resolve',4,3,'good resolve reject','resolve','2020-04-09 06:53:28','0000-00-00 00:00:00'),(6,57,'movie',4,3,'Tom and jerry','pending','2020-04-09 09:54:44','0000-00-00 00:00:00'),(7,57,'songs',4,3,'Punjabi songs','pending','2020-04-09 09:57:08','0000-00-00 00:00:00'),(8,57,'tes',4,3,'jxid','resolve','2020-04-09 10:03:52','2020-04-18 10:22:04'),(9,42,'new',1,3,'This is an issue','pending','2020-04-09 12:22:47','0000-00-00 00:00:00'),(10,66,'      ',1,3,'g g','pending','2020-04-10 05:37:04','0000-00-00 00:00:00'),(11,66,'testing',4,3,'testingc xgc hch ucb kgcuyco hyfu ygugug hcigiv uvivihi uvivibi hvuvinpn ivohj uviohho jvib ibkbo  ivobk ivib testingc xgc hch ucb kgcuyco hyfu ygugug hcigiv uvivihi uvivibi hvuvinpn ivohj uviohho jvib ibkbo  ivobk ivib testingc xgc hch ucb kgcuyco hyfu ygugug hcigiv uvivihi uvivibi hvuvinpn ivohj uviohho jvib ibkbo  ivobk ivib testingc xgc hch ucb kgcuyco hyfu ygugug hcigiv uvivihi uvivibi hvuvinpn ivohj uviohho jvib ibkbo  ivobk ivib ','reject','2020-04-10 05:39:39','2020-04-10 06:09:16'),(12,63,'tedt',3,1,'tedt','pending','2020-04-14 19:25:18','0000-00-00 00:00:00'),(13,67,'tdt',3,1,'test','pending','2020-04-15 17:11:52','0000-00-00 00:00:00'),(14,67,'ywyw',3,1,'taya','pending','2020-04-15 17:18:04','0000-00-00 00:00:00'),(15,67,'hshs',4,3,'hshahjs','pending','2020-04-15 17:18:13','0000-00-00 00:00:00'),(16,67,'nkiiss',3,1,'hajak','pending','2020-04-15 17:18:25','0000-00-00 00:00:00'),(17,63,'test',4,3,'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.','pending','2020-04-16 20:06:08','0000-00-00 00:00:00'),(18,63,'test',3,1,'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.','pending','2020-04-18 18:36:59','0000-00-00 00:00:00'),(19,50,'Require iPhone',3,1,'hbana\nhaha\nvsbs','pending','2020-04-21 06:35:45','0000-00-00 00:00:00'),(20,50,'ash\ndr\nFF\nfffas\nsag\nf\nf\nf\n',3,1,'agh','pending','2020-04-21 06:40:27','0000-00-00 00:00:00'),(21,56,'test',3,1,'bssbbssjs\nsbsbs\nbabs\nshahid\nhand\n\n\nshahid\nhsjsnd\nshsbnd\ndhdhjd\ndhhhd\n','pending','2020-04-21 06:54:17','0000-00-00 00:00:00'),(22,56,'teste',4,3,'testr','resolve','2020-04-21 06:55:13','2020-04-25 05:01:47'),(23,56,'gshshsh',4,3,'heheh','pending','2020-04-21 06:56:05','0000-00-00 00:00:00'),(24,56,'hshssh',3,1,'nenne','pending','2020-04-21 06:56:36','0000-00-00 00:00:00'),(25,56,'gsshhsh',3,1,'shhssh\ndhshns\nhshhs\nzhhz\nzhhzs\nhz\nshhshs\nhshhs','pending','2020-04-21 06:57:39','0000-00-00 00:00:00'),(26,50,'sits',3,1,'iIisi\nUR','pending','2020-04-21 06:59:12','0000-00-00 00:00:00'),(27,63,'rest',4,3,'Test','in-progress','2020-04-22 07:52:59','2020-04-25 04:59:27'),(28,63,'asadf',3,1,'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.','pending','2020-04-22 07:57:49','0000-00-00 00:00:00'),(29,27,'need collateral',3,1,'testing','resolve','2020-04-23 15:25:48','2020-04-23 15:26:54'),(30,44,'Testing ',3,1,'testing ','pending','2020-04-23 17:23:42','0000-00-00 00:00:00'),(31,57,'my resume',3,1,'testing','pending','2020-04-25 12:41:15','0000-00-00 00:00:00'),(32,5,'New request ',3,1,'testing ','pending','2020-04-30 06:34:48','0000-00-00 00:00:00'),(33,68,'New',3,2,'test','pending','2020-04-30 07:55:04','0000-00-00 00:00:00'),(34,69,'r',3,2,'ebbe','pending','2020-05-04 04:32:16','0000-00-00 00:00:00'),(35,69,'fbbde',2,4,'enen','pending','2020-05-04 04:32:28','0000-00-00 00:00:00'),(36,55,'abcdefghijklmnopqrstuvwxyz abcdefghijklmnopqrstuvw',1,5,'zkgsk','pending','2020-05-09 08:42:35','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_allocate`
--

DROP TABLE IF EXISTS `resource_allocate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource_allocate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` int(11) DEFAULT NULL,
  `allocated_user` int(11) NOT NULL,
  `allocated_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `status` enum('1','0','2','3') NOT NULL DEFAULT '0' COMMENT '0=Allocated,1=Submitted,2=Returned,3=Pending',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_allocate`
--

LOCK TABLES `resource_allocate` WRITE;
/*!40000 ALTER TABLE `resource_allocate` DISABLE KEYS */;
INSERT INTO `resource_allocate` VALUES (1,1,35,'2020-04-07','2020-04-30','0','2020-04-01 10:48:32','0000-00-00 00:00:00'),(2,2,5,'2020-04-05','2020-05-08','1','2020-04-01 10:48:55','2020-05-05 05:37:07'),(3,2,42,'2020-04-03','2020-04-03','0','2020-04-03 11:29:29','0000-00-00 00:00:00'),(4,4,57,'2020-04-03','2020-05-12','1','2020-04-03 12:26:42','2020-05-05 06:22:39'),(5,1,63,'2020-04-08','2020-04-17','1','2020-04-04 07:03:36','2020-04-14 19:26:10'),(6,1,27,'2020-04-04','0000-00-00','1','2020-04-04 14:10:13','2020-04-23 15:22:55'),(7,1,57,'2020-04-04','2020-05-09','0','2020-04-04 14:10:13','2020-05-05 05:37:18'),(8,2,66,'2020-04-10','2020-04-11','0','2020-04-10 06:11:35','0000-00-00 00:00:00'),(9,2,57,'2020-04-10','2020-05-13','0','2020-04-10 06:11:35','2020-05-05 05:37:51'),(10,3,57,'2020-04-12','2020-04-19','0','2020-04-10 06:11:35','2020-05-05 05:37:28'),(11,1,57,'2020-04-22','2020-04-29','1','2020-04-18 09:18:57','2020-05-05 05:39:18'),(12,1,5,'2020-04-29','2020-04-30','1','2020-04-18 10:21:19','2020-05-05 05:38:01'),(13,1,50,'2020-04-21','0000-00-00','1','2020-04-21 07:21:56','2020-04-21 07:57:04'),(14,3,44,'2020-04-24','2020-04-25','1','2020-04-24 05:17:06','2020-04-24 05:19:36'),(15,3,44,'2020-04-24','2020-04-25','2','2020-04-24 05:19:22','2020-04-24 05:19:47'),(16,0,0,'0000-00-00','0000-00-00','0','2020-04-24 08:20:10','0000-00-00 00:00:00'),(17,0,0,'0000-00-00','0000-00-00','0','2020-04-25 05:07:25','0000-00-00 00:00:00'),(18,3,5,'2020-04-30','2020-05-01','1','2020-04-30 06:39:09','2020-04-30 06:41:57'),(19,1,69,'2020-05-05','2020-05-06','0','2020-05-05 07:11:27','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `resource_allocate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submit_survey`
--

DROP TABLE IF EXISTS `submit_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submit_survey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `answer` text,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submit_survey`
--

LOCK TABLES `submit_survey` WRITE;
/*!40000 ALTER TABLE `submit_survey` DISABLE KEYS */;
INSERT INTO `submit_survey` VALUES (1,38,3,'{\n  \"survey_form\": \"\",\n  \"result\": [\n    {\n      \"question_id\": \"1\",\n      \"question_type\": \"radioButton\",\n      \"answer\": \"\"\n    },\n    {\n      \"question_id\": \"2\",\n      \"question_type\": \"checkbox\",\n      \"answer\": \"\"\n    },\n    {\n      \"question_id\": \"3\",\n      \"question_type\": \"dropdown\",\n      \"answer\": \"\"\n    },\n    {\n      \"question_id\": \"4\",\n      \"question_type\": \"shortanswer\",\n      \"answer\": \"\"\n    },\n    {\n      \"question_id\": \"5\",\n      \"question_type\": \"longanswer\",\n      \"answer\": \"\"\n    }\n  ]\n}','2020-04-23 09:58:47','0000-00-00 00:00:00'),(6,38,3,'{\n  \"survey_form\": \"\",\n  \"result\": [\n    {\n      \"question_id\": \"1\",\n      \"question_type\": \"radioButton\",\n      \"answer\": \"\"\n    },\n    {\n      \"question_id\": \"2\",\n      \"question_type\": \"checkbox\",\n      \"answer\": \"\"\n    },\n    {\n      \"question_id\": \"3\",\n      \"question_type\": \"dropdown\",\n      \"answer\": \"\"\n    },\n    {\n      \"question_id\": \"4\",\n      \"question_type\": \"shortanswer\",\n      \"answer\": \"\"\n    },\n    {\n      \"question_id\": \"5\",\n      \"question_type\": \"longanswer\",\n      \"answer\": \"\"\n    }\n  ]\n}','2020-04-25 05:51:17','0000-00-00 00:00:00'),(34,57,2,'{\"survey_form\":\"2\",\"result\":[{\"question_id\":\"2\",\"question_type\":\"radiobutton\",\"answer\":\"4\"},{\"question_id\":\"3\",\"question_type\":\"checkbox\",\"answer\":\"7\"},{\"question_id\":\"4\",\"question_type\":\"long_text\",\"answer\":\"\"},{\"question_id\":\"5\",\"question_type\":\"dropdown\",\"answer\":\"\"},{\"question_id\":\"14\",\"question_type\":\"short_text\",\"answer\":\"\"},{\"question_id\":\"15\",\"question_type\":\"long_text\",\"answer\":\"\"},{\"question_id\":\"16\",\"question_type\":\"short_text\",\"answer\":\"\"},{\"question_id\":\"17\",\"question_type\":\"long_text\",\"answer\":\"\"},{\"question_id\":\"18\",\"question_type\":\"long_text\",\"answer\":\"\"},{\"question_id\":\"19\",\"question_type\":\"short_text\",\"answer\":\"\"},{\"question_id\":\"20\",\"question_type\":\"short_text\",\"answer\":\"\"},{\"question_id\":\"21\",\"question_type\":\"long_text\",\"answer\":\"\"}]}','2020-04-25 13:34:09','2020-04-27 10:28:14'),(35,44,4,'{\"survey_form\":\"4\",\"result\":[{\"question_id\":\"8\",\"question_type\":\"radiobutton\",\"answer\":\"21\"},{\"question_id\":\"9\",\"question_type\":\"checkbox\",\"answer\":\"\"},{\"question_id\":\"10\",\"question_type\":\"dropdown\",\"answer\":\"\"},{\"question_id\":\"11\",\"question_type\":\"short_text\",\"answer\":\"\"},{\"question_id\":\"12\",\"question_type\":\"long_text\",\"answer\":\"\"}]}','2020-04-25 14:04:28','0000-00-00 00:00:00'),(36,44,4,'{\"survey_form\":\"4\",\"result\":[{\"question_id\":\"8\",\"question_type\":\"radiobutton\",\"answer\":\"22\"},{\"question_id\":\"9\",\"question_type\":\"checkbox\",\"answer\":\"Kotlin\"},{\"question_id\":\"10\",\"question_type\":\"dropdown\",\"answer\":\"\"},{\"question_id\":\"11\",\"question_type\":\"short_text\",\"answer\":\"\"},{\"question_id\":\"12\",\"question_type\":\"long_text\",\"answer\":\"\"}]}','2020-04-25 14:04:45','0000-00-00 00:00:00'),(37,44,4,'{\"survey_form\":\"4\",\"result\":[{\"question_id\":\"8\",\"question_type\":\"radiobutton\",\"answer\":\"\"},{\"question_id\":\"9\",\"question_type\":\"checkbox\",\"answer\":\"\"},{\"question_id\":\"10\",\"question_type\":\"dropdown\",\"answer\":\"30\"},{\"question_id\":\"11\",\"question_type\":\"short_text\",\"answer\":\"77\"},{\"question_id\":\"12\",\"question_type\":\"long_text\",\"answer\":\"\"}]}','2020-04-25 14:04:57','0000-00-00 00:00:00'),(38,44,3,'{\"survey_form\":\"3\",\"result\":[{\"question_id\":\"6\",\"question_type\":\"radiobutton\",\"answer\":\"16\"},{\"question_id\":\"7\",\"question_type\":\"dropdown\",\"answer\":\"\"}]}','2020-04-25 14:05:50','0000-00-00 00:00:00'),(39,44,4,'{\"survey_form\":\"4\",\"result\":[{\"question_id\":\"8\",\"question_type\":\"radiobutton\",\"answer\":\"24\"},{\"question_id\":\"9\",\"question_type\":\"checkbox\",\"answer\":\"ios\"},{\"question_id\":\"10\",\"question_type\":\"dropdown\",\"answer\":\"29\"},{\"question_id\":\"11\",\"question_type\":\"short_text\",\"answer\":\"vuvhvu asks what we did to get otp has a new baby ko and u r a nice guy and out there for him and I\"},{\"question_id\":\"12\",\"question_type\":\"long_text\",\"answer\":\"\"}]}','2020-04-25 14:11:17','0000-00-00 00:00:00'),(40,44,4,'{\"survey_form\":\"4\",\"result\":[{\"question_id\":\"8\",\"question_type\":\"radiobutton\",\"answer\":\"21\"},{\"question_id\":\"9\",\"question_type\":\"checkbox\",\"answer\":\"Java\"},{\"question_id\":\"10\",\"question_type\":\"dropdown\",\"answer\":\"29\"},{\"question_id\":\"11\",\"question_type\":\"short_text\",\"answer\":\"hs\"},{\"question_id\":\"12\",\"question_type\":\"long_text\",\"answer\":\"s\"}]}','2020-04-25 14:20:33','0000-00-00 00:00:00'),(41,5,4,'{\"survey_form\":\"4\",\"result\":[{\"question_id\":\"8\",\"question_type\":\"radiobutton\",\"answer\":\"23\"},{\"question_id\":\"9\",\"question_type\":\"checkbox\",\"answer\":\"\"},{\"question_id\":\"10\",\"question_type\":\"dropdown\",\"answer\":\"\"},{\"question_id\":\"11\",\"question_type\":\"short_text\",\"answer\":\"\"},{\"question_id\":\"12\",\"question_type\":\"long_text\",\"answer\":\"\"}]}','2020-04-30 07:00:03','0000-00-00 00:00:00'),(42,5,4,'{\"survey_form\":\"4\",\"result\":[{\"question_id\":\"8\",\"question_type\":\"radiobutton\",\"answer\":\"23\"},{\"question_id\":\"9\",\"question_type\":\"checkbox\",\"answer\":\"ios\"},{\"question_id\":\"10\",\"question_type\":\"dropdown\",\"answer\":\"30\"},{\"question_id\":\"11\",\"question_type\":\"short_text\",\"answer\":\"b\"},{\"question_id\":\"12\",\"question_type\":\"long_text\",\"answer\":\"i\"}]}','2020-04-30 07:00:22','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `submit_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submit_task`
--

DROP TABLE IF EXISTS `submit_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submit_task` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `frm_id` int(10) NOT NULL,
  `task_id` int(10) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0=pending,1=complete(progress status)',
  `task_status` enum('1','2','0') NOT NULL DEFAULT '0' COMMENT '0=pending,1=approve,2=reopen',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submit_task`
--

LOCK TABLES `submit_task` WRITE;
/*!40000 ALTER TABLE `submit_task` DISABLE KEYS */;
INSERT INTO `submit_task` VALUES (1,57,2,'undefined','0','0','2020-04-07 11:12:13','2020-04-25 06:34:28'),(2,57,5,'','1','0','2020-04-07 11:53:34','2020-04-29 10:01:28'),(3,63,9,'tedt','0','0','2020-04-10 13:04:14','2020-04-25 06:35:18'),(4,63,11,'','0','0','2020-04-13 19:26:15','0000-00-00 00:00:00'),(5,63,0,'Comment','0','0','2020-04-15 13:04:44','0000-00-00 00:00:00'),(6,44,13,'','1','0','2020-04-16 04:54:08','2020-04-30 08:21:57'),(7,27,23,'','1','1','2020-04-20 06:57:58','2020-04-22 05:13:58'),(9,63,12,'Test','0','0','2020-04-21 04:51:47','2020-04-21 04:54:53'),(10,56,24,'','1','0','2020-04-21 07:00:36','2020-04-27 12:44:55'),(11,50,25,'','1','1','2020-04-21 07:14:17','2020-04-21 07:49:51'),(12,50,27,'','1','1','2020-04-23 06:52:13','2020-04-23 07:02:00'),(13,44,29,'','1','0','2020-04-24 05:56:51','2020-04-30 07:01:20'),(14,44,14,'','1','0','2020-04-24 07:00:21','2020-04-30 08:07:28'),(15,57,31,'hello','1','0','2020-04-28 09:15:07','2020-04-28 10:01:55'),(16,57,30,'this is my task completed','1','0','2020-04-28 11:03:39','2020-04-28 11:05:11'),(17,57,28,'vzhd','1','0','2020-04-28 11:07:57','2020-04-28 12:34:54'),(18,57,21,'ok cancel','1','0','2020-04-28 12:37:46','2020-04-28 12:49:11'),(19,57,20,'ok','0','0','2020-04-28 12:51:50','0000-00-00 00:00:00'),(22,57,18,NULL,'0','0','2020-04-28 13:08:50','0000-00-00 00:00:00'),(24,57,22,'jguf','0','0','2020-04-29 07:49:02','0000-00-00 00:00:00'),(25,57,19,'sir','1','0','2020-04-29 07:56:38','0000-00-00 00:00:00'),(26,57,17,'vjvi','1','0','2020-04-29 07:58:51','2020-04-29 07:59:32'),(27,5,29,'tes','1','0','2020-04-30 06:48:29','2020-04-30 07:01:20'),(28,69,14,'completed ','1','0','2020-04-30 08:08:36','0000-00-00 00:00:00'),(29,69,13,'sbsbs','1','0','2020-04-30 08:20:54','2020-04-30 08:21:57'),(30,55,33,'gaha','1','0','2020-05-05 10:05:52','2020-05-05 10:06:03'),(31,55,32,'xcg','1','0','2020-05-06 05:09:20','2020-05-06 05:12:27');
/*!40000 ALTER TABLE `submit_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submit_task_7Apr20`
--

DROP TABLE IF EXISTS `submit_task_7Apr20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submit_task_7Apr20` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `frm_id` int(10) NOT NULL,
  `task_id` int(10) NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `audio` varchar(255) NOT NULL DEFAULT '',
  `video` varchar(255) NOT NULL DEFAULT '',
  `document` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submit_task_7Apr20`
--

LOCK TABLES `submit_task_7Apr20` WRITE;
/*!40000 ALTER TABLE `submit_task_7Apr20` DISABLE KEYS */;
INSERT INTO `submit_task_7Apr20` VALUES (1,57,5,'','https://frms-s3.s3-ap-south-1.amazonaws.com/1585297123832.jpg','','','','2020-03-27 08:18:43'),(2,57,5,'','https://frms-s3.s3-ap-south-1.amazonaws.com/1585305064595.jpg','','','','2020-03-27 10:31:04'),(3,57,5,'','','','','https://frms-s3.s3-ap-south-1.amazonaws.com/1585305906089.pdf','2020-03-27 10:45:06'),(4,57,5,'','','','','https://frms-s3.s3-ap-south-1.amazonaws.com/1585305924985.pdf','2020-03-27 10:45:24'),(5,57,5,'','','https://frms-s3.s3-ap-south-1.amazonaws.com/1585308359058.mp3','','','2020-03-27 11:25:59'),(6,57,5,'hi','https://frms-s3.s3-ap-south-1.amazonaws.com/1585316566578.jpg','https://frms-s3.s3-ap-south-1.amazonaws.com/1585316566588.mp3','','https://frms-s3.s3-ap-south-1.amazonaws.com/1585316566583.pdf','2020-03-27 13:42:46'),(7,57,5,'','','','https://frms-s3.s3-ap-south-1.amazonaws.com/1585316739973.mp4','','2020-03-27 13:45:39'),(8,57,5,'','https://frms-s3.s3-ap-south-1.amazonaws.com/1585316812665.jpg','','','','2020-03-27 13:46:52'),(9,57,5,'','','','https://frms-s3.s3-ap-south-1.amazonaws.com/1585317294878.mp4','','2020-03-27 13:54:54');
/*!40000 ALTER TABLE `submit_task_7Apr20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey`
--

DROP TABLE IF EXISTS `survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` enum('1','0') NOT NULL COMMENT '1=active,0=inactive',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey`
--

LOCK TABLES `survey` WRITE;
/*!40000 ALTER TABLE `survey` DISABLE KEYS */;
INSERT INTO `survey` VALUES (1,57,'Form1','1','2020-04-16 10:25:05','0000-00-00 00:00:00'),(2,57,'Form2','1','2020-04-16 10:26:53','2020-04-16 10:27:34'),(3,44,'test question answer','1','2020-04-23 07:58:01','2020-04-24 06:22:20'),(4,5,'New Survey Form','1','2020-04-24 06:32:01','2020-04-30 06:59:48');
/*!40000 ALTER TABLE `survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_16Apr20`
--

DROP TABLE IF EXISTS `survey_16Apr20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_16Apr20` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer_type` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `image_type` varchar(100) DEFAULT NULL,
  `status` enum('1','0') NOT NULL COMMENT '1=active,0=inactive',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_16Apr20`
--

LOCK TABLES `survey_16Apr20` WRITE;
/*!40000 ALTER TABLE `survey_16Apr20` DISABLE KEYS */;
INSERT INTO `survey_16Apr20` VALUES (1,0,'test','what is your name?','radiobutton',NULL,'image','1','2020-03-27 08:10:04','2020-04-08 10:25:37'),(2,37,'test2','What is your office name?','checkbox',NULL,'image','0','2020-03-27 08:10:04','2020-04-08 10:25:44'),(3,38,'Office','What is your manager Name?','dropdown','860169217-index1.jpg','image','1','2020-03-27 08:11:25','2020-04-08 10:25:46'),(4,40,'Testing ','Testing form','radiobutton','798966627-mochup.jpg','image','1','2020-04-03 06:51:14','2020-04-08 10:25:49'),(5,42,'Test','Testing','radiobutton','505525536-Untitled-1.jpg','image','1','2020-04-03 07:00:52','2020-04-08 10:25:53'),(6,49,'hellotest again','Howz your day?','dropdown','791836887-level_2.png','image','1','2020-04-03 08:22:41','2020-04-08 10:25:51'),(7,37,'dcdd','test','long_text',NULL,'image','1','2020-04-03 11:13:09','2020-04-08 10:25:56'),(8,27,'Test','How are you','radiobutton',NULL,'image','1','2020-04-04 14:18:40','2020-04-08 10:25:58'),(9,63,'Nyc Question','what is your question?','checkbox','247185830-SampleVideo_1280x720_1mb.mp4','video','1','2020-04-08 10:24:06','0000-00-00 00:00:00'),(10,57,'vishal survey','Who is your Manager?','radiobutton','110027583-index1.jpg','image','1','2020-04-08 10:28:34','0000-00-00 00:00:00'),(11,57,'Teacher','Who is your class teacher?','short_text','408032250-SampleVideo_1280x720_1mb.mp4','video','1','2020-04-08 10:29:16','0000-00-00 00:00:00'),(12,44,'test title','What is your manager Name?',NULL,'113253461-level_5.png','image','1','2020-04-16 03:24:15','2020-04-16 05:02:41'),(13,44,'Logo Designing','Testing','radiobutton','695966130-Untitled-1.jpg','image','1','2020-04-16 05:03:48','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `survey_16Apr20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_answer`
--

DROP TABLE IF EXISTS `survey_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_answer`
--

LOCK TABLES `survey_answer` WRITE;
/*!40000 ALTER TABLE `survey_answer` DISABLE KEYS */;
INSERT INTO `survey_answer` VALUES (1,2,2,'r1','2020-04-16 10:26:53','0000-00-00 00:00:00'),(2,2,2,'r2','2020-04-16 10:26:53','0000-00-00 00:00:00'),(3,2,2,'r3','2020-04-16 10:26:53','0000-00-00 00:00:00'),(4,2,2,'r4','2020-04-16 10:26:53','0000-00-00 00:00:00'),(5,2,3,'c1','2020-04-16 10:26:53','0000-00-00 00:00:00'),(6,2,3,'c2','2020-04-16 10:26:53','0000-00-00 00:00:00'),(7,2,3,'c3','2020-04-16 10:26:53','0000-00-00 00:00:00'),(8,2,3,'c4','2020-04-16 10:26:53','0000-00-00 00:00:00'),(9,2,5,'d1','2020-04-16 10:26:53','0000-00-00 00:00:00'),(10,2,5,'d2','2020-04-16 10:26:53','0000-00-00 00:00:00'),(11,2,5,'d3','2020-04-16 10:26:53','0000-00-00 00:00:00'),(12,2,5,'d4','2020-04-16 10:26:53','0000-00-00 00:00:00'),(13,3,6,'a12','2020-04-23 07:58:01','2020-04-23 07:59:33'),(14,3,6,'a22','2020-04-23 07:58:01','2020-04-23 07:59:33'),(15,3,6,'a32','2020-04-23 07:58:01','2020-04-23 07:59:33'),(16,3,6,'a42','2020-04-23 07:58:01','2020-04-23 07:59:33'),(17,3,7,'d12','2020-04-23 07:58:01','2020-04-23 07:59:33'),(18,3,7,'d22','2020-04-23 07:58:01','2020-04-23 07:59:33'),(19,3,7,'d32','2020-04-23 07:58:01','2020-04-23 07:59:33'),(20,3,7,'d42','2020-04-23 07:58:01','2020-04-23 07:59:33'),(21,4,8,'Abhinav','2020-04-24 06:32:01','0000-00-00 00:00:00'),(22,4,8,'Piyush','2020-04-24 06:32:01','0000-00-00 00:00:00'),(23,4,8,'Ankit','2020-04-24 06:32:01','0000-00-00 00:00:00'),(24,4,8,'Vishal','2020-04-24 06:32:01','0000-00-00 00:00:00'),(25,4,9,'Java','2020-04-24 06:32:01','0000-00-00 00:00:00'),(26,4,9,'Kotlin','2020-04-24 06:32:01','0000-00-00 00:00:00'),(27,4,9,'ios','2020-04-24 06:32:01','0000-00-00 00:00:00'),(28,4,9,'PHP','2020-04-24 06:32:01','0000-00-00 00:00:00'),(29,4,10,'yes','2020-04-24 06:32:01','0000-00-00 00:00:00'),(30,4,10,'No','2020-04-24 06:32:01','0000-00-00 00:00:00'),(31,4,10,'Both','2020-04-24 06:32:01','0000-00-00 00:00:00'),(32,4,10,'None of them','2020-04-24 06:32:01','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `survey_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_answer_16apr20`
--

DROP TABLE IF EXISTS `survey_answer_16apr20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_answer_16apr20` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_answer_16apr20`
--

LOCK TABLES `survey_answer_16apr20` WRITE;
/*!40000 ALTER TABLE `survey_answer_16apr20` DISABLE KEYS */;
INSERT INTO `survey_answer_16apr20` VALUES (1,9,'q1','2020-04-08 10:24:06','0000-00-00 00:00:00'),(2,9,'q2','2020-04-08 10:24:06','0000-00-00 00:00:00'),(3,9,'q3','2020-04-08 10:24:06','0000-00-00 00:00:00'),(4,9,'q4','2020-04-08 10:24:06','0000-00-00 00:00:00'),(5,10,'M1','2020-04-08 10:28:34','0000-00-00 00:00:00'),(6,10,'M2','2020-04-08 10:28:34','0000-00-00 00:00:00'),(7,10,'M3','2020-04-08 10:28:34','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `survey_answer_16apr20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_attachment`
--

DROP TABLE IF EXISTS `survey_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `attachment_type` varchar(100) DEFAULT NULL COMMENT '''image'',''audio'',''video'',''document''',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_attachment`
--

LOCK TABLES `survey_attachment` WRITE;
/*!40000 ALTER TABLE `survey_attachment` DISABLE KEYS */;
INSERT INTO `survey_attachment` VALUES (1,3,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587635927325.wav','audio','2020-04-23 09:58:47',NULL),(2,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587792752703.png','image','2020-04-25 05:32:33',NULL),(3,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587793048137.jpg','image','2020-04-25 05:37:28',NULL),(4,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587793359859.jpg','image','2020-04-25 05:42:40',NULL),(5,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587793615672.jpg','image','2020-04-25 05:46:56',NULL),(6,3,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587793877681.wav','audio','2020-04-25 05:51:17',NULL),(7,3,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587793877678.png','image','2020-04-25 05:51:17',NULL),(8,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587793909350.pdf','document','2020-04-25 05:51:49',NULL),(9,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587793909348.png','image','2020-04-25 05:51:49',NULL),(10,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587793909352.mp3','audio','2020-04-25 05:51:49',NULL),(11,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587793909364.mp4','video','2020-04-25 05:51:49',NULL),(12,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587794132223.pdf','document','2020-04-25 05:55:32',NULL),(13,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587794132226.mp3','audio','2020-04-25 05:55:32',NULL),(14,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587794132205.jpg','image','2020-04-25 05:55:32',NULL),(15,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587794132247.mp4','video','2020-04-25 05:55:32',NULL),(16,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587795150476.pdf','document','2020-04-25 06:12:30',NULL),(17,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587795150479.mp3','audio','2020-04-25 06:12:30',NULL),(18,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587795150466.jpg','image','2020-04-25 06:12:30',NULL),(19,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587795150486.mp4','video','2020-04-25 06:12:30',NULL),(20,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587795725980.pdf','document','2020-04-25 06:22:06',NULL),(21,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587795725977.png','image','2020-04-25 06:22:06',NULL),(22,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587795725982.mp3','audio','2020-04-25 06:22:06',NULL),(23,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587795725990.mp4','video','2020-04-25 06:22:06',NULL),(24,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587796187387.pdf','document','2020-04-25 06:29:47',NULL),(25,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587796187389.mp3','audio','2020-04-25 06:29:47',NULL),(26,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587796187365.jpg','image','2020-04-25 06:29:47',NULL),(27,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587796187399.mp4','video','2020-04-25 06:29:47',NULL),(28,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587796359812.pdf','document','2020-04-25 06:32:39',NULL),(29,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587796359800.jpg','image','2020-04-25 06:32:40',NULL),(30,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587796359814.mp3','audio','2020-04-25 06:32:40',NULL),(31,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587796359822.mp4','video','2020-04-25 06:32:40',NULL),(32,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587796536332.pdf','document','2020-04-25 06:35:36',NULL),(33,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587796536334.mp3','audio','2020-04-25 06:35:36',NULL),(34,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587796536303.jpg','image','2020-04-25 06:35:36',NULL),(35,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587796536349.mp4','video','2020-04-25 06:35:36',NULL),(36,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587796722548.jpg','image','2020-04-25 06:38:42',NULL),(37,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587796722560.mp3','audio','2020-04-25 06:38:42',NULL),(38,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587796722558.pdf','document','2020-04-25 06:38:42',NULL),(39,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587796722568.mp4','video','2020-04-25 06:38:43',NULL),(40,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587797052698.png','image','2020-04-25 06:44:12',NULL),(41,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587797052701.pdf','document','2020-04-25 06:44:12',NULL),(42,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587797052703.mp3','audio','2020-04-25 06:44:12',NULL),(43,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587797052711.mp4','video','2020-04-25 06:44:13',NULL),(44,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587797513725.png','image','2020-04-25 06:51:53',NULL),(45,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587797513727.pdf','document','2020-04-25 06:51:53',NULL),(46,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587797513729.mp3','audio','2020-04-25 06:51:53',NULL),(47,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587797513737.mp4','video','2020-04-25 06:51:54',NULL),(48,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587797573250.pdf','document','2020-04-25 06:52:53',NULL),(49,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587797573243.png','image','2020-04-25 06:52:53',NULL),(50,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587797573254.mp3','audio','2020-04-25 06:52:53',NULL),(51,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587797573266.mp4','video','2020-04-25 06:52:53',NULL),(52,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587798266161.png','image','2020-04-25 07:04:26',NULL),(53,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587798266187.pdf','document','2020-04-25 07:04:26',NULL),(54,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587798266191.mp3','audio','2020-04-25 07:04:26',NULL),(55,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587798266203.mp4','video','2020-04-25 07:04:26',NULL),(56,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587798287140.png','image','2020-04-25 07:04:47',NULL),(57,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587798287143.pdf','document','2020-04-25 07:04:47',NULL),(58,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587798287145.mp3','audio','2020-04-25 07:04:47',NULL),(59,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587798287157.mp4','video','2020-04-25 07:04:47',NULL),(60,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587798360898.png','image','2020-04-25 07:06:01',NULL),(61,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587798360903.mp3','audio','2020-04-25 07:06:01',NULL),(62,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587798360900.pdf','document','2020-04-25 07:06:01',NULL),(63,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587798360915.mp4','video','2020-04-25 07:06:01',NULL),(64,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799279121.pdf','document','2020-04-25 07:21:19',NULL),(65,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799279124.mp3','audio','2020-04-25 07:21:19',NULL),(66,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799279101.jpg','image','2020-04-25 07:21:19',NULL),(67,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799279136.mp4','video','2020-04-25 07:21:19',NULL),(68,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799356145.pdf','document','2020-04-25 07:22:36',NULL),(69,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799356147.mp3','audio','2020-04-25 07:22:36',NULL),(70,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799356136.jpg','image','2020-04-25 07:22:36',NULL),(71,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799356156.mp4','video','2020-04-25 07:22:36',NULL),(72,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799397030.pdf','document','2020-04-25 07:23:17',NULL),(73,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799397032.mp3','audio','2020-04-25 07:23:17',NULL),(74,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799397020.jpg','image','2020-04-25 07:23:17',NULL),(75,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799397040.mp4','video','2020-04-25 07:23:17',NULL),(76,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799495040.pdf','document','2020-04-25 07:24:55',NULL),(77,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799495042.mp3','audio','2020-04-25 07:24:55',NULL),(78,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799495030.jpg','image','2020-04-25 07:24:55',NULL),(79,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799495050.mp4','video','2020-04-25 07:24:55',NULL),(80,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799625921.pdf','document','2020-04-25 07:27:06',NULL),(81,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799625907.png','image','2020-04-25 07:27:06',NULL),(82,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799625924.mp3','audio','2020-04-25 07:27:06',NULL),(83,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799625933.mp4','video','2020-04-25 07:27:06',NULL),(84,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799874670.pdf','document','2020-04-25 07:31:14',NULL),(85,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799874672.mp3','audio','2020-04-25 07:31:14',NULL),(86,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799874658.png','image','2020-04-25 07:31:14',NULL),(87,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799874682.mp4','video','2020-04-25 07:31:15',NULL),(88,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799880427.pdf','document','2020-04-25 07:31:20',NULL),(89,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799880430.mp3','audio','2020-04-25 07:31:20',NULL),(90,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799880415.png','image','2020-04-25 07:31:20',NULL),(91,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799880437.mp4','video','2020-04-25 07:31:20',NULL),(92,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799897572.pdf','document','2020-04-25 07:31:37',NULL),(93,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799897574.mp3','audio','2020-04-25 07:31:37',NULL),(94,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799897561.png','image','2020-04-25 07:31:37',NULL),(95,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587799897584.mp4','video','2020-04-25 07:31:38',NULL),(96,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587810541255.pdf','document','2020-04-25 10:29:01',NULL),(97,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587810541251.png','image','2020-04-25 10:29:01',NULL),(98,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587810541258.mp3','audio','2020-04-25 10:29:01',NULL),(99,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587810541267.mp4','video','2020-04-25 10:29:01',NULL),(100,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587814321296.pdf','document','2020-04-25 11:32:01',NULL),(101,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587814321299.mp3','audio','2020-04-25 11:32:01',NULL),(102,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587814321287.jpg','image','2020-04-25 11:32:01',NULL),(103,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587814321312.mp4','video','2020-04-25 11:32:01',NULL),(104,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587821181116.mp4','video','2020-04-25 13:26:21',NULL),(105,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587821522445.pdf','document','2020-04-25 13:32:02',NULL),(106,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587821522447.mp3','audio','2020-04-25 13:32:02',NULL),(107,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587821522436.jpg','image','2020-04-25 13:32:02',NULL),(108,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587821522457.mp4','video','2020-04-25 13:32:02',NULL),(109,3,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587823550500.jpg','image','2020-04-25 14:05:50',NULL),(110,4,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587824433927.jpg','image','2020-04-25 14:20:34',NULL),(111,4,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587824433935.mp3','audio','2020-04-25 14:20:34',NULL),(112,4,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587824433950.mp4','video','2020-04-25 14:20:34',NULL);
/*!40000 ALTER TABLE `survey_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_question`
--

DROP TABLE IF EXISTS `survey_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) NOT NULL,
  `question` text,
  `question_type` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_question`
--

LOCK TABLES `survey_question` WRITE;
/*!40000 ALTER TABLE `survey_question` DISABLE KEYS */;
INSERT INTO `survey_question` VALUES (1,1,'Who is your PM?','radiobutton',NULL,'2020-04-16 10:25:05','0000-00-00 00:00:00'),(2,2,'Who is your PM?','radiobutton',NULL,'2020-04-16 10:26:53','0000-00-00 00:00:00'),(3,2,'question2','checkbox',NULL,'2020-04-16 10:26:53','0000-00-00 00:00:00'),(4,2,'question3','long_text',NULL,'2020-04-16 10:26:53','0000-00-00 00:00:00'),(5,2,'question 4','dropdown',NULL,'2020-04-16 10:26:53','0000-00-00 00:00:00'),(6,3,'who is your manager?','radiobutton',NULL,'2020-04-23 07:58:01','2020-04-23 07:59:45'),(7,3,'Who is your PM?','dropdown',NULL,'2020-04-23 07:58:01','2020-04-23 07:59:45'),(8,4,'Who is the PM of your Project?','radiobutton',NULL,'2020-04-24 06:32:01','0000-00-00 00:00:00'),(9,4,'In which language you are developing this project?','checkbox',NULL,'2020-04-24 06:32:01','0000-00-00 00:00:00'),(10,4,'Can admin allocate one device two time??','dropdown',NULL,'2020-04-24 06:32:01','0000-00-00 00:00:00'),(11,4,'What is task management?','short_text',NULL,'2020-04-24 06:32:01','0000-00-00 00:00:00'),(12,4,'What is E-training?','long_text',NULL,'2020-04-24 06:32:01','0000-00-00 00:00:00'),(14,2,'What is task management?','short_text',NULL,'2020-04-24 06:32:01','0000-00-00 00:00:00'),(15,2,'What is E-training?','long_text',NULL,'2020-04-24 06:32:01','0000-00-00 00:00:00'),(16,2,'What is task management?','short_text',NULL,'2020-04-24 06:32:01','0000-00-00 00:00:00'),(17,2,'What is E-training?','long_text',NULL,'2020-04-24 06:32:01','0000-00-00 00:00:00'),(18,2,'What is training?','long_text',NULL,'2020-04-24 06:32:01','0000-00-00 00:00:00'),(19,2,'What is management?','short_text',NULL,'2020-04-24 06:32:01','0000-00-00 00:00:00'),(20,2,'In which language you are developing this project?','short_text',NULL,'2020-04-24 06:32:01','0000-00-00 00:00:00'),(21,2,'Can admin allocate one device two time??','long_text',NULL,'2020-04-24 06:32:01','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `survey_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_category` int(11) NOT NULL,
  `frm_id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `recurring` enum('1','0') NOT NULL COMMENT '1=yes,0=no',
  `deadline_time` datetime NOT NULL,
  `priority` enum('low','medium','high') NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `location` text,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `task_progress` varchar(100) DEFAULT '0',
  `selfie_image` enum('1','0') DEFAULT '0' COMMENT '1=yes,0=not',
  `selfie_audio` enum('1','0') DEFAULT '0' COMMENT '1=yes,0=not',
  `no_of_forms` int(11) DEFAULT '0',
  `image_type` varchar(100) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive',
  `task_status` enum('0','1') NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,1,'57','Door to door work','Help others ','0','2020-03-25 09:19:18','low','1582107818279.png','Noida,UP',NULL,NULL,'0','0','0',0,NULL,'1','0','2020-03-03 10:17:49','2020-04-28 12:50:35'),(2,3,'57','Pamplets   distributions','100 per pices in 1 area','0','2020-03-27 09:19:18','medium','1582200348301.png','Meerut,UP',NULL,NULL,'0','0','0',0,NULL,'1','0','2020-03-03 10:17:53','2020-04-28 12:51:07'),(3,1,'4','Door to door work','Loreum ipsum loreum ipsum','0','2020-03-11 09:19:18','low','1582107818279.png','Noida,UP',NULL,NULL,'0','0','0',0,NULL,'1','0','2020-03-03 10:17:49','2020-04-28 12:51:07'),(4,5,'57','Door to door work','Loreum ipsum loreum ipsum Loreum ipsum loreum ipsumLoreum ipsum loreum ipsumLoreum ipsum loreum ipsumLoreum ipsum loreum ipsumLoreum ipsum loreum ipsumLoreum ipsum loreum ipsumLoreum ipsum loreum ipsumLoreum ipsum loreum ipsumLoreum ipsum loreum ipsumLoreum ipsum loreum ipsumLoreum ipsum loreum ipsumLoreum ipsum loreum ipsumLoreum ipsum loreum ipsumLoreum ipsum loreum ipsumLoreum ipsum loreum ipsumLoreum ipsum loreum ipsumLoreum ipsum loreum ipsum','0','2020-03-11 09:19:18','medium','1582200348301.png','Meerut,UP',NULL,NULL,'0','0','0',0,NULL,'1','0','2020-03-03 10:17:53','2020-05-11 12:37:49'),(5,1,'57','Voter card verification','Help others where no voter card','0','2020-03-31 09:19:18','high','1582200348301.png','Meerut,UP',NULL,NULL,'100','0','0',0,NULL,'1','1','2020-03-03 10:17:53','2020-04-29 10:01:49'),(6,1,'58','Stage show','Knoledge about party agenda','0','2020-04-14 09:19:18','high','1582200348301.png','Meerut,UP',NULL,NULL,'0','0','0',0,NULL,'1','0','2020-03-03 10:17:53','2020-04-28 12:51:07'),(7,7,'57','Identification Hotspot','Its complicated task','1','2020-04-09 17:26:00','high','76876250-level_2.png',NULL,NULL,NULL,'0',NULL,'1',NULL,'image','0','0','2020-04-07 12:00:23','2020-04-28 12:51:07'),(8,7,'64','hello','dcd','1','2020-04-22 17:33:00','low','46594421-level_1.png','Noida UP',NULL,NULL,'0',NULL,NULL,NULL,'image','1','0','2020-04-07 12:03:31','2020-04-28 12:51:07'),(9,8,'69,63','Audio task','Audio task nyc','1','2020-04-15 18:10:00','low','524231604-noiseProfile.wav','Noida UP','','','0','1',NULL,NULL,'audio','1','0','2020-04-10 12:41:18','2020-04-30 08:36:15'),(10,3,'63','Video task','Video task nyc','1','2020-04-24 18:12:00','high','808349595-SampleVideo_1280x720_1mb.mp4','Noida UP',NULL,NULL,'0',NULL,NULL,1,'video','1','0','2020-04-10 12:42:42','2020-04-28 12:51:07'),(11,5,'63','image task','image task nyc','1','2020-04-21 18:13:00','medium','712248849-level_1.png','Noida UP',NULL,NULL,'20%',NULL,'1',NULL,'image','1','0','2020-04-10 12:43:34','2020-04-28 12:51:07'),(12,2,'63','hello','few sdva','1','2020-04-24 18:13:00','low','652424765-bluedart_invoice_CUTE10001_(3).pdf','Delhi',NULL,NULL,'0',NULL,'1',NULL,'document','1','0','2020-04-10 12:44:21','2020-04-28 12:51:07'),(13,3,'69,44','Testingggg','Testing','1','2020-04-16 10:22:00','medium','38561842-220px-Egyptian_food_Koshary.jpg',NULL,NULL,NULL,'100',NULL,NULL,1,'image','1','1','2020-04-16 04:52:54','2020-04-30 08:21:57'),(14,3,'69,68,44','Testing silver plan','testing','1','2020-04-16 10:27:00','low','415096335-2.jpg','Noida sec 19','','','100',NULL,'1',NULL,'image','1','1','2020-04-16 04:57:58','2020-04-30 08:08:36'),(15,2,'67','hello','few sdva','1','2020-04-24 18:13:00','low','652424765-bluedart_invoice_CUTE10001_(3).pdf','Delhi',NULL,NULL,'0',NULL,'1',NULL,'document','1','0','2020-04-10 12:44:21','2020-04-28 12:51:07'),(16,7,'67','Identification Hotspot','Its complicated task','1','2020-04-09 17:26:00','high','76876250-level_2.png',NULL,NULL,NULL,'0',NULL,'1',NULL,'image','1','0','2020-04-07 12:00:23','2020-04-28 12:51:07'),(17,2,'57','test noti','dcad','1','2020-04-18 16:07:00','medium','33897229-level_2.png','Noida UP',NULL,NULL,'100',NULL,NULL,NULL,'image','1','1','2020-04-18 10:37:37','2020-04-29 08:00:05'),(18,6,'57','test question1','adcxas','1','2020-04-09 17:26:00','medium','160296380-level_1.png','Noida UP',NULL,NULL,'100',NULL,NULL,NULL,'image','1','1','2020-04-18 10:42:28','2020-04-28 13:08:50'),(19,3,'57','werf','dfv','1','2020-04-18 16:14:00','high','962953638-level_4.png','Noida UP',NULL,NULL,'100',NULL,NULL,NULL,'image','1','1','2020-04-18 10:44:55','2020-04-29 07:56:39'),(20,3,'57','werf','dfv','1','2020-04-18 16:14:00','high','471369428-level_4.png','Noida UP',NULL,NULL,'100',NULL,NULL,NULL,'image','1','1','2020-04-18 10:45:12','2020-04-28 12:51:28'),(21,1,'57','werf','scs','1','2020-04-18 16:17:00','low','562488992-level_2.png','Noida UP',NULL,NULL,'100',NULL,NULL,NULL,'image','1','1','2020-04-18 10:48:02','2020-04-28 12:49:11'),(22,4,'57','hello','adcas','1','2020-04-22 17:33:00','high','216331997-level_1.png','Noida UP',NULL,NULL,'100',NULL,NULL,NULL,'image','1','1','2020-04-18 10:51:08','2020-04-29 07:49:02'),(23,2,'27','Visit Home','Visit home','1','2020-04-20 16:30:00','medium','155664998-bg_bronze.jpg','Ranisagar',NULL,NULL,'100','1',NULL,NULL,'image','1','1','2020-04-20 06:57:29','2020-04-20 06:58:47'),(24,6,'56','Test fieldview app','Test fieldview app properly and report issues here https://docs.google.com/spreadsheets/d/1rJWLWvpTpqddH6MFA4bRwkkaXNQmULjzxDn7z_sz4Es/edit#gid=0','1','2020-04-21 17:30:00','medium','101085686-logo.jpg',NULL,NULL,NULL,'80',NULL,NULL,NULL,'image','1','0','2020-04-21 06:52:03','2020-04-28 12:51:07'),(25,6,'50','Test fieldview app','Test fieldview app and report issue here https://docs.google.com/spreadsheets/d/1rJWLWvpTpqddH6MFA4bRwkkaXNQmULjzxDn7z_sz4Es/edit#gid=0','1','2020-04-21 17:30:00','medium','882555175-logo.jpg',NULL,NULL,NULL,'100',NULL,NULL,NULL,'image','1','1','2020-04-21 06:53:24','2020-04-21 07:21:43'),(26,5,'27','Test fieldview app','Test fieldview app and report here https://docs.google.com/spreadsheets/d/1rJWLWvpTpqddH6MFA4bRwkkaXNQmULjzxDn7z_sz4Es/edit#gid=0','1','2020-04-22 10:59:00','medium','486628677-logo.jpg',NULL,NULL,NULL,'15',NULL,NULL,NULL,'image','1','0','2020-04-21 06:54:23','2020-05-05 04:14:57'),(27,7,'50','Visit Area and find which is hotspot area.','Hotspot area','1','2020-04-27 12:15:00','high','876656908-Snap.PNG',NULL,NULL,NULL,'100','1',NULL,1,'image','1','1','2020-04-23 06:47:27','2020-04-23 06:54:40'),(28,5,'57','sdc','ad','1','2020-04-24 10:04:00','medium','66293881-level_2.png','Noida UP',NULL,NULL,'100',NULL,NULL,NULL,'image','1','1','2020-04-24 04:34:25','2020-04-28 12:47:39'),(29,3,'5,44','New task','In “task properties” you can assign as much detail as needed to any task. Our project management tools enable task tagging, descriptions, assigning teammates, subtasks (where you can also assign teammates), and more.\r\nNow you can;\r\n\r\nDefine your goals & assign your team.\r\nIn “task properties” you can assign as much detail as needed to any task. Our project management tools enable task tagging, descriptions, assigning teammates, subtasks (where you can also assign teammates), and more.\r\nNow you can;\r\n\r\nDefine your goals & assign your team.\r\nIn “task properties” you can assign as much detail as needed to any task. Our project management tools enable task tagging, descriptions, assigning teammates, subtasks (where you can also assign teammates), and more.\r\nNow you can;\r\n\r\nDefine your goals & assign your team.\r\nIn “task properties” you can assign as much detail as needed to any task. Our project management tools enable task tagging, descriptions, assigning teammates, subtasks (where you can also assign teammates), and more.\r\nNow you can;\r\n\r\nDefine your goals & assign your team.\r\nIn “task properties” you can assign as much detail as needed to any task. Our project management tools enable task tagging, descriptions, assigning teammates, subtasks (where you can also assign teammates), and more.\r\nNow you can;\r\n\r\nDefine your goals & assign your team.\r\nIn “task properties” you can assign as much detail as needed to any task. Our project management tools enable task tagging, descriptions, assigning teammates, subtasks (where you can also assign teammates), and more.\r\nNow you can;\r\n\r\nDefine your goals & assign your team.\r\nIn “task properties” you can assign as much detail as needed to any task. Our project management tools enable task tagging, descriptions, assigning teammates, subtasks (where you can also assign teammates), and more.\r\nNow you can;\r\n\r\nDefine your goals & assign your team.\r\nIn “task properties” you can assign as much detail as needed to any task. Our project management tools enable task tagging, descriptions, assigning teammates, subtasks (where you can also assign teammates), and more.\r\nNow you can;\r\n\r\nDefine your goals & assign your team.\r\nIn “task properties” you can assign as much detail as needed to any task. Our project management tools enable task tagging, descriptions, assigning teammates, subtasks (where you can also assign teammates), and more.\r\nNow you can;\r\n\r\nDefine your goals & assign your team.\r\nIn “task properties” you can assign as much detail as needed to any task. Our project management tools enable task tagging, descriptions, assigning teammates, subtasks (where you can also assign teammates), and more.\r\nNow you can;\r\n\r\nDefine your goals & assign your team.\r\nIn “task properties” you can assign as much detail as needed to any task. Our project management tools enable task tagging, descriptions, assigning teammates, subtasks (where you can also assign teammates), and more.\r\nNow you can;\r\n\r\nDefine your goals & assign your team.','1','2020-04-24 11:23:00','high','228341636-download.jpg','Noida sector 19 A block','','','100','1',NULL,NULL,'image','1','1','2020-04-24 05:54:16','2020-04-30 07:05:03'),(30,5,'57','hello','dca','1','2020-04-27 10:37:00','low','315897435-images2.jpg','Noida UP','28.5355161','77.3910265','100',NULL,NULL,NULL,'image','1','1','2020-04-27 05:07:23','2020-04-28 12:33:30'),(31,6,'67,57','hello','sdca','1','2020-04-28 10:40:00','low','645563720-level_2.png','Delhi','28.7040592','77.10249019999999','100',NULL,NULL,NULL,'image','1','1','2020-04-28 05:10:45','2020-04-28 10:37:47'),(32,8,'55','Check the ads','Check roadside hoardings','1','2020-05-07 15:15:00','low',NULL,NULL,NULL,NULL,'100',NULL,NULL,NULL,'','1','1','2020-05-05 09:51:36','2020-05-06 05:12:28'),(33,7,'55','Check the COVID-19 hotspot places in your Gram Panchayat','Check the COVID-19 hotspot places in your Gram Panchayat','1','2020-05-08 15:30:00','medium',NULL,NULL,NULL,NULL,'100','1',NULL,NULL,'','1','1','2020-05-05 10:02:09','2020-05-05 10:06:08'),(34,8,'1,54','SDGDbgs','sdGsdgs','1','2020-05-15 17:30:00','low',NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'','1','0','2020-05-08 07:22:25','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_attachment`
--

DROP TABLE IF EXISTS `task_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `attachment_type` varchar(100) DEFAULT NULL COMMENT '''image'',''audio'',''video'',''document''',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_attachment`
--

LOCK TABLES `task_attachment` WRITE;
/*!40000 ALTER TABLE `task_attachment` DISABLE KEYS */;
INSERT INTO `task_attachment` VALUES (1,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586257933237.png','image','2020-04-07 11:12:13',NULL),(2,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586258124948.mp4','video','2020-04-07 11:15:25',NULL),(3,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586258335355.pdf','document','2020-04-07 11:18:55',NULL),(4,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586258369286.wav','audio','2020-04-07 11:19:29',NULL),(8,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586264569350.pdf','document','2020-04-07 13:02:49',NULL),(9,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586264569347.jpg','image','2020-04-07 13:02:49',NULL),(10,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586264569365.mp4','video','2020-04-07 13:02:49',NULL),(11,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586264569352.mp3','audio','2020-04-07 13:02:49',NULL),(12,11,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586896629603.jpg','image','2020-04-14 20:37:09',NULL),(13,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586955884233.file','image','2020-04-15 13:04:44',NULL),(14,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586955936664.file','image','2020-04-15 13:05:36',NULL),(15,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586958503492.file','video','2020-04-15 13:48:23',NULL),(16,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586959898946.file','video','2020-04-15 14:11:39',NULL),(17,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586959929706.file','video','2020-04-15 14:12:09',NULL),(18,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586959961086.file','video','2020-04-15 14:12:41',NULL),(19,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586959962211.file','video','2020-04-15 14:12:42',NULL),(20,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586959968886.file','video','2020-04-15 14:12:49',NULL),(21,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586959994656.file','video','2020-04-15 14:13:14',NULL),(22,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586960052650.file','image','2020-04-15 14:14:12',NULL),(23,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1586960055746.file','image','2020-04-15 14:14:15',NULL),(24,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587039782075.file','image','2020-04-16 12:23:02',NULL),(25,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587039972180.file','image','2020-04-16 12:26:12',NULL),(26,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587040049346.file','image','2020-04-16 12:27:29',NULL),(27,11,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587379049857.jpg','image','2020-04-20 10:37:29',NULL),(28,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587379101426.file','video','2020-04-20 10:38:21',NULL),(29,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587379103970.file','video','2020-04-20 10:38:24',NULL),(30,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587379106290.file','video','2020-04-20 10:38:26',NULL),(31,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587379108958.file','video','2020-04-20 10:38:29',NULL),(32,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587379110044.file','video','2020-04-20 10:38:30',NULL),(33,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587379112710.file','video','2020-04-20 10:38:32',NULL),(34,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587379112923.file','video','2020-04-20 10:38:33',NULL),(35,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587380191154.file','image','2020-04-20 10:56:31',NULL),(36,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587380192284.file','image','2020-04-20 10:56:32',NULL),(37,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587380663537.wav','audio','2020-04-20 11:04:23',NULL),(38,22,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587380726745.wav','audio','2020-04-20 11:05:26',NULL),(39,0,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587380815647.file','image','2020-04-20 11:06:56',NULL),(40,11,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587381548683.file','image','2020-04-20 11:19:09',NULL),(41,11,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587381616811.wav','audio','2020-04-20 11:20:16',NULL),(42,11,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587381807437.file','image','2020-04-20 11:23:27',NULL),(43,11,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587382145679.file','video','2020-04-20 11:29:05',NULL),(44,11,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587382177796.file','video','2020-04-20 11:29:37',NULL),(45,11,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587383276300.file','video','2020-04-20 11:47:56',NULL),(46,11,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587386938540.file','image','2020-04-20 12:48:58',NULL),(47,11,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587387079180.file','image','2020-04-20 12:51:19',NULL),(48,11,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587387385619.file','image','2020-04-20 12:56:25',NULL),(49,11,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587387481442.file','image','2020-04-20 12:58:01',NULL),(50,11,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587387794465.file','image','2020-04-20 13:03:14',NULL),(51,11,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587387972983.png','image','2020-04-20 13:06:13',NULL),(52,11,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587388083528.mp4','video','2020-04-20 13:08:03',NULL),(53,12,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587444740538.png','image','2020-04-21 04:52:20',NULL),(54,11,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587470589118.mp4','video','2020-04-21 12:03:09',NULL),(55,11,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587470589090.png','image','2020-04-21 12:03:09',NULL),(56,12,'https://frms-s3.s3-ap-south-1.amazonaws.com/1587474541909.mp4','video','2020-04-21 13:09:02',NULL),(66,31,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588065307245.pdf','document','2020-04-28 09:15:07',NULL),(67,31,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588065307249.mp3','audio','2020-04-28 09:15:07',NULL),(69,31,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588065307264.mp4','video','2020-04-28 09:15:07',NULL),(73,30,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588071947257.png','image','2020-04-28 11:05:47',NULL),(74,28,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588072077917.png','image','2020-04-28 11:07:57',NULL),(75,28,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588072077920.mp3','audio','2020-04-28 11:07:58',NULL),(76,28,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588077314785.jpg','image','2020-04-28 12:35:14',NULL),(77,21,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588077466041.jpg','image','2020-04-28 12:37:46',NULL),(78,21,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588078171347.pdf','document','2020-04-28 12:49:31',NULL),(79,20,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588078310606.png','image','2020-04-28 12:51:50',NULL),(80,18,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588078744436.mp3','audio','2020-04-28 12:59:04',NULL),(81,22,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588146542077.jpg','image','2020-04-29 07:49:02',NULL),(82,19,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588146999011.jpg','image','2020-04-29 07:56:39',NULL),(83,17,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588147131141.png','image','2020-04-29 07:58:51',NULL),(84,17,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588147205707.mp3','audio','2020-04-29 08:00:05',NULL),(86,2,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588153216348.jpg','image','2020-04-29 09:40:16',NULL),(87,5,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588154479821.png','image','2020-04-29 10:01:20',NULL),(88,5,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588154509080.pdf','document','2020-04-29 10:01:49',NULL),(89,29,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588230303357.png','image','2020-04-30 07:05:03',NULL),(90,29,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588230312969.png','image','2020-04-30 07:05:13',NULL),(91,14,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588234116669.png','image','2020-04-30 08:08:36',NULL),(92,13,'https://frms-s3.s3-ap-south-1.amazonaws.com/1588234907456.png','image','2020-04-30 08:21:47',NULL);
/*!40000 ALTER TABLE `task_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_category`
--

DROP TABLE IF EXISTS `task_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `task` varchar(250) NOT NULL DEFAULT '',
  `status` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_category`
--

LOCK TABLES `task_category` WRITE;
/*!40000 ALTER TABLE `task_category` DISABLE KEYS */;
INSERT INTO `task_category` VALUES (1,'Survey and data collection','1','2020-03-23 11:05:53'),(2,'Location Vist','1','2020-03-23 11:05:53'),(3,'Door to door','1','2020-03-23 11:06:19'),(4,'Testimonial','1','2020-03-23 11:06:19'),(5,'In depth Interview','1','2020-03-23 11:07:32'),(6,'Influencer Meeting','1','2020-03-23 11:07:32'),(7,'Identification of hotspot','1','2020-03-23 11:07:32'),(8,'Collaterral and branding verification','1','2020-03-23 11:07:32');
/*!40000 ALTER TABLE `task_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_feedback`
--

DROP TABLE IF EXISTS `task_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL,
  `feedback` text,
  `rating` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_feedback`
--

LOCK TABLES `task_feedback` WRITE;
/*!40000 ALTER TABLE `task_feedback` DISABLE KEYS */;
INSERT INTO `task_feedback` VALUES (1,0,1,'nyc task',5,'2020-04-07 11:56:23','0000-00-00 00:00:00'),(2,0,0,'nyc task',0,'2020-04-08 04:40:39','0000-00-00 00:00:00'),(3,57,1,'complete task',3,'2020-04-08 04:41:12','0000-00-00 00:00:00'),(4,57,1,'sfvsdc',3,'2020-04-08 05:05:58','0000-00-00 00:00:00'),(5,63,3,'sdcsd',2,'2020-04-18 07:50:08','0000-00-00 00:00:00'),(6,63,3,'nyc work',3,'2020-04-18 10:03:38','0000-00-00 00:00:00'),(7,63,3,'dc',3,'2020-04-18 10:04:44','0000-00-00 00:00:00'),(8,57,1,'wefcweaa',3,'2020-04-18 10:19:25','0000-00-00 00:00:00'),(9,50,11,'Good',5,'2020-04-22 05:15:11','0000-00-00 00:00:00'),(10,27,7,'Good',5,'2020-04-22 05:15:40','0000-00-00 00:00:00'),(11,63,3,'Good',5,'2020-04-22 05:28:12','0000-00-00 00:00:00'),(12,44,29,'task29',5,'2020-04-25 08:57:07','0000-00-00 00:00:00'),(13,44,14,'test',5,'2020-04-25 13:28:36','0000-00-00 00:00:00'),(14,69,29,'gshbs fsdhbn cdshvds vdsnmbc sdbvd dsnvbdsv sdncbsdjnvbjsdb sdchjdsbv sdbhhsdnmsdhbbh dsbhjcsdnmfbhdsbf sdbhdsnmfgdsbfn msdbkgfbdsfgiusdbk fbdscsdmkuikdbjsjfuidskjbkdusik',2,'2020-04-30 08:35:09','0000-00-00 00:00:00'),(15,0,0,'asdasd',3,'2020-05-06 05:11:43','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `task_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_gallery`
--

DROP TABLE IF EXISTS `task_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_gallery`
--

LOCK TABLES `task_gallery` WRITE;
/*!40000 ALTER TABLE `task_gallery` DISABLE KEYS */;
INSERT INTO `task_gallery` VALUES (1,1,'1582107818279.png','2020-03-03 11:07:57','0000-00-00 00:00:00'),(2,2,'1582200348301.png','2020-03-03 11:07:57','0000-00-00 00:00:00'),(3,3,'1582107818279.png','2020-03-03 11:08:14','0000-00-00 00:00:00'),(4,4,'1582200348301.png','2020-03-03 11:08:14','0000-00-00 00:00:00'),(5,2,'1582107818279.png','2020-03-03 11:07:57','2020-03-03 11:11:13');
/*!40000 ALTER TABLE `task_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volunteer`
--

DROP TABLE IF EXISTS `volunteer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volunteer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `status` enum('1','0') NOT NULL COMMENT '1=active,0=inactive',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteer`
--

LOCK TABLES `volunteer` WRITE;
/*!40000 ALTER TABLE `volunteer` DISABLE KEYS */;
INSERT INTO `volunteer` VALUES (1,43,'Volunteer12','995442019-level_2.png','078278228892','1','2020-04-02 10:48:43','2020-04-02 05:37:36'),(2,58,'Volunteer','733344089-images2.jpg','078278228891','1','2020-04-02 10:48:55','2020-04-06 05:58:17'),(3,42,')(((((((((((%$#@!@#$%','813504517-2.jpg','98765432100','1','2020-04-03 11:31:25','2020-04-03 11:32:55'),(4,57,'Volunteer12','995442019-level_2.png','078278228892','1','2020-04-02 10:48:43','2020-04-02 05:37:36'),(5,57,'Volunteer','733344089-images2.jpg','078278228891','1','2020-04-02 10:48:55','2020-04-06 05:58:17'),(6,57,')(((((((((((%$#@!@#$%','813504517-2.jpg','98765432100','1','2020-04-03 11:31:25','2020-04-03 11:32:55'),(7,57,'vishal don','394413839-index1.jpg','07827822889','1','2020-04-10 06:04:28','0000-00-00 00:00:00'),(8,57,'vishal sarpanch','217225222-images2.jpg','07827822889','1','2020-04-10 06:05:11','0000-00-00 00:00:00'),(9,57,'vishal Manager','995442019-level_2.png','07827822889','1','2020-04-10 06:05:11','2020-04-10 06:05:50'),(10,57,'hjkh','773168814-index.jpg','6578687687','1','2020-04-10 06:06:35','0000-00-00 00:00:00'),(11,57,'hjgjjg yiu','121000338-level_5_.png','07827822889','1','2020-04-10 06:07:07','0000-00-00 00:00:00'),(12,57,'arsfs','733344089-images2.jpg','07827822889','1','2020-04-10 06:07:07','0000-00-00 00:00:00'),(13,57,'g iyd iyqwiu','995442019-level_2.png','07827822889','1','2020-04-10 06:07:07','0000-00-00 00:00:00'),(14,57,'vishu sarkar','907381532-level_71.png','8777777777777','1','2020-04-10 06:09:18','0000-00-00 00:00:00'),(15,57,'jkhcxi yiuy','373888014-download.jpg','79879798789','1','2020-04-10 06:10:03','0000-00-00 00:00:00'),(16,68,'Volunteer','995442019-level_2.png','078278228892','1','2020-04-02 10:48:43','2020-04-30 07:56:03'),(17,67,'Volunteer','733344089-images2.jpg','078278228891','1','2020-04-02 10:48:55','2020-04-06 05:58:17'),(18,5,'vishal singh','507524747-level_5.png','07827822889','1','2020-04-18 10:22:43','2020-04-30 06:37:52'),(19,63,'volunteer','523708782-level_3.png','07827822889','1','2020-04-20 05:15:09','2020-04-20 05:16:19'),(21,27,'Harish','238007526-Rplot.png','4343434343','1','2020-04-21 07:14:22','0000-00-00 00:00:00'),(24,55,'Nigam','783244501-EI76evuUcAILeJu.jpg','7008060981','1','2020-05-06 05:07:09','2020-05-06 05:08:27');
/*!40000 ALTER TABLE `volunteer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-04 19:37:41
