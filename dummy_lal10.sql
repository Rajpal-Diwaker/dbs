-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: dummy_lal10
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
-- Current Database: `dummy_lal10`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dummy_lal10` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dummy_lal10`;

--
-- Table structure for table `aboutus_sample`
--

DROP TABLE IF EXISTS `aboutus_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus_sample` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus_sample`
--

LOCK TABLES `aboutus_sample` WRITE;
/*!40000 ALTER TABLE `aboutus_sample` DISABLE KEYS */;
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
  `typeId` varchar(255) DEFAULT NULL,
  `userId` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `aboutus_user_userid_foreign` (`userId`),
  CONSTRAINT `aboutus_user_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus_user`
--

LOCK TABLES `aboutus_user` WRITE;
/*!40000 ALTER TABLE `aboutus_user` DISABLE KEYS */;
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
  `name` varchar(50) DEFAULT NULL,
  `countryId` int(11) DEFAULT NULL,
  `addLine1` text,
  `street` text,
  `cityId` int(11) DEFAULT NULL,
  `stateId` int(11) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `mobNo` varchar(15) DEFAULT NULL,
  `defaultAdd` tinyint(1) DEFAULT NULL,
  `userId` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `address_userid_foreign` (`userId`),
  CONSTRAINT `address_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
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
  `kycImage` varchar(50) DEFAULT NULL,
  `artisanImage` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `craft` int(11) DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `material` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userId` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `artisan_details_userid_foreign` (`userId`),
  CONSTRAINT `artisan_details_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan_details`
--

LOCK TABLES `artisan_details` WRITE;
/*!40000 ALTER TABLE `artisan_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `artisan_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avenue`
--

DROP TABLE IF EXISTS `avenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avenue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `description` longtext,
  `image` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `totalAwards` int(11) DEFAULT '0',
  `userId` int(10) unsigned NOT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `isPublished` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `awards_userid_foreign` (`userId`),
  CONSTRAINT `awards_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cardNo` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `cvv` varchar(5) DEFAULT NULL,
  `userId` int(10) unsigned NOT NULL,
  `qty` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `card_userid_foreign` (`userId`),
  CONSTRAINT `card_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  PRIMARY KEY (`id`),
  KEY `cart_userid_foreign` (`userId`),
  CONSTRAINT `cart_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_relation`
--

DROP TABLE IF EXISTS `cart_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_relation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `productId` int(10) unsigned NOT NULL,
  `qty` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uniqueId` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->active,0->Inactive',
  `userId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_relation_productid_foreign` (`productId`),
  KEY `cart_relation_userid_foreign` (`userId`),
  CONSTRAINT `cart_relation_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cart_relation_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_relation`
--

LOCK TABLES `cart_relation` WRITE;
/*!40000 ALTER TABLE `cart_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `parentId` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(255) NOT NULL,
  `isActive` tinyint(1) DEFAULT '1',
  `banner_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_parentid_foreign` (`parentId`),
  CONSTRAINT `category_parentid_foreign` FOREIGN KEY (`parentId`) REFERENCES `category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
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
  `message` varchar(255) DEFAULT NULL,
  `files` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `isRead` tinyint(1) DEFAULT '0' COMMENT '1->for Read,0->UnRead',
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->Active,0->Inactive',
  `type` enum('text','image','video','doc') DEFAULT 'text',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `chat_enqid_foreign` (`EnqId`),
  KEY `chat_fromid_foreign` (`fromId`),
  KEY `chat_toid_foreign` (`toId`),
  CONSTRAINT `chat_enqid_foreign` FOREIGN KEY (`EnqId`) REFERENCES `enquiries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chat_fromid_foreign` FOREIGN KEY (`fromId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chat_toid_foreign` FOREIGN KEY (`toId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms`
--

DROP TABLE IF EXISTS `cms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `description` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms`
--

LOCK TABLES `cms` WRITE;
/*!40000 ALTER TABLE `cms` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_history`
--

DROP TABLE IF EXISTS `cron_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `body` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `type` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_important_sample`
--

LOCK TABLES `customer_important_sample` WRITE;
/*!40000 ALTER TABLE `customer_important_sample` DISABLE KEYS */;
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
  `uniqueId` varchar(255) DEFAULT NULL,
  `productId` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `expPrice` varchar(255) DEFAULT NULL,
  `userId` int(10) unsigned DEFAULT NULL,
  `mailBy` varchar(255) DEFAULT NULL,
  `mailSubject` varchar(255) DEFAULT NULL,
  `mailMailBody` varchar(255) DEFAULT NULL,
  `isGenrate` enum('0','1','2','3') DEFAULT '0' COMMENT '0->not Assign,1->Assign open to all,2->Assign to particuler group)',
  `craftId` int(11) DEFAULT NULL,
  `typeOfEnquiry` enum('','0','1','2') DEFAULT '' COMMENT '0->lead Enquiry,1->Email Enquiry,2->website Enquiry',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->for active,0->Inactive',
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enquiries_productid_foreign` (`productId`),
  KEY `enquiries_userid_foreign` (`userId`),
  CONSTRAINT `enquiries_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `enquiries_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiries`
