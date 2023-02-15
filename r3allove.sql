-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: r3allove
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
-- Current Database: `r3allove`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `r3allove` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `r3allove`;

--
-- Table structure for table `polygons_map_universities`
--

DROP TABLE IF EXISTS `polygons_map_universities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polygons_map_universities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `university_id` int(11) NOT NULL,
  `fillColor` varchar(30) NOT NULL,
  `polygon_path` geometry NOT NULL,
  `fillColorName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polygons_map_universities`
--

LOCK TABLES `polygons_map_universities` WRITE;
/*!40000 ALTER TABLE `polygons_map_universities` DISABLE KEYS */;
INSERT INTO `polygons_map_universities` VALUES (10,1,'#32cd32',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€m)F@8ù\rIU§@@\0\0\0\0W)F@oÁ‚*¥@@ÿÿÿ\ßx\'F@›x5B¥@@\0\0\0€\Ø\'F@<ŸN˜,¤@@\0\0\0`(F@ÒŸ~p£@@\0\0\0ÀK)F@6``¡Ò¡@@\0\0\0\08*F@k?3…Ä¡@@\0\0\0\0\',F@®O&;Ë @@\0\0\0@2,F@\È\Ùf„{›@@\0\0\0`³0F@m*m´·™@@\0\0\0À14F@YG¯“ª›@@\0\0\0À‹4F@ª’\rò@@ÿÿÿÿw5F@õ`–Øž@@\0\0\0`E5F@% à±µŸ@@\0\0\0\àþ7F@þ›Ôv @@\0\0\0À–8F@\Ú4!Šr¢@@\0\0\0 E9F@4E2u£@@ÿÿÿ\ë8F@\ÔxKD¤@@\0\0\0À¤9F@]­…Q=¥@@ÿÿÿ\è;F@\æ\ÛZÖ¦@@\0\0\0\0”7F@Ú»¦&©@@\0\0\0\0¥5F@›l¨@@\0\0\0À‹4F@§»Ý¡j¨@@\0\0\0\à?3F@8‘ž¨@@\0\0\0\à^2F@rþV\Êl§@@\0\0\0 ¨0F@-\ä0©@@\0\0\0`\Ä.F@\Z\\Ò‡\\¨@@\0\0\0`‰-F@\\\É3rµ¦@@\0\0\0€m)F@8ù\rIU§@@','green'),(11,10,'#32cd32',_binary '\0\0\0\0\0\0\0\0\0\0\0\0\0Qøl.S@2=a‰üRÀ\ßÀ\äF‘7R@2=a‰SVÀ%•C\ìQ@>^H‡‡öPÀ\Î\à\ïR@>^H‡‡BPÀEöA–eR@>^H‡‡\ÉPÀQøl.S@2=a‰üRÀ','green');
/*!40000 ALTER TABLE `polygons_map_universities` ENABLE KEYS */;
UNLOCK TABLES;

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
  KEY `user_Id` (`user_id`),
  CONSTRAINT `tbl_access_token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_access_token`
--

LOCK TABLES `tbl_access_token` WRITE;
/*!40000 ALTER TABLE `tbl_access_token` DISABLE KEYS */;
INSERT INTO `tbl_access_token` VALUES (133,2,'3dfef5e8c2b869378cfde281e59ab7bf','2019-10-31 09:25:05','2019-11-09 15:39:05','N','N'),(154,13,'b664394cc8b06ff7b86bf764533dfef4','2019-11-01 12:06:03','2019-11-02 12:06:03','N','N'),(159,10,'86850f13f7501f1a70cda7850f49b4cb','2019-11-02 23:34:18','2019-11-03 23:34:18','N','N'),(169,35,'c07f7fcfc862f31f5e7ae2f784dc4942','2019-11-05 09:29:23','2019-11-06 09:29:23','N','N'),(199,31,'6693826fee33e63e05ed16926fcf87b1','2019-11-07 12:23:10','2019-11-08 12:23:10','N','N'),(214,37,'808bcb65e1c2cb8fa5afffc6fa13f7a3','2019-11-07 16:38:26','2019-11-08 16:38:26','N','N'),(227,36,'e174fa3c9baaf35bdcc2cafe43c99f51','2019-11-11 09:19:17','2019-11-12 09:19:17','N','N'),(275,14,'3350a6be69f36b197daa508dacee32e7','2019-11-14 12:48:33','2019-11-15 12:48:33','N','N'),(282,1,'bb8d4f81b17682584517eeb3a03e2d2a','2019-11-14 17:56:40','2019-11-15 17:56:40','N','Y'),(284,9,'7357efd1cb59269325574f7b36eeecc3','2019-11-14 19:47:22','2019-11-15 19:47:22','N','N'),(285,12,'6702e8897adb9528c56a8c8b739d5bb1','2019-11-15 08:28:53','2019-11-16 08:28:53','N','N'),(288,5,'64bf0bfacc816ac77b6296710c3c4bd4','2019-11-15 14:31:35','2019-11-16 14:31:35','N','N'),(297,4,'6702e8897adb9528c56a8c8b739d5bb1','2019-11-18 09:06:45','2019-11-20 17:24:12','N','N'),(301,6,'98c20cc214979e15914923915e5f04c2','2019-11-18 10:12:21','2019-11-19 10:12:21','N','N'),(303,7,'fb9ad71cb4bb082d793700e9b3003573','2019-11-18 10:45:08','2019-11-19 10:45:08','N','N'),(304,3,'ea43bd262dbed0c545933fb58d517dd4','2019-11-18 10:56:19','2019-11-19 10:56:19','N','N'),(305,1,'bb8d4f81b17682584517eeb3a03e2d2a','2019-11-21 13:00:13','2019-11-22 13:00:13','N','Y'),(306,1,'bb8d4f81b17682584517eeb3a03e2d2a','2019-12-04 11:14:39','2019-12-05 11:14:39','N','Y'),(307,1,'bb8d4f81b17682584517eeb3a03e2d2a','2019-12-04 11:15:07','2019-12-05 11:15:07','N','N');
/*!40000 ALTER TABLE `tbl_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contactus`
--

DROP TABLE IF EXISTS `tbl_contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email_id` varchar(20) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `deleted` enum('Y','N') DEFAULT 'N',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contactus`
--

LOCK TABLES `tbl_contactus` WRITE;
/*!40000 ALTER TABLE `tbl_contactus` DISABLE KEYS */;
INSERT INTO `tbl_contactus` VALUES (1,'Raj','Pal','rajpal@gmail.com','07800130710','Mail Chceking ','N','2019-10-09 11:15:25');
/*!40000 ALTER TABLE `tbl_contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_countries`
--

DROP TABLE IF EXISTS `tbl_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_countries`
--

LOCK TABLES `tbl_countries` WRITE;
/*!40000 ALTER TABLE `tbl_countries` DISABLE KEYS */;
INSERT INTO `tbl_countries` VALUES (1,'AF','Afghanistan',93,NULL,'2019-09-09 18:05:14'),(2,'AL','Albania',355,NULL,'2019-09-09 18:05:14'),(3,'DZ','Algeria',213,NULL,'2019-09-09 18:05:14'),(4,'AS','American Samoa',1684,NULL,'2019-09-09 18:05:14'),(5,'AD','Andorra',376,NULL,'2019-09-09 18:05:14'),(6,'AO','Angola',244,NULL,'2019-09-09 18:05:14'),(7,'AI','Anguilla',1264,NULL,'2019-09-09 18:05:14'),(8,'AQ','Antarctica',0,NULL,'2019-09-09 18:05:14'),(9,'AG','Antigua And Barbuda',1268,NULL,'2019-09-09 18:05:14'),(10,'AR','Argentina',54,NULL,'2019-09-09 18:05:14'),(11,'AM','Armenia',374,NULL,'2019-09-09 18:05:14'),(12,'AW','Aruba',297,NULL,'2019-09-09 18:05:14'),(13,'AU','Australia',61,NULL,'2019-09-09 18:05:14'),(14,'AT','Austria',43,NULL,'2019-09-09 18:05:14'),(15,'AZ','Azerbaijan',994,NULL,'2019-09-09 18:05:14'),(16,'BS','Bahamas The',1242,NULL,'2019-09-09 18:05:14'),(17,'BH','Bahrain',973,NULL,'2019-09-09 18:05:14'),(18,'BD','Bangladesh',880,NULL,'2019-09-09 18:05:14'),(19,'BB','Barbados',1246,NULL,'2019-09-09 18:05:14'),(20,'BY','Belarus',375,NULL,'2019-09-09 18:05:14'),(21,'BE','Belgium',32,NULL,'2019-09-09 18:05:14'),(22,'BZ','Belize',501,NULL,'2019-09-09 18:05:14'),(23,'BJ','Benin',229,NULL,'2019-09-09 18:05:14'),(24,'BM','Bermuda',1441,NULL,'2019-09-09 18:05:14'),(25,'BT','Bhutan',975,NULL,'2019-09-09 18:05:14'),(26,'BO','Bolivia',591,NULL,'2019-09-09 18:05:14'),(27,'BA','Bosnia and Herzegovina',387,NULL,'2019-09-09 18:05:14'),(28,'BW','Botswana',267,NULL,'2019-09-09 18:05:14'),(29,'BV','Bouvet Island',0,NULL,'2019-09-09 18:05:14'),(30,'BR','Brazil',55,NULL,'2019-09-09 18:05:14'),(31,'IO','British Indian Ocean Territory',246,NULL,'2019-09-09 18:05:14'),(32,'BN','Brunei',673,NULL,'2019-09-09 18:05:14'),(33,'BG','Bulgaria',359,NULL,'2019-09-09 18:05:14'),(34,'BF','Burkina Faso',226,NULL,'2019-09-09 18:05:14'),(35,'BI','Burundi',257,NULL,'2019-09-09 18:05:14'),(36,'KH','Cambodia',855,NULL,'2019-09-09 18:05:14'),(37,'CM','Cameroon',237,NULL,'2019-09-09 18:05:14'),(38,'CA','Canada',1,NULL,'2019-09-09 18:05:14'),(39,'CV','Cape Verde',238,NULL,'2019-09-09 18:05:14'),(40,'KY','Cayman Islands',1345,NULL,'2019-09-09 18:05:14'),(41,'CF','Central African Republic',236,NULL,'2019-09-09 18:05:14'),(42,'TD','Chad',235,NULL,'2019-09-09 18:05:14'),(43,'CL','Chile',56,NULL,'2019-09-09 18:05:14'),(44,'CN','China',86,NULL,'2019-09-09 18:05:14'),(45,'CX','Christmas Island',61,NULL,'2019-09-09 18:05:14'),(46,'CC','Cocos (Keeling) Islands',672,NULL,'2019-09-09 18:05:14'),(47,'CO','Colombia',57,NULL,'2019-09-09 18:05:14'),(48,'KM','Comoros',269,NULL,'2019-09-09 18:05:14'),(49,'CG','Republic Of The Congo',242,NULL,'2019-09-09 18:05:14'),(50,'CD','Democratic Republic Of The Congo',242,NULL,'2019-09-09 18:05:14'),(51,'CK','Cook Islands',682,NULL,'2019-09-09 18:05:14'),(52,'CR','Costa Rica',506,NULL,'2019-09-09 18:05:14'),(53,'CI','Cote D\'Ivoire (Ivory Coast)',225,NULL,'2019-09-09 18:05:14'),(54,'HR','Croatia (Hrvatska)',385,NULL,'2019-09-09 18:05:14'),(55,'CU','Cuba',53,NULL,'2019-09-09 18:05:14'),(56,'CY','Cyprus',357,NULL,'2019-09-09 18:05:14'),(57,'CZ','Czech Republic',420,NULL,'2019-09-09 18:05:14'),(58,'DK','Denmark',45,NULL,'2019-09-09 18:05:14'),(59,'DJ','Djibouti',253,NULL,'2019-09-09 18:05:14'),(60,'DM','Dominica',1767,NULL,'2019-09-09 18:05:14'),(61,'DO','Dominican Republic',1809,NULL,'2019-09-09 18:05:14'),(62,'TP','East Timor',670,NULL,'2019-09-09 18:05:14'),(63,'EC','Ecuador',593,NULL,'2019-09-09 18:05:14'),(64,'EG','Egypt',20,NULL,'2019-09-09 18:05:14'),(65,'SV','El Salvador',503,NULL,'2019-09-09 18:05:14'),(66,'GQ','Equatorial Guinea',240,NULL,'2019-09-09 18:05:14'),(67,'ER','Eritrea',291,NULL,'2019-09-09 18:05:14'),(68,'EE','Estonia',372,NULL,'2019-09-09 18:05:14'),(69,'ET','Ethiopia',251,NULL,'2019-09-09 18:05:14'),(70,'XA','External Territories of Australia',61,NULL,'2019-09-09 18:05:14'),(71,'FK','Falkland Islands',500,NULL,'2019-09-09 18:05:14'),(72,'FO','Faroe Islands',298,NULL,'2019-09-09 18:05:14'),(73,'FJ','Fiji Islands',679,NULL,'2019-09-09 18:05:14'),(74,'FI','Finland',358,NULL,'2019-09-09 18:05:14'),(75,'FR','France',33,NULL,'2019-09-09 18:05:14'),(76,'GF','French Guiana',594,NULL,'2019-09-09 18:05:14'),(77,'PF','French Polynesia',689,NULL,'2019-09-09 18:05:14'),(78,'TF','French Southern Territories',0,NULL,'2019-09-09 18:05:14'),(79,'GA','Gabon',241,NULL,'2019-09-09 18:05:14'),(80,'GM','Gambia The',220,NULL,'2019-09-09 18:05:14'),(81,'GE','Georgia',995,NULL,'2019-09-09 18:05:14'),(82,'DE','Germany',49,NULL,'2019-09-09 18:05:14'),(83,'GH','Ghana',233,NULL,'2019-09-09 18:05:14'),(84,'GI','Gibraltar',350,NULL,'2019-09-09 18:05:14'),(85,'GR','Greece',30,NULL,'2019-09-09 18:05:14'),(86,'GL','Greenland',299,NULL,'2019-09-09 18:05:14'),(87,'GD','Grenada',1473,NULL,'2019-09-09 18:05:14'),(88,'GP','Guadeloupe',590,NULL,'2019-09-09 18:05:14'),(89,'GU','Guam',1671,NULL,'2019-09-09 18:05:14'),(90,'GT','Guatemala',502,NULL,'2019-09-09 18:05:14'),(91,'XU','Guernsey and Alderney',44,NULL,'2019-09-09 18:05:14'),(92,'GN','Guinea',224,NULL,'2019-09-09 18:05:14'),(93,'GW','Guinea-Bissau',245,NULL,'2019-09-09 18:05:14'),(94,'GY','Guyana',592,NULL,'2019-09-09 18:05:14'),(95,'HT','Haiti',509,NULL,'2019-09-09 18:05:14'),(96,'HM','Heard and McDonald Islands',0,NULL,'2019-09-09 18:05:14'),(97,'HN','Honduras',504,NULL,'2019-09-09 18:05:14'),(98,'HK','Hong Kong S.A.R.',852,NULL,'2019-09-09 18:05:14'),(99,'HU','Hungary',36,NULL,'2019-09-09 18:05:14'),(100,'IS','Iceland',354,NULL,'2019-09-09 18:05:14'),(101,'IN','India',91,NULL,'2019-09-09 18:05:14'),(102,'ID','Indonesia',62,NULL,'2019-09-09 18:05:14'),(103,'IR','Iran',98,NULL,'2019-09-09 18:05:14'),(104,'IQ','Iraq',964,NULL,'2019-09-09 18:05:14'),(105,'IE','Ireland',353,NULL,'2019-09-09 18:05:14'),(106,'IL','Israel',972,NULL,'2019-09-09 18:05:14'),(107,'IT','Italy',39,NULL,'2019-09-09 18:05:14'),(108,'JM','Jamaica',1876,NULL,'2019-09-09 18:05:14'),(109,'JP','Japan',81,NULL,'2019-09-09 18:05:14'),(110,'XJ','Jersey',44,NULL,'2019-09-09 18:05:14'),(111,'JO','Jordan',962,NULL,'2019-09-09 18:05:14'),(112,'KZ','Kazakhstan',7,NULL,'2019-09-09 18:05:14'),(113,'KE','Kenya',254,NULL,'2019-09-09 18:05:14'),(114,'KI','Kiribati',686,NULL,'2019-09-09 18:05:14'),(115,'KP','Korea North',850,NULL,'2019-09-09 18:05:14'),(116,'KR','Korea South',82,NULL,'2019-09-09 18:05:14'),(117,'KW','Kuwait',965,NULL,'2019-09-09 18:05:14'),(118,'KG','Kyrgyzstan',996,NULL,'2019-09-09 18:05:14'),(119,'LA','Laos',856,NULL,'2019-09-09 18:05:14'),(120,'LV','Latvia',371,NULL,'2019-09-09 18:05:14'),(121,'LB','Lebanon',961,NULL,'2019-09-09 18:05:14'),(122,'LS','Lesotho',266,NULL,'2019-09-09 18:05:14'),(123,'LR','Liberia',231,NULL,'2019-09-09 18:05:14'),(124,'LY','Libya',218,NULL,'2019-09-09 18:05:14'),(125,'LI','Liechtenstein',423,NULL,'2019-09-09 18:05:14'),(126,'LT','Lithuania',370,NULL,'2019-09-09 18:05:14'),(127,'LU','Luxembourg',352,NULL,'2019-09-09 18:05:14'),(128,'MO','Macau S.A.R.',853,NULL,'2019-09-09 18:05:14'),(129,'MK','Macedonia',389,NULL,'2019-09-09 18:05:14'),(130,'MG','Madagascar',261,NULL,'2019-09-09 18:05:14'),(131,'MW','Malawi',265,NULL,'2019-09-09 18:05:14'),(132,'MY','Malaysia',60,NULL,'2019-09-09 18:05:14'),(133,'MV','Maldives',960,NULL,'2019-09-09 18:05:14'),(134,'ML','Mali',223,NULL,'2019-09-09 18:05:14'),(135,'MT','Malta',356,NULL,'2019-09-09 18:05:14'),(136,'XM','Man (Isle of)',44,NULL,'2019-09-09 18:05:14'),(137,'MH','Marshall Islands',692,NULL,'2019-09-09 18:05:14'),(138,'MQ','Martinique',596,NULL,'2019-09-09 18:05:14'),(139,'MR','Mauritania',222,NULL,'2019-09-09 18:05:14'),(140,'MU','Mauritius',230,NULL,'2019-09-09 18:05:14'),(141,'YT','Mayotte',269,NULL,'2019-09-09 18:05:14'),(142,'MX','Mexico',52,NULL,'2019-09-09 18:05:14'),(143,'FM','Micronesia',691,NULL,'2019-09-09 18:05:14'),(144,'MD','Moldova',373,NULL,'2019-09-09 18:05:14'),(145,'MC','Monaco',377,NULL,'2019-09-09 18:05:14'),(146,'MN','Mongolia',976,NULL,'2019-09-09 18:05:14'),(147,'MS','Montserrat',1664,NULL,'2019-09-09 18:05:14'),(148,'MA','Morocco',212,NULL,'2019-09-09 18:05:14'),(149,'MZ','Mozambique',258,NULL,'2019-09-09 18:05:14'),(150,'MM','Myanmar',95,NULL,'2019-09-09 18:05:14'),(151,'NA','Namibia',264,NULL,'2019-09-09 18:05:14'),(152,'NR','Nauru',674,NULL,'2019-09-09 18:05:14'),(153,'NP','Nepal',977,NULL,'2019-09-09 18:05:14'),(154,'AN','Netherlands Antilles',599,NULL,'2019-09-09 18:05:14'),(155,'NL','Netherlands The',31,NULL,'2019-09-09 18:05:14'),(156,'NC','New Caledonia',687,NULL,'2019-09-09 18:05:14'),(157,'NZ','New Zealand',64,NULL,'2019-09-09 18:05:14'),(158,'NI','Nicaragua',505,NULL,'2019-09-09 18:05:14'),(159,'NE','Niger',227,NULL,'2019-09-09 18:05:14'),(160,'NG','Nigeria',234,NULL,'2019-09-09 18:05:14'),(161,'NU','Niue',683,NULL,'2019-09-09 18:05:14'),(162,'NF','Norfolk Island',672,NULL,'2019-09-09 18:05:14'),(163,'MP','Northern Mariana Islands',1670,NULL,'2019-09-09 18:05:14'),(164,'NO','Norway',47,NULL,'2019-09-09 18:05:14'),(165,'OM','Oman',968,NULL,'2019-09-09 18:05:14'),(166,'PK','Pakistan',92,NULL,'2019-09-09 18:05:14'),(167,'PW','Palau',680,NULL,'2019-09-09 18:05:14'),(168,'PS','Palestinian Territory Occupied',970,NULL,'2019-09-09 18:05:14'),(169,'PA','Panama',507,NULL,'2019-09-09 18:05:14'),(170,'PG','Papua new Guinea',675,NULL,'2019-09-09 18:05:14'),(171,'PY','Paraguay',595,NULL,'2019-09-09 18:05:14'),(172,'PE','Peru',51,NULL,'2019-09-09 18:05:14'),(173,'PH','Philippines',63,NULL,'2019-09-09 18:05:14'),(174,'PN','Pitcairn Island',0,NULL,'2019-09-09 18:05:14'),(175,'PL','Poland',48,NULL,'2019-09-09 18:05:14'),(176,'PT','Portugal',351,NULL,'2019-09-09 18:05:14'),(177,'PR','Puerto Rico',1787,NULL,'2019-09-09 18:05:14'),(178,'QA','Qatar',974,NULL,'2019-09-09 18:05:14'),(179,'RE','Reunion',262,NULL,'2019-09-09 18:05:14'),(180,'RO','Romania',40,NULL,'2019-09-09 18:05:14'),(181,'RU','Russia',70,NULL,'2019-09-09 18:05:14'),(182,'RW','Rwanda',250,NULL,'2019-09-09 18:05:14'),(183,'SH','Saint Helena',290,NULL,'2019-09-09 18:05:14'),(184,'KN','Saint Kitts And Nevis',1869,NULL,'2019-09-09 18:05:14'),(185,'LC','Saint Lucia',1758,NULL,'2019-09-09 18:05:14'),(186,'PM','Saint Pierre and Miquelon',508,NULL,'2019-09-09 18:05:14'),(187,'VC','Saint Vincent And The Grenadines',1784,NULL,'2019-09-09 18:05:14'),(188,'WS','Samoa',684,NULL,'2019-09-09 18:05:14'),(189,'SM','San Marino',378,NULL,'2019-09-09 18:05:14'),(190,'ST','Sao Tome and Principe',239,NULL,'2019-09-09 18:05:14'),(191,'SA','Saudi Arabia',966,NULL,'2019-09-09 18:05:14'),(192,'SN','Senegal',221,NULL,'2019-09-09 18:05:14'),(193,'RS','Serbia',381,NULL,'2019-09-09 18:05:14'),(194,'SC','Seychelles',248,NULL,'2019-09-09 18:05:14'),(195,'SL','Sierra Leone',232,NULL,'2019-09-09 18:05:14'),(196,'SG','Singapore',65,NULL,'2019-09-09 18:05:14'),(197,'SK','Slovakia',421,NULL,'2019-09-09 18:05:14'),(198,'SI','Slovenia',386,NULL,'2019-09-09 18:05:14'),(199,'XG','Smaller Territories of the UK',44,NULL,'2019-09-09 18:05:14'),(200,'SB','Solomon Islands',677,NULL,'2019-09-09 18:05:14'),(201,'SO','Somalia',252,NULL,'2019-09-09 18:05:14'),(202,'ZA','South Africa',27,NULL,'2019-09-09 18:05:14'),(203,'GS','South Georgia',0,NULL,'2019-09-09 18:05:14'),(204,'SS','South Sudan',211,NULL,'2019-09-09 18:05:14'),(205,'ES','Spain',34,NULL,'2019-09-09 18:05:14'),(206,'LK','Sri Lanka',94,NULL,'2019-09-09 18:05:14'),(207,'SD','Sudan',249,NULL,'2019-09-09 18:05:14'),(208,'SR','Suriname',597,NULL,'2019-09-09 18:05:14'),(209,'SJ','Svalbard And Jan Mayen Islands',47,NULL,'2019-09-09 18:05:14'),(210,'SZ','Swaziland',268,NULL,'2019-09-09 18:05:14'),(211,'SE','Sweden',46,NULL,'2019-09-09 18:05:14'),(212,'CH','Switzerland',41,NULL,'2019-09-09 18:05:14'),(213,'SY','Syria',963,NULL,'2019-09-09 18:05:14'),(214,'TW','Taiwan',886,NULL,'2019-09-09 18:05:14'),(215,'TJ','Tajikistan',992,NULL,'2019-09-09 18:05:14'),(216,'TZ','Tanzania',255,NULL,'2019-09-09 18:05:14'),(217,'TH','Thailand',66,NULL,'2019-09-09 18:05:14'),(218,'TG','Togo',228,NULL,'2019-09-09 18:05:14'),(219,'TK','Tokelau',690,NULL,'2019-09-09 18:05:14'),(220,'TO','Tonga',676,NULL,'2019-09-09 18:05:14'),(221,'TT','Trinidad And Tobago',1868,NULL,'2019-09-09 18:05:14'),(222,'TN','Tunisia',216,NULL,'2019-09-09 18:05:14'),(223,'TR','Turkey',90,NULL,'2019-09-09 18:05:14'),(224,'TM','Turkmenistan',7370,NULL,'2019-09-09 18:05:14'),(225,'TC','Turks And Caicos Islands',1649,NULL,'2019-09-09 18:05:14'),(226,'TV','Tuvalu',688,NULL,'2019-09-09 18:05:14'),(227,'UG','Uganda',256,NULL,'2019-09-09 18:05:14'),(228,'UA','Ukraine',380,NULL,'2019-09-09 18:05:14'),(229,'AE','United Arab Emirates',971,NULL,'2019-09-09 18:05:14'),(230,'GB','United Kingdom',44,NULL,'2019-09-09 18:05:14'),(231,'US','United States',1,NULL,'2019-09-09 18:05:14'),(232,'UM','United States Minor Outlying Islands',1,NULL,'2019-09-09 18:05:14'),(233,'UY','Uruguay',598,NULL,'2019-09-09 18:05:14'),(234,'UZ','Uzbekistan',998,NULL,'2019-09-09 18:05:14'),(235,'VU','Vanuatu',678,NULL,'2019-09-09 18:05:14'),(236,'VA','Vatican City State (Holy See)',39,NULL,'2019-09-09 18:05:14'),(237,'VE','Venezuela',58,NULL,'2019-09-09 18:05:14'),(238,'VN','Vietnam',84,NULL,'2019-09-09 18:05:14'),(239,'VG','Virgin Islands (British)',1284,NULL,'2019-09-09 18:05:14'),(240,'VI','Virgin Islands (US)',1340,NULL,'2019-09-09 18:05:14'),(241,'WF','Wallis And Futuna Islands',681,NULL,'2019-09-09 18:05:14'),(242,'EH','Western Sahara',212,NULL,'2019-09-09 18:05:14'),(243,'YE','Yemen',967,NULL,'2019-09-09 18:05:14'),(244,'YU','Yugoslavia',38,NULL,'2019-09-09 18:05:14'),(245,'ZM','Zambia',260,NULL,'2019-09-09 18:05:14'),(246,'ZW','Zimbabwe',263,NULL,'2019-09-09 18:05:14');
/*!40000 ALTER TABLE `tbl_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_match_preference`
--

DROP TABLE IF EXISTS `tbl_match_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_match_preference` (
  `matching_id` int(11) NOT NULL AUTO_INCREMENT,
  `ethnicity` varchar(255) DEFAULT NULL,
  `body_type` varchar(255) DEFAULT NULL,
  `min_height` int(11) DEFAULT NULL,
  `max_height` int(11) DEFAULT NULL,
  `min_distance` int(11) DEFAULT NULL,
  `max_distance` int(11) DEFAULT NULL,
  `max_age` int(11) DEFAULT NULL,
  `min_age` int(11) DEFAULT NULL,
  `current_location` varchar(255) DEFAULT NULL,
  `has_children` enum('Y','N','notToSay') DEFAULT 'N',
  `deleted` enum('Y','N') DEFAULT 'N',
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`matching_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `tbl_match_preference_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_match_preference`
--

LOCK TABLES `tbl_match_preference` WRITE;
/*!40000 ALTER TABLE `tbl_match_preference` DISABLE KEYS */;
INSERT INTO `tbl_match_preference` VALUES (3,'Indian','Gym',110,150,50,100,40,20,'28.5456614,77.0843185','N','N',1,'2019-09-30 03:19:29',2,'2019-09-30 08:51:20'),(17,'Latino,Bengalis','Gym',110,150,0,100,40,20,'29.5456614,77.0843185','N','N',6,'2019-10-10 05:41:33',6,'2019-11-08 12:31:13'),(18,'Indian','Gym',110,150,50,100,40,20,'30.5456614,77.0843185','N','N',2,'2019-10-14 05:46:32',NULL,NULL),(19,'Afghan,Indian, Latino, Bengalis, Arabic, Slavic, Persian','Netflix',139,173,1,56,28,18,'32.5456614,77.0843185','N','N',5,'2019-10-14 11:40:41',5,'2019-11-09 12:42:42'),(36,'Caucasian,Brown,Latino','Netflix',115,199,28,42,53,31,'28.346237,76.7492866','Y','N',3,'2019-10-15 03:08:13',3,'2019-11-18 10:55:44'),(37,'Indian','Gym',110,150,50,2,40,20,'28.346237,76.7492866','N','N',4,'2019-10-15 03:08:15',4,'2019-11-18 09:48:33'),(38,'Indian','Gym',110,150,50,50,40,20,NULL,'N','N',7,'2019-10-25 04:14:44',7,'2019-11-14 12:34:29'),(39,'Algerian','Gym',110,150,50,100,40,20,'45.2615145,-75.7730076','Y','N',9,'2019-11-01 02:59:28',NULL,NULL),(40,'Albanian','Gym',110,150,50,100,40,20,NULL,'Y','N',13,'2019-11-01 06:40:30',NULL,NULL),(41,'Afghan','Gym',110,150,50,100,40,20,NULL,'Y','N',14,'2019-11-01 07:04:05',NULL,NULL),(42,'Indian','Gym',110,150,50,2,40,20,NULL,'N','Y',31,'2019-11-02 05:32:05',31,'2019-11-07 09:34:56');
/*!40000 ALTER TABLE `tbl_match_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_match_subtype`
--

DROP TABLE IF EXISTS `tbl_match_subtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_match_subtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `deleted` enum('Y','N') DEFAULT 'N',
  `gender_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_match_subtype`
--

LOCK TABLES `tbl_match_subtype` WRITE;
/*!40000 ALTER TABLE `tbl_match_subtype` DISABLE KEYS */;
INSERT INTO `tbl_match_subtype` VALUES (1,'Straight Female','N','Male'),(2,'Bi Sexual Female','N','Female'),(3,'Transgender Female','N','Trans Female'),(4,'Straight Male','N','Trans Male'),(5,'Bi Sexual Male','N','Not Confirm'),(6,'Transgender Male','N',NULL),(7,'All Of The Above','N',NULL);
/*!40000 ALTER TABLE `tbl_match_subtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notification`
--

DROP TABLE IF EXISTS `tbl_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `main_data` text,
  `user_data` text,
  `gcm_id` varchar(255) DEFAULT NULL,
  `device_type` enum('A','I') DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `reciever_id` int(11) DEFAULT NULL,
  `send_status` enum('sent','pending','failed') DEFAULT 'pending',
  `deleted` enum('Y','N') DEFAULT 'N',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notification_id`),
  KEY `to_user_id` (`user_data`(767)),
  KEY `created_by` (`sender_id`),
  CONSTRAINT `tbl_notification_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `tbl_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notification`
--

LOCK TABLES `tbl_notification` WRITE;
/*!40000 ALTER TABLE `tbl_notification` DISABLE KEYS */;
INSERT INTO `tbl_notification` VALUES (1,'{\"title\":\"R3alove\",\"message\":\"Test1 has liked Your profile\",\"type\":\"like\",\"user_id\":\"7\"}','[]','','',7,4,'pending','N','2019-11-12 10:28:42'),(2,'{\"title\":\"R3alove\",\"message\":\"It\'s match\",\"type\":\"match\",\"user_id\":\"7\"}','{\"first_name\":\"Test1\",\"url\":\"http:\\/\\/52.27.53.102\\/r3allove\\/upload\\/15719118150r3allove1571911813157.png\"}','cPqCP7RJNZo:APA91bFKP6UyPdBYyHwx3LUJOsDXb-ZZXz44eZq_zkR_vOkI52-hBOUbYHrckONG5MmW72fP6195dbWr8_1tTDl9_0UpCzlmO9Rzxeu--6n4fwUK8hORMqDsl1VxDczudbH0k6S-xYD6','A',4,7,'pending','N','2019-11-12 10:30:16'),(3,'{\"title\":\"R3alove\",\"message\":\"Harry has liked Your profile\",\"type\":\"like\",\"user_id\":\"14\"}','[]','daWkvmBJdzY:APA91bH8xuSMmzibNm2kx9Xq-nRU3lWlnn-NYrJVkoWPS4xLpKlb2b8FBiHHLGI7ZOdHQLSY03wWVnp_slocpp_yBhwPi1SmngAv1Tk6lXIceccHsRcgSA3Adi3ccczwtHHptnn25_WT','A',14,6,'pending','N','2019-11-13 05:21:47'),(4,'{\"title\":\"R3alove\",\"message\":\"Abdur has liked Your profile\",\"type\":\"like\",\"user_id\":\"4\"}','[]','daWkvmBJdzY:APA91bH8xuSMmzibNm2kx9Xq-nRU3lWlnn-NYrJVkoWPS4xLpKlb2b8FBiHHLGI7ZOdHQLSY03wWVnp_slocpp_yBhwPi1SmngAv1Tk6lXIceccHsRcgSA3Adi3ccczwtHHptnn25_WT','A',4,6,'pending','N','2019-11-13 11:07:18'),(5,'{\"title\":\"R3alove\",\"message\":\"Harry has liked Your profile\",\"type\":\"like\",\"user_id\":\"14\"}','[]','','',14,2,'pending','N','2019-11-14 08:01:48'),(6,'{\"title\":\"R3alove\",\"message\":\"Test1 has liked Your profile\",\"type\":\"like\",\"user_id\":\"7\"}','[]','c_LaDomjovU:APA91bFyUFqjOLqP05jGIP4fIzJ1WRMiLagzd7__CKZYBqLIj2-mpflugWTB0pAGMchSabzW-3nU1ozTZ_8Z16uGjqotHS95AKQ5fMivSNVA7IIkswun4eXI8102JFAymYnjCOpe2yM-','A',7,6,'pending','N','2019-11-14 08:59:31'),(7,'{\"title\":\"R3alove\",\"message\":\"Test1 has liked Your profile\",\"type\":\"like\",\"user_id\":\"7\"}','[]','c_LaDomjovU:APA91bFyUFqjOLqP05jGIP4fIzJ1WRMiLagzd7__CKZYBqLIj2-mpflugWTB0pAGMchSabzW-3nU1ozTZ_8Z16uGjqotHS95AKQ5fMivSNVA7IIkswun4eXI8102JFAymYnjCOpe2yM-','A',7,6,'pending','N','2019-11-14 09:00:38'),(8,'{\"title\":\"R3alove\",\"message\":\"It\'s match\",\"type\":\"match\",\"user_id\":\"7\"}','{\"first_name\":\"Test1\",\"url\":\"http:\\/\\/52.27.53.102\\/r3allove\\/upload\\/15719746720file.jpeg\"}','f7QyiqvMg5k:APA91bF50EVAEq7FwZxKY-pVgl0ecc4b-qojBOu80FIfzUxNmhHnIZuKQFJ-Y8RE5R6uQfk0l-K7HwHL9rOU4Wk-wLZmw9EBKQCj3F8PNwSS3XD2Dtwk_9EOWS1eK547JVrrnacp_LXE','A',6,7,'pending','N','2019-11-14 09:00:51'),(9,'{\"title\":\"R3alove\",\"message\":\"Rajpal has liked Your profile\",\"type\":\"like\",\"user_id\":\"6\"}','[]','eBnHkmnsLLs:APA91bHeMssu3fZ3vuZ0lT5qhE6Rm-QNunYRG9LMagG7_D2u75zzW4uNHsALRZojCpawgByoa2N2mFAXRG5Iv78ULmN9sjQ7qXw1qjV9tuTnRe_ZW8hBQa9SmGUE4Qy6Mixm64RE7Ol0','A',6,3,'pending','N','2019-11-14 11:43:12'),(10,'{\"title\":\"R3alove\",\"message\":\"Test1 has liked Your profile\",\"type\":\"like\",\"user_id\":\"7\"}','[]','eplnn-QgE4E:APA91bF2sXK9SDxspiiMhE3MDdLlHV_94GCsi0N4bU0rv9pg9vOIS7oU59rYtc6hBYbVxdPp7a1xiUYyUqy7kju6lMeS0TPMfHwRUwPr3q9pjBoXTAg95T9eWDlOrX1pwO-5e9adQ4eB','I',7,5,'pending','N','2019-11-15 09:41:08'),(11,'{\"title\":\"R3alove\",\"message\":\"It\'s match\",\"type\":\"match\",\"user_id\":\"7\"}','{\"first_name\":\"Test1\",\"url\":\"http:\\/\\/52.27.53.102\\/r3allove\\/upload\\/15732835110file.jpeg\"}','','I',5,7,'pending','N','2019-11-15 09:41:20'),(12,'{\"title\":\"R3alove\",\"message\":\"Abdur has liked Your profile\",\"type\":\"like\",\"user_id\":\"4\"}','[]','eplnn-QgE4E:APA91bF2sXK9SDxspiiMhE3MDdLlHV_94GCsi0N4bU0rv9pg9vOIS7oU59rYtc6hBYbVxdPp7a1xiUYyUqy7kju6lMeS0TPMfHwRUwPr3q9pjBoXTAg95T9eWDlOrX1pwO-5e9adQ4eB','I',4,5,'pending','N','2019-11-16 03:45:49');
/*!40000 ALTER TABLE `tbl_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notification_view`
--

DROP TABLE IF EXISTS `tbl_notification_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_notification_view` (
  `view_id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `read` enum('Y','N') DEFAULT 'N',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`view_id`),
  KEY `notification_id` (`notification_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tbl_notification_view_ibfk_1` FOREIGN KEY (`notification_id`) REFERENCES `tbl_notification` (`notification_id`),
  CONSTRAINT `tbl_notification_view_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notification_view`
--

LOCK TABLES `tbl_notification_view` WRITE;
/*!40000 ALTER TABLE `tbl_notification_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_notification_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_payment`
--

DROP TABLE IF EXISTS `tbl_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `txnid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `amount` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `productinfo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `surl` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `furl` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `service_provider` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address1` text CHARACTER SET utf8,
  `address2` text CHARACTER SET utf8,
  `city` text COLLATE utf8_bin,
  `state` varchar(800) CHARACTER SET utf8 DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zipcode` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `udf1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `udf2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `udf3` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `udf4` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `udf5` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pg` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `responce` text COLLATE utf8_bin,
  `error` text COLLATE utf8_bin,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `deleted` enum('Y','N') CHARACTER SET utf8 DEFAULT 'N',
  `createdBy` int(11) DEFAULT NULL,
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_id`),
  KEY `user_id` (`user_id`),
  KEY `plan_id` (`plan_id`),
  CONSTRAINT `tbl_payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`),
  CONSTRAINT `tbl_payment_ibfk_2` FOREIGN KEY (`plan_id`) REFERENCES `tbl_plans` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_payment`
--

LOCK TABLES `tbl_payment` WRITE;
/*!40000 ALTER TABLE `tbl_payment` DISABLE KEYS */;
INSERT INTO `tbl_payment` VALUES (1,NULL,NULL,'iwurxd6j',NULL,'080084d03f1d58b917da','34000.0','Testing','test@gmail.cc','918585955599','businessMonthlyVal',NULL,NULL,NULL,'','','','','','','','','','','','',NULL,'{\"mihpayid\":\"106412\",\"mode\":\"CC\",\"status\":\"success\",\"unmappedstatus\":\"captured\",\"key\":\"iwurxd6j\",\"txnid\":\"080084d03f1d58b917da\",\"amount\":\"34000.0\",\"addedon\":\"2018-07-14 01:49:16\",\"productinfo\":\"businessMonthlyVal\",\"firstname\":\"Testing\",\"lastname\":\"\",\"address1\":\"\",\"address2\":\"\",\"city\":\"\",\"state\":\"\",\"country\":\"\",\"zipcode\":\"\",\"email\":\"test@gmail.cc\",\"phone\":\"918585955599\",\"udf1\":\"\",\"udf2\":\"\",\"udf3\":\"\",\"udf4\":\"\",\"udf5\":\"\",\"udf6\":\"\",\"udf7\":\"\",\"udf8\":\"\",\"udf9\":\"\",\"udf10\":\"\",\"hash\":\"6e1d7797b5091c962ecdfc63a0a7e0cd0a82374f7019aa3770ed356c480b2481bac1791b3f5785f14005d9d71a9ceb645fc5f71f4dca619735c879f3b8af1cbf\",\"field1\":\"157048\",\"field2\":\"388022\",\"field3\":\"20180714\",\"field4\":\"MC\",\"field5\":\"570225259545\",\"field6\":\"00\",\"field7\":\"0\",\"field8\":\"3DS\",\"field9\":\" Verification of Secure Hash Failed: E700 -- Approved -- Transaction Successful -- Unable to be determined--E000\",\"PG_TYPE\":\"AXISPG\",\"encryptedPaymentId\":\"EB9E7A30DC6D9C495D7F5BB3BA0D19BB\",\"bank_ref_num\":\"157048\",\"bankcode\":\"VISA\",\"error\":\"E000\",\"error_Message\":\"No Error\",\"name_on_card\":\"test\",\"cardnum\":\"401200XXXXXX1112\",\"cardhash\":\"This field is no longer supported in postback params.\",\"amount_split\":\"{\\\"PAYU\\\":\\\"34000.0\\\"}\",\"payuMoneyId\":\"235062\",\"discount\":\"0.00\",\"net_amount_debit\":\"34000\"}',NULL,'success','N',NULL,'2018-07-14 01:49:20',NULL,'2019-09-05 10:21:36');
/*!40000 ALTER TABLE `tbl_payment` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=819 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_personal_chat`
--

LOCK TABLES `tbl_personal_chat` WRITE;
/*!40000 ALTER TABLE `tbl_personal_chat` DISABLE KEYS */;
INSERT INTO `tbl_personal_chat` VALUES (1,4,5,'Y','',NULL,'Y','N','2019-11-12 08:31:14'),(2,4,5,'Tres','',NULL,'Y','N','2019-11-12 08:53:57'),(3,14,6,'Dgfbbf c','',NULL,'Y','N','2019-11-12 09:25:26'),(4,6,14,'Jbskbkdvjvsbkzjsbd\nDbidbjvsvdjvdbd\nDkdbdiidb\nGshdhdbhdhdjjdbfjf\nDbdhdhhdjfjjf\n\nDbdhdjdjjf','',NULL,'N','N','2019-11-12 09:39:55'),(5,6,14,'hjk','',NULL,'N','N','2019-11-12 09:43:37'),(6,3,4,'new message','',NULL,'Y','N','2019-11-12 09:47:49'),(7,4,3,'New message from gsjsgsg','',NULL,'Y','N','2019-11-12 09:49:06'),(8,4,6,'Gsvvshshs','',NULL,'Y','N','2019-11-12 09:50:01'),(9,3,6,'fjsdkfjsdfkllsdf','',NULL,'Y','N','2019-11-12 09:50:23'),(10,7,6,'','http://52.27.53.102/r3allove/upload/1573552252Picture.jpg','chatImg','Y','N','2019-11-12 09:50:52'),(11,4,3,'','http://52.27.53.102/r3allove/upload/1573552332Picture.jpg','chatImg','Y','N','2019-11-12 09:52:19'),(12,6,7,'Rajpal','',NULL,'Y','N','2019-11-12 09:53:44'),(13,3,6,'sdfsdfdf','',NULL,'Y','N','2019-11-12 09:53:47'),(14,6,3,'Hello','',NULL,'Y','N','2019-11-12 09:58:27'),(15,3,4,'mow','',NULL,'Y','N','2019-11-12 10:00:50'),(16,3,4,'but I like this','',NULL,'Y','N','2019-11-12 10:01:13'),(17,4,5,'New','',NULL,'Y','N','2019-11-12 10:01:28'),(18,4,3,'vhdg svz','',NULL,'Y','N','2019-11-12 10:09:03'),(19,3,4,'Hello','',NULL,'Y','N','2019-11-12 10:09:23'),(20,4,3,'let start chat','',NULL,'Y','N','2019-11-12 10:09:24'),(21,3,4,'Yes','',NULL,'Y','N','2019-11-12 10:09:32'),(22,4,3,'one','',NULL,'Y','N','2019-11-12 10:09:38'),(25,5,6,'three...','',NULL,'Y','N','2019-11-12 10:10:18'),(26,6,5,'Did u receive image ?','',NULL,'Y','N','2019-11-12 10:10:23'),(27,3,4,'Vshsvs','',NULL,'Y','N','2019-11-12 10:10:28'),(28,3,4,'','http://52.27.53.102/r3allove/upload/1573553434Picture.jpg','null','Y','N','2019-11-12 10:10:35'),(29,5,4,'hbggggg','',NULL,'Y','N','2019-11-12 10:10:50'),(30,3,4,'Nor','',NULL,'Y','N','2019-11-12 10:11:05'),(31,4,5,'Name is khan.','',NULL,'Y','N','2019-11-12 10:11:12'),(32,4,3,'','http://52.27.53.102/r3allove/upload/1573553476Picture.jpg','chatImg','Y','N','2019-11-12 10:11:16'),(33,4,5,'Hi\n','',NULL,'Y','N','2019-11-12 10:12:24'),(34,4,3,'','http://52.27.53.102/r3allove/upload/1573553556Picture.jpg','chatImg','Y','N','2019-11-12 10:12:36'),(35,3,4,'','http://52.27.53.102/r3allove/upload/1573553584Picture.jpg','null','Y','N','2019-11-12 10:13:06'),(36,4,3,'','http://52.27.53.102/r3allove/upload/1573553596Picture.jpg','chatImg','Y','N','2019-11-12 10:13:16'),(37,4,5,'Check','',NULL,'Y','N','2019-11-12 10:13:22'),(38,4,3,'jdjndj','',NULL,'Y','N','2019-11-12 10:13:26'),(39,4,3,'jdjbxnx','',NULL,'Y','N','2019-11-12 10:13:38'),(40,4,3,'','http://52.27.53.102/r3allove/upload/1573553640Picture.jpg','chatImg','Y','N','2019-11-12 10:14:01'),(41,4,3,'fhfhh','',NULL,'Y','N','2019-11-12 10:14:24'),(42,4,3,'vshsbs','',NULL,'Y','N','2019-11-12 10:14:37'),(43,3,4,'Jdjdkd','',NULL,'Y','N','2019-11-12 10:14:50'),(44,4,3,'','http://52.27.53.102/r3allove/upload/1573553691Picture.jpg','chatImg','Y','N','2019-11-12 10:14:52'),(45,3,4,'Jdjdjdjdj','',NULL,'Y','N','2019-11-12 10:14:55'),(46,3,4,'Jsjdjdhd','',NULL,'Y','N','2019-11-12 10:14:58'),(47,3,4,'One','',NULL,'Y','N','2019-11-12 10:15:04'),(48,3,4,'Two','',NULL,'Y','N','2019-11-12 10:15:08'),(49,3,4,'','http://52.27.53.102/r3allove/upload/1573553748Picture.jpg','chatImg','Y','N','2019-11-12 10:15:48'),(50,4,5,'Four','',NULL,'Y','N','2019-11-12 10:16:10'),(51,4,3,'uu','',NULL,'Y','N','2019-11-12 10:17:31'),(52,4,5,'Try\n','',NULL,'Y','N','2019-11-12 10:18:05'),(53,3,4,'Yes','',NULL,'Y','N','2019-11-12 10:18:59'),(54,4,3,'dhshx','',NULL,'Y','N','2019-11-12 10:19:05'),(55,3,4,'Vjcc','',NULL,'Y','N','2019-11-12 10:19:12'),(56,4,3,'hdhd','',NULL,'Y','N','2019-11-12 10:19:21'),(57,4,3,'gsvsb','',NULL,'Y','N','2019-11-12 10:19:36'),(58,3,4,'Tccycgcfc','',NULL,'Y','N','2019-11-12 10:19:43'),(59,3,4,'Jjvjvucyxc','',NULL,'Y','N','2019-11-12 10:19:51'),(60,4,3,'gwbsbs','',NULL,'Y','N','2019-11-12 10:20:24'),(61,3,4,'Cvcxccv','',NULL,'Y','N','2019-11-12 10:20:30'),(62,4,3,'fcv','',NULL,'Y','N','2019-11-12 10:20:58'),(63,5,4,'hey','',NULL,'Y','N','2019-11-12 10:23:32'),(64,4,5,'Vivek','',NULL,'Y','N','2019-11-12 10:24:13'),(65,4,3,'leHs','',NULL,'Y','N','2019-11-12 10:25:21'),(66,4,5,'Hi','',NULL,'Y','N','2019-11-12 10:25:28'),(67,4,3,'s hvsusjvj vjvjz','',NULL,'Y','N','2019-11-12 10:25:36'),(68,4,3,'','http://52.27.53.102/r3allove/upload/1573554390Picture.jpg','chatImg','Y','N','2019-11-12 10:26:30'),(84,4,5,'Hello\n','',NULL,'Y','N','2019-11-12 10:54:41'),(85,4,5,'One\n','',NULL,'Y','N','2019-11-12 10:56:23'),(86,4,3,'Hi','',NULL,'Y','N','2019-11-12 10:59:17'),(87,4,3,'Fjgf','',NULL,'Y','N','2019-11-12 10:59:26'),(88,4,3,'Not done','',NULL,'Y','N','2019-11-12 10:59:34'),(110,4,5,'Final','',NULL,'Y','N','2019-11-12 11:13:55'),(114,4,5,'Again','',NULL,'Y','N','2019-11-12 11:18:12'),(115,4,5,'Once','',NULL,'Y','N','2019-11-12 11:19:39'),(116,4,3,'1','',NULL,'Y','N','2019-11-12 11:22:09'),(117,4,5,'Three','',NULL,'Y','N','2019-11-12 11:26:14'),(135,4,5,'Again','',NULL,'Y','N','2019-11-12 11:49:28'),(140,4,5,'Hello!!!!','',NULL,'Y','N','2019-11-12 11:52:08'),(141,4,5,'Fwqfqwfqw','',NULL,'Y','N','2019-11-12 11:56:39'),(142,4,5,'Q	Drewâ€™s	werwqerq','',NULL,'Y','N','2019-11-12 11:56:54'),(143,4,5,'DADasdaD','',NULL,'Y','N','2019-11-12 11:57:01'),(144,4,5,'323sdv','',NULL,'Y','N','2019-11-12 11:57:20'),(145,4,5,'Yep','',NULL,'Y','N','2019-11-12 12:00:26'),(146,4,5,'Not this is working and it is the final test for the text chat','',NULL,'Y','N','2019-11-12 12:04:08'),(147,5,4,'okay','',NULL,'Y','N','2019-11-12 12:04:16'),(148,5,4,'whats next','',NULL,'Y','N','2019-11-12 12:04:28'),(149,4,5,'Letâ€™s do image and video','',NULL,'Y','N','2019-11-12 12:04:51'),(150,5,4,'sure','',NULL,'Y','N','2019-11-12 12:05:18'),(151,4,5,'Hello\n','',NULL,'Y','N','2019-11-12 12:08:01'),(156,4,5,'\n\n\nSdfghj\n\n\n\n\n','',NULL,'Y','N','2019-11-12 12:15:41'),(157,4,5,'\n\nAsdf','',NULL,'Y','N','2019-11-12 12:15:50'),(161,5,4,'okay done sir ji','',NULL,'Y','N','2019-11-12 12:19:39'),(176,4,5,'Chalk this is','',NULL,'Y','N','2019-11-12 12:31:37'),(177,4,5,'Come to me Kate Sara jaha','',NULL,'Y','N','2019-11-12 12:32:00'),(190,4,5,'Adsflkjadlkfjlakjdf a falkdsj flkadsjf Leahâ€™s lkfajdl kfjalk Dukakis hulks jfklj all hardly jfdlksaj floral lkdjlkdalk deal Elkhart ladkjflkajfkaj kfaj floral lka flkjdflkjadfk Jackson lake fka jerks jdfk ajdkfj Jaffa lad jfka duck jadfk jadf','',NULL,'Y','N','2019-11-12 12:38:09'),(199,4,5,'Kjhkjhljk','',NULL,'Y','N','2019-11-12 12:41:23'),(211,4,3,'Hey','',NULL,'Y','N','2019-11-12 13:01:22'),(212,3,4,'hey','',NULL,'Y','N','2019-11-12 13:01:35'),(213,4,3,'Hshd','',NULL,'Y','N','2019-11-12 13:02:02'),(214,3,4,'vhggg','',NULL,'Y','N','2019-11-12 13:02:07'),(215,4,3,'Gggg','',NULL,'Y','N','2019-11-12 13:02:24'),(216,4,3,'Gdhgdh','',NULL,'Y','N','2019-11-12 13:03:01'),(217,4,3,'Hdhbd','',NULL,'Y','N','2019-11-12 13:03:12'),(218,4,3,'Gbhshs','',NULL,'Y','N','2019-11-12 13:04:29'),(219,3,4,'vhg','',NULL,'Y','N','2019-11-12 13:04:33'),(220,4,3,'Vgg','',NULL,'Y','N','2019-11-12 13:05:09'),(253,4,5,'Hello','',NULL,'Y','N','2019-11-13 03:59:06'),(313,4,5,'Hello\n','',NULL,'Y','N','2019-11-13 04:38:26'),(324,4,5,'Hey','',NULL,'Y','N','2019-11-13 05:01:15'),(348,4,5,'','http://52.220.196.116/r3allove/upload/1573628584file.jpeg','chatImg','Y','N','2019-11-13 07:03:04'),(358,7,4,'Vhdgdvdg','',NULL,'Y','N','2019-11-13 08:20:12'),(359,4,7,'dsdfsdfsdf','',NULL,'Y','N','2019-11-13 08:20:22'),(360,6,4,'Three11','',NULL,'Y','N','2019-11-13 08:22:01'),(361,4,5,'','http://52.220.196.116/r3allove/upload/1573636237file.jpeg','chatImg','Y','N','2019-11-13 09:10:37'),(362,4,7,'hi','',NULL,'Y','N','2019-11-13 10:26:42'),(363,4,7,'fgg','',NULL,'Y','N','2019-11-13 10:26:55'),(364,7,4,'Vhfff','',NULL,'Y','N','2019-11-13 10:26:59'),(365,3,2,'One','',NULL,'N','N','2019-11-14 03:26:52'),(366,2,3,'Hello Rajpal','',NULL,'N','N','2019-11-14 03:27:07'),(367,3,2,'four','',NULL,'N','N','2019-11-14 03:29:08'),(368,2,3,'three','',NULL,'N','N','2019-11-14 03:29:18'),(369,2,3,'three','',NULL,'N','N','2019-11-14 03:29:40'),(370,3,2,'four','',NULL,'N','N','2019-11-14 03:29:42'),(371,2,3,'three','',NULL,'N','N','2019-11-14 03:31:15'),(372,3,2,'four','',NULL,'N','N','2019-11-14 03:31:16'),(373,3,2,'four','',NULL,'N','N','2019-11-14 03:32:52'),(374,7,4,'Terrr','',NULL,'Y','N','2019-11-14 03:47:50'),(375,4,7,'ererer','',NULL,'Y','N','2019-11-14 03:48:04'),(376,7,4,'Tetstste','',NULL,'Y','N','2019-11-14 03:48:26'),(377,7,4,'Gshsgsg','',NULL,'Y','N','2019-11-14 03:48:38'),(378,7,4,'Hfhbbbn','',NULL,'Y','N','2019-11-14 03:57:32'),(379,7,4,'Hello rajpal','',NULL,'Y','N','2019-11-14 03:59:28'),(380,7,4,'Hello one','',NULL,'Y','N','2019-11-14 04:00:26'),(381,7,4,'One two tjree','',NULL,'Y','N','2019-11-14 04:00:51'),(382,7,4,'Free','',NULL,'Y','N','2019-11-14 04:02:01'),(383,7,4,'Ho Kya','',NULL,'Y','N','2019-11-14 04:02:12'),(384,7,4,'Listening','',NULL,'Y','N','2019-11-14 04:02:43'),(385,7,4,'Hello','',NULL,'Y','N','2019-11-14 04:05:40'),(386,7,4,'Yes','',NULL,'Y','N','2019-11-14 04:05:46'),(387,7,4,'Bolo','',NULL,'Y','N','2019-11-14 04:05:51'),(388,7,4,'Hhjhgh','',NULL,'Y','N','2019-11-14 04:05:55'),(389,7,4,'Ddtfg','',NULL,'Y','N','2019-11-14 04:06:00'),(390,5,4,'hello kjfdsbfjdsf','',NULL,'Y','N','2019-11-14 04:16:58'),(393,5,4,'undefined','http://52.27.53.102/r3allove/upload/1573552252Picture.jpg','chatImg','Y','N','2019-11-14 04:18:39'),(394,7,4,'Vxhshhs','',NULL,'Y','N','2019-11-14 04:22:13'),(399,7,4,'Gqdjsvivwvd','','text','Y','N','2019-11-14 04:34:52'),(400,7,4,'','http://52.27.53.102/r3allove/upload/1573706165Picture.jpg','chatImg','Y','N','2019-11-14 04:36:05'),(401,4,5,'Working images perfectly','','','Y','N','2019-11-14 04:41:08'),(402,4,5,'','http://52.220.196.116/r3allove/upload/1573707121file.jpeg','chatImg','Y','N','2019-11-14 04:52:02'),(403,4,5,'','http://52.220.196.116/r3allove/upload/1573707190file.jpeg','chatImg','Y','N','2019-11-14 04:53:10'),(404,7,4,'Xwksx axjajbw vxbbx me bisbxbsxi\nHsjvaxjsxixsb\nDbisxvispixbsjbxss\nWv xjbxwbsbwbxbisbicskbsbxsxbbsxivbsiwisbsixsbwixisxxbsibxisbcicsbxxbbisxbsixxbsxisxxbsxsixbsbxbscicsc','','text','Y','N','2019-11-14 04:53:33'),(405,7,4,'','http://52.27.53.102/r3allove/upload/1573709299Picture.jpg','chatImg','Y','N','2019-11-14 05:28:20'),(406,7,4,'','http://52.27.53.102/r3allove/upload/1573709562Picture.jpg','chatImg','Y','N','2019-11-14 05:32:42'),(407,7,4,'Vsjwxvjjwvx','','text','Y','N','2019-11-14 05:34:34'),(408,7,4,'Zaxjvwxjxwb','','text','Y','N','2019-11-14 05:34:42'),(409,4,7,'dasdasasd','','text','Y','N','2019-11-14 05:34:55'),(410,4,7,'asdffsdf','','text','Y','N','2019-11-14 05:35:11'),(411,7,4,'','http://52.27.53.102/r3allove/upload/1573709761Picture.jpg','chatImg','Y','N','2019-11-14 05:36:02'),(412,7,4,'','http://52.27.53.102/r3allove/upload/1573710027Picture.jpg','chatImg','Y','N','2019-11-14 05:40:27'),(413,7,4,'','http://52.27.53.102/r3allove/upload/1573710299Picture.jpg','chatImg','Y','N','2019-11-14 05:44:59'),(414,7,4,'','http://52.27.53.102/r3allove/upload/1573710362Picture.jpg','chatImg','Y','N','2019-11-14 05:46:03'),(415,7,4,'','http://52.27.53.102/r3allove/upload/1573710434Picture.jpg','chatImg','Y','N','2019-11-14 05:47:15'),(416,7,4,'','http://52.27.53.102/r3allove/upload/1573710520Picture.jpg','chatImg','Y','N','2019-11-14 05:48:41'),(417,7,4,'','http://52.27.53.102/r3allove/upload/1573710567Picture.jpg','chatImg','Y','N','2019-11-14 05:49:27'),(419,7,4,'','http://52.27.53.102/r3allove/upload/1573711110Picture.jpg','chatImg','Y','N','2019-11-14 05:58:30'),(420,4,5,'','http://52.220.196.116/r3allove/upload/1573711178file.jpeg','chatImg','Y','N','2019-11-14 05:59:38'),(423,4,5,'Hello','','','Y','N','2019-11-14 06:22:55'),(424,7,14,'hello raj','',NULL,'Y','N','2019-11-14 07:01:38'),(425,14,7,'let Go','',NULL,'Y','N','2019-11-14 07:02:07'),(429,7,14,'Harry','','text','Y','N','2019-11-14 07:11:50'),(430,7,14,'Ggg','','text','Y','N','2019-11-14 07:12:56'),(431,7,14,'Gugffg','','text','Y','N','2019-11-14 07:13:10'),(432,14,7,'dsadadadasdas','','text','Y','N','2019-11-14 07:13:18'),(435,7,14,'Good','','text','Y','N','2019-11-14 07:20:23'),(438,7,14,'Gdhgd','','text','Y','N','2019-11-14 07:26:09'),(439,7,14,'Test to harjot','','text','Y','N','2019-11-14 07:26:42'),(442,7,14,'Vxhshgdgshdhddhdhhdhdjddbxbcbxnbbzxbxbbxbvxvcvxbxbbxbxxbxbccbncncnccjjcjccncnjcjcjc','','text','Y','N','2019-11-14 07:27:35'),(443,7,14,'Gh','','text','Y','N','2019-11-14 07:27:44'),(444,7,14,'Gggh','','text','Y','N','2019-11-14 07:27:58'),(445,7,14,'Ceevr','','text','Y','N','2019-11-14 07:29:15'),(448,7,14,'Test to harry','','text','Y','N','2019-11-14 07:41:18'),(450,7,14,'Tevdhshs','','text','Y','N','2019-11-14 07:41:28'),(452,14,7,'hello','','text','Y','N','2019-11-14 07:41:58'),(453,7,14,'Harry message','','text','Y','N','2019-11-14 07:42:00'),(454,7,14,'Gsggdgsgs','','text','Y','N','2019-11-14 07:42:16'),(457,14,7,'ghsgg','','text','Y','N','2019-11-14 08:49:39'),(458,7,14,'Tttttt','','text','Y','N','2019-11-14 08:49:47'),(459,14,7,'teyyeetye','','text','Y','N','2019-11-14 08:49:58'),(460,14,7,'vdhvsvxhx','','text','Y','N','2019-11-14 08:50:20'),(461,7,14,'Ujvvbgvc','','text','Y','N','2019-11-14 08:50:23'),(462,14,7,'rwytwwtwtwwyeususubxxbbx xbbxbxsisyddysydyysyydyeyeydyydyeydy','','text','Y','N','2019-11-14 08:53:07'),(464,7,14,'Dhci','','text','Y','N','2019-11-14 08:55:01'),(466,7,14,'Hello','','text','Y','N','2019-11-14 08:57:08'),(467,7,14,'Ghgg','','text','Y','N','2019-11-14 08:57:39'),(468,7,6,'Hhhh','','text','Y','N','2019-11-14 09:05:35'),(469,6,7,'Hello jigbdbxidj','','text','Y','N','2019-11-14 09:06:26'),(470,7,6,'Hhgj','','text','Y','N','2019-11-14 09:06:40'),(471,4,5,'Hello rah pal','','','Y','N','2019-11-14 09:07:00'),(472,4,5,'','http://52.220.196.116/r3allove/upload/1573722428file.jpeg','chatImg','Y','N','2019-11-14 09:07:08'),(473,6,4,'Hello','','text','Y','N','2019-11-14 09:10:36'),(474,7,6,'Hgjj','','text','Y','N','2019-11-14 09:10:41'),(475,6,7,'Hello','','text','Y','N','2019-11-14 09:11:50'),(476,6,7,'Yyji','','text','Y','N','2019-11-14 09:12:26'),(477,7,6,'Hvhovy','','text','Y','N','2019-11-14 09:12:51'),(478,7,6,'Vyggghkbh jj','','text','Y','N','2019-11-14 09:14:00'),(479,7,6,'Hello raj','','text','Y','N','2019-11-14 09:14:16'),(480,4,7,'tueriouerotueriotuerioter','','text','Y','N','2019-11-14 09:19:18'),(481,7,4,'Bwiddbjwx xwj','','text','Y','N','2019-11-14 09:19:23'),(482,4,7,'fdmfsdfjklfj','','text','Y','N','2019-11-14 09:19:33'),(483,7,4,'Vsvdhhgxjj','','text','Y','N','2019-11-14 09:19:36'),(484,7,4,'','http://52.27.53.102/r3allove/upload/1573723193Picture.jpg','chatImg','Y','N','2019-11-14 09:19:53'),(485,4,7,'thanks','','text','Y','N','2019-11-14 09:20:09'),(486,4,7,'teteteteettetetettetette','','text','Y','N','2019-11-14 09:20:28'),(487,7,4,'Tueyebxhxxhxnxhsjs','','text','Y','N','2019-11-14 09:20:33'),(488,6,7,'Ghff','','text','Y','N','2019-11-14 09:20:34'),(489,6,4,'Heeeeeeelllllo','','text','Y','N','2019-11-14 09:21:36'),(490,6,7,'Offline','','text','Y','N','2019-11-14 09:22:20'),(491,6,7,'Hello','','text','Y','N','2019-11-14 09:29:51'),(492,7,6,'Is ma onlien','','text','Y','N','2019-11-14 09:29:56'),(493,6,7,'Hhsjsjsndjd','','text','Y','N','2019-11-14 09:30:10'),(494,6,4,'Fghh','','text','Y','N','2019-11-14 09:30:21'),(495,7,6,'Erwtwtywteye','','text','Y','N','2019-11-14 09:32:53'),(496,7,6,'Vhxhxd','','text','Y','N','2019-11-14 09:33:00'),(497,7,6,'Eccrvrvv','','text','Y','N','2019-11-14 09:33:13'),(498,6,7,'Gfhjbgh','','text','Y','N','2019-11-14 09:35:14'),(499,4,7,'dsfsdfsdfsdfsd','','text','Y','N','2019-11-14 09:43:34'),(500,7,4,'Eevdvvf','','text','Y','N','2019-11-14 09:43:43'),(501,7,4,'Grfrvfvf','','text','Y','N','2019-11-14 09:43:53'),(502,4,7,'fsdfsdfsf','','text','Y','N','2019-11-14 09:43:58'),(503,7,4,'Vzhzgzgxx','','text','Y','N','2019-11-14 09:44:34'),(504,4,7,'Dggg','','text','Y','N','2019-11-14 09:44:42'),(505,4,7,'fsdfsdfsfs','','text','Y','N','2019-11-14 09:44:51'),(506,7,4,'Svvdv','','text','Y','N','2019-11-14 09:44:56'),(507,7,4,'Vxhddhx','','text','Y','N','2019-11-14 09:49:19'),(508,4,7,'dadsdd','','text','Y','N','2019-11-14 09:49:24'),(509,4,7,'fddadasda','','text','Y','N','2019-11-14 09:49:42'),(510,7,4,'Feecvr','','text','Y','N','2019-11-14 09:49:46'),(511,4,7,'dasddasd','','text','Y','N','2019-11-14 09:49:57'),(512,7,4,'Vdhdvd','','text','Y','N','2019-11-14 09:50:05'),(513,6,7,'Offline','','text','Y','N','2019-11-14 09:50:20'),(514,7,4,'Gshhssh','','text','Y','N','2019-11-14 09:56:31'),(515,7,4,'Vndbdvdb','','text','Y','N','2019-11-14 09:56:39'),(516,4,7,'dfdfsdfsdf','','text','Y','N','2019-11-14 09:56:49'),(517,4,7,'fsdsdsff','','text','Y','N','2019-11-14 09:56:54'),(518,4,7,'testt','','text','Y','N','2019-11-14 09:56:59'),(519,7,4,'Rwyywvdbd','','text','Y','N','2019-11-14 09:57:06'),(520,14,7,'cbzgzgz','','text','Y','N','2019-11-14 10:00:57'),(521,7,14,'Vxhxbdh','','text','Y','N','2019-11-14 10:01:02'),(522,7,14,'Bhchxh','','text','Y','N','2019-11-14 10:01:09'),(523,14,7,'gbxbhx','','text','Y','N','2019-11-14 10:01:13'),(524,7,14,'Hhhhhh','','text','Y','N','2019-11-14 10:02:37'),(525,14,7,'Cgcggg','','text','Y','N','2019-11-14 10:02:38'),(526,14,7,'Vvgff','','text','Y','N','2019-11-14 10:02:45'),(527,7,14,'Bchxhd','','text','Y','N','2019-11-14 10:02:49'),(528,7,14,'Bcxhdh','','text','Y','N','2019-11-14 10:02:56'),(529,14,7,'Tttttyyy','','text','Y','N','2019-11-14 10:03:02'),(530,7,14,'Fvbhhh','','text','Y','N','2019-11-14 10:03:12'),(531,7,14,'Hgcvcffg','','text','Y','N','2019-11-14 10:03:26'),(532,14,7,'Fgfgghh','','text','Y','N','2019-11-14 10:03:31'),(533,14,7,'Bdhdhhddhxzhhzdbdb','','text','Y','N','2019-11-14 10:03:48'),(534,7,14,'Vxhxdhfhf','','text','Y','N','2019-11-14 10:03:53'),(535,7,14,'Vfhhdjdjdbxbxbx','','text','Y','N','2019-11-14 10:05:36'),(536,14,7,'Vvvv','','text','Y','N','2019-11-14 10:05:43'),(537,7,14,'Hcjcgj','','text','Y','N','2019-11-14 10:05:47'),(538,14,7,'Vbxhxh','','text','Y','N','2019-11-14 10:05:50'),(539,14,7,'Vhhvhvv','','text','Y','N','2019-11-14 10:06:18'),(540,7,14,'Bchxhjx','','text','Y','N','2019-11-14 10:06:23'),(542,7,14,'Vhxsbshhdhdhjffjdndhdfj','','text','Y','N','2019-11-14 10:07:27'),(543,14,7,'Bjchdhdh','','text','Y','N','2019-11-14 10:07:30'),(544,14,7,'Vnxhbxbbx','','text','Y','N','2019-11-14 10:07:42'),(545,7,14,'Bxjjxhxj','','text','Y','N','2019-11-14 10:07:46'),(546,7,14,'Sdvvddvdb cbbfbfbf','','text','Y','N','2019-11-14 10:08:12'),(547,7,14,'Vxhdhdh','','text','Y','N','2019-11-14 10:08:24'),(548,14,7,'G','','text','Y','N','2019-11-14 10:28:11'),(549,14,7,'A','','text','Y','N','2019-11-14 10:28:55'),(550,14,7,'Qq','','text','Y','N','2019-11-14 10:29:23'),(551,7,14,'Vdjhdhdhhd','','text','Y','N','2019-11-14 10:29:48'),(552,7,14,'2 bar message','','text','Y','N','2019-11-14 10:30:06'),(553,7,14,'3 bar message','','text','Y','N','2019-11-14 10:30:20'),(554,7,14,'Messages','','text','Y','N','2019-11-14 10:30:37'),(555,7,14,',ajwzvwvzwjbz zkwxbabzakzka xjajxvakabxskbxkabxks','','text','Y','N','2019-11-14 10:34:30'),(556,7,14,'Cdgsvdvbshsbssjqxx qjxax akbcksck sakxks xs','','text','Y','N','2019-11-14 10:35:12'),(557,14,7,'Xhfhddhhddhd','','text','Y','N','2019-11-14 10:35:54'),(558,7,14,'Vxbbxgvssvsvbddh','','text','Y','N','2019-11-14 10:36:07'),(559,14,7,'Vfhfhxhxx','','text','Y','N','2019-11-14 10:36:20'),(560,14,7,'Dghh','','text','Y','N','2019-11-14 10:36:50'),(561,7,4,'Vxdgsgzh','','text','Y','N','2019-11-14 11:19:54'),(562,4,7,'fsdsfsfsdsdff','','text','Y','N','2019-11-14 11:20:00'),(563,7,4,'Vdhddhdh','','text','Y','N','2019-11-14 11:20:05'),(564,4,7,'fffsdsdf','','text','Y','N','2019-11-14 11:20:10'),(565,4,7,'sdfsdfsdfsdf','','text','Y','N','2019-11-14 11:20:20'),(566,7,4,'Yccychc','','text','Y','N','2019-11-14 11:20:25'),(567,7,4,'Bxbxxxh','','text','Y','N','2019-11-14 11:20:50'),(568,4,7,'jjkljkjkh','','text','Y','N','2019-11-14 11:20:59'),(569,4,7,'dsdasdas','','text','Y','N','2019-11-14 11:22:14'),(570,7,4,'Jqbsixbw','','text','Y','N','2019-11-14 11:22:17'),(575,7,14,'Vxhxhddh','','text','Y','N','2019-11-14 11:30:59'),(576,7,14,'B shgxxhd','','text','Y','N','2019-11-14 11:31:08'),(579,7,14,'Bxhhxhdv','','text','Y','N','2019-11-14 11:31:30'),(580,7,14,'Vhxhxh','','text','Y','N','2019-11-14 11:31:47'),(583,14,7,'Hfjhdhdhd','','text','Y','N','2019-11-14 11:32:12'),(584,14,7,'Bxhdhdh','','text','Y','N','2019-11-14 11:32:18'),(585,7,14,'Vhdvdhdg','','text','Y','N','2019-11-14 11:32:23'),(586,7,14,'Vhdxhdh','','text','Y','N','2019-11-14 11:32:28'),(587,7,6,'Vbzhxh','','text','Y','N','2019-11-14 11:32:43'),(588,7,6,'Hdhhxhdh','','text','Y','N','2019-11-14 11:32:48'),(589,7,6,'Bcjhxhdh','','text','Y','N','2019-11-14 11:32:57'),(590,6,7,'bhhd','','text','Y','N','2019-11-14 11:33:01'),(591,4,7,'ffsdfsdfsd','','text','Y','N','2019-11-14 11:33:34'),(592,4,7,'fsdffsdff','','text','N','N','2019-11-14 11:33:43'),(593,7,4,'Vxhdbbdbb','','text','Y','N','2019-11-14 11:33:49'),(599,7,14,'Gsgxsghsh','','text','N','N','2019-11-14 11:35:52'),(600,14,7,'Dhdhdhffhh','','text','Y','N','2019-11-14 11:35:56'),(601,7,14,'Bxjjdhdh','','text','N','N','2019-11-14 11:35:59'),(602,14,7,'Hdhxhd','','text','Y','N','2019-11-14 11:36:04'),(603,7,14,'Vhxhdhd','','text','N','N','2019-11-14 11:36:08'),(604,14,7,'Hdjxhdhhh','','text','Y','N','2019-11-14 11:36:12'),(605,6,14,'hello harru','','text','N','N','2019-11-14 11:40:26'),(606,7,14,'Hello hh','','text','N','N','2019-11-14 11:40:38'),(607,6,7,'hi','','text','Y','N','2019-11-14 11:40:39'),(608,7,6,'Tampa','','text','Y','N','2019-11-14 11:40:54'),(609,7,6,'Tryyyuu','','text','Y','N','2019-11-14 11:41:06'),(610,6,7,'fhfgg','','text','Y','N','2019-11-14 11:41:26'),(611,6,7,'cgfff','','text','Y','N','2019-11-14 11:41:31'),(612,7,6,'Gzhsgs','','text','Y','N','2019-11-14 11:41:35'),(615,14,6,'Cvcgg','','text','Y','N','2019-11-14 11:44:24'),(617,3,6,'Vcfgffg','','text','Y','N','2019-11-14 11:44:44'),(618,3,6,'Hhghfgg','','text','Y','N','2019-11-14 11:44:57'),(620,5,3,'Hi','',NULL,'N','N','2019-11-15 03:48:11'),(623,4,3,'vcxvxc','',NULL,'N','N','2019-11-15 04:35:41'),(624,4,3,'hihihhiih','',NULL,'N','N','2019-11-15 04:43:41'),(625,4,3,'fsdfsdfsdfsf','',NULL,'N','N','2019-11-15 04:44:03'),(626,6,4,'Hi','',NULL,'Y','N','2019-11-15 04:49:01'),(627,4,6,'qwertyuiop','',NULL,'Y','N','2019-11-15 04:49:27'),(628,4,6,'fsddfsfsd','',NULL,'Y','N','2019-11-15 04:49:49'),(629,6,4,'Dgdcg','',NULL,'Y','N','2019-11-15 04:50:18'),(630,6,4,'Ehhy','',NULL,'Y','N','2019-11-15 04:50:36'),(631,6,4,'Fhgccggg','',NULL,'Y','N','2019-11-15 04:52:50'),(632,4,6,'jiih','',NULL,'Y','N','2019-11-15 04:53:04'),(633,4,6,'hihii','',NULL,'Y','N','2019-11-15 04:53:25'),(634,4,6,'hiiii','',NULL,'Y','N','2019-11-15 04:53:35'),(635,6,4,'Hjjh','',NULL,'Y','N','2019-11-15 04:53:43'),(636,6,4,'Hhh','',NULL,'Y','N','2019-11-15 04:54:20'),(637,6,4,'One','',NULL,'Y','N','2019-11-15 04:54:44'),(638,4,5,'fsdfhsdfksfkj','',NULL,'Y','N','2019-11-15 04:55:34'),(639,4,5,'fsdfsfsdf','',NULL,'Y','N','2019-11-15 04:55:46'),(640,5,4,'','http://52.27.53.102/r3allove/upload/1573793754file.jpeg','chatImg','Y','N','2019-11-15 04:55:54'),(641,4,5,'cfsdfdsfsfs','',NULL,'Y','N','2019-11-15 04:56:08'),(642,5,4,'Cjcgjf','',NULL,'Y','N','2019-11-15 04:56:12'),(643,5,4,'Hfudud','',NULL,'Y','N','2019-11-15 04:56:18'),(644,5,4,'Jcjfig','',NULL,'Y','N','2019-11-15 04:56:20'),(645,5,4,'Vjcjcjc','',NULL,'Y','N','2019-11-15 04:56:23'),(646,4,5,'hjgjjh','',NULL,'Y','N','2019-11-15 04:56:42'),(647,4,5,'hiiiiiii','',NULL,'Y','N','2019-11-15 04:56:55'),(648,4,5,'sssssss','',NULL,'Y','N','2019-11-15 04:58:14'),(649,5,4,'Jgifig','',NULL,'Y','N','2019-11-15 04:58:46'),(650,4,5,'ddas','',NULL,'Y','N','2019-11-15 04:58:58'),(651,5,4,'Fucjcjc','',NULL,'Y','N','2019-11-15 04:59:01'),(652,4,5,'dasdasdasd','',NULL,'Y','N','2019-11-15 05:00:02'),(653,5,4,'Hc if jc','',NULL,'Y','N','2019-11-15 05:00:07'),(654,4,5,'fgdfggdddfgdf','',NULL,'Y','N','2019-11-15 05:16:56'),(655,5,4,'Fhdjdjfjf','',NULL,'Y','N','2019-11-15 05:17:19'),(656,4,5,'dasdasdd',NULL,NULL,'Y','N','2019-11-15 05:30:59'),(657,4,5,'dasad',NULL,NULL,'Y','N','2019-11-15 05:31:09'),(658,4,5,'dasdsdsd',NULL,NULL,'Y','N','2019-11-15 05:31:19'),(659,4,5,'cdddsadasd',NULL,NULL,'Y','N','2019-11-15 05:31:34'),(660,4,5,'ddadsasd',NULL,NULL,'Y','N','2019-11-15 05:32:39'),(661,4,5,'ddasdasd',NULL,NULL,'Y','N','2019-11-15 05:35:30'),(662,5,4,'Jdjdjd',NULL,NULL,'Y','N','2019-11-15 05:55:18'),(663,5,4,'Nfudud',NULL,NULL,'Y','N','2019-11-15 06:12:53'),(664,5,4,'Hdhdud',NULL,NULL,'Y','N','2019-11-15 06:13:10'),(665,4,5,'fddsdf',NULL,NULL,'Y','N','2019-11-15 06:13:18'),(666,5,4,'Htudhdjfjdhshd',NULL,NULL,'Y','N','2019-11-15 06:13:22'),(667,5,4,'Jcudud',NULL,NULL,'Y','N','2019-11-15 06:13:26'),(668,5,4,'Gigudhd',NULL,NULL,'Y','N','2019-11-15 06:13:30'),(669,4,5,'gchdgh',NULL,NULL,'Y','N','2019-11-15 06:13:38'),(670,4,5,'hjjkkjkl',NULL,NULL,'Y','N','2019-11-15 06:14:12'),(671,5,3,'Chvvg',NULL,NULL,'N','N','2019-11-15 06:14:20'),(672,4,5,'jjkljklkljljl',NULL,NULL,'Y','N','2019-11-15 06:14:27'),(673,5,3,'SCahvsvsvzv',NULL,NULL,'N','N','2019-11-15 06:14:37'),(674,5,3,'Vsbbxbxv',NULL,NULL,'N','N','2019-11-15 06:14:41'),(675,4,5,'jjkkhkhjkhkk',NULL,NULL,'Y','N','2019-11-15 06:14:48'),(676,5,4,'Vggg',NULL,NULL,'Y','N','2019-11-15 06:15:32'),(677,4,5,'tfgyhujikjhgfcgvbhjnmkl,mkjhgcftgyuhjkmjhbgvhjhbhghjnmbvghjknm',NULL,NULL,'Y','N','2019-11-15 06:15:36'),(678,5,4,'Hdhrhdhr',NULL,NULL,'Y','N','2019-11-15 06:15:42'),(679,5,4,'Ggggh',NULL,NULL,'Y','N','2019-11-15 06:15:48'),(680,5,4,'Cjcjc',NULL,NULL,'Y','N','2019-11-15 06:41:26'),(681,6,4,'Fzhdsvsbs',NULL,NULL,'Y','N','2019-11-15 06:43:18'),(682,5,4,'Dhdhdhd',NULL,NULL,'Y','N','2019-11-15 06:44:54'),(683,5,4,'Dhdhdvbngbun',NULL,NULL,'Y','N','2019-11-15 06:46:44'),(684,4,5,'fdfddsfsdfsd',NULL,NULL,'Y','N','2019-11-15 06:49:55'),(685,4,5,'qwertyuiokjhgfdsdfghjmnbvcxzxcvb',NULL,NULL,'Y','N','2019-11-15 06:50:11'),(686,4,5,'sehjhgfdfg',NULL,NULL,'Y','N','2019-11-15 06:50:41'),(687,4,5,'dsddsds',NULL,NULL,'Y','N','2019-11-15 06:50:58'),(688,4,5,'dsdasddddas',NULL,NULL,'Y','N','2019-11-15 06:53:36'),(689,5,4,'Hgffggvv',NULL,NULL,'Y','N','2019-11-15 06:55:15'),(690,5,4,'    Rgfff',NULL,NULL,'Y','N','2019-11-15 06:55:36'),(691,6,5,'Hello',NULL,NULL,'Y','N','2019-11-15 06:55:41'),(692,6,5,'Fsjdcs',NULL,NULL,'Y','N','2019-11-15 06:55:55'),(693,4,5,'yuiokjhgfcxcvbnm,m nbvhjkjhqerty9876543212345678',NULL,NULL,'Y','N','2019-11-15 07:06:54'),(694,4,6,'dnskalfsd fsdmlfnsdm,fnsdmfnsdfsdfsdf',NULL,NULL,'Y','N','2019-11-15 07:08:03'),(695,4,5,'12345678',NULL,NULL,'Y','N','2019-11-15 07:08:16'),(696,5,4,'Nfjdhdhd',NULL,NULL,'Y','N','2019-11-15 07:08:34'),(697,5,4,'Jffjdjd',NULL,NULL,'Y','N','2019-11-15 07:08:46'),(698,4,5,'qertyui',NULL,NULL,'Y','N','2019-11-15 07:08:52'),(699,4,5,'ddsadasd',NULL,NULL,'Y','N','2019-11-15 07:16:47'),(700,4,5,'dsadasddas',NULL,NULL,'Y','N','2019-11-15 07:16:58'),(701,5,4,'Hfffgg',NULL,NULL,'Y','N','2019-11-15 07:18:00'),(702,5,4,'Test',NULL,NULL,'Y','N','2019-11-15 07:18:11'),(703,5,4,'New vivek messag',NULL,NULL,'Y','N','2019-11-15 07:18:38'),(704,4,5,'dasndasndadm,anmdasndm,asdasddasdasdasdasdasdas',NULL,NULL,'Y','N','2019-11-15 07:18:58'),(705,4,5,'dasdasdasasdasd',NULL,NULL,'Y','N','2019-11-15 07:19:03'),(706,5,4,'Fhddhh ag svbd',NULL,NULL,'Y','N','2019-11-15 07:19:08'),(707,5,4,'Bbdbd',NULL,NULL,'Y','N','2019-11-15 07:19:13'),(708,4,5,'dasdasdasasd',NULL,NULL,'Y','N','2019-11-15 07:19:27'),(709,5,4,'Gsh dhvdv',NULL,NULL,'Y','N','2019-11-15 07:19:33'),(710,5,4,'Vxsbbbh',NULL,NULL,'Y','N','2019-11-15 07:21:09'),(711,4,5,'fsdsffsdf',NULL,NULL,'Y','N','2019-11-15 07:21:21'),(712,5,4,'Hcvbhh',NULL,NULL,'Y','N','2019-11-15 07:21:28'),(713,5,4,'Hdc',NULL,NULL,'Y','N','2019-11-15 07:21:39'),(714,4,5,'fdjfksdfhdfjkfkhsdfsd',NULL,NULL,'Y','N','2019-11-15 07:21:47'),(715,5,4,'Bd dbd bb b',NULL,NULL,'Y','N','2019-11-15 07:21:52'),(716,4,5,'fsfsfdfsd',NULL,NULL,'Y','N','2019-11-15 07:21:57'),(717,5,4,'G fccvg',NULL,NULL,'Y','N','2019-11-15 07:22:04'),(718,4,5,'dsadsdds',NULL,NULL,'Y','N','2019-11-15 07:23:18'),(719,5,4,'Bdbcnbb',NULL,NULL,'Y','N','2019-11-15 07:23:30'),(720,4,5,'fsdfsfsdsdfsdfsdfsd',NULL,NULL,'Y','N','2019-11-15 07:29:28'),(721,5,4,'Bfxxvvvvv',NULL,NULL,'Y','N','2019-11-15 07:29:33'),(722,5,4,'Vdcbgg',NULL,NULL,'Y','N','2019-11-15 07:29:55'),(723,4,5,'dasdasddddsadasdsd',NULL,NULL,'Y','N','2019-11-15 07:30:32'),(724,4,5,'dsadasdad',NULL,NULL,'Y','N','2019-11-15 07:30:48'),(725,4,5,'1234567890iuytrewwertyuilkjhgfdszxcvbnm',NULL,NULL,'Y','N','2019-11-15 07:31:02'),(726,5,4,'Fjjfjf',NULL,NULL,'Y','N','2019-11-15 08:18:34'),(727,6,5,'Bbbbjddjdk',NULL,NULL,'Y','N','2019-11-15 08:20:03'),(728,6,5,'One',NULL,NULL,'Y','N','2019-11-15 08:20:14'),(729,6,5,'Ufudud',NULL,NULL,'Y','N','2019-11-15 08:20:45'),(730,5,6,'Hdhdhf',NULL,NULL,'Y','N','2019-11-15 08:21:22'),(731,6,5,'Itfif',NULL,NULL,'Y','N','2019-11-15 08:21:36'),(732,6,5,'Jdd',NULL,NULL,'Y','N','2019-11-15 08:24:05'),(733,6,5,'Djdhd',NULL,NULL,'Y','N','2019-11-15 08:30:32'),(734,6,5,'Bjvf',NULL,NULL,'Y','N','2019-11-15 08:31:49'),(735,6,5,'Cxhfd',NULL,NULL,'Y','N','2019-11-15 08:32:33'),(736,6,5,'Jdhsgs',NULL,NULL,'Y','N','2019-11-15 08:35:42'),(737,6,5,'Cifjc',NULL,NULL,'Y','N','2019-11-15 08:57:33'),(738,6,5,'Dkddhd',NULL,NULL,'Y','N','2019-11-15 08:58:49'),(739,6,5,'Ficfj',NULL,NULL,'Y','N','2019-11-15 08:59:12'),(740,5,6,'Ifjdjf',NULL,NULL,'Y','N','2019-11-15 08:59:27'),(741,6,5,'Jffj',NULL,NULL,'Y','N','2019-11-15 08:59:45'),(742,6,5,'Fjifif',NULL,NULL,'Y','N','2019-11-15 09:02:10'),(743,6,5,'Chrjdj',NULL,NULL,'Y','N','2019-11-15 09:03:35'),(744,6,5,'V ndh',NULL,NULL,'Y','N','2019-11-15 09:24:47'),(745,6,5,'Dhdjsjs',NULL,NULL,'Y','N','2019-11-15 09:24:55'),(746,5,3,'Chd hd',NULL,NULL,'N','N','2019-11-15 09:25:45'),(747,6,5,'Igicjcifi',NULL,NULL,'Y','N','2019-11-15 09:26:07'),(748,6,5,'Fjfdf',NULL,NULL,'Y','N','2019-11-15 09:27:09'),(749,4,6,'One Two Three',NULL,NULL,'Y','N','2019-11-15 09:28:27'),(750,4,5,'chat',NULL,NULL,'Y','N','2019-11-15 09:29:39'),(751,6,4,'Djduurtud',NULL,NULL,'Y','N','2019-11-15 09:29:44'),(752,5,4,'Chch',NULL,NULL,'Y','N','2019-11-15 09:30:08'),(753,6,4,'Bfjjj',NULL,NULL,'Y','N','2019-11-15 09:30:17'),(754,4,6,'cfdffsdfsdf',NULL,NULL,'Y','N','2019-11-15 09:30:30'),(755,4,5,'rewerrrrerwe',NULL,NULL,'Y','N','2019-11-15 09:30:43'),(756,5,4,'Hdudh',NULL,NULL,'Y','N','2019-11-15 09:30:49'),(757,6,4,'Vssvavacvvaagacacagacsvs',NULL,NULL,'Y','N','2019-11-15 09:30:56'),(758,4,7,'dhsdjsjfkjfkldjslfjdksfjsdjfldjfksdjfdkfjsdfkljsdfksdjfsdklfjsdklfjsdklfjsdkfjsdklfjsdklfjsdklfjsdklfjsdklf',NULL,NULL,'N','N','2019-11-15 09:34:25'),(759,5,4,'Gggvv',NULL,NULL,'Y','N','2019-11-15 09:35:16'),(760,4,5,'12345678',NULL,NULL,'Y','N','2019-11-15 09:36:03'),(761,5,4,'Utreffcfffffg',NULL,NULL,'Y','N','2019-11-15 09:36:14'),(762,4,5,'2343445fdfsdfsd',NULL,NULL,'Y','N','2019-11-15 09:36:21'),(763,4,5,'123456789',NULL,NULL,'Y','N','2019-11-15 09:36:37'),(764,5,4,'Ff hv b',NULL,NULL,'Y','N','2019-11-15 09:36:48'),(765,4,5,'1234567',NULL,NULL,'Y','N','2019-11-15 09:36:54'),(766,4,5,'32332424',NULL,NULL,'Y','N','2019-11-15 09:37:55'),(772,7,5,'Hello',NULL,NULL,'Y','N','2019-11-15 09:41:37'),(773,5,7,'Bxhdhdj',NULL,NULL,'N','N','2019-11-15 09:42:00'),(774,4,7,'ddsdasd',NULL,NULL,'N','N','2019-11-15 09:43:24'),(775,4,3,'dasdasddasdas',NULL,NULL,'N','N','2019-11-15 09:43:34'),(776,4,7,'dasdasdasdasdd',NULL,NULL,'N','N','2019-11-15 09:43:43'),(777,4,3,'2322312',NULL,NULL,'N','N','2019-11-15 09:48:32'),(778,4,5,'1234567890',NULL,NULL,'Y','N','2019-11-15 09:49:30'),(779,4,5,'hme I need aya',NULL,NULL,'Y','N','2019-11-15 09:49:50'),(780,4,5,'bhrj diya',NULL,NULL,'Y','N','2019-11-15 09:50:02'),(781,4,5,'1 more',NULL,NULL,'Y','N','2019-11-15 09:50:07'),(782,5,4,'Hxjxjd',NULL,NULL,'Y','N','2019-11-15 09:50:22'),(783,4,5,'are koi sahi message bheje',NULL,NULL,'Y','N','2019-11-15 09:50:53'),(784,4,5,'fsdfsdfds',NULL,NULL,'Y','N','2019-11-15 09:51:16'),(785,4,5,'2131243567890975465',NULL,NULL,'Y','N','2019-11-15 09:51:56'),(786,4,5,'cdsdasdas',NULL,NULL,'Y','N','2019-11-15 09:54:05'),(787,6,4,'Fgggghhhh',NULL,NULL,'Y','N','2019-11-15 09:54:33'),(788,6,4,'Cgff',NULL,NULL,'Y','N','2019-11-15 09:54:37'),(789,4,6,'d213456',NULL,NULL,'Y','N','2019-11-15 09:54:54'),(790,4,6,'dasdasdd',NULL,NULL,'Y','N','2019-11-15 09:54:57'),(791,6,4,'Cgfgghhh',NULL,NULL,'Y','N','2019-11-15 09:55:03'),(792,4,6,'dasdasdas2345678',NULL,NULL,'Y','N','2019-11-15 09:55:12'),(793,4,5,'123456789',NULL,NULL,'Y','N','2019-11-15 09:55:19'),(794,4,5,'123456789',NULL,NULL,'Y','N','2019-11-15 09:57:20'),(795,5,4,'Hd jgjfjf',NULL,NULL,'Y','N','2019-11-15 09:57:39'),(796,4,5,'1234567890',NULL,NULL,'Y','N','2019-11-15 09:57:46'),(797,4,5,'123456787654323456543234567',NULL,NULL,'Y','N','2019-11-15 09:57:56'),(798,5,4,'Fgjhhww22344566786543',NULL,NULL,'Y','N','2019-11-15 09:58:13'),(799,5,4,'Type here3456',NULL,NULL,'Y','N','2019-11-15 09:58:22'),(800,4,5,'fewerwererwerwerr',NULL,NULL,'Y','N','2019-11-15 09:58:30'),(801,4,6,'12345676543',NULL,NULL,'Y','N','2019-11-15 09:59:04'),(802,4,6,'jhjhjkkhjkh',NULL,NULL,'Y','N','2019-11-15 10:00:27'),(803,4,6,'34567890-',NULL,NULL,'Y','N','2019-11-15 10:00:36'),(804,5,4,'Ghvbbbhh',NULL,NULL,'Y','N','2019-11-15 10:00:50'),(805,5,4,'','http://52.27.53.102/r3allove/upload/1573812090file.jpeg','chatImg','Y','N','2019-11-15 10:01:30'),(806,4,5,'','http://52.27.53.102/r3allove/upload/1573812138Picture.jpg','chatImg','Y','N','2019-11-15 10:02:18'),(808,6,14,'Hello',NULL,NULL,'N','N','2019-11-15 11:21:13'),(809,6,4,'Fhhj',NULL,NULL,'Y','N','2019-11-15 11:21:46'),(810,6,5,'Chhfhj',NULL,NULL,'N','N','2019-11-15 11:23:54'),(811,4,6,'hello',NULL,NULL,'N','N','2019-11-16 03:42:39'),(812,4,6,'gd mrng',NULL,NULL,'N','N','2019-11-16 03:42:58'),(813,4,3,'test chat message',NULL,NULL,'N','N','2019-11-16 03:46:23'),(814,4,3,'first message',NULL,NULL,'N','N','2019-11-16 10:19:00'),(815,4,3,'xbbdxvdvbdbbbsvsbsdbdbdbddbbdbdb\ndvddbs\nxzbzbsbzs\ndvdhsshhsdhdgdjsoshvdhduxdbdj\nxbddhsjdhdduddbdjdjdjhdbdhdhdududvdv\nsvhsdudvdhshshshdhdhbd\ndvshshdsgdgsshdhdgdd\ndvvssbsbsbsbddhdhdjdudjddbdbdhd\ndvgddhhsdhdhhddhdhhdhddhhdh\ndhdhddhhdhdhdhdhdhdhdhdhd\ndvdhdhdd',NULL,NULL,'N','N','2019-11-16 10:19:40'),(816,4,2,'Either download the code from the repository and run python setup.py install or use pip: pip install nlglib',NULL,NULL,'N','N','2019-11-19 11:11:02'),(817,3,2,'yes sumit',NULL,NULL,'N','N','2020-01-15 07:56:41'),(818,3,2,'hello raju',NULL,NULL,'N','N','2020-01-15 07:56:47');
/*!40000 ALTER TABLE `tbl_personal_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_plans`
--

DROP TABLE IF EXISTS `tbl_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_title` varchar(255) DEFAULT NULL,
  `plan_duration` varchar(255) DEFAULT NULL,
  `plan_price` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `message` varchar(800) DEFAULT NULL,
  `deleted` enum('Y','N') DEFAULT 'N',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_plans`
--

LOCK TABLES `tbl_plans` WRITE;
/*!40000 ALTER TABLE `tbl_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_plans_choose`
--

DROP TABLE IF EXISTS `tbl_plans_choose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_plans_choose` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `plan_choose_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `plan_expire_date` timestamp NULL DEFAULT NULL,
  `plan_upgrade_date` timestamp NULL DEFAULT NULL,
  `deleted` enum('Y','N') DEFAULT 'N',
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plan_id` (`plan_id`),
  KEY `user_id` (`user_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `tbl_plans_choose_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `tbl_plans` (`id`),
  CONSTRAINT `tbl_plans_choose_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`),
  CONSTRAINT `tbl_plans_choose_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_plans_choose`
--

LOCK TABLES `tbl_plans_choose` WRITE;
/*!40000 ALTER TABLE `tbl_plans_choose` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_plans_choose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_unique_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `user_type` enum('admin','user') DEFAULT 'user',
  `email_id` varchar(50) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `biodata` varchar(800) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `otp` int(5) DEFAULT NULL,
  `otp_validity` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `forget_pwd_string` varchar(50) DEFAULT NULL,
  `forget_pwd_exp_time` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'token expire after 10 hours',
  `fb_id` varchar(255) DEFAULT NULL,
  `fb_code` varchar(50) DEFAULT NULL,
  `social_type` enum('Instagram','Linkedin','Twitter') DEFAULT NULL,
  `social_id` varchar(255) DEFAULT NULL,
  `social_sync` enum('Y','N') DEFAULT 'N',
  `nationality` varchar(255) DEFAULT NULL,
  `body_type` varchar(255) DEFAULT NULL,
  `religious` varchar(255) DEFAULT NULL,
  `career` varchar(800) DEFAULT NULL,
  `match_preference` varchar(255) DEFAULT NULL COMMENT '1->straight Female,2->Bi sexual Female,3->Transgender Females,4->straight males,5->Bi sexual males,6->transgender males,7->all of the above',
  `family_type` enum('Y','N','notToSay') DEFAULT 'N',
  `has_children` varchar(20) DEFAULT NULL,
  `otp_verify` enum('Y','N') DEFAULT 'N' COMMENT 'Y->otp verify user,N->un verify user',
  `admin_verify` enum('Y','N') DEFAULT 'N' COMMENT 'Y->Admin verify user,N->admin un verify user',
  `gcm_id` varchar(255) DEFAULT NULL,
  `device_type` enum('A','I') DEFAULT NULL,
  `notification` enum('on','off') DEFAULT 'on',
  `deleted` enum('Y','N') DEFAULT 'N' COMMENT 'Y->deleted Record,N->active Record',
  `socket_id` varchar(40) NOT NULL,
  `online_status` varchar(35) DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `otp_validity` (`otp_validity`),
  KEY `social_type` (`social_type`),
  KEY `admin_verify` (`admin_verify`),
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
INSERT INTO `tbl_user` VALUES (1,'Z9KFQGHER2','Raj','Pal','admin','admin@gmail.com','+91-9667472268','e10adc3949ba59abbe56e057f20f883e','2001-08-29','Tedthshs','1',1111,'2019-09-30 14:43:54','85950c07ae5626ef1fbce46ab9cf5788','2019-10-16 21:59:12','123',NULL,'Instagram','321','Y','Indian','Netflix','N','engineer','1,2,3','N','N','Y','Y',NULL,NULL,'off','N','','offline',NULL,NULL,'2019-09-29 09:03:47',1,'2019-10-25 05:42:58'),(2,'DQXRWHZOA8','Akirti','Techugo','user','test.techugo@gmail.com','+91-8630943809','e10adc3949ba59abbe56e057f20f883e','2001-10-03','At a recent event, Shah Rukh Khan said, \"I don\'t want to show off but I am genuinely a dream come true.\" \"I am a lower-middle-class boy, an orphan, who got into the city of glamour, became a movie star and the world showered me with love,\" he added. He also said he doesn\'t think of himself as a star','2',1111,'2019-10-03 11:39:46',NULL,'0000-00-00 00:00:00','123',NULL,'Instagram','321','Y','Ã…landish','Netflix','N','Engineer\r\n                                                           ','1,2,3','N','N','Y','Y','','','off','N','','offline',NULL,NULL,'2019-10-03 06:04:46',1,'2019-10-25 05:42:58'),(3,'6QWVA5NBF0','QA','Tester','user','deep@techugo.com','+91-8383838383','e10adc3949ba59abbe56e057f20f883e','2001-10-04','test ','1',1111,'2019-10-04 17:20:54',NULL,'0000-00-00 00:00:00','123',NULL,'Instagram','321','Y','Select','Netflix','Y','Select','3,4,5,2','Y','Y','Y','Y','','','off','N','Qlp9A_3gbXmBnsJMAAAC','online',NULL,NULL,'2019-10-04 11:45:54',3,'2019-11-18 10:55:44'),(4,'F5N1HXD6Z8','Abdur','Rehman','user','abrehmangaur@live.com','+91-9898989898','d41d8cd98f00b204e9800998ecf8427e','2019-10-11','At a recent event, Shah Rukh Khan said, \"I don\'t want to show off but I am genuinely a dream come true.\" \"I am a lower-middle-class boy, an orphan, who got into the city of glamour, became a movie star and the world showered me with love,\" he added. He also said he doesn\'t think of himself as a star','1',1111,'2019-10-08 13:50:05','1848','2019-11-04 09:33:26','123',NULL,'Instagram','321','Y','Indian','Gym','Y','Engineer','1,2,3','Y','Y','Y','Y',NULL,NULL,'off','N','','offline',NULL,NULL,'2019-10-08 06:54:39',4,'2019-11-18 09:48:33'),(5,'6FTB4Q71X2','Vivek','Indra','user','vivek@techugo.com','+91-9334383027','e10adc3949ba59abbe56e057f20f883e','2001-10-10','A Nigerian national Olamilekan M Akanbi Ojora, who also acted in some Bollywood movies, was apprehended by CISF personnel at the Delhi airport on Thursday for allegedly living in India illegally, officials said. \"The man enjoys a celebrity status in his country,\" a senior officer said. The officials also stated that Ojora\'s visa had expired in 2011','5',1111,'2019-10-10 11:39:41','1111','2019-10-14 18:45:42','123',NULL,'Instagram','321','Y','Indian','notToSay','N','Engineer','1,2,3,4,5','Y','notToSay','Y','Y','eplnn-QgE4E:APA91bF2sXK9SDxspiiMhE3MDdLlHV_94GCsi0N4bU0rv9pg9vOIS7oU59rYtc6hBYbVxdPp7a1xiUYyUqy7kju6lMeS0TPMfHwRUwPr3q9pjBoXTAg95T9eWDlOrX1pwO-5e9adQ4eB','I','off','N','','offline',NULL,NULL,'2019-10-09 06:20:37',5,'2019-11-09 12:42:42'),(6,'CEAJ8IPQZ4','Raj','Pal','user','rajpalpy@gmail.com','+91-1231231231','e10adc3949ba59abbe56e057f20f883e','1995-02-07','Test','1',1111,'2019-10-12 16:16:10',NULL,'0000-00-00 00:00:00','123','111','Instagram','321','Y','Indian',NULL,NULL,'No Need','1,2,3','N','N','Y','Y',NULL,NULL,'off','N','','offline',NULL,NULL,'2019-10-12 10:41:10',6,'2019-11-18 10:12:41'),(7,'8LX0Y1DZUM','Test1','Test2','user','test1@gmail.com','+91-1212121212','e10adc3949ba59abbe56e057f20f883e','1995-02-07',NULL,'1',1111,'2019-10-25 09:20:53',NULL,'0000-00-00 00:00:00','3211',NULL,'Instagram','425','Y','Indian',NULL,'Y',NULL,'1,2,3','N','N','Y','N','dJi-Fzmc0vw:APA91bGhfQhei2hbcOrc4v_N7nw_UCiIO2_XTgbQ3MIlvoVHLEiaL6E_oCNMiViFZMQw9rmZwlaLxF2yJdJXD4CAOPUI8Bixh_98UnI3Ngoxq-JIWvn_8fILQdyEh9LMsn7s8Nu2sjXD','A','on','N','','offline',NULL,NULL,'2019-10-25 03:45:53',7,'2019-11-14 12:34:29'),(8,'5LTXNC9YVP',NULL,NULL,'user',NULL,'+91-8810537309','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,3958,'2019-10-25 10:15:02',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','','offline',NULL,NULL,'2019-10-25 04:37:10',NULL,NULL),(9,'GRT74CK2M0','Brandon','Pickett','user','brandonpickett@msn.com ','+1-6138780070','d0d2b883ffe11676af7e678cf45a36fa','0000-00-00','Ggg','1',1353,'2019-11-01 08:24:23','6562','2019-11-14 19:51:40','10156122543896157',NULL,'Twitter','4yAacDtXF8gywbJi7HkldWGVoqq2','Y','American Samoan','Gym','Y','chef','1','N','Y','Y','N','dgeDGhHIT-s:APA91bHUwK3fEuWlOz4yMQQxF2PSQH4NBEQLTTVDCXnXuOz7kBAlqhqd7e9_g6b0P5sQa1ICiAhj5_-35OBztSC9VRRaXx8qBc0WugytcikPvHMwnnxF98AF8SOxrhFl69zTpDXtDae5','A','on','N','','offline',NULL,NULL,'2019-11-01 02:14:54',9,'2019-11-01 08:29:28'),(10,'9PW423TUGD',NULL,NULL,'user',NULL,'+1-6134102955','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,6489,'2019-11-02 23:39:02',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'Y','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-01 02:31:35',NULL,NULL),(11,'W984QG327F',NULL,NULL,'user',NULL,'+1-123456789','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,7788,'2019-11-01 11:28:49',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-01 05:53:49',NULL,NULL),(12,'GN0Z71XTHD',NULL,NULL,'user',NULL,'+91-9582089810','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,5514,'2019-11-01 12:07:29',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-01 06:29:18',NULL,NULL),(13,'UIS2DCEXKJ','Lucky','Tester','user','test.techugo@gmail.com','+91-837584866823','e10adc3949ba59abbe56e057f20f883e','2001-10-01','dhhgfghjhh','1',9779,'2019-11-01 12:09:43','5347','2019-11-01 17:26:37','95851810115553423',NULL,'','OIj7rhjd4WYGbCHIRnqTG7Ylb103234','Y','Afghan','Gym','Y','engineer','4,1','Y','Y','Y','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-01 06:34:43',13,'2019-11-01 12:10:30'),(14,'FSW7O4BG8Z','Harry','Harjot','user','harjot.jot37@gmail.com','+91-83758486683','e10adc3949ba59abbe56e057f20f883e','2001-10-01','bio','2',8226,'2019-11-01 12:36:41',NULL,'0000-00-00 00:00:00','2217503225022948',NULL,'Twitter','OIj7rhjd4WYGbCHIRnqTG7Ylb103','Y','Indian','Gym','Y','engineer','4','Y','Y','Y','N','','','on','N','','offline',NULL,NULL,'2019-11-01 07:01:41',14,'2019-11-01 12:34:05'),(15,'WTKAJIB5X6',NULL,NULL,'user',NULL,'+91-8375848668','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,1083,'2019-11-01 17:25:51',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','','offline',NULL,NULL,'2019-11-01 10:39:26',NULL,NULL),(16,'RD2K6FC9L8',NULL,NULL,'user',NULL,'+1-7669212151','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,9581,'2019-11-07 14:04:35',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','','offline',NULL,NULL,'2019-11-01 11:14:16',NULL,NULL),(17,'84KVEHYJ0F',NULL,NULL,'user',NULL,'+1-8787878787','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,6149,'2019-11-01 17:00:53',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-01 11:16:09',NULL,NULL),(18,'1YXFBJ8LS7',NULL,NULL,'user',NULL,'+1-7669212141','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,8898,'2019-11-01 16:59:22',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-01 11:24:22',NULL,NULL),(19,'BMAVKX1J0C',NULL,NULL,'user',NULL,'+1-787787877887','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,3437,'2019-11-01 17:04:26',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-01 11:29:26',NULL,NULL),(20,'EMB0A86I1Q',NULL,NULL,'user',NULL,'+1-7878787878','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,1962,'2019-11-01 17:08:47',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-01 11:32:56',NULL,NULL),(21,'WOG2YX6AQC',NULL,NULL,'user',NULL,'+1-78787878787','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,7355,'2019-11-01 17:10:41',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N','','','on','N','','offline',NULL,NULL,'2019-11-01 11:35:41',NULL,NULL),(22,'TNVHOL4UEM',NULL,NULL,'user',NULL,'+1-89898989898','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,2556,'2019-11-01 17:11:57',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-01 11:36:57',NULL,NULL),(23,'P0JQ6OM9X5',NULL,NULL,'user',NULL,'+1-12345678','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,6858,'2019-11-01 17:13:40',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-01 11:38:40',NULL,NULL),(24,'NIABYJE74F',NULL,NULL,'user',NULL,'+1-55555556555','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,5168,'2019-11-01 17:14:36',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-01 11:39:11',NULL,NULL),(25,'NA2HPC60TR',NULL,NULL,'user',NULL,'+919998989898','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,1831,'2019-11-01 17:25:16',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-01 11:42:17',NULL,NULL),(26,'AS3CMK68RU',NULL,NULL,'user',NULL,'+1-9898989898','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,6752,'2019-11-04 09:00:39',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','','offline',NULL,NULL,'2019-11-01 11:43:14',NULL,NULL),(27,'R0D1VMH5KI',NULL,NULL,'user',NULL,'+1-78789789789','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,9787,'2019-11-01 17:23:55',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-01 11:48:55',NULL,NULL),(28,'LWU3K9YNV6',NULL,NULL,'user',NULL,'+1-7676767676','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,6102,'2019-11-01 17:25:08',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-01 11:50:08',NULL,NULL),(29,'ZPESB6O9Y1',NULL,NULL,'user',NULL,'+1-78778787878','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,4267,'2019-11-01 17:27:10',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-01 11:52:10',NULL,NULL),(30,'01TC2FLBM5',NULL,NULL,'user',NULL,'+1-6363636363','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,2370,'2019-11-01 17:28:10',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-01 11:53:10',NULL,NULL),(31,'4ECTOZI83A','Shah','Altamash','user','shahaltamash93@gmail.com','+91-9582588029','e10adc3949ba59abbe56e057f20f883e','1994-06-19','my bio is very complicated and long which can not be posted here......so I am not posting anything here\'s  ...not applicable test data ,,,,test data jadadkaa;dad','4',6813,'2019-11-02 11:02:10',NULL,'0000-00-00 00:00:00','2538878206193394',NULL,'Twitter','0oDRPxsCwMYTcvHFEuY27J1jooY2','Y','Indian','notToSay','N','student','1','Y','N','Y','N',NULL,NULL,'on','Y','',NULL,NULL,NULL,'2019-11-02 05:27:10',31,'2019-11-07 09:34:56'),(32,'TSHMO7B531',NULL,NULL,'user',NULL,'+1-45678909876543','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,5581,'2019-11-04 09:05:49',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-04 03:30:30',NULL,NULL),(33,'L9ZNE4QJ3W',NULL,NULL,'user',NULL,'+1-9765434567','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,3071,'2019-11-04 09:15:56',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-04 03:40:49',NULL,NULL),(34,'YX3MS6R4WJ',NULL,NULL,'user',NULL,'+1-97654345678','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,8241,'2019-11-04 09:16:34',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'N','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-04 03:41:09',NULL,NULL),(35,'I2BWY61LDZ',NULL,NULL,'user',NULL,'+91-7428612346','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,7871,'2019-11-05 09:33:56',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'Y','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-05 03:58:56',NULL,NULL),(36,'BQI21OCDL9',NULL,NULL,'user',NULL,'+91-7669212151','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,9962,'2019-11-07 18:47:08','6153','2019-11-07 18:52:40',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'Y','N','c7qsYoO0_JI:APA91bEm9i17-yJfADzOcGliWdZefk2v_YOhq_4U_TyhMGzIugkzNK-Geypv9gNtWzmQK4GGUo_mjjGxDv6xSnj4n6VAppmHX1J1ZWJmBKP2ZAIWPOz4b5NmZCNFS4jvot9BVEi0k9xe','A','on','N','',NULL,NULL,NULL,'2019-11-05 11:13:35',NULL,NULL),(37,'CALV0QSW74',NULL,NULL,'user',NULL,'+91-9711340700',NULL,NULL,NULL,NULL,6588,'2019-11-07 16:42:53',NULL,'0000-00-00 00:00:00','2752448181473871',NULL,'Twitter','192889456','Y',NULL,NULL,NULL,NULL,NULL,'N',NULL,'Y','N',NULL,NULL,'on','N','',NULL,NULL,NULL,'2019-11-07 11:07:53',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_image`
--

LOCK TABLES `tbl_user_image` WRITE;
/*!40000 ALTER TABLE `tbl_user_image` DISABLE KEYS */;
INSERT INTO `tbl_user_image` VALUES (134,'15718132210file.jpeg',3,'Y','2019-10-23 06:47:01',NULL,'0000-00-00 00:00:00','N'),(135,'15718132800file.jpeg',5,'N','2019-10-23 06:48:00',NULL,'0000-00-00 00:00:00','Y'),(136,'15718139620file.jpeg',6,'S','2019-10-23 06:59:22',NULL,'0000-00-00 00:00:00','Y'),(137,'15718132210file.jpeg',6,'N','2019-10-23 07:01:52',NULL,'0000-00-00 00:00:00','Y'),(138,'15718148260r3allove1571814821495.jpg',5,'S','2019-10-23 07:13:46',NULL,'0000-00-00 00:00:00','Y'),(139,'15718275770file.jpeg',5,'Y','2019-10-23 10:46:17',NULL,'0000-00-00 00:00:00','Y'),(140,'15718331440file.jpeg',5,'Y','2019-10-23 12:19:04',NULL,'0000-00-00 00:00:00','Y'),(141,'15718895180file.jpeg',5,'Y','2019-10-24 03:58:38',NULL,'0000-00-00 00:00:00','Y'),(142,'15718895350file.jpeg',5,'Y','2019-10-24 03:58:55',NULL,'0000-00-00 00:00:00','Y'),(143,'15718896250file.jpeg',5,'N','2019-10-24 04:00:25',NULL,'0000-00-00 00:00:00','Y'),(144,'15718896251file.jpeg',5,'N','2019-10-24 04:00:25',NULL,'0000-00-00 00:00:00','Y'),(145,'15718896252file.jpeg',5,'N','2019-10-24 04:00:25',NULL,'0000-00-00 00:00:00','Y'),(146,'15718896253file.jpeg',5,'N','2019-10-24 04:00:25',NULL,'0000-00-00 00:00:00','Y'),(147,'15718896254file.jpeg',5,'N','2019-10-24 04:00:25',NULL,'0000-00-00 00:00:00','Y'),(148,'15718896255file.jpeg',5,'N','2019-10-24 04:00:25',NULL,'0000-00-00 00:00:00','Y'),(149,'15718896256file.jpeg',5,'N','2019-10-24 04:00:25',NULL,'0000-00-00 00:00:00','Y'),(150,'15718896257file.jpeg',5,'N','2019-10-24 04:00:25',NULL,'0000-00-00 00:00:00','Y'),(151,'15718898670file.jpeg',5,'N','2019-10-24 04:04:27',NULL,'0000-00-00 00:00:00','Y'),(152,'15718900250file.jpeg',5,'N','2019-10-24 04:07:05',NULL,'0000-00-00 00:00:00','Y'),(153,'15718900251file.jpeg',5,'N','2019-10-24 04:07:05',NULL,'0000-00-00 00:00:00','Y'),(154,'15718900252file.jpeg',5,'N','2019-10-24 04:07:05',NULL,'0000-00-00 00:00:00','Y'),(155,'15718900253file.jpeg',5,'N','2019-10-24 04:07:05',NULL,'0000-00-00 00:00:00','Y'),(156,'15718900254file.jpeg',5,'N','2019-10-24 04:07:05',NULL,'0000-00-00 00:00:00','Y'),(157,'15718900255file.jpeg',5,'N','2019-10-24 04:07:05',NULL,'0000-00-00 00:00:00','Y'),(158,'15718900256file.jpeg',5,'N','2019-10-24 04:07:05',NULL,'0000-00-00 00:00:00','Y'),(159,'15718900257file.jpeg',5,'N','2019-10-24 04:07:05',NULL,'0000-00-00 00:00:00','N'),(160,'15718900258file.jpeg',5,'N','2019-10-24 04:07:05',NULL,'0000-00-00 00:00:00','N'),(161,'15718900340file.jpeg',5,'S','2019-10-24 04:07:14',NULL,'0000-00-00 00:00:00','N'),(162,'15718949930file.jpeg',2,'Y','2019-10-24 05:29:53',NULL,'0000-00-00 00:00:00','Y'),(163,'15718950720file.jpeg',3,'N','2019-10-24 05:31:12',NULL,'0000-00-00 00:00:00','N'),(164,'15718950721file.jpeg',3,'N','2019-10-24 05:31:12',NULL,'0000-00-00 00:00:00','N'),(165,'15718950722file.jpeg',2,'N','2019-10-24 05:31:12',NULL,'0000-00-00 00:00:00','Y'),(166,'15718950723file.jpeg',2,'N','2019-10-24 05:31:12',NULL,'0000-00-00 00:00:00','Y'),(167,'15718950724file.jpeg',2,'N','2019-10-24 05:31:12',NULL,'0000-00-00 00:00:00','Y'),(168,'15718950890file.jpeg',2,'S','2019-10-24 05:31:29',NULL,'0000-00-00 00:00:00','Y'),(169,'157191161701571911594689.jpg',4,'N','2019-10-24 10:06:57',NULL,'0000-00-00 00:00:00','N'),(170,'15719116850Picture1.jpg',4,'N','2019-10-24 10:08:05',NULL,'0000-00-00 00:00:00','N'),(171,'15719118150r3allove1571911813157.png',4,'S','2019-10-24 10:10:15',NULL,'0000-00-00 00:00:00','N'),(172,'15719119900file.jpeg',5,'Y','2019-10-24 10:13:10',NULL,'0000-00-00 00:00:00','Y'),(173,'157191201601571912013961.jpg',3,'N','2019-10-24 10:13:36',NULL,'0000-00-00 00:00:00','N'),(174,'15719131770file.jpeg',5,'S','2019-10-24 10:32:57',NULL,'0000-00-00 00:00:00','Y'),(175,'15719746720file.jpeg',6,'Y','2019-10-25 03:37:52',NULL,'0000-00-00 00:00:00','N'),(176,'15719747360file.jpeg',6,'N','2019-10-25 03:38:56',NULL,'0000-00-00 00:00:00','N'),(177,'15719747361file.jpeg',6,'N','2019-10-25 03:38:56',NULL,'0000-00-00 00:00:00','N'),(178,'15719747440file.jpeg',6,'S','2019-10-25 03:39:04',NULL,'0000-00-00 00:00:00','N'),(179,'15719769860file.jpeg',7,'Y','2019-10-25 04:16:26',NULL,'0000-00-00 00:00:00','N'),(180,'15719770050file.jpeg',7,'N','2019-10-25 04:16:45',NULL,'0000-00-00 00:00:00','N'),(181,'15719770051file.jpeg',7,'N','2019-10-25 04:16:45',NULL,'0000-00-00 00:00:00','N'),(182,'15719770150file.jpeg',7,'S','2019-10-25 04:16:55',NULL,'0000-00-00 00:00:00','N'),(183,'157197876701571978765615.jpg',2,'N','2019-10-25 04:46:07',NULL,'0000-00-00 00:00:00','N'),(184,'157197881501571978814500.jpg',2,'N','2019-10-25 04:46:55',NULL,'0000-00-00 00:00:00','N'),(185,'15719788250Picture1.jpg',2,'N','2019-10-25 04:47:06',NULL,'0000-00-00 00:00:00','N'),(186,'15719788500r3allove1571978845046.png',2,'S','2019-10-25 04:47:30',NULL,'0000-00-00 00:00:00','N'),(187,'15719800680file.jpeg',3,'S','2019-10-25 05:07:48',NULL,'0000-00-00 00:00:00','N'),(188,'15725771910Picture0.jpg',9,'N','2019-11-01 02:59:51',NULL,'0000-00-00 00:00:00','N'),(189,'157257720901572577207550.jpg',9,'N','2019-11-01 03:00:09',NULL,'0000-00-00 00:00:00','N'),(190,'15725772190r3allove1572577217522.png',9,'S','2019-11-01 03:00:19',NULL,'0000-00-00 00:00:00','N'),(191,'15725877790Picture0.jpg',4,'N','2019-11-01 05:56:19',NULL,'0000-00-00 00:00:00','N'),(192,'15725879940Picture1.jpg',4,'N','2019-11-01 05:59:54',NULL,'0000-00-00 00:00:00','N'),(193,'15725879941Picture2.jpg',4,'N','2019-11-01 05:59:54',NULL,'0000-00-00 00:00:00','N'),(194,'15725879942Picture5.jpg',4,'N','2019-11-01 05:59:54',NULL,'0000-00-00 00:00:00','N'),(195,'157258799431572587864254.jpg',4,'N','2019-11-01 05:59:54',NULL,'0000-00-00 00:00:00','N'),(196,'157258799441572587880494.jpg',4,'N','2019-11-01 05:59:54',NULL,'0000-00-00 00:00:00','N'),(197,'157258799451572587942288.jpg',4,'N','2019-11-01 05:59:54',NULL,'0000-00-00 00:00:00','N'),(198,'157259046301572590461034.jpg',13,'N','2019-11-01 06:41:03',NULL,'0000-00-00 00:00:00','N'),(199,'15725908330Picture1.jpg',13,'N','2019-11-01 06:47:13',NULL,'0000-00-00 00:00:00','N'),(200,'15725908331Picture2.jpg',13,'N','2019-11-01 06:47:13',NULL,'0000-00-00 00:00:00','N'),(201,'15725908332Picture4.jpg',13,'N','2019-11-01 06:47:13',NULL,'0000-00-00 00:00:00','N'),(202,'15725908333Picture5.jpg',13,'N','2019-11-01 06:47:13',NULL,'0000-00-00 00:00:00','N'),(203,'15725908334Picture6.jpg',13,'N','2019-11-01 06:47:13',NULL,'0000-00-00 00:00:00','N'),(204,'15725908335Picture7.jpg',13,'N','2019-11-01 06:47:13',NULL,'0000-00-00 00:00:00','N'),(205,'15725908336Picture8.jpg',13,'N','2019-11-01 06:47:13',NULL,'0000-00-00 00:00:00','N'),(206,'157259083371572590656848.jpg',13,'N','2019-11-01 06:47:13',NULL,'0000-00-00 00:00:00','N'),(207,'15725908990r3allove1572590868189.png',13,'S','2019-11-01 06:48:19',NULL,'0000-00-00 00:00:00','N'),(208,'157259186901572591868106.jpg',14,'N','2019-11-01 07:04:29',NULL,'0000-00-00 00:00:00','N'),(209,'15725919920Picture1.jpg',14,'N','2019-11-01 07:06:32',NULL,'0000-00-00 00:00:00','N'),(210,'15725919921Picture2.jpg',14,'N','2019-11-01 07:06:32',NULL,'0000-00-00 00:00:00','N'),(211,'157259199221572591927370.jpg',14,'N','2019-11-01 07:06:32',NULL,'0000-00-00 00:00:00','N'),(212,'157259199231572591939942.jpg',14,'N','2019-11-01 07:06:32',NULL,'0000-00-00 00:00:00','N'),(213,'15725919924Picture5.jpg',14,'N','2019-11-01 07:06:32',NULL,'0000-00-00 00:00:00','N'),(214,'15725919925Picture6.jpg',14,'N','2019-11-01 07:06:32',NULL,'0000-00-00 00:00:00','N'),(215,'15725919926Picture7.jpg',14,'N','2019-11-01 07:06:32',NULL,'0000-00-00 00:00:00','N'),(216,'15725919927Picture8.jpg',14,'N','2019-11-01 07:06:32',NULL,'0000-00-00 00:00:00','N'),(217,'15725919928Picture9.jpg',14,'N','2019-11-01 07:06:32',NULL,'0000-00-00 00:00:00','N'),(218,'15725920000r3allove1572591996218.png',14,'S','2019-11-01 07:06:40',NULL,'0000-00-00 00:00:00','N'),(219,'15726727490Picture0.jpg',31,'N','2019-11-02 05:32:29',NULL,'0000-00-00 00:00:00','Y'),(220,'15726727880Picture1.jpg',31,'N','2019-11-02 05:33:08',NULL,'0000-00-00 00:00:00','Y'),(221,'15726728000r3allove1572672793842.png',31,'S','2019-11-02 05:33:20',NULL,'0000-00-00 00:00:00','Y'),(222,'15729501270Picture0.jpg',31,'N','2019-11-05 10:35:27',NULL,'0000-00-00 00:00:00','Y'),(223,'15729502490Picture1.jpg',31,'N','2019-11-05 10:37:29',NULL,'0000-00-00 00:00:00','Y'),(224,'15729502491Picture5.jpg',31,'N','2019-11-05 10:37:29',NULL,'0000-00-00 00:00:00','Y'),(225,'15730108130r3allove1573010811945.png',31,'S','2019-11-06 03:26:53',NULL,'0000-00-00 00:00:00','Y'),(226,'15730405730r3allove1573040571389.png',31,'S','2019-11-06 11:42:53',NULL,'0000-00-00 00:00:00','Y'),(227,'15730406670r3allove1573040665814.png',31,'S','2019-11-06 11:44:27',NULL,'0000-00-00 00:00:00','Y'),(228,'15730433090Picture6.jpg',31,'Y','2019-11-06 12:28:29',NULL,'0000-00-00 00:00:00','Y'),(229,'15730435690Picture0.jpg',31,'N','2019-11-06 12:32:49',NULL,'0000-00-00 00:00:00','Y'),(230,'15730436290Picture0.jpg',31,'N','2019-11-06 12:33:49',NULL,'0000-00-00 00:00:00','Y'),(231,'15730442030Picture0.jpg',31,'S','2019-11-06 12:43:23',NULL,'0000-00-00 00:00:00','Y'),(232,'15730978050Picture8.jpg',31,'N','2019-11-07 03:36:45',NULL,'0000-00-00 00:00:00','Y'),(233,'15730984040r3allove1573098403083.png',31,'S','2019-11-07 03:46:44',NULL,'0000-00-00 00:00:00','Y'),(234,'15731095220Picture0.jpg',1,'N','2019-11-07 06:52:02',NULL,'0000-00-00 00:00:00','N'),(235,'15731095410Picture1.jpg',1,'N','2019-11-07 06:52:21',NULL,'0000-00-00 00:00:00','N'),(236,'15731095460r3allove1573109543519.png',1,'S','2019-11-07 06:52:26',NULL,'0000-00-00 00:00:00','N'),(237,'15732169010file.jpeg',5,'Y','2019-11-08 12:41:41',NULL,'0000-00-00 00:00:00','Y'),(238,'15732821230file.jpeg',5,'Y','2019-11-09 06:48:43',NULL,'0000-00-00 00:00:00','Y'),(239,'15732835110file.jpeg',5,'Y','2019-11-09 07:11:51',NULL,'0000-00-00 00:00:00','N'),(240,'15732849820S',5,'N','2019-11-09 07:36:22',NULL,'0000-00-00 00:00:00','N'),(241,'15732850260S',5,'N','2019-11-09 07:37:06',NULL,'0000-00-00 00:00:00','N'),(242,'15732857250file.jpeg',5,'N','2019-11-09 07:48:45',NULL,'0000-00-00 00:00:00','N'),(243,'15732918380file.jpeg',5,'N','2019-11-09 09:30:38',NULL,'0000-00-00 00:00:00','N'),(244,'15732921530file.jpeg',5,'N','2019-11-09 09:35:53',NULL,'0000-00-00 00:00:00','N'),(245,'15732921710file.jpeg',5,'N','2019-11-09 09:36:11',NULL,'0000-00-00 00:00:00','N'),(246,'15736258980Picture0.jpg',4,'Y','2019-11-13 06:18:18',NULL,'0000-00-00 00:00:00','N');
/*!40000 ALTER TABLE `tbl_user_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_image_like`
--

DROP TABLE IF EXISTS `tbl_user_image_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user_image_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) DEFAULT NULL,
  `image_user_id` int(11) DEFAULT NULL,
  `likes` enum('Y','N') DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `deleted` enum('Y','N') DEFAULT 'N',
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `image_id` (`image_id`),
  KEY `image_user_id` (`image_user_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `tbl_user_image_like_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `tbl_user_image` (`id`),
  CONSTRAINT `tbl_user_image_like_ibfk_2` FOREIGN KEY (`image_user_id`) REFERENCES `tbl_user` (`user_id`),
  CONSTRAINT `tbl_user_image_like_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_image_like`
--

LOCK TABLES `tbl_user_image_like` WRITE;
/*!40000 ALTER TABLE `tbl_user_image_like` DISABLE KEYS */;
INSERT INTO `tbl_user_image_like` VALUES (16,134,3,'Y',5,'2019-10-31 11:40:37',NULL,'N',NULL),(17,172,5,'Y',3,'2019-10-31 11:40:46',NULL,'Y',NULL),(22,175,6,'N',5,'2019-11-04 04:40:02',5,'N','2019-11-04 10:10:04'),(23,134,3,'Y',6,'2019-11-07 08:58:04',NULL,'N',NULL),(24,169,4,'Y',7,'2019-11-12 10:28:42',NULL,'N',NULL),(25,179,7,'Y',4,'2019-11-12 10:30:16',NULL,'N',NULL),(26,175,6,'Y',14,'2019-11-13 05:21:47',NULL,'N',NULL),(27,179,7,'Y',14,'2019-11-13 05:52:49',14,'N','2019-11-13 11:25:30'),(28,180,7,'Y',14,'2019-11-13 05:55:53',NULL,'N',NULL),(29,181,7,'Y',14,'2019-11-13 05:55:56',NULL,'N',NULL),(30,177,6,'N',4,'2019-11-13 11:07:18',4,'N','2019-11-13 16:37:41'),(31,176,6,'N',4,'2019-11-13 11:07:27',4,'N','2019-11-13 16:37:38'),(32,175,6,'Y',4,'2019-11-13 11:07:33',4,'N','2019-11-15 12:04:32'),(33,183,2,'Y',14,'2019-11-14 08:01:48',NULL,'N',NULL),(35,175,6,'Y',7,'2019-11-14 09:00:38',NULL,'N',NULL),(36,179,7,'Y',6,'2019-11-14 09:00:51',NULL,'N',NULL),(37,134,3,'N',6,'2019-11-14 11:43:12',NULL,'N',NULL),(38,159,5,'Y',7,'2019-11-15 09:41:08',NULL,'N',NULL),(39,179,7,'Y',5,'2019-11-15 09:41:20',NULL,'N',NULL),(40,242,5,'Y',4,'2019-11-16 03:45:49',NULL,'N',NULL),(41,159,5,'N',4,'2019-11-16 06:49:29',4,'N','2019-11-16 12:19:34');
/*!40000 ALTER TABLE `tbl_user_image_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_like`
--

DROP TABLE IF EXISTS `tbl_user_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(10) DEFAULT NULL,
  `to_id` int(10) DEFAULT NULL,
  `status` enum('0','1','2') DEFAULT NULL COMMENT '0)-> ''pending request. '',1)-> ''accept the request '', 2)-> ''block the user''',
  `deleted` enum('Y','N') DEFAULT 'N',
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `like_user_id` (`from_id`),
  KEY `to_id` (`to_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `tbl_user_like_ibfk_1` FOREIGN KEY (`from_id`) REFERENCES `tbl_user` (`user_id`),
  CONSTRAINT `tbl_user_like_ibfk_2` FOREIGN KEY (`to_id`) REFERENCES `tbl_user` (`user_id`),
  CONSTRAINT `tbl_user_like_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_like`
--

LOCK TABLES `tbl_user_like` WRITE;
/*!40000 ALTER TABLE `tbl_user_like` DISABLE KEYS */;
INSERT INTO `tbl_user_like` VALUES (9,5,3,'1','N',5,'2019-10-31 11:40:37',3,'2019-10-31 17:10:46'),(12,7,14,'1','N',7,'2019-11-04 04:40:02',14,NULL),(13,4,3,'1','N',3,'2019-11-07 08:58:04',4,NULL),(14,7,4,'1','N',7,'2019-11-12 10:28:42',4,'2019-11-12 16:00:16'),(15,14,6,'1','N',14,'2019-11-13 05:21:47',6,NULL),(16,4,6,'0','N',4,'2019-11-13 11:07:18',NULL,NULL),(17,14,2,'0','N',14,'2019-11-14 08:01:48',NULL,NULL),(19,7,6,'1','N',7,'2019-11-14 09:00:38',6,'2019-11-14 14:30:51'),(20,6,3,'1','N',6,'2019-11-14 11:43:12',NULL,NULL),(21,5,6,'1','N',5,'2019-11-15 06:55:12',NULL,NULL),(22,7,5,'1','N',7,'2019-11-15 09:41:08',5,'2019-11-15 15:11:20'),(23,4,5,'0','N',4,'2019-11-16 03:45:49',NULL,NULL);
/*!40000 ALTER TABLE `tbl_user_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_like2`
--

DROP TABLE IF EXISTS `tbl_user_like2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user_like2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `like_user_id` int(10) DEFAULT NULL,
  `user_like` enum('Y','N','block') DEFAULT 'N',
  `follow_back_date` timestamp NULL DEFAULT NULL,
  `follow_like` enum('Y','N','block') DEFAULT 'N',
  `deleted` enum('Y','N') DEFAULT 'N',
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `like_user_id` (`like_user_id`),
  CONSTRAINT `tbl_user_like2_ibfk_1` FOREIGN KEY (`like_user_id`) REFERENCES `tbl_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_like2`
--

LOCK TABLES `tbl_user_like2` WRITE;
/*!40000 ALTER TABLE `tbl_user_like2` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_user_like2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_rating`
--

DROP TABLE IF EXISTS `tbl_user_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rating_user_id` int(11) DEFAULT NULL,
  `rating_pic_point` varchar(10) DEFAULT NULL,
  `rating_aatire` varchar(10) DEFAULT NULL,
  `rating_personality` varchar(10) DEFAULT NULL,
  `rating_punctuality` varchar(10) DEFAULT NULL,
  `rating_msg` varchar(255) DEFAULT NULL,
  `deleted` enum('Y','N') DEFAULT 'N',
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `rating_user_id` (`rating_user_id`),
  CONSTRAINT `tbl_user_rating_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `tbl_user` (`user_id`),
  CONSTRAINT `tbl_user_rating_ibfk_3` FOREIGN KEY (`rating_user_id`) REFERENCES `tbl_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_rating`
--

LOCK TABLES `tbl_user_rating` WRITE;
/*!40000 ALTER TABLE `tbl_user_rating` DISABLE KEYS */;
INSERT INTO `tbl_user_rating` VALUES (1,2,'4','3','3','3',NULL,'N',5,'2019-10-23 04:29:15',5,'2019-10-29 13:29:28'),(2,5,'4','4','4','1',NULL,'N',6,'2019-10-24 04:58:13',6,'2019-10-24 10:29:03'),(3,7,'1','3','2','3',NULL,'N',5,'2019-10-29 03:26:55',5,'2019-10-29 09:08:53'),(4,7,'2','2','2','2',NULL,'N',4,'2019-10-29 12:17:50',NULL,NULL),(5,7,'2','2','2','2',NULL,'N',3,'2019-10-30 09:50:03',3,'2019-10-30 15:21:29'),(6,4,'2','2','3','4',NULL,'N',5,'2019-10-30 10:12:18',NULL,NULL),(7,5,'4','4','4','4',NULL,'N',5,'2019-10-31 03:13:57',NULL,NULL),(8,5,'4','4','4','4',NULL,'N',3,'2019-10-31 06:20:11',3,'2019-11-07 17:57:03'),(9,6,'5','4','5','5',NULL,'N',5,'2019-11-04 04:42:09',5,'2019-11-07 17:54:26'),(10,9,'4','3','3','3',NULL,'N',5,'2019-11-06 04:21:39',NULL,NULL),(11,6,'3','1','1','1',NULL,'N',31,'2019-11-07 04:05:44',NULL,NULL),(12,13,'5','5','5','5',NULL,'N',5,'2019-11-07 12:48:44',5,'2019-11-07 18:20:05'),(13,14,'5','5','5','5',NULL,'N',5,'2019-11-07 12:49:44',NULL,NULL),(14,6,'5','5','5','5',NULL,'N',4,'2019-11-13 11:07:56',4,'2019-11-13 16:38:11');
/*!40000 ALTER TABLE `tbl_user_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_report`
--

DROP TABLE IF EXISTS `tbl_user_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_user_id` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `deleted` enum('Y','N') DEFAULT 'N',
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `like_user_id` (`report_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_report`
--

LOCK TABLES `tbl_user_report` WRITE;
/*!40000 ALTER TABLE `tbl_user_report` DISABLE KEYS */;
INSERT INTO `tbl_user_report` VALUES (4,3,'Please Block the user','N',4,'2019-11-13 10:40:34',NULL,NULL),(6,6,'Spam or scam','N',7,'2019-11-14 07:08:04',NULL,NULL),(7,3,'Fake profile','N',4,'2019-11-14 11:50:55',NULL,NULL),(8,3,'Spam or scam','N',4,'2019-11-15 05:59:17',NULL,NULL),(9,4,'Sexually Explicit Content','N',5,'2019-11-15 09:21:45',NULL,NULL),(10,3,'Spam or scam','N',4,'2019-11-16 03:46:35',NULL,NULL),(11,7,'Fake profile','N',4,'2019-11-18 03:57:16',NULL,NULL);
/*!40000 ALTER TABLE `tbl_user_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_socket`
--

DROP TABLE IF EXISTS `tbl_user_socket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user_socket` (
  `socket_id` int(11) NOT NULL AUTO_INCREMENT,
  `online_status` varchar(20) DEFAULT NULL,
  `sender_id` varchar(20) DEFAULT NULL,
  `reciever_id` varchar(20) DEFAULT NULL,
  `deleted` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`socket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_socket`
--

LOCK TABLES `tbl_user_socket` WRITE;
/*!40000 ALTER TABLE `tbl_user_socket` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_user_socket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_web`
--

DROP TABLE IF EXISTS `tbl_user_web`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user_web` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `deleted` enum('Y','N') DEFAULT 'N',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_web`
--

LOCK TABLES `tbl_user_web` WRITE;
/*!40000 ALTER TABLE `tbl_user_web` DISABLE KEYS */;
INSERT INTO `tbl_user_web` VALUES (1,'Raj','Pal','rajpal@gmail.com','07800130710','N','2019-10-09 11:16:42'),(2,'Harry','Doggy','harry@dog.com','16138780070','N','2019-10-11 04:28:15'),(3,'czxcxz','xzcxz','zxczx@sfcdf.com','9090909090','N','2019-10-17 05:05:19'),(4,'Brandon','Pickett','brandonjpickett@gmail.com','6138780070','N','2019-10-18 02:06:00'),(5,'Angela','Chase','angelachase@hotmail.ca','6134629966','N','2019-10-21 21:16:55'),(6,'Elie','Skaff','skaff25@gmail.com','6138781797','N','2019-10-21 21:17:43');
/*!40000 ALTER TABLE `tbl_user_web` ENABLE KEYS */;
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