--

LOCK TABLES `enquiries` WRITE;
/*!40000 ALTER TABLE `enquiries` DISABLE KEYS */;
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
  `attachment` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->Active the Record,0->Not Active the Record',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `enquiry_attachment_enqid_foreign` (`enqId`),
  CONSTRAINT `enquiry_attachment_enqid_foreign` FOREIGN KEY (`enqId`) REFERENCES `enquiries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiry_attachment`
--

LOCK TABLES `enquiry_attachment` WRITE;
/*!40000 ALTER TABLE `enquiry_attachment` DISABLE KEYS */;
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
  `enqId` int(10) unsigned NOT NULL,
  `assignUserId` int(10) unsigned NOT NULL,
  `adminAssign` tinyint(1) DEFAULT '0' COMMENT '1->assign,0->not assign',
  `orderAccept` tinyint(1) DEFAULT '0' COMMENT '0->pending,1->Accept the order,2->Reject the order',
  `isActive` tinyint(1) DEFAULT '1' COMMENT '1->Active the Record,0->Not Active the Record',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `enquiry_order_enqid_foreign` (`enqId`),
  KEY `enquiry_order_assignuserid_foreign` (`assignUserId`),
  KEY `enquiry_order_updated_by_foreign` (`updated_by`),
  CONSTRAINT `enquiry_order_assignuserid_foreign` FOREIGN KEY (`assignUserId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `enquiry_order_enqid_foreign` FOREIGN KEY (`enqId`) REFERENCES `enquiries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `enquiry_order_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiry_order`
--

LOCK TABLES `enquiry_order` WRITE;
/*!40000 ALTER TABLE `enquiry_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `enquiry_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `userId` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `group_userid_foreign` (`userId`),
  CONSTRAINT `group_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_relations`
--

DROP TABLE IF EXISTS `group_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_relations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeId` int(11) DEFAULT NULL,
  `groupId` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `grouprelations_groupid_foreign` (`groupId`),
  CONSTRAINT `grouprelations_groupid_foreign` FOREIGN KEY (`groupId`) REFERENCES `group` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_relations`
--

LOCK TABLES `group_relations` WRITE;
/*!40000 ALTER TABLE `group_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `filterId` int(11) DEFAULT NULL,
  `userId` int(10) unsigned DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `groups_userid_foreign` (`userId`),
  CONSTRAINT `groups_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infographics`
--

DROP TABLE IF EXISTS `infographics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infographics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `totalProducts` varchar(50) DEFAULT NULL,
  `unitsDelivered` varchar(50) DEFAULT NULL,
  `exportedTo` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `state` varchar(100) DEFAULT NULL,
  `totalArtisan` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infographics_states`
--

LOCK TABLES `infographics_states` WRITE;
/*!40000 ALTER TABLE `infographics_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `infographics_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knex_migrations`
--

DROP TABLE IF EXISTS `knex_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knex_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knex_migrations`
--

LOCK TABLES `knex_migrations` WRITE;
/*!40000 ALTER TABLE `knex_migrations` DISABLE KEYS */;
INSERT INTO `knex_migrations` VALUES (1,'20200423053608_options.js',1,'2020-07-11 12:16:15'),(2,'20200521125535_user_new.js',1,'2020-07-11 12:16:16'),(3,'20200521125721_roles.js',1,'2020-07-11 12:16:17'),(4,'20200521130123_uploads.js',1,'2020-07-11 12:16:18'),(5,'20200521131024_add_user_column.js',1,'2020-07-11 12:16:19'),(6,'20200521131351_user_details.js',1,'2020-07-11 12:16:21'),(7,'20200521131809_add_col_user_again.js',1,'2020-07-11 12:16:22'),(8,'20200521132711_products.js',1,'2020-07-11 12:16:24'),(9,'20200521133715_shop.js',1,'2020-07-11 12:16:25'),(10,'20200521134443_notifications.js',1,'2020-07-11 12:16:27'),(11,'20200521134825_awards.js',1,'2020-07-11 12:16:28'),(12,'20200521135241_onboarding.js',1,'2020-07-11 12:16:29'),(13,'20200521135633_cms.js',1,'2020-07-11 12:16:30'),(14,'20200522135622_init.js',1,'2020-07-11 12:16:38'),(15,'20200525172525_init_2.js',1,'2020-07-11 12:16:44'),(16,'20200526181446_init3.js',1,'2020-07-11 12:16:46'),(17,'20200528174705_cart.js',1,'2020-07-11 12:16:55'),(18,'20200609102757_alter.js',1,'2020-07-11 12:16:56'),(19,'20200611133707_alter2.js',1,'2020-07-11 12:16:57'),(20,'20200611151432_sub_type.js',1,'2020-07-11 12:16:59'),(21,'20200614121939_alter3.js',1,'2020-07-11 12:17:00'),(22,'20200614122321_alter4.js',1,'2020-07-11 12:17:01'),(23,'20200614145852_alter5.js',1,'2020-07-11 12:17:01'),(24,'20200614204149_store.js',1,'2020-07-11 12:17:03'),(25,'20200614230955_aboutus_sample.js',1,'2020-07-11 12:17:03'),(26,'20200614231051_aboutus_user.js',1,'2020-07-11 12:17:05'),(27,'20200615001328_user_product_sell.js',1,'2020-07-11 12:17:07'),(28,'20200615002900_customer_important_sample.js',1,'2020-07-11 12:17:07'),(29,'20200615112835_type_of_store.js',1,'2020-07-11 12:17:08'),(30,'20200617125002_altertables.js',1,'2020-07-11 12:17:12'),(31,'20200617130608_alterProduct.js',1,'2020-07-11 12:17:13'),(32,'20200617130846_alterProductagain.js',1,'2020-07-11 12:17:14'),(33,'20200617133536_alterNewsfeed.js',1,'2020-07-11 12:17:14'),(34,'20200618120229_alterOptions.js',1,'2020-07-11 12:17:15'),(35,'20200618125454_alterOptions1.js',1,'2020-07-11 12:17:16'),(36,'20200618125816_alterOptions1.js',1,'2020-07-11 12:17:18'),(37,'20200619192536_alterCategory.js',1,'2020-07-11 12:17:20'),(38,'20200622003200_alterCMS.js',1,'2020-07-11 12:17:21'),(39,'20200622171044_alterproduct.js',1,'2020-07-11 12:17:23'),(40,'20200623132019_enquiries.js',1,'2020-07-11 12:17:25'),(41,'20200624000748_altercart.js',1,'2020-07-11 12:17:28'),(42,'20200629130259_productImage.js',1,'2020-07-11 12:17:31'),(43,'20200629161110_chat.js',1,'2020-07-11 12:17:35'),(44,'20200711131037_enqOrder.js',1,'2020-07-11 12:17:40'),(45,'20200711133253_leadAccept.js',1,'2020-07-11 12:17:43'),(46,'20200711161253_enquiryAttachment.js',1,'2020-07-11 12:17:46');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
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
  `updated_by` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_accept_enqid_foreign` (`enqId`),
  KEY `lead_accept_updated_by_foreign` (`updated_by`),
  CONSTRAINT `lead_accept_enqid_foreign` FOREIGN KEY (`enqId`) REFERENCES `enquiries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lead_accept_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `carrier` int(11) DEFAULT NULL,
  `trackingNo` varchar(50) DEFAULT NULL,
  `boxes` int(11) DEFAULT NULL,
  `paymentMode` int(11) DEFAULT NULL,
  `userId` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `logistics_detail_userid_foreign` (`userId`),
  CONSTRAINT `logistics_detail_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistics_detail`
--

LOCK TABLES `logistics_detail` WRITE;
/*!40000 ALTER TABLE `logistics_detail` DISABLE KEYS */;
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
  `image` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` longtext,
  `isActive` tinyint(1) DEFAULT NULL,
  `isPublished` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsfeed`
--

LOCK TABLES `newsfeed` WRITE;
/*!40000 ALTER TABLE `newsfeed` DISABLE KEYS */;
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
  `type` varchar(255) DEFAULT NULL,
  `message` longtext,
  `action` varchar(255) DEFAULT NULL,
  `userId` int(10) unsigned NOT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `notifications_userid_foreign` (`userId`),
  CONSTRAINT `notifications_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
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
  `image` varchar(255) DEFAULT NULL,
  `description` longtext,
  `language` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onboarding`
--

LOCK TABLES `onboarding` WRITE;
/*!40000 ALTER TABLE `onboarding` DISABLE KEYS */;
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
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
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
  `otp` varchar(6) DEFAULT NULL,
  `isVerified` tinyint(1) DEFAULT NULL,
  `userId` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `otp_verification_userid_foreign` (`userId`),
  CONSTRAINT `otp_verification_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `product_name` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `estimatedDelivery` datetime(6) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `gst` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `po`
--

LOCK TABLES `po` WRITE;
/*!40000 ALTER TABLE `po` DISABLE KEYS */;
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
  `image` varchar(255) DEFAULT NULL,
  `userId` int(10) unsigned NOT NULL,
  `isActive` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `productimage_productid_foreign` (`productId`),
  KEY `productimage_userid_foreign` (`userId`),
  CONSTRAINT `productimage_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `productimage_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productImage`
--

LOCK TABLES `productImage` WRITE;
/*!40000 ALTER TABLE `productImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `productImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_tracker`
--

DROP TABLE IF EXISTS `production_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `production_tracker` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `productionStatus` int(11) DEFAULT NULL,
  `paymentStatus` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_tracker`
--

LOCK TABLES `production_tracker` WRITE;
/*!40000 ALTER TABLE `production_tracker` DISABLE KEYS */;
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
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `inventoryQty` int(11) DEFAULT '0',
  `material` varchar(255) DEFAULT NULL,
  `description` longtext,
  `userId` int(10) unsigned NOT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `doableQty` int(11) DEFAULT NULL,
  `craft` int(11) DEFAULT NULL,
  `searchTags` varchar(255) DEFAULT NULL,
  `plive` enum('1','0') DEFAULT '0' COMMENT '1->live product,0->non live product',
  `categoryId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_userid_foreign` (`userId`),
  KEY `products_categoryid_foreign` (`categoryId`),
  CONSTRAINT `products_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
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
  `url` varchar(100) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
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
  `title` varchar(100) DEFAULT NULL,
  `description` longtext,
  `type` varchar(20) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `inventory_qty` varchar(255) DEFAULT '0',
  `productId` int(10) unsigned NOT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `shop_productid_foreign` (`productId`),
  CONSTRAINT `shop_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `type` varchar(255) DEFAULT NULL,
  `store` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `bussiness` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `websiteUrl` varchar(255) DEFAULT NULL,
  `description` longtext,
  `customerImportant` varchar(255) DEFAULT NULL,
  `userId` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `store_userid_foreign` (`userId`),
  CONSTRAINT `store_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
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
  `title` varchar(100) DEFAULT NULL,
  `description` longtext,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `type` varchar(255) DEFAULT NULL,
  `categoryId` int(10) unsigned NOT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `sub_type_categoryid_foreign` (`categoryId`),
  CONSTRAINT `sub_type_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_type`
--

LOCK TABLES `sub_type` WRITE;
/*!40000 ALTER TABLE `sub_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_of_store`
--

DROP TABLE IF EXISTS `type_of_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_of_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_of_store`
--

LOCK TABLES `type_of_store` WRITE;
/*!40000 ALTER TABLE `type_of_store` DISABLE KEYS */;
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
  `uri` varchar(255) NOT NULL,
  `userId` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uploads_userid_foreign` (`userId`),
  CONSTRAINT `uploads_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `name` varchar(255) DEFAULT NULL,
  `profileImage` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `userId` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_details_userid_foreign` (`userId`),
  CONSTRAINT `user_details_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
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
  `categoryId` varchar(255) DEFAULT NULL,
  `userId` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_product_sell_userid_foreign` (`userId`),
  CONSTRAINT `user_product_sell_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_product_sell`
--

LOCK TABLES `user_product_sell` WRITE;
/*!40000 ALTER TABLE `user_product_sell` DISABLE KEYS */;
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
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` varchar(255) DEFAULT NULL,
  `forgotToken` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `otp` varchar(255) NOT NULL,
  `isOtpVerified` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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
